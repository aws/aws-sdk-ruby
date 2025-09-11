# frozen_string_literal: true

# This is generated code!

module Aws::ConnectParticipant
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The case-insensitive input to indicate standard MIME type that describes the format of the file
    #             that will be uploaded.</p>
    # @!attribute content_type
    #   <p>Describes the MIME file type of the attachment. For a list of supported file types, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html">Feature specifications</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #   @return [String]
    # @!attribute attachment_id
    #   <p>A unique identifier for the attachment.</p>
    #   @return [String]
    # @!attribute attachment_name
    #   <p>A case-sensitive name of the attachment being uploaded.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the attachment.</p>
    #   @return [String]
    class AttachmentItem < Struct.new(
      :content_type,
      :attachment_id,
      :attachment_name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The attendee information, including attendee ID and join token.</p>
    # @!attribute attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #   @return [String]
    # @!attribute join_token
    #   <p>The join token used by the Amazon Chime SDK attendee.</p>
    #   @return [String]
    class Attendee < Struct.new(
      :attendee_id,
      :join_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Has audio-specific configurations as the operating parameter for Echo Reduction.</p>
    # @!attribute echo_reduction
    #   <p>Makes echo reduction available to clients who connect to the meeting.</p>
    #   @return [String]
    class AudioFeatures < Struct.new(
      :echo_reduction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The <code>sessionId</code> provided in the <code>authenticationInitiated</code>
    #               event.</p>
    #   @return [String]
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #   @return [String]
    class CancelParticipantAuthenticationRequest < Struct.new(
      :session_id,
      :connection_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelParticipantAuthenticationResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_ids
    #   <p>A list of unique identifiers for the attachments.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #   @return [String]
    class CompleteAttachmentUploadRequest < Struct.new(
      :attachment_ids,
      :client_token,
      :connection_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CompleteAttachmentUploadResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation conflicts with the current state of a service resource
    #             associated with the request. </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Connection credentials. </p>
    # @!attribute connection_token
    #   <p>The connection token.</p>
    #   @return [String]
    # @!attribute expiry
    #   <p>The expiration of the token.</p>
    #            <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #               2019-11-08T02:41:28.172Z.</p>
    #   @return [String]
    class ConnectionCredentials < Struct.new(
      :connection_token,
      :expiry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>Type of connection information required. If you need
    #                   <code>CONNECTION_CREDENTIALS</code> along with marking participant as connected,
    #               pass <code>CONNECTION_CREDENTIALS</code> in <code>Type</code>.</p>
    #   @return [Array<String>]
    # @!attribute participant_token
    #   <p>This is a header parameter.</p>
    #            <p>The ParticipantToken as obtained from <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html">StartChatContact</a>
    #               API response.</p>
    #   @return [String]
    # @!attribute connect_participant
    #   <p>Amazon Connect Participant is used to mark the participant as connected for customer
    #               participant in message streaming, as well as for agent or manager participant in
    #               non-streaming chats.</p>
    #   @return [Boolean]
    class CreateParticipantConnectionRequest < Struct.new(
      :type,
      :participant_token,
      :connect_participant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute websocket
    #   <p>Creates the participant's websocket connection.</p>
    #   @return [Types::Websocket]
    # @!attribute connection_credentials
    #   <p>Creates the participant's connection credentials. The authentication token associated
    #               with the participant's connection.</p>
    #   @return [Types::ConnectionCredentials]
    # @!attribute web_rtc_connection
    #   <p>Creates the participant's WebRTC connection data required for the client application
    #               (mobile application or website) to connect to the call. </p>
    #   @return [Types::WebRTCConnection]
    class CreateParticipantConnectionResponse < Struct.new(
      :websocket,
      :connection_credentials,
      :web_rtc_connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view_token
    #   <p>An encrypted token originating from the interactive message of a ShowView block
    #               operation. Represents the desired view.</p>
    #   @return [String]
    # @!attribute connection_token
    #   <p>The connection token.</p>
    #   @return [String]
    class DescribeViewRequest < Struct.new(
      :view_token,
      :connection_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view
    #   <p>A view resource object. Contains metadata and content necessary to render the
    #               view.</p>
    #   @return [Types::View]
    class DescribeViewResponse < Struct.new(
      :view,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #   @return [String]
    class DisconnectParticipantRequest < Struct.new(
      :client_token,
      :connection_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisconnectParticipantResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>A unique identifier for the attachment.</p>
    #   @return [String]
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #   @return [String]
    # @!attribute url_expiry_in_seconds
    #   <p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format:
    #               yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>
    #   @return [Integer]
    class GetAttachmentRequest < Struct.new(
      :attachment_id,
      :connection_token,
      :url_expiry_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute url
    #   <p>This is the pre-signed URL that can be used for uploading the file to Amazon S3 when used in response 
    #   to <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_StartAttachmentUpload.html">StartAttachmentUpload</a>.</p>
    #   @return [String]
    # @!attribute url_expiry
    #   <p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>
    #   @return [String]
    # @!attribute attachment_size_in_bytes
    #   <p>The size of the attachment in bytes.</p>
    #   @return [Integer]
    class GetAttachmentResponse < Struct.new(
      :url,
      :url_expiry,
      :attachment_size_in_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:attachment_size_in_bytes] = nil unless options.key?(:attachment_size_in_bytes)
        super
      end
    end

    # @!attribute session_id
    #   <p>The sessionId provided in the authenticationInitiated event.</p>
    #   @return [String]
    # @!attribute redirect_uri
    #   <p>The URL where the customer will be redirected after Amazon Cognito authorizes the
    #               user.</p>
    #   @return [String]
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #   @return [String]
    class GetAuthenticationUrlRequest < Struct.new(
      :session_id,
      :redirect_uri,
      :connection_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_url
    #   <p>The URL where the customer will sign in to the identity provider. This URL contains
    #               the authorize endpoint for the Cognito UserPool used in the authentication.</p>
    #   @return [String]
    class GetAuthenticationUrlResponse < Struct.new(
      :authentication_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The contactId from the current contact chain for which transcript is needed.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the page. Default: 10. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token. Use the value returned previously in the next subsequent request
    #               to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute scan_direction
    #   <p>The direction from StartPosition from which to retrieve message. Default: BACKWARD
    #               when no StartPosition is provided, FORWARD with StartPosition. </p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order for the records. Default: DESCENDING.</p>
    #   @return [String]
    # @!attribute start_position
    #   <p>A filtering option for where to start.</p>
    #   @return [Types::StartPosition]
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #   @return [String]
    class GetTranscriptRequest < Struct.new(
      :contact_id,
      :max_results,
      :next_token,
      :scan_direction,
      :sort_order,
      :start_position,
      :connection_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute initial_contact_id
    #   <p>The initial contact ID for the contact. </p>
    #   @return [String]
    # @!attribute transcript
    #   <p>The list of messages in the session.</p>
    #   @return [Array<Types::Item>]
    # @!attribute next_token
    #   <p>The pagination token. Use the value returned previously in the next subsequent request
    #               to retrieve the next set of results.</p>
    #   @return [String]
    class GetTranscriptResponse < Struct.new(
      :initial_contact_id,
      :transcript,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception occurs when there is an internal failure in the Amazon Connect service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An item - message or event - that has been sent. </p>
    # @!attribute absolute_time
    #   <p>The time when the message or event was sent.</p>
    #            <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #               2019-11-08T02:41:28.172Z.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the message or event.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The type of content of the item.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the item.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the item: message or event. </p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>The ID of the sender in the session.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The chat display name of the sender.</p>
    #   @return [String]
    # @!attribute participant_role
    #   <p>The role of the sender. For example, is it a customer, agent, or system.</p>
    #   @return [String]
    # @!attribute attachments
    #   <p>Provides information about the attachments.</p>
    #   @return [Array<Types::AttachmentItem>]
    # @!attribute message_metadata
    #   <p>The metadata related to the message. Currently this supports only information related
    #               to message receipts.</p>
    #   @return [Types::MessageMetadata]
    # @!attribute related_contact_id
    #   <p>The contactId on which the transcript item was originally sent. This field is only
    #               populated for persistent chats when the transcript item is from the past chat session.
    #               For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html">Enable persistent
    #               chat</a>.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The contactId on which the transcript item was originally sent. This field is
    #               populated only when the transcript item is from the current chat session.</p>
    #   @return [String]
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
      :contact_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings of the features available to a meeting.</p>
    # @!attribute audio
    #   <p>The configuration settings for the audio features available to a meeting.</p>
    #   @return [Types::AudioFeatures]
    class MeetingFeaturesConfiguration < Struct.new(
      :audio,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata related to a message.</p>
    # @!attribute message_id
    #   <p>The identifier of the message that contains the metadata information. </p>
    #   @return [String]
    # @!attribute receipts
    #   <p>The list of receipt information for a message for different recipients.</p>
    #   @return [Array<Types::Receipt>]
    class MessageMetadata < Struct.new(
      :message_id,
      :receipts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The receipt for the message delivered to the recipient.</p>
    # @!attribute delivered_timestamp
    #   <p>The time when the message was delivered to the recipient.</p>
    #   @return [String]
    # @!attribute read_timestamp
    #   <p>The time when the message was read by the recipient.</p>
    #   @return [String]
    # @!attribute recipient_participant_id
    #   <p>The identifier of the recipient of the message. </p>
    #   @return [String]
    class Receipt < Struct.new(
      :delivered_timestamp,
      :read_timestamp,
      :recipient_participant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource was not found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of Amazon Connect resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   <p>The content type of the request. Supported types are:</p>
    #            <ul>
    #               <li>
    #                  <p>application/vnd.amazonaws.connect.event.typing</p>
    #               </li>
    #               <li>
    #                  <p>application/vnd.amazonaws.connect.event.connection.acknowledged (is no longer
    #                       maintained since December 31, 2024) </p>
    #               </li>
    #               <li>
    #                  <p>application/vnd.amazonaws.connect.event.message.delivered</p>
    #               </li>
    #               <li>
    #                  <p>application/vnd.amazonaws.connect.event.message.read</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the event to be sent (for example, message text). For content related
    #               to message receipts, this is supported in the form of a JSON string.</p>
    #            <p>Sample Content: "{\"messageId\":\"11111111-aaaa-bbbb-cccc-EXAMPLE01234\"}"</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #   @return [String]
    class SendEventRequest < Struct.new(
      :content_type,
      :content,
      :client_token,
      :connection_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the response.</p>
    #   @return [String]
    # @!attribute absolute_time
    #   <p>The time when the event was sent.</p>
    #            <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #               2019-11-08T02:41:28.172Z.</p>
    #   @return [String]
    class SendEventResponse < Struct.new(
      :id,
      :absolute_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   <p>The type of the content. Possible types are <code>text/plain</code>,
    #                   <code>text/markdown</code>, <code>application/json</code>, and
    #                   <code>application/vnd.amazonaws.connect.message.interactive.response</code>.
    #               </p>
    #            <p>Supported types on the contact are configured through
    #                   <code>SupportedMessagingContentTypes</code> on <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html">StartChatContact</a>
    #               and <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartOutboundChatContact.html">StartOutboundChatContact</a>.</p>
    #            <p> For Apple Messages for Business, SMS, and WhatsApp Business Messaging contacts, only
    #                   <code>text/plain</code> is supported.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the message. </p>
    #            <ul>
    #               <li>
    #                  <p>For <code>text/plain</code> and <code>text/markdown</code>, the Length
    #                       Constraints are Minimum of 1, Maximum of 1024. </p>
    #               </li>
    #               <li>
    #                  <p>For <code>application/json</code>, the Length Constraints are Minimum of 1,
    #                       Maximum of 12000. </p>
    #               </li>
    #               <li>
    #                  <p>For
    #                           <code>application/vnd.amazonaws.connect.message.interactive.response</code>,
    #                       the Length Constraints are Minimum of 1, Maximum of 12288.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute connection_token
    #   <p>The authentication token associated with the connection.</p>
    #   @return [String]
    class SendMessageRequest < Struct.new(
      :content_type,
      :content,
      :client_token,
      :connection_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the message.</p>
    #   @return [String]
    # @!attribute absolute_time
    #   <p>The time when the message was sent.</p>
    #            <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #               2019-11-08T02:41:28.172Z.</p>
    #   @return [String]
    class SendMessageResponse < Struct.new(
      :id,
      :absolute_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of attachments per contact exceeds the quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   <p>Describes the MIME file type of the attachment. For a list of supported file types, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html">Feature specifications</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #   @return [String]
    # @!attribute attachment_size_in_bytes
    #   <p>The size of the attachment in bytes.</p>
    #   @return [Integer]
    # @!attribute attachment_name
    #   <p>A case-sensitive name of the attachment being uploaded.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #   @return [String]
    class StartAttachmentUploadRequest < Struct.new(
      :content_type,
      :attachment_size_in_bytes,
      :attachment_name,
      :client_token,
      :connection_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_id
    #   <p>A unique identifier for the attachment.</p>
    #   @return [String]
    # @!attribute upload_metadata
    #   <p>The headers to be provided while uploading the file to the URL.</p>
    #   @return [Types::UploadMetadata]
    class StartAttachmentUploadResponse < Struct.new(
      :attachment_id,
      :upload_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filtering option for where to start. For example, if you sent 100 messages, start
    #             with message 50. </p>
    # @!attribute id
    #   <p>The ID of the message or event where to start. </p>
    #   @return [String]
    # @!attribute absolute_time
    #   <p>The time in ISO format where to start.</p>
    #            <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #               2019-11-08T02:41:28.172Z.</p>
    #   @return [String]
    # @!attribute most_recent
    #   <p>The start position of the most recent message where you want to start. </p>
    #   @return [Integer]
    class StartPosition < Struct.new(
      :id,
      :absolute_time,
      :most_recent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:most_recent] = 0 unless options.key?(:most_recent)
        super
      end
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Fields to be used while uploading the attachment.</p>
    # @!attribute url
    #   <p>This is the pre-signed URL that can be used for uploading the file to Amazon S3 when used in response 
    #   to <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_StartAttachmentUpload.html">StartAttachmentUpload</a>.</p>
    #   @return [String]
    # @!attribute url_expiry
    #   <p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>
    #   @return [String]
    # @!attribute headers_to_include
    #   <p>The headers to be provided while uploading the file to the URL.</p>
    #   @return [Hash<String, String>]
    class UploadMetadata < Struct.new(
      :url,
      :url_expiry,
      :headers_to_include,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by Amazon Connect.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A view resource object. Contains metadata and content necessary to render the
    #             view.</p>
    # @!attribute id
    #   <p>The identifier of the view.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the view.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the view.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The current version of the view.</p>
    #   @return [Integer]
    # @!attribute content
    #   <p>View content containing all content necessary to render a view except for runtime
    #               input data.</p>
    #   @return [Types::ViewContent]
    class View < Struct.new(
      :id,
      :arn,
      :name,
      :version,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>View content containing all content necessary to render a view except for runtime
    #             input data.</p>
    # @!attribute input_schema
    #   <p>The schema representing the input data that the view template must be supplied to
    #               render.</p>
    #   @return [String]
    # @!attribute template
    #   <p>The view template representing the structure of the view.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>A list of actions possible from the view</p>
    #   @return [Array<String>]
    class ViewContent < Struct.new(
      :input_schema,
      :template,
      :actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates the participant’s WebRTC connection data required for the client application
    #             (mobile or web) to connect to the call.</p>
    # @!attribute attendee
    #   <p>The attendee information, including attendee ID and join token.</p>
    #   @return [Types::Attendee]
    # @!attribute meeting
    #   <p>A meeting created using the Amazon Chime SDK.</p>
    #   @return [Types::WebRTCMeeting]
    class WebRTCConnection < Struct.new(
      :attendee,
      :meeting,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of endpoints used by clients to connect to the media service group for an
    #             Amazon Chime SDK meeting.</p>
    # @!attribute audio_host_url
    #   <p>The audio host URL.</p>
    #   @return [String]
    # @!attribute audio_fallback_url
    #   <p>The audio fallback URL.</p>
    #   @return [String]
    # @!attribute signaling_url
    #   <p>The signaling URL.</p>
    #   @return [String]
    # @!attribute event_ingestion_url
    #   <p>The event ingestion URL to which you send client meeting events.</p>
    #   @return [String]
    class WebRTCMediaPlacement < Struct.new(
      :audio_host_url,
      :audio_fallback_url,
      :signaling_url,
      :event_ingestion_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A meeting created using the Amazon Chime SDK.</p>
    # @!attribute media_placement
    #   <p>The media placement for the meeting.</p>
    #   @return [Types::WebRTCMediaPlacement]
    # @!attribute meeting_features
    #   <p>The configuration settings of the features available to a meeting.</p>
    #   @return [Types::MeetingFeaturesConfiguration]
    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #   @return [String]
    class WebRTCMeeting < Struct.new(
      :media_placement,
      :meeting_features,
      :meeting_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The websocket for the participant's connection.</p>
    # @!attribute url
    #   <p>The URL of the websocket.</p>
    #   @return [String]
    # @!attribute connection_expiry
    #   <p>The URL expiration timestamp in ISO date format.</p>
    #            <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #               2019-11-08T02:41:28.172Z.</p>
    #   @return [String]
    class Websocket < Struct.new(
      :url,
      :connection_expiry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
