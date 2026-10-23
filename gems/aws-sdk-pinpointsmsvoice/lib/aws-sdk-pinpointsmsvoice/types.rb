# frozen_string_literal: true

# This is generated code!

module Aws::PinpointSMSVoice
  # This module contains the types returned by client operations.
  module Types

    # The resource specified in your request already exists.
    # @!attribute message
    #   @return [String]
    class AlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The input you provided is invalid.
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An object that defines a message that contains text formatted using Amazon Pinpoint Voice Instructions markup.
    # @!attribute text
    #   The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide.
    #   @return [String]
    class CallInstructionsMessageType < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An object that contains information about an event destination that sends data to Amazon CloudWatch Logs.
    # @!attribute iam_role_arn
    #   The Amazon Resource Name (ARN) of an Amazon Identity and Access Management (IAM) role that is able to write event data to an Amazon CloudWatch destination.
    #   @return [String]
    # @!attribute log_group_arn
    #   The name of the Amazon CloudWatch Log Group that you want to record events in.
    #   @return [String]
    class CloudWatchLogsDestination < Struct.new(
      nil,
      :iam_role_arn,
      :log_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Create a new event destination in a configuration set.
    # @!attribute configuration_set_name
    #   ConfigurationSetName
    #   @return [String]
    # @!attribute event_destination
    #   An object that defines a single event destination.
    #   @return [Types::EventDestinationDefinition]
    # @!attribute event_destination_name
    #   A name that identifies the event destination.
    #   @return [String]
    class CreateConfigurationSetEventDestinationRequest < Struct.new(
      nil,
      :configuration_set_name,
      :event_destination,
      :event_destination_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An empty object that indicates that the event destination was created successfully.
    class CreateConfigurationSetEventDestinationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # A request to create a new configuration set.
    # @!attribute configuration_set_name
    #   The name that you want to give the configuration set.
    #   @return [String]
    class CreateConfigurationSetRequest < Struct.new(
      nil,
      :configuration_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An empty object that indicates that the configuration set was successfully created.
    class CreateConfigurationSetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   ConfigurationSetName
    #   @return [String]
    # @!attribute event_destination_name
    #   EventDestinationName
    #   @return [String]
    class DeleteConfigurationSetEventDestinationRequest < Struct.new(
      nil,
      :configuration_set_name,
      :event_destination_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An empty object that indicates that the event destination was deleted successfully.
    class DeleteConfigurationSetEventDestinationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   ConfigurationSetName
    #   @return [String]
    class DeleteConfigurationSetRequest < Struct.new(
      nil,
      :configuration_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An empty object that indicates that the configuration set was deleted successfully.
    class DeleteConfigurationSetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An object that defines an event destination.
    # @!attribute cloud_watch_logs_destination
    #   An object that contains information about an event destination that sends data to Amazon CloudWatch Logs.
    #   @return [Types::CloudWatchLogsDestination]
    # @!attribute enabled
    #   Indicates whether or not the event destination is enabled. If the event destination is enabled, then Amazon Pinpoint sends response data to the specified event destination.
    #   @return [Boolean]
    # @!attribute kinesis_firehose_destination
    #   An object that contains information about an event destination that sends data to Amazon Kinesis Data Firehose.
    #   @return [Types::KinesisFirehoseDestination]
    # @!attribute matching_event_types
    #   An array of EventDestination objects. Each EventDestination object includes ARNs and other information that define an event destination.
    #   @return [Array<String>]
    # @!attribute name
    #   A name that identifies the event destination configuration.
    #   @return [String]
    # @!attribute sns_destination
    #   An object that contains information about an event destination that sends data to Amazon SNS.
    #   @return [Types::SnsDestination]
    class EventDestination < Struct.new(
      nil,
      :cloud_watch_logs_destination,
      :enabled,
      :kinesis_firehose_destination,
      :matching_event_types,
      :name,
      :sns_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An object that defines a single event destination.
    # @!attribute cloud_watch_logs_destination
    #   An object that contains information about an event destination that sends data to Amazon CloudWatch Logs.
    #   @return [Types::CloudWatchLogsDestination]
    # @!attribute enabled
    #   Indicates whether or not the event destination is enabled. If the event destination is enabled, then Amazon Pinpoint sends response data to the specified event destination.
    #   @return [Boolean]
    # @!attribute kinesis_firehose_destination
    #   An object that contains information about an event destination that sends data to Amazon Kinesis Data Firehose.
    #   @return [Types::KinesisFirehoseDestination]
    # @!attribute matching_event_types
    #   An array of EventDestination objects. Each EventDestination object includes ARNs and other information that define an event destination.
    #   @return [Array<String>]
    # @!attribute sns_destination
    #   An object that contains information about an event destination that sends data to Amazon SNS.
    #   @return [Types::SnsDestination]
    class EventDestinationDefinition < Struct.new(
      nil,
      :cloud_watch_logs_destination,
      :enabled,
      :kinesis_firehose_destination,
      :matching_event_types,
      :sns_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   ConfigurationSetName
    #   @return [String]
    class GetConfigurationSetEventDestinationsRequest < Struct.new(
      nil,
      :configuration_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An object that contains information about an event destination.
    # @!attribute event_destinations
    #   An array of EventDestination objects. Each EventDestination object includes ARNs and other information that define an event destination.
    #   @return [Array<Types::EventDestination>]
    class GetConfigurationSetEventDestinationsResponse < Struct.new(
      nil,
      :event_destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.
    # @!attribute message
    #   @return [String]
    class InternalServiceErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An object that contains information about an event destination that sends data to Amazon Kinesis Data Firehose.
    # @!attribute delivery_stream_arn
    #   The Amazon Resource Name (ARN) of an IAM role that can write data to an Amazon Kinesis Data Firehose stream.
    #   @return [String]
    # @!attribute iam_role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose destination that you want to use in the event destination.
    #   @return [String]
    class KinesisFirehoseDestination < Struct.new(
      nil,
      :delivery_stream_arn,
      :iam_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # There are too many instances of the specified resource type.
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   A token returned from a previous call to the API that indicates the position in the list of results.
    #   @return [String]
    # @!attribute page_size
    #   Used to specify the number of items that should be returned in the response.
    #   @return [String]
    class ListConfigurationSetsRequest < Struct.new(
      nil,
      :next_token,
      :page_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An object that contains information about the configuration sets for your account in the current region.
    # @!attribute configuration_sets
    #   An object that contains a list of configuration sets for your account in the current region.
    #   @return [Array<String>]
    # @!attribute next_token
    #   A token returned from a previous call to ListConfigurationSets to indicate the position in the list of configuration sets.
    #   @return [String]
    class ListConfigurationSetsResponse < Struct.new(
      nil,
      :configuration_sets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The resource you attempted to access doesn't exist.
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An object that defines a message that contains unformatted text.
    # @!attribute language_code
    #   The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide.
    #   @return [String]
    # @!attribute text
    #   The plain (not SSML-formatted) text to deliver to the recipient.
    #   @return [String]
    # @!attribute voice_id
    #   The name of the voice that you want to use to deliver the message. For a complete list of supported voices, see the Amazon Polly Developer Guide.
    #   @return [String]
    class PlainTextMessageType < Struct.new(
      nil,
      :language_code,
      :text,
      :voice_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An object that defines a message that contains SSML-formatted text.
    # @!attribute language_code
    #   The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide.
    #   @return [String]
    # @!attribute text
    #   The SSML-formatted text to deliver to the recipient.
    #   @return [String]
    # @!attribute voice_id
    #   The name of the voice that you want to use to deliver the message. For a complete list of supported voices, see the Amazon Polly Developer Guide.
    #   @return [String]
    class SSMLMessageType < Struct.new(
      nil,
      :language_code,
      :text,
      :voice_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # SendVoiceMessageRequest
    # @!attribute caller_id
    #   The phone number that appears on recipients' devices when they receive the message.
    #   @return [String]
    # @!attribute configuration_set_name
    #   The name of the configuration set that you want to use to send the message.
    #   @return [String]
    # @!attribute content
    #   An object that contains a voice message and information about the recipient that you want to send it to.
    #   @return [Types::VoiceMessageContent]
    # @!attribute destination_phone_number
    #   The phone number that you want to send the voice message to.
    #   @return [String]
    # @!attribute origination_phone_number
    #   The phone number that Amazon Pinpoint should use to send the voice message. This isn't necessarily the phone number that appears on recipients' devices when they receive the message, because you can specify a CallerId parameter in the request.
    #   @return [String]
    class SendVoiceMessageRequest < Struct.new(
      nil,
      :caller_id,
      :configuration_set_name,
      :content,
      :destination_phone_number,
      :origination_phone_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An object that that contains the Message ID of a Voice message that was sent successfully.
    # @!attribute message_id
    #   A unique identifier for the voice message.
    #   @return [String]
    class SendVoiceMessageResponse < Struct.new(
      nil,
      :message_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An object that contains information about an event destination that sends data to Amazon SNS.
    # @!attribute topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to publish events to.
    #   @return [String]
    class SnsDestination < Struct.new(
      nil,
      :topic_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # You've issued too many requests to the resource. Wait a few minutes, and then try again.
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # UpdateConfigurationSetEventDestinationRequest
    # @!attribute configuration_set_name
    #   ConfigurationSetName
    #   @return [String]
    # @!attribute event_destination
    #   An object that defines a single event destination.
    #   @return [Types::EventDestinationDefinition]
    # @!attribute event_destination_name
    #   EventDestinationName
    #   @return [String]
    class UpdateConfigurationSetEventDestinationRequest < Struct.new(
      nil,
      :configuration_set_name,
      :event_destination,
      :event_destination_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An empty object that indicates that the event destination was updated successfully.
    class UpdateConfigurationSetEventDestinationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An object that contains a voice message and information about the recipient that you want to send it to.
    # @!attribute call_instructions_message
    #   An object that defines a message that contains text formatted using Amazon Pinpoint Voice Instructions markup.
    #   @return [Types::CallInstructionsMessageType]
    # @!attribute plain_text_message
    #   An object that defines a message that contains unformatted text.
    #   @return [Types::PlainTextMessageType]
    # @!attribute ssml_message
    #   An object that defines a message that contains SSML-formatted text.
    #   @return [Types::SSMLMessageType]
    class VoiceMessageContent < Struct.new(
      nil,
      :call_instructions_message,
      :plain_text_message,
      :ssml_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
