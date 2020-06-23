# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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

    # @note When making an API call, you may pass CreateParticipantConnectionRequest
    #   data as a hash:
    #
    #       {
    #         type: ["WEBSOCKET"], # required, accepts WEBSOCKET, CONNECTION_CREDENTIALS
    #         participant_token: "ParticipantToken", # required
    #       }
    #
    # @!attribute [rw] type
    #   Type of connection information required.
    #   @return [Array<String>]
    #
    # @!attribute [rw] participant_token
    #   Participant Token as obtained from [StartChatContact][1] API
    #   response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContactResponse.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CreateParticipantConnectionRequest AWS API Documentation
    #
    class CreateParticipantConnectionRequest < Struct.new(
      :type,
      :participant_token)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CreateParticipantConnectionResponse AWS API Documentation
    #
    class CreateParticipantConnectionResponse < Struct.new(
      :websocket,
      :connection_credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisconnectParticipantRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         connection_token: "ParticipantToken", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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

    # @note When making an API call, you may pass GetTranscriptRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "ContactId",
    #         max_results: 1,
    #         next_token: "NextToken",
    #         scan_direction: "FORWARD", # accepts FORWARD, BACKWARD
    #         sort_order: "DESCENDING", # accepts DESCENDING, ASCENDING
    #         start_position: {
    #           id: "ChatItemId",
    #           absolute_time: "Instant",
    #           most_recent: 1,
    #         },
    #         connection_token: "ParticipantToken", # required
    #       }
    #
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
      :participant_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendEventRequest
    #   data as a hash:
    #
    #       {
    #         content_type: "ChatContentType", # required
    #         content: "ChatContent",
    #         client_token: "ClientToken",
    #         connection_token: "ParticipantToken", # required
    #       }
    #
    # @!attribute [rw] content_type
    #   The content type of the request. Supported types are:
    #
    #   * application/vnd.amazonaws.connect.event.typing
    #
    #   * application/vnd.amazonaws.connect.event.connection.acknowledged
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the event to be sent (for example, message text).
    #   This is not yet supported.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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

    # @note When making an API call, you may pass SendMessageRequest
    #   data as a hash:
    #
    #       {
    #         content_type: "ChatContentType", # required
    #         content: "ChatContent", # required
    #         client_token: "ClientToken",
    #         connection_token: "ParticipantToken", # required
    #       }
    #
    # @!attribute [rw] content_type
    #   The type of the content. Supported types are text/plain.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the message.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/SendMessageResponse AWS API Documentation
    #
    class SendMessageResponse < Struct.new(
      :id,
      :absolute_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filtering option for where to start. For example, if you sent 100
    # messages, start with message 50.
    #
    # @note When making an API call, you may pass StartPosition
    #   data as a hash:
    #
    #       {
    #         id: "ChatItemId",
    #         absolute_time: "Instant",
    #         most_recent: 1,
    #       }
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
