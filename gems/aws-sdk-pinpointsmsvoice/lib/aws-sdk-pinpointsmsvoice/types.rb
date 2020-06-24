# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PinpointSMSVoice
  module Types

    # The resource specified in your request already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/AlreadyExistsException AWS API Documentation
    #
    class AlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input you provided is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines a message that contains text formatted using
    # Amazon Pinpoint Voice Instructions markup.
    #
    # @note When making an API call, you may pass CallInstructionsMessageType
    #   data as a hash:
    #
    #       {
    #         text: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] text
    #   The language to use when delivering the message. For a complete list
    #   of supported languages, see the Amazon Polly Developer Guide.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/CallInstructionsMessageType AWS API Documentation
    #
    class CallInstructionsMessageType < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about an event destination that
    # sends data to Amazon CloudWatch Logs.
    #
    # @note When making an API call, you may pass CloudWatchLogsDestination
    #   data as a hash:
    #
    #       {
    #         iam_role_arn: "String",
    #         log_group_arn: "String",
    #       }
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of an Amazon Identity and Access
    #   Management (IAM) role that is able to write event data to an Amazon
    #   CloudWatch destination.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The name of the Amazon CloudWatch Log Group that you want to record
    #   events in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/CloudWatchLogsDestination AWS API Documentation
    #
    class CloudWatchLogsDestination < Struct.new(
      :iam_role_arn,
      :log_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create a new event destination in a configuration set.
    #
    # @note When making an API call, you may pass CreateConfigurationSetEventDestinationRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "__string", # required
    #         event_destination: {
    #           cloud_watch_logs_destination: {
    #             iam_role_arn: "String",
    #             log_group_arn: "String",
    #           },
    #           enabled: false,
    #           kinesis_firehose_destination: {
    #             delivery_stream_arn: "String",
    #             iam_role_arn: "String",
    #           },
    #           matching_event_types: ["INITIATED_CALL"], # accepts INITIATED_CALL, RINGING, ANSWERED, COMPLETED_CALL, BUSY, FAILED, NO_ANSWER
    #           sns_destination: {
    #             topic_arn: "String",
    #           },
    #         },
    #         event_destination_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   @return [String]
    #
    # @!attribute [rw] event_destination
    #   An object that defines a single event destination.
    #   @return [Types::EventDestinationDefinition]
    #
    # @!attribute [rw] event_destination_name
    #   A name that identifies the event destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/CreateConfigurationSetEventDestinationRequest AWS API Documentation
    #
    class CreateConfigurationSetEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination,
      :event_destination_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An empty object that indicates that the event destination was created
    # successfully.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/CreateConfigurationSetEventDestinationResponse AWS API Documentation
    #
    class CreateConfigurationSetEventDestinationResponse < Aws::EmptyStructure; end

    # A request to create a new configuration set.
    #
    # @note When making an API call, you may pass CreateConfigurationSetRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "WordCharactersWithDelimiters",
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name that you want to give the configuration set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/CreateConfigurationSetRequest AWS API Documentation
    #
    class CreateConfigurationSetRequest < Struct.new(
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An empty object that indicates that the configuration set was
    # successfully created.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/CreateConfigurationSetResponse AWS API Documentation
    #
    class CreateConfigurationSetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteConfigurationSetEventDestinationRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "__string", # required
    #         event_destination_name: "__string", # required
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   @return [String]
    #
    # @!attribute [rw] event_destination_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/DeleteConfigurationSetEventDestinationRequest AWS API Documentation
    #
    class DeleteConfigurationSetEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An empty object that indicates that the event destination was deleted
    # successfully.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/DeleteConfigurationSetEventDestinationResponse AWS API Documentation
    #
    class DeleteConfigurationSetEventDestinationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteConfigurationSetRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "__string", # required
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/DeleteConfigurationSetRequest AWS API Documentation
    #
    class DeleteConfigurationSetRequest < Struct.new(
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An empty object that indicates that the configuration set was deleted
    # successfully.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/DeleteConfigurationSetResponse AWS API Documentation
    #
    class DeleteConfigurationSetResponse < Aws::EmptyStructure; end

    # An object that defines an event destination.
    #
    # @!attribute [rw] cloud_watch_logs_destination
    #   An object that contains information about an event destination that
    #   sends data to Amazon CloudWatch Logs.
    #   @return [Types::CloudWatchLogsDestination]
    #
    # @!attribute [rw] enabled
    #   Indicates whether or not the event destination is enabled. If the
    #   event destination is enabled, then Amazon Pinpoint sends response
    #   data to the specified event destination.
    #   @return [Boolean]
    #
    # @!attribute [rw] kinesis_firehose_destination
    #   An object that contains information about an event destination that
    #   sends data to Amazon Kinesis Data Firehose.
    #   @return [Types::KinesisFirehoseDestination]
    #
    # @!attribute [rw] matching_event_types
    #   An array of EventDestination objects. Each EventDestination object
    #   includes ARNs and other information that define an event
    #   destination.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A name that identifies the event destination configuration.
    #   @return [String]
    #
    # @!attribute [rw] sns_destination
    #   An object that contains information about an event destination that
    #   sends data to Amazon SNS.
    #   @return [Types::SnsDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/EventDestination AWS API Documentation
    #
    class EventDestination < Struct.new(
      :cloud_watch_logs_destination,
      :enabled,
      :kinesis_firehose_destination,
      :matching_event_types,
      :name,
      :sns_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines a single event destination.
    #
    # @note When making an API call, you may pass EventDestinationDefinition
    #   data as a hash:
    #
    #       {
    #         cloud_watch_logs_destination: {
    #           iam_role_arn: "String",
    #           log_group_arn: "String",
    #         },
    #         enabled: false,
    #         kinesis_firehose_destination: {
    #           delivery_stream_arn: "String",
    #           iam_role_arn: "String",
    #         },
    #         matching_event_types: ["INITIATED_CALL"], # accepts INITIATED_CALL, RINGING, ANSWERED, COMPLETED_CALL, BUSY, FAILED, NO_ANSWER
    #         sns_destination: {
    #           topic_arn: "String",
    #         },
    #       }
    #
    # @!attribute [rw] cloud_watch_logs_destination
    #   An object that contains information about an event destination that
    #   sends data to Amazon CloudWatch Logs.
    #   @return [Types::CloudWatchLogsDestination]
    #
    # @!attribute [rw] enabled
    #   Indicates whether or not the event destination is enabled. If the
    #   event destination is enabled, then Amazon Pinpoint sends response
    #   data to the specified event destination.
    #   @return [Boolean]
    #
    # @!attribute [rw] kinesis_firehose_destination
    #   An object that contains information about an event destination that
    #   sends data to Amazon Kinesis Data Firehose.
    #   @return [Types::KinesisFirehoseDestination]
    #
    # @!attribute [rw] matching_event_types
    #   An array of EventDestination objects. Each EventDestination object
    #   includes ARNs and other information that define an event
    #   destination.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sns_destination
    #   An object that contains information about an event destination that
    #   sends data to Amazon SNS.
    #   @return [Types::SnsDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/EventDestinationDefinition AWS API Documentation
    #
    class EventDestinationDefinition < Struct.new(
      :cloud_watch_logs_destination,
      :enabled,
      :kinesis_firehose_destination,
      :matching_event_types,
      :sns_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConfigurationSetEventDestinationsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "__string", # required
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/GetConfigurationSetEventDestinationsRequest AWS API Documentation
    #
    class GetConfigurationSetEventDestinationsRequest < Struct.new(
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about an event destination.
    #
    # @!attribute [rw] event_destinations
    #   An array of EventDestination objects. Each EventDestination object
    #   includes ARNs and other information that define an event
    #   destination.
    #   @return [Array<Types::EventDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/GetConfigurationSetEventDestinationsResponse AWS API Documentation
    #
    class GetConfigurationSetEventDestinationsResponse < Struct.new(
      :event_destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The API encountered an unexpected error and couldn't complete the
    # request. You might be able to successfully issue the request again in
    # the future.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/InternalServiceErrorException AWS API Documentation
    #
    class InternalServiceErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about an event destination that
    # sends data to Amazon Kinesis Data Firehose.
    #
    # @note When making an API call, you may pass KinesisFirehoseDestination
    #   data as a hash:
    #
    #       {
    #         delivery_stream_arn: "String",
    #         iam_role_arn: "String",
    #       }
    #
    # @!attribute [rw] delivery_stream_arn
    #   The Amazon Resource Name (ARN) of an IAM role that can write data to
    #   an Amazon Kinesis Data Firehose stream.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose
    #   destination that you want to use in the event destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/KinesisFirehoseDestination AWS API Documentation
    #
    class KinesisFirehoseDestination < Struct.new(
      :delivery_stream_arn,
      :iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # There are too many instances of the specified resource type.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListConfigurationSetsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "__string",
    #         page_size: "__string",
    #       }
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/ListConfigurationSetsRequest AWS API Documentation
    #
    class ListConfigurationSetsRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about the configuration sets for
    # your account in the current region.
    #
    # @!attribute [rw] configuration_sets
    #   An object that contains a list of configuration sets for your
    #   account in the current region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token returned from a previous call to ListConfigurationSets to
    #   indicate the position in the list of configuration sets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/ListConfigurationSetsResponse AWS API Documentation
    #
    class ListConfigurationSetsResponse < Struct.new(
      :configuration_sets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource you attempted to access doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines a message that contains unformatted text.
    #
    # @note When making an API call, you may pass PlainTextMessageType
    #   data as a hash:
    #
    #       {
    #         language_code: "String",
    #         text: "NonEmptyString",
    #         voice_id: "String",
    #       }
    #
    # @!attribute [rw] language_code
    #   The language to use when delivering the message. For a complete list
    #   of supported languages, see the Amazon Polly Developer Guide.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The plain (not SSML-formatted) text to deliver to the recipient.
    #   @return [String]
    #
    # @!attribute [rw] voice_id
    #   The name of the voice that you want to use to deliver the message.
    #   For a complete list of supported voices, see the Amazon Polly
    #   Developer Guide.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/PlainTextMessageType AWS API Documentation
    #
    class PlainTextMessageType < Struct.new(
      :language_code,
      :text,
      :voice_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines a message that contains SSML-formatted text.
    #
    # @note When making an API call, you may pass SSMLMessageType
    #   data as a hash:
    #
    #       {
    #         language_code: "String",
    #         text: "NonEmptyString",
    #         voice_id: "String",
    #       }
    #
    # @!attribute [rw] language_code
    #   The language to use when delivering the message. For a complete list
    #   of supported languages, see the Amazon Polly Developer Guide.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The SSML-formatted text to deliver to the recipient.
    #   @return [String]
    #
    # @!attribute [rw] voice_id
    #   The name of the voice that you want to use to deliver the message.
    #   For a complete list of supported voices, see the Amazon Polly
    #   Developer Guide.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/SSMLMessageType AWS API Documentation
    #
    class SSMLMessageType < Struct.new(
      :language_code,
      :text,
      :voice_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to create and send a new voice message.
    #
    # @note When making an API call, you may pass SendVoiceMessageRequest
    #   data as a hash:
    #
    #       {
    #         caller_id: "String",
    #         configuration_set_name: "WordCharactersWithDelimiters",
    #         content: {
    #           call_instructions_message: {
    #             text: "NonEmptyString",
    #           },
    #           plain_text_message: {
    #             language_code: "String",
    #             text: "NonEmptyString",
    #             voice_id: "String",
    #           },
    #           ssml_message: {
    #             language_code: "String",
    #             text: "NonEmptyString",
    #             voice_id: "String",
    #           },
    #         },
    #         destination_phone_number: "NonEmptyString",
    #         origination_phone_number: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] caller_id
    #   The phone number that appears on recipients' devices when they
    #   receive the message.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that you want to use to send the
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   An object that contains a voice message and information about the
    #   recipient that you want to send it to.
    #   @return [Types::VoiceMessageContent]
    #
    # @!attribute [rw] destination_phone_number
    #   The phone number that you want to send the voice message to.
    #   @return [String]
    #
    # @!attribute [rw] origination_phone_number
    #   The phone number that Amazon Pinpoint should use to send the voice
    #   message. This isn't necessarily the phone number that appears on
    #   recipients' devices when they receive the message, because you can
    #   specify a CallerId parameter in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/SendVoiceMessageRequest AWS API Documentation
    #
    class SendVoiceMessageRequest < Struct.new(
      :caller_id,
      :configuration_set_name,
      :content,
      :destination_phone_number,
      :origination_phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that that contains the Message ID of a Voice message that
    # was sent successfully.
    #
    # @!attribute [rw] message_id
    #   A unique identifier for the voice message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/SendVoiceMessageResponse AWS API Documentation
    #
    class SendVoiceMessageResponse < Struct.new(
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about an event destination that
    # sends data to Amazon SNS.
    #
    # @note When making an API call, you may pass SnsDestination
    #   data as a hash:
    #
    #       {
    #         topic_arn: "String",
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic that you want
    #   to publish events to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/SnsDestination AWS API Documentation
    #
    class SnsDestination < Struct.new(
      :topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've issued too many requests to the resource. Wait a few minutes,
    # and then try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines a request to update an existing event
    # destination.
    #
    # @note When making an API call, you may pass UpdateConfigurationSetEventDestinationRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "__string", # required
    #         event_destination: {
    #           cloud_watch_logs_destination: {
    #             iam_role_arn: "String",
    #             log_group_arn: "String",
    #           },
    #           enabled: false,
    #           kinesis_firehose_destination: {
    #             delivery_stream_arn: "String",
    #             iam_role_arn: "String",
    #           },
    #           matching_event_types: ["INITIATED_CALL"], # accepts INITIATED_CALL, RINGING, ANSWERED, COMPLETED_CALL, BUSY, FAILED, NO_ANSWER
    #           sns_destination: {
    #             topic_arn: "String",
    #           },
    #         },
    #         event_destination_name: "__string", # required
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   @return [String]
    #
    # @!attribute [rw] event_destination
    #   An object that defines a single event destination.
    #   @return [Types::EventDestinationDefinition]
    #
    # @!attribute [rw] event_destination_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/UpdateConfigurationSetEventDestinationRequest AWS API Documentation
    #
    class UpdateConfigurationSetEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination,
      :event_destination_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An empty object that indicates that the event destination was updated
    # successfully.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/UpdateConfigurationSetEventDestinationResponse AWS API Documentation
    #
    class UpdateConfigurationSetEventDestinationResponse < Aws::EmptyStructure; end

    # An object that contains a voice message and information about the
    # recipient that you want to send it to.
    #
    # @note When making an API call, you may pass VoiceMessageContent
    #   data as a hash:
    #
    #       {
    #         call_instructions_message: {
    #           text: "NonEmptyString",
    #         },
    #         plain_text_message: {
    #           language_code: "String",
    #           text: "NonEmptyString",
    #           voice_id: "String",
    #         },
    #         ssml_message: {
    #           language_code: "String",
    #           text: "NonEmptyString",
    #           voice_id: "String",
    #         },
    #       }
    #
    # @!attribute [rw] call_instructions_message
    #   An object that defines a message that contains text formatted using
    #   Amazon Pinpoint Voice Instructions markup.
    #   @return [Types::CallInstructionsMessageType]
    #
    # @!attribute [rw] plain_text_message
    #   An object that defines a message that contains unformatted text.
    #   @return [Types::PlainTextMessageType]
    #
    # @!attribute [rw] ssml_message
    #   An object that defines a message that contains SSML-formatted text.
    #   @return [Types::SSMLMessageType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-2018-09-05/VoiceMessageContent AWS API Documentation
    #
    class VoiceMessageContent < Struct.new(
      :call_instructions_message,
      :plain_text_message,
      :ssml_message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
