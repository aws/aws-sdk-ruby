# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTEventsData
  module Types

    # Contains information about the errors encountered.
    #
    # @!attribute [rw] message_id
    #   The ID of the message that caused the error. (See the value
    #   corresponding to the `"messageId"` key in the `"message"` object.)
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   More information about the error.
    #   @return [String]
    #
    class BatchPutMessageErrorEntry < Struct.new(
      :message_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchPutMessageRequest
    #   data as a hash:
    #
    #       {
    #         messages: [ # required
    #           {
    #             message_id: "MessageId", # required
    #             input_name: "InputName", # required
    #             payload: "data", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] messages
    #   The list of messages to send. Each message has the following format:
    #   `'\{ "messageId": "string", "inputName": "string", "payload":
    #   "string"\}'`
    #   @return [Array<Types::Message>]
    #
    class BatchPutMessageRequest < Struct.new(
      :messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_put_message_error_entries
    #   A list of any errors encountered when sending the messages.
    #   @return [Array<Types::BatchPutMessageErrorEntry>]
    #
    class BatchPutMessageResponse < Struct.new(
      :batch_put_message_error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the error that occured when attempting to update a
    # detector.
    #
    # @!attribute [rw] message_id
    #   The `"messageId"` of the update request that caused the error. (The
    #   value of the `"messageId"` in the update request `"Detector"`
    #   object.)
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message describing the error.
    #   @return [String]
    #
    class BatchUpdateDetectorErrorEntry < Struct.new(
      :message_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchUpdateDetectorRequest
    #   data as a hash:
    #
    #       {
    #         detectors: [ # required
    #           {
    #             message_id: "MessageId", # required
    #             detector_model_name: "DetectorModelName", # required
    #             key_value: "KeyValue",
    #             state: { # required
    #               state_name: "StateName", # required
    #               variables: [ # required
    #                 {
    #                   name: "VariableName", # required
    #                   value: "VariableValue", # required
    #                 },
    #               ],
    #               timers: [ # required
    #                 {
    #                   name: "TimerName", # required
    #                   seconds: 1, # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] detectors
    #   The list of detectors (instances) to update, along with the values
    #   to update.
    #   @return [Array<Types::UpdateDetectorRequest>]
    #
    class BatchUpdateDetectorRequest < Struct.new(
      :detectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_update_detector_error_entries
    #   A list of those detector updates that resulted in errors. (If an
    #   error is listed here, the specific update did not occur.)
    #   @return [Array<Types::BatchUpdateDetectorErrorEntry>]
    #
    class BatchUpdateDetectorResponse < Struct.new(
      :batch_update_detector_error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDetectorRequest
    #   data as a hash:
    #
    #       {
    #         detector_model_name: "DetectorModelName", # required
    #         key_value: "KeyValue",
    #       }
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model whose detectors (instances) you want
    #   information about.
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   A filter used to limit results to detectors (instances) created
    #   because of the given key ID.
    #   @return [String]
    #
    class DescribeDetectorRequest < Struct.new(
      :detector_model_name,
      :key_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector
    #   Information about the detector (instance).
    #   @return [Types::Detector]
    #
    class DescribeDetectorResponse < Struct.new(
      :detector)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the detector (instance).
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model that created this detector
    #   (instance).
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the key (identifying the device or system) that caused
    #   the creation of this detector (instance).
    #   @return [String]
    #
    # @!attribute [rw] detector_model_version
    #   The version of the detector model that created this detector
    #   (instance).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the detector (instance).
    #   @return [Types::DetectorState]
    #
    # @!attribute [rw] creation_time
    #   The time the detector (instance) was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time the detector (instance) was last updated.
    #   @return [Time]
    #
    class Detector < Struct.new(
      :detector_model_name,
      :key_value,
      :detector_model_version,
      :state,
      :creation_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the current state of the detector instance.
    #
    # @!attribute [rw] state_name
    #   The name of the state.
    #   @return [String]
    #
    # @!attribute [rw] variables
    #   The current values of the detector's variables.
    #   @return [Array<Types::Variable>]
    #
    # @!attribute [rw] timers
    #   The current state of the detector's timers.
    #   @return [Array<Types::Timer>]
    #
    class DetectorState < Struct.new(
      :state_name,
      :variables,
      :timers)
      SENSITIVE = []
      include Aws::Structure
    end

    # The new state, variable values, and timer settings of the detector
    # (instance).
    #
    # @note When making an API call, you may pass DetectorStateDefinition
    #   data as a hash:
    #
    #       {
    #         state_name: "StateName", # required
    #         variables: [ # required
    #           {
    #             name: "VariableName", # required
    #             value: "VariableValue", # required
    #           },
    #         ],
    #         timers: [ # required
    #           {
    #             name: "TimerName", # required
    #             seconds: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] state_name
    #   The name of the new state of the detector (instance).
    #   @return [String]
    #
    # @!attribute [rw] variables
    #   The new values of the detector's variables. Any variable whose
    #   value isn't specified is cleared.
    #   @return [Array<Types::VariableDefinition>]
    #
    # @!attribute [rw] timers
    #   The new values of the detector's timers. Any timer whose value
    #   isn't specified is cleared, and its timeout event won't occur.
    #   @return [Array<Types::TimerDefinition>]
    #
    class DetectorStateDefinition < Struct.new(
      :state_name,
      :variables,
      :timers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the detector state.
    #
    # @!attribute [rw] state_name
    #   The name of the state.
    #   @return [String]
    #
    class DetectorStateSummary < Struct.new(
      :state_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the detector (instance).
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model that created this detector
    #   (instance).
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the key (identifying the device or system) that caused
    #   the creation of this detector (instance).
    #   @return [String]
    #
    # @!attribute [rw] detector_model_version
    #   The version of the detector model that created this detector
    #   (instance).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the detector (instance).
    #   @return [Types::DetectorStateSummary]
    #
    # @!attribute [rw] creation_time
    #   The time the detector (instance) was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time the detector (instance) was last updated.
    #   @return [Time]
    #
    class DetectorSummary < Struct.new(
      :detector_model_name,
      :key_value,
      :detector_model_version,
      :state,
      :creation_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal failure occured.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was invalid.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDetectorsRequest
    #   data as a hash:
    #
    #       {
    #         detector_model_name: "DetectorModelName", # required
    #         state_name: "StateName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model whose detectors (instances) are
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] state_name
    #   A filter that limits results to those detectors (instances) in the
    #   given state.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListDetectorsRequest < Struct.new(
      :detector_model_name,
      :state_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_summaries
    #   A list of summary information about the detectors (instances).
    #   @return [Array<Types::DetectorSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results, or `null` if there are
    #   no additional results.
    #   @return [String]
    #
    class ListDetectorsResponse < Struct.new(
      :detector_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a message.
    #
    # @note When making an API call, you may pass Message
    #   data as a hash:
    #
    #       {
    #         message_id: "MessageId", # required
    #         input_name: "InputName", # required
    #         payload: "data", # required
    #       }
    #
    # @!attribute [rw] message_id
    #   The ID to assign to the message. Within each batch sent, each
    #   `"messageId"` must be unique.
    #   @return [String]
    #
    # @!attribute [rw] input_name
    #   The name of the input into which the message payload is transformed.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The payload of the message. This can be a JSON string or a
    #   Base-64-encoded string representing binary data (in which case you
    #   must decode it).
    #   @return [String]
    #
    class Message < Struct.new(
      :message_id,
      :input_name,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource was not found.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is currently unavailable.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to throttling.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current state of a timer.
    #
    # @!attribute [rw] name
    #   The name of the timer.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The number of seconds which have elapsed on the timer.
    #   @return [Time]
    #
    class Timer < Struct.new(
      :name,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The new setting of a timer.
    #
    # @note When making an API call, you may pass TimerDefinition
    #   data as a hash:
    #
    #       {
    #         name: "TimerName", # required
    #         seconds: 1, # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the timer.
    #   @return [String]
    #
    # @!attribute [rw] seconds
    #   The new setting of the timer (the number of seconds before the timer
    #   elapses).
    #   @return [Integer]
    #
    class TimerDefinition < Struct.new(
      :name,
      :seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information used to update the detector (instance).
    #
    # @note When making an API call, you may pass UpdateDetectorRequest
    #   data as a hash:
    #
    #       {
    #         message_id: "MessageId", # required
    #         detector_model_name: "DetectorModelName", # required
    #         key_value: "KeyValue",
    #         state: { # required
    #           state_name: "StateName", # required
    #           variables: [ # required
    #             {
    #               name: "VariableName", # required
    #               value: "VariableValue", # required
    #             },
    #           ],
    #           timers: [ # required
    #             {
    #               name: "TimerName", # required
    #               seconds: 1, # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] message_id
    #   The ID to assign to the detector update `"message"`. Each
    #   `"messageId"` must be unique within each batch sent.
    #   @return [String]
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model that created the detectors
    #   (instances).
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the input key attribute (identifying the device or
    #   system) that caused the creation of this detector (instance).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The new state, variable values, and timer settings of the detector
    #   (instance).
    #   @return [Types::DetectorStateDefinition]
    #
    class UpdateDetectorRequest < Struct.new(
      :message_id,
      :detector_model_name,
      :key_value,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current state of the variable.
    #
    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The current value of the variable.
    #   @return [String]
    #
    class Variable < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The new value of the variable.
    #
    # @note When making an API call, you may pass VariableDefinition
    #   data as a hash:
    #
    #       {
    #         name: "VariableName", # required
    #         value: "VariableValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The new value of the variable.
    #   @return [String]
    #
    class VariableDefinition < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
