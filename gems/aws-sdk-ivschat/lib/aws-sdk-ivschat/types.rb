# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Ivschat
  module Types

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a CloudWatch Logs location where chat logs will be stored.
    #
    # @!attribute [rw] log_group_name
    #   Name of the Amazon Cloudwatch Logs destination where chat activity
    #   will be logged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/CloudWatchLogsDestinationConfiguration AWS API Documentation
    #
    class CloudWatchLogsDestinationConfiguration < Struct.new(
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   Application-provided attributes to encode into the token and attach
    #   to a chat session. Map keys and values can contain UTF-8 encoded
    #   text. The maximum length of this field is 1 KB total.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] capabilities
    #   Set of capabilities that the user is allowed to perform in the room.
    #   Default: None (the capability to view messages is implicitly
    #   included in all requests).
    #   @return [Array<String>]
    #
    # @!attribute [rw] room_identifier
    #   Identifier of the room that the client is trying to access.
    #   Currently this must be an ARN.
    #   @return [String]
    #
    # @!attribute [rw] session_duration_in_minutes
    #   Session duration (in minutes), after which the session expires.
    #   Default: 60 (1 hour).
    #   @return [Integer]
    #
    # @!attribute [rw] user_id
    #   Application-provided ID that uniquely identifies the user associated
    #   with this token. This can be any UTF-8 encoded text.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/CreateChatTokenRequest AWS API Documentation
    #
    class CreateChatTokenRequest < Struct.new(
      :attributes,
      :capabilities,
      :room_identifier,
      :session_duration_in_minutes,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_expiration_time
    #   Time after which an end user's session is no longer valid. This is
    #   an ISO 8601 timestamp; *note that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] token
    #   The issued client token, encrypted.
    #   @return [String]
    #
    # @!attribute [rw] token_expiration_time
    #   Time after which the token is no longer valid and cannot be used to
    #   connect to a room. This is an ISO 8601 timestamp; *note that this is
    #   returned as a string*.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/CreateChatTokenResponse AWS API Documentation
    #
    class CreateChatTokenResponse < Struct.new(
      :session_expiration_time,
      :token,
      :token_expiration_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_configuration
    #   A complex type that contains a destination configuration for where
    #   chat content will be logged. There can be only one type of
    #   destination (`cloudWatchLogs`, `firehose`, or `s3`) in a
    #   `destinationConfiguration`.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] name
    #   Logging-configuration name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to attach to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS Chat has no constraints on
    #   tags beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/CreateLoggingConfigurationRequest AWS API Documentation
    #
    class CreateLoggingConfigurationRequest < Struct.new(
      :destination_configuration,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Logging-configuration ARN, assigned by the system.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Time when the logging configuration was created. This is an ISO 8601
    #   timestamp; *note that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] destination_configuration
    #   A complex type that contains a destination configuration for where
    #   chat content will be logged, from the request. There is only one
    #   type of destination (`cloudWatchLogs`, `firehose`, or `s3`) in a
    #   `destinationConfiguration`.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] id
    #   Logging-configuration ID, generated by the system. This is a
    #   relative identifier, the part of the ARN that uniquely identifies
    #   the logging configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Logging-configuration name, from the request (if specified).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the logging configuration. When the state is `ACTIVE`,
    #   the configuration is ready to log chat content.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource, from the request (if specified).
    #   Array of maps, each of the form `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   Time of the logging configuration’s last update. This is an ISO 8601
    #   timestamp; *note that this is returned as a string*.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/CreateLoggingConfigurationResponse AWS API Documentation
    #
    class CreateLoggingConfigurationResponse < Struct.new(
      :arn,
      :create_time,
      :destination_configuration,
      :id,
      :name,
      :state,
      :tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] logging_configuration_identifiers
    #   Array of logging-configuration identifiers attached to the room.
    #   @return [Array<String>]
    #
    # @!attribute [rw] maximum_message_length
    #   Maximum number of characters in a single message. Messages are
    #   expected to be UTF-8 encoded and this limit applies specifically to
    #   rune/code-point count, not number of bytes. Default: 500.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_message_rate_per_second
    #   Maximum number of messages per second that can be sent to the room
    #   (by all clients). Default: 10.
    #   @return [Integer]
    #
    # @!attribute [rw] message_review_handler
    #   Configuration information for optional review of messages.
    #   @return [Types::MessageReviewHandler]
    #
    # @!attribute [rw] name
    #   Room name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to attach to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS Chat has no constraints beyond
    #   what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/CreateRoomRequest AWS API Documentation
    #
    class CreateRoomRequest < Struct.new(
      :logging_configuration_identifiers,
      :maximum_message_length,
      :maximum_message_rate_per_second,
      :message_review_handler,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Room ARN, assigned by the system.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Time when the room was created. This is an ISO 8601 timestamp; *note
    #   that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   Room ID, generated by the system. This is a relative identifier, the
    #   part of the ARN that uniquely identifies the room.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration_identifiers
    #   Array of logging configurations attached to the room, from the
    #   request (if specified).
    #   @return [Array<String>]
    #
    # @!attribute [rw] maximum_message_length
    #   Maximum number of characters in a single message, from the request
    #   (if specified).
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_message_rate_per_second
    #   Maximum number of messages per second that can be sent to the room
    #   (by all clients), from the request (if specified).
    #   @return [Integer]
    #
    # @!attribute [rw] message_review_handler
    #   Configuration information for optional review of messages.
    #   @return [Types::MessageReviewHandler]
    #
    # @!attribute [rw] name
    #   Room name, from the request (if specified).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource, from the request (if specified).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   Time of the room’s last update. This is an ISO 8601 timestamp; *note
    #   that this is returned as a string*.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/CreateRoomResponse AWS API Documentation
    #
    class CreateRoomResponse < Struct.new(
      :arn,
      :create_time,
      :id,
      :logging_configuration_identifiers,
      :maximum_message_length,
      :maximum_message_rate_per_second,
      :message_review_handler,
      :name,
      :tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   Identifier of the logging configuration to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/DeleteLoggingConfigurationRequest AWS API Documentation
    #
    class DeleteLoggingConfigurationRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   ID of the message to be deleted. This is the `Id` field in the
    #   received message (see [ Message (Subscribe)][1] in the Chat
    #   Messaging API).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-message-subscribe.html
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason for deleting the message.
    #   @return [String]
    #
    # @!attribute [rw] room_identifier
    #   Identifier of the room where the message should be deleted.
    #   Currently this must be an ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/DeleteMessageRequest AWS API Documentation
    #
    class DeleteMessageRequest < Struct.new(
      :id,
      :reason,
      :room_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Operation identifier, generated by Amazon IVS Chat.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/DeleteMessageResponse AWS API Documentation
    #
    class DeleteMessageResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   Identifier of the room to be deleted. Currently this must be an ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/DeleteRoomRequest AWS API Documentation
    #
    class DeleteRoomRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that describes a location where chat logs will be
    # stored. Each member represents the configuration of one log
    # destination. For logging, you define only one type of destination (for
    # CloudWatch Logs, Kinesis Firehose, or S3).
    #
    # @note DestinationConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DestinationConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DestinationConfiguration corresponding to the set member.
    #
    # @!attribute [rw] cloud_watch_logs
    #   An Amazon CloudWatch Logs destination configuration where chat
    #   activity will be logged.
    #   @return [Types::CloudWatchLogsDestinationConfiguration]
    #
    # @!attribute [rw] firehose
    #   An Amazon Kinesis Data Firehose destination configuration where chat
    #   activity will be logged.
    #   @return [Types::FirehoseDestinationConfiguration]
    #
    # @!attribute [rw] s3
    #   An Amazon S3 destination configuration where chat activity will be
    #   logged.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/DestinationConfiguration AWS API Documentation
    #
    class DestinationConfiguration < Struct.new(
      :cloud_watch_logs,
      :firehose,
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CloudWatchLogs < DestinationConfiguration; end
      class Firehose < DestinationConfiguration; end
      class S3 < DestinationConfiguration; end
      class Unknown < DestinationConfiguration; end
    end

    # @!attribute [rw] reason
    #   Reason for disconnecting the user.
    #   @return [String]
    #
    # @!attribute [rw] room_identifier
    #   Identifier of the room from which the user's clients should be
    #   disconnected. Currently this must be an ARN.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   ID of the user (connection) to disconnect from the room.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/DisconnectUserRequest AWS API Documentation
    #
    class DisconnectUserRequest < Struct.new(
      :reason,
      :room_identifier,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/DisconnectUserResponse AWS API Documentation
    #
    class DisconnectUserResponse < Aws::EmptyStructure; end

    # Specifies a Kinesis Firehose location where chat logs will be stored.
    #
    # @!attribute [rw] delivery_stream_name
    #   Name of the Amazon Kinesis Firehose delivery stream where chat
    #   activity will be logged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/FirehoseDestinationConfiguration AWS API Documentation
    #
    class FirehoseDestinationConfiguration < Struct.new(
      :delivery_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   Identifier of the logging configuration to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/GetLoggingConfigurationRequest AWS API Documentation
    #
    class GetLoggingConfigurationRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Logging-configuration ARN, from the request (if `identifier` was an
    #   ARN).
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Time when the logging configuration was created. This is an ISO 8601
    #   timestamp; *note that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] destination_configuration
    #   A complex type that contains a destination configuration for where
    #   chat content will be logged. There is only one type of destination
    #   (`cloudWatchLogs`, `firehose`, or `s3`) in a
    #   `destinationConfiguration`.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] id
    #   Logging-configuration ID, generated by the system. This is a
    #   relative identifier, the part of the ARN that uniquely identifies
    #   the logging configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Logging-configuration name. This value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the logging configuration. When the state is `ACTIVE`,
    #   the configuration is ready to log chat content.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   Time of the logging configuration’s last update. This is an ISO 8601
    #   timestamp; *note that this is returned as a string*.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/GetLoggingConfigurationResponse AWS API Documentation
    #
    class GetLoggingConfigurationResponse < Struct.new(
      :arn,
      :create_time,
      :destination_configuration,
      :id,
      :name,
      :state,
      :tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   Identifier of the room for which the configuration is to be
    #   retrieved. Currently this must be an ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/GetRoomRequest AWS API Documentation
    #
    class GetRoomRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Room ARN, from the request (if `identifier` was an ARN).
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Time when the room was created. This is an ISO 8601 timestamp; *note
    #   that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   Room ID, generated by the system. This is a relative identifier, the
    #   part of the ARN that uniquely identifies the room.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration_identifiers
    #   Array of logging configurations attached to the room.
    #   @return [Array<String>]
    #
    # @!attribute [rw] maximum_message_length
    #   Maximum number of characters in a single message. Messages are
    #   expected to be UTF-8 encoded and this limit applies specifically to
    #   rune/code-point count, not number of bytes. Default: 500.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_message_rate_per_second
    #   Maximum number of messages per second that can be sent to the room
    #   (by all clients). Default: 10.
    #   @return [Integer]
    #
    # @!attribute [rw] message_review_handler
    #   Configuration information for optional review of messages.
    #   @return [Types::MessageReviewHandler]
    #
    # @!attribute [rw] name
    #   Room name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   Time of the room’s last update. This is an ISO 8601 timestamp; *note
    #   that this is returned as a string*.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/GetRoomResponse AWS API Documentation
    #
    class GetRoomResponse < Struct.new(
      :arn,
      :create_time,
      :id,
      :logging_configuration_identifiers,
      :maximum_message_length,
      :maximum_message_rate_per_second,
      :message_review_handler,
      :name,
      :tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of logging configurations to return. Default: 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The first logging configurations to retrieve. This is used for
    #   pagination; see the `nextToken` response field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ListLoggingConfigurationsRequest AWS API Documentation
    #
    class ListLoggingConfigurationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] logging_configurations
    #   List of the matching logging configurations (summary information
    #   only). There is only one type of destination (`cloudWatchLogs`,
    #   `firehose`, or `s3`) in a `destinationConfiguration`.
    #   @return [Array<Types::LoggingConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more logging configurations than `maxResults`, use
    #   `nextToken` in the request to get the next set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ListLoggingConfigurationsResponse AWS API Documentation
    #
    class ListLoggingConfigurationsResponse < Struct.new(
      :logging_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] logging_configuration_identifier
    #   Logging-configuration identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of rooms to return. Default: 50.
    #   @return [Integer]
    #
    # @!attribute [rw] message_review_handler_uri
    #   Filters the list to match the specified message review handler URI.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Filters the list to match the specified room name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The first room to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ListRoomsRequest AWS API Documentation
    #
    class ListRoomsRequest < Struct.new(
      :logging_configuration_identifier,
      :max_results,
      :message_review_handler_uri,
      :name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more rooms than `maxResults`, use `nextToken` in the
    #   request to get the next set.
    #   @return [String]
    #
    # @!attribute [rw] rooms
    #   List of the matching rooms (summary information only).
    #   @return [Array<Types::RoomSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ListRoomsResponse AWS API Documentation
    #
    class ListRoomsResponse < Struct.new(
      :next_token,
      :rooms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be retrieved. The ARN must be
    #   URL-encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a logging configuration.
    #
    # @!attribute [rw] arn
    #   Logging-configuration ARN.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Time when the logging configuration was created. This is an ISO 8601
    #   timestamp; *note that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] destination_configuration
    #   A complex type that contains a destination configuration for where
    #   chat content will be logged.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] id
    #   Logging-configuration ID, generated by the system. This is a
    #   relative identifier, the part of the ARN that uniquely identifies
    #   the room.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Logging-configuration name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the logging configuration. When this is `ACTIVE`, the
    #   configuration is ready for logging chat content.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to attach to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS Chat has no constraints on
    #   tags beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   Time of the logging configuration’s last update. This is an ISO 8601
    #   timestamp; *note that this is returned as a string*.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/LoggingConfigurationSummary AWS API Documentation
    #
    class LoggingConfigurationSummary < Struct.new(
      :arn,
      :create_time,
      :destination_configuration,
      :id,
      :name,
      :state,
      :tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for optional message review.
    #
    # @!attribute [rw] fallback_result
    #   Specifies the fallback behavior (whether the message is allowed or
    #   denied) if the handler does not return a valid response, encounters
    #   an error, or times out. (For the timeout period, see [ Service
    #   Quotas][1].) If allowed, the message is delivered with returned
    #   content to all users connected to the room. If denied, the message
    #   is not delivered to any user. Default: `ALLOW`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/userguide/service-quotas.html
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   Identifier of the message review handler. Currently this must be an
    #   ARN of a lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/MessageReviewHandler AWS API Documentation
    #
    class MessageReviewHandler < Struct.new(
      :fallback_result,
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/PendingVerification AWS API Documentation
    #
    class PendingVerification < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a room.
    #
    # @!attribute [rw] arn
    #   Room ARN.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Time when the room was created. This is an ISO 8601 timestamp; *note
    #   that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   Room ID, generated by the system. This is a relative identifier, the
    #   part of the ARN that uniquely identifies the room.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration_identifiers
    #   List of logging-configuration identifiers attached to the room.
    #   @return [Array<String>]
    #
    # @!attribute [rw] message_review_handler
    #   Configuration information for optional review of messages.
    #   @return [Types::MessageReviewHandler]
    #
    # @!attribute [rw] name
    #   Room name. The value does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS Chat has no constraints beyond
    #   what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   Time of the room’s last update. This is an ISO 8601 timestamp; *note
    #   that this is returned as a string*.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/RoomSummary AWS API Documentation
    #
    class RoomSummary < Struct.new(
      :arn,
      :create_time,
      :id,
      :logging_configuration_identifiers,
      :message_review_handler,
      :name,
      :tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an S3 location where chat logs will be stored.
    #
    # @!attribute [rw] bucket_name
    #   Name of the Amazon S3 bucket where chat activity will be logged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/S3DestinationConfiguration AWS API Documentation
    #
    class S3DestinationConfiguration < Struct.new(
      :bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   Application-defined metadata to attach to the event sent to clients.
    #   The maximum length of the metadata is 1 KB total.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] event_name
    #   Application-defined name of the event to send to clients.
    #   @return [String]
    #
    # @!attribute [rw] room_identifier
    #   Identifier of the room to which the event will be sent. Currently
    #   this must be an ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/SendEventRequest AWS API Documentation
    #
    class SendEventRequest < Struct.new(
      :attributes,
      :event_name,
      :room_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   An identifier generated by Amazon IVS Chat. This identifier must be
    #   used in subsequent operations for this message, such as
    #   DeleteMessage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/SendEventResponse AWS API Documentation
    #
    class SendEventResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] limit
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :limit,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be tagged. The ARN must be URL-encoded.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of tags to be added or updated. Array of maps, each of the
    #   form `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS Chat has no constraints beyond
    #   what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] limit
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :limit,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be untagged. The ARN must be URL-encoded.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Array of tags to be removed. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS Chat has no constraints beyond
    #   what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] destination_configuration
    #   A complex type that contains a destination configuration for where
    #   chat content will be logged. There can be only one type of
    #   destination (`cloudWatchLogs`, `firehose`, or `s3`) in a
    #   `destinationConfiguration`.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] identifier
    #   Identifier of the logging configuration to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Logging-configuration name. The value does not need to be unique.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/UpdateLoggingConfigurationRequest AWS API Documentation
    #
    class UpdateLoggingConfigurationRequest < Struct.new(
      :destination_configuration,
      :identifier,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Logging-configuration ARN, from the request (if `identifier` was an
    #   ARN).
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Time when the logging configuration was created. This is an ISO 8601
    #   timestamp; *note that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] destination_configuration
    #   A complex type that contains a destination configuration for where
    #   chat content will be logged, from the request. There is only one
    #   type of destination (`cloudWatchLogs`, `firehose`, or `s3`) in a
    #   `destinationConfiguration`.
    #   @return [Types::DestinationConfiguration]
    #
    # @!attribute [rw] id
    #   Logging-configuration ID, generated by the system. This is a
    #   relative identifier, the part of the ARN that uniquely identifies
    #   the room.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Logging-configuration name, from the request (if specified).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the logging configuration. When the state is `ACTIVE`,
    #   the configuration is ready to log chat content.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   Time of the logging configuration’s last update. This is an ISO 8601
    #   timestamp; *note that this is returned as a string*.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/UpdateLoggingConfigurationResponse AWS API Documentation
    #
    class UpdateLoggingConfigurationResponse < Struct.new(
      :arn,
      :create_time,
      :destination_configuration,
      :id,
      :name,
      :state,
      :tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   Identifier of the room to be updated. Currently this must be an ARN.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration_identifiers
    #   Array of logging-configuration identifiers attached to the room.
    #   @return [Array<String>]
    #
    # @!attribute [rw] maximum_message_length
    #   The maximum number of characters in a single message. Messages are
    #   expected to be UTF-8 encoded and this limit applies specifically to
    #   rune/code-point count, not number of bytes. Default: 500.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_message_rate_per_second
    #   Maximum number of messages per second that can be sent to the room
    #   (by all clients). Default: 10.
    #   @return [Integer]
    #
    # @!attribute [rw] message_review_handler
    #   Configuration information for optional review of messages. Specify
    #   an empty `uri` string to disassociate a message review handler from
    #   the specified room.
    #   @return [Types::MessageReviewHandler]
    #
    # @!attribute [rw] name
    #   Room name. The value does not need to be unique.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/UpdateRoomRequest AWS API Documentation
    #
    class UpdateRoomRequest < Struct.new(
      :identifier,
      :logging_configuration_identifiers,
      :maximum_message_length,
      :maximum_message_rate_per_second,
      :message_review_handler,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Room ARN, from the request (if `identifier` was an ARN).
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Time when the room was created. This is an ISO 8601 timestamp; *note
    #   that this is returned as a string*.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   Room ID, generated by the system. This is a relative identifier, the
    #   part of the ARN that uniquely identifies the room.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration_identifiers
    #   Array of logging configurations attached to the room, from the
    #   request (if specified).
    #   @return [Array<String>]
    #
    # @!attribute [rw] maximum_message_length
    #   Maximum number of characters in a single message, from the request
    #   (if specified).
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_message_rate_per_second
    #   Maximum number of messages per second that can be sent to the room
    #   (by all clients), from the request (if specified).
    #   @return [Integer]
    #
    # @!attribute [rw] message_review_handler
    #   Configuration information for optional review of messages.
    #   @return [Types::MessageReviewHandler]
    #
    # @!attribute [rw] name
    #   Room name, from the request (if specified).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   Time of the room’s last update. This is an ISO 8601 timestamp; *note
    #   that this is returned as a string*.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/UpdateRoomResponse AWS API Documentation
    #
    class UpdateRoomResponse < Struct.new(
      :arn,
      :create_time,
      :id,
      :logging_configuration_identifiers,
      :maximum_message_length,
      :maximum_message_rate_per_second,
      :message_review_handler,
      :name,
      :tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] field_list
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object is used in the ValidationException error.
    #
    # @!attribute [rw] message
    #   Explanation of the reason for the validation error.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the field which failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivschat-2020-07-14/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
