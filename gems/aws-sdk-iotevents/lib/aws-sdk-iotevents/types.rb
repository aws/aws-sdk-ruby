# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTEvents
  module Types

    # An action to be performed when the `condition` is TRUE.
    #
    # @note When making an API call, you may pass Action
    #   data as a hash:
    #
    #       {
    #         set_variable: {
    #           variable_name: "VariableName", # required
    #           value: "VariableValue", # required
    #         },
    #         sns: {
    #           target_arn: "AmazonResourceName", # required
    #         },
    #         iot_topic_publish: {
    #           mqtt_topic: "MQTTTopic", # required
    #         },
    #         set_timer: {
    #           timer_name: "TimerName", # required
    #           seconds: 1, # required
    #         },
    #         clear_timer: {
    #           timer_name: "TimerName", # required
    #         },
    #         reset_timer: {
    #           timer_name: "TimerName", # required
    #         },
    #       }
    #
    # @!attribute [rw] set_variable
    #   Sets a variable to a specified value.
    #   @return [Types::SetVariableAction]
    #
    # @!attribute [rw] sns
    #   Sends an Amazon SNS message.
    #   @return [Types::SNSTopicPublishAction]
    #
    # @!attribute [rw] iot_topic_publish
    #   Publishes an MQTT message with the given topic to the AWS IoT
    #   Message Broker.
    #   @return [Types::IotTopicPublishAction]
    #
    # @!attribute [rw] set_timer
    #   Information needed to set the timer.
    #   @return [Types::SetTimerAction]
    #
    # @!attribute [rw] clear_timer
    #   Information needed to clear the timer.
    #   @return [Types::ClearTimerAction]
    #
    # @!attribute [rw] reset_timer
    #   Information needed to reset the timer.
    #   @return [Types::ResetTimerAction]
    #
    class Action < Struct.new(
      :set_variable,
      :sns,
      :iot_topic_publish,
      :set_timer,
      :clear_timer,
      :reset_timer)
      include Aws::Structure
    end

    # The attributes from the JSON payload that are made available by the
    # input. Inputs are derived from messages sent to the AWS IoT Events
    # system using `BatchPutMessage`. Each such message contains a JSON
    # payload, and those attributes (and their paired values) specified here
    # are available for use in the `condition` expressions used by
    # detectors.
    #
    # @note When making an API call, you may pass Attribute
    #   data as a hash:
    #
    #       {
    #         json_path: "AttributeJsonPath", # required
    #       }
    #
    # @!attribute [rw] json_path
    #   An expression that specifies an attribute-value pair in a JSON
    #   structure. Use this to specify an attribute from the JSON payload
    #   that is made available by the input. Inputs are derived from
    #   messages sent to the AWS IoT Events system (`BatchPutMessage`). Each
    #   such message contains a JSON payload, and the attribute (and its
    #   paired value) specified here are available for use in the
    #   `condition` expressions used by detectors.
    #
    #   Syntax: `<field-name>.<field-name>...`
    #   @return [String]
    #
    class Attribute < Struct.new(
      :json_path)
      include Aws::Structure
    end

    # Information needed to clear the timer.
    #
    # @note When making an API call, you may pass ClearTimerAction
    #   data as a hash:
    #
    #       {
    #         timer_name: "TimerName", # required
    #       }
    #
    # @!attribute [rw] timer_name
    #   The name of the timer to clear.
    #   @return [String]
    #
    class ClearTimerAction < Struct.new(
      :timer_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDetectorModelRequest
    #   data as a hash:
    #
    #       {
    #         detector_model_name: "DetectorModelName", # required
    #         detector_model_definition: { # required
    #           states: [ # required
    #             {
    #               state_name: "StateName", # required
    #               on_input: {
    #                 events: [
    #                   {
    #                     event_name: "EventName", # required
    #                     condition: "Condition",
    #                     actions: [
    #                       {
    #                         set_variable: {
    #                           variable_name: "VariableName", # required
    #                           value: "VariableValue", # required
    #                         },
    #                         sns: {
    #                           target_arn: "AmazonResourceName", # required
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1, # required
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                       },
    #                     ],
    #                   },
    #                 ],
    #                 transition_events: [
    #                   {
    #                     event_name: "EventName", # required
    #                     condition: "Condition", # required
    #                     actions: [
    #                       {
    #                         set_variable: {
    #                           variable_name: "VariableName", # required
    #                           value: "VariableValue", # required
    #                         },
    #                         sns: {
    #                           target_arn: "AmazonResourceName", # required
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1, # required
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                       },
    #                     ],
    #                     next_state: "StateName", # required
    #                   },
    #                 ],
    #               },
    #               on_enter: {
    #                 events: [
    #                   {
    #                     event_name: "EventName", # required
    #                     condition: "Condition",
    #                     actions: [
    #                       {
    #                         set_variable: {
    #                           variable_name: "VariableName", # required
    #                           value: "VariableValue", # required
    #                         },
    #                         sns: {
    #                           target_arn: "AmazonResourceName", # required
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1, # required
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                       },
    #                     ],
    #                   },
    #                 ],
    #               },
    #               on_exit: {
    #                 events: [
    #                   {
    #                     event_name: "EventName", # required
    #                     condition: "Condition",
    #                     actions: [
    #                       {
    #                         set_variable: {
    #                           variable_name: "VariableName", # required
    #                           value: "VariableValue", # required
    #                         },
    #                         sns: {
    #                           target_arn: "AmazonResourceName", # required
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1, # required
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                       },
    #                     ],
    #                   },
    #                 ],
    #               },
    #             },
    #           ],
    #           initial_state_name: "StateName", # required
    #         },
    #         detector_model_description: "DetectorModelDescription",
    #         key: "AttributeJsonPath",
    #         role_arn: "AmazonResourceName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] detector_model_definition
    #   Information that defines how the detectors operate.
    #   @return [Types::DetectorModelDefinition]
    #
    # @!attribute [rw] detector_model_description
    #   A brief description of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The input attribute key used to identify a device or system in order
    #   to create a detector (an instance of the detector model) and then to
    #   route each input received to the appropriate detector (instance).
    #   This parameter uses a JSON-path expression to specify the
    #   attribute-value pair in the message payload of each input that is
    #   used to identify the device associated with the input.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants permission to AWS IoT Events to
    #   perform its operations.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the detector model.
    #   @return [Array<Types::Tag>]
    #
    class CreateDetectorModelRequest < Struct.new(
      :detector_model_name,
      :detector_model_definition,
      :detector_model_description,
      :key,
      :role_arn,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] detector_model_configuration
    #   Information about how the detector model is configured.
    #   @return [Types::DetectorModelConfiguration]
    #
    class CreateDetectorModelResponse < Struct.new(
      :detector_model_configuration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInputRequest
    #   data as a hash:
    #
    #       {
    #         input_name: "InputName", # required
    #         input_description: "InputDescription",
    #         input_definition: { # required
    #           attributes: [ # required
    #             {
    #               json_path: "AttributeJsonPath", # required
    #             },
    #           ],
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] input_name
    #   The name you want to give to the input.
    #   @return [String]
    #
    # @!attribute [rw] input_description
    #   A brief description of the input.
    #   @return [String]
    #
    # @!attribute [rw] input_definition
    #   The definition of the input.
    #   @return [Types::InputDefinition]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the input.
    #   @return [Array<Types::Tag>]
    #
    class CreateInputRequest < Struct.new(
      :input_name,
      :input_description,
      :input_definition,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] input_configuration
    #   Information about the configuration of the input.
    #   @return [Types::InputConfiguration]
    #
    class CreateInputResponse < Struct.new(
      :input_configuration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDetectorModelRequest
    #   data as a hash:
    #
    #       {
    #         detector_model_name: "DetectorModelName", # required
    #       }
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model to be deleted.
    #   @return [String]
    #
    class DeleteDetectorModelRequest < Struct.new(
      :detector_model_name)
      include Aws::Structure
    end

    class DeleteDetectorModelResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteInputRequest
    #   data as a hash:
    #
    #       {
    #         input_name: "InputName", # required
    #       }
    #
    # @!attribute [rw] input_name
    #   The name of the input to be deleted.
    #   @return [String]
    #
    class DeleteInputRequest < Struct.new(
      :input_name)
      include Aws::Structure
    end

    class DeleteInputResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeDetectorModelRequest
    #   data as a hash:
    #
    #       {
    #         detector_model_name: "DetectorModelName", # required
    #         detector_model_version: "DetectorModelVersion",
    #       }
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] detector_model_version
    #   The version of the detector model.
    #   @return [String]
    #
    class DescribeDetectorModelRequest < Struct.new(
      :detector_model_name,
      :detector_model_version)
      include Aws::Structure
    end

    # @!attribute [rw] detector_model
    #   Information about the detector model.
    #   @return [Types::DetectorModel]
    #
    class DescribeDetectorModelResponse < Struct.new(
      :detector_model)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInputRequest
    #   data as a hash:
    #
    #       {
    #         input_name: "InputName", # required
    #       }
    #
    # @!attribute [rw] input_name
    #   The name of the input.
    #   @return [String]
    #
    class DescribeInputRequest < Struct.new(
      :input_name)
      include Aws::Structure
    end

    # @!attribute [rw] input
    #   Information about the input.
    #   @return [Types::Input]
    #
    class DescribeInputResponse < Struct.new(
      :input)
      include Aws::Structure
    end

    # @api private
    #
    class DescribeLoggingOptionsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] logging_options
    #   The current settings of the AWS IoT Events logging options.
    #   @return [Types::LoggingOptions]
    #
    class DescribeLoggingOptionsResponse < Struct.new(
      :logging_options)
      include Aws::Structure
    end

    # The detector model and the specific detectors (instances) for which
    # the logging level is given.
    #
    # @note When making an API call, you may pass DetectorDebugOption
    #   data as a hash:
    #
    #       {
    #         detector_model_name: "DetectorModelName", # required
    #         key_value: "KeyValue",
    #       }
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the input attribute key used to create the detector
    #   (the instance of the detector model).
    #   @return [String]
    #
    class DetectorDebugOption < Struct.new(
      :detector_model_name,
      :key_value)
      include Aws::Structure
    end

    # Information about the detector model.
    #
    # @!attribute [rw] detector_model_definition
    #   Information that defines how a detector operates.
    #   @return [Types::DetectorModelDefinition]
    #
    # @!attribute [rw] detector_model_configuration
    #   Information about how the detector is configured.
    #   @return [Types::DetectorModelConfiguration]
    #
    class DetectorModel < Struct.new(
      :detector_model_definition,
      :detector_model_configuration)
      include Aws::Structure
    end

    # Information about how the detector model is configured.
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] detector_model_version
    #   The version of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] detector_model_description
    #   A brief description of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] detector_model_arn
    #   The ARN of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants permission to AWS IoT Events to
    #   perform its operations.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the detector model was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time the detector model was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The input attribute key used to identify a device or system in order
    #   to create a detector (an instance of the detector model) and then to
    #   route each input received to the appropriate detector (instance).
    #   This parameter uses a JSON-path expression to specify the
    #   attribute-value pair in the message payload of each input that is
    #   used to identify the device associated with the input.
    #   @return [String]
    #
    class DetectorModelConfiguration < Struct.new(
      :detector_model_name,
      :detector_model_version,
      :detector_model_description,
      :detector_model_arn,
      :role_arn,
      :creation_time,
      :last_update_time,
      :status,
      :key)
      include Aws::Structure
    end

    # Information that defines how a detector operates.
    #
    # @note When making an API call, you may pass DetectorModelDefinition
    #   data as a hash:
    #
    #       {
    #         states: [ # required
    #           {
    #             state_name: "StateName", # required
    #             on_input: {
    #               events: [
    #                 {
    #                   event_name: "EventName", # required
    #                   condition: "Condition",
    #                   actions: [
    #                     {
    #                       set_variable: {
    #                         variable_name: "VariableName", # required
    #                         value: "VariableValue", # required
    #                       },
    #                       sns: {
    #                         target_arn: "AmazonResourceName", # required
    #                       },
    #                       iot_topic_publish: {
    #                         mqtt_topic: "MQTTTopic", # required
    #                       },
    #                       set_timer: {
    #                         timer_name: "TimerName", # required
    #                         seconds: 1, # required
    #                       },
    #                       clear_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       reset_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               transition_events: [
    #                 {
    #                   event_name: "EventName", # required
    #                   condition: "Condition", # required
    #                   actions: [
    #                     {
    #                       set_variable: {
    #                         variable_name: "VariableName", # required
    #                         value: "VariableValue", # required
    #                       },
    #                       sns: {
    #                         target_arn: "AmazonResourceName", # required
    #                       },
    #                       iot_topic_publish: {
    #                         mqtt_topic: "MQTTTopic", # required
    #                       },
    #                       set_timer: {
    #                         timer_name: "TimerName", # required
    #                         seconds: 1, # required
    #                       },
    #                       clear_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       reset_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                     },
    #                   ],
    #                   next_state: "StateName", # required
    #                 },
    #               ],
    #             },
    #             on_enter: {
    #               events: [
    #                 {
    #                   event_name: "EventName", # required
    #                   condition: "Condition",
    #                   actions: [
    #                     {
    #                       set_variable: {
    #                         variable_name: "VariableName", # required
    #                         value: "VariableValue", # required
    #                       },
    #                       sns: {
    #                         target_arn: "AmazonResourceName", # required
    #                       },
    #                       iot_topic_publish: {
    #                         mqtt_topic: "MQTTTopic", # required
    #                       },
    #                       set_timer: {
    #                         timer_name: "TimerName", # required
    #                         seconds: 1, # required
    #                       },
    #                       clear_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       reset_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #             },
    #             on_exit: {
    #               events: [
    #                 {
    #                   event_name: "EventName", # required
    #                   condition: "Condition",
    #                   actions: [
    #                     {
    #                       set_variable: {
    #                         variable_name: "VariableName", # required
    #                         value: "VariableValue", # required
    #                       },
    #                       sns: {
    #                         target_arn: "AmazonResourceName", # required
    #                       },
    #                       iot_topic_publish: {
    #                         mqtt_topic: "MQTTTopic", # required
    #                       },
    #                       set_timer: {
    #                         timer_name: "TimerName", # required
    #                         seconds: 1, # required
    #                       },
    #                       clear_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       reset_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #         initial_state_name: "StateName", # required
    #       }
    #
    # @!attribute [rw] states
    #   Information about the states of the detector.
    #   @return [Array<Types::State>]
    #
    # @!attribute [rw] initial_state_name
    #   The state that is entered at the creation of each detector
    #   (instance).
    #   @return [String]
    #
    class DetectorModelDefinition < Struct.new(
      :states,
      :initial_state_name)
      include Aws::Structure
    end

    # Information about the detector model.
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] detector_model_description
    #   A brief description of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the detector model was created.
    #   @return [Time]
    #
    class DetectorModelSummary < Struct.new(
      :detector_model_name,
      :detector_model_description,
      :creation_time)
      include Aws::Structure
    end

    # Information about the detector model version.
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] detector_model_version
    #   The ID of the detector model version.
    #   @return [String]
    #
    # @!attribute [rw] detector_model_arn
    #   The ARN of the detector model version.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants the detector model permission to
    #   perform its tasks.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the detector model version was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last time the detector model version was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the detector model version.
    #   @return [String]
    #
    class DetectorModelVersionSummary < Struct.new(
      :detector_model_name,
      :detector_model_version,
      :detector_model_arn,
      :role_arn,
      :creation_time,
      :last_update_time,
      :status)
      include Aws::Structure
    end

    # Specifies the `actions` to be performed when the `condition` evaluates
    # to TRUE.
    #
    # @note When making an API call, you may pass Event
    #   data as a hash:
    #
    #       {
    #         event_name: "EventName", # required
    #         condition: "Condition",
    #         actions: [
    #           {
    #             set_variable: {
    #               variable_name: "VariableName", # required
    #               value: "VariableValue", # required
    #             },
    #             sns: {
    #               target_arn: "AmazonResourceName", # required
    #             },
    #             iot_topic_publish: {
    #               mqtt_topic: "MQTTTopic", # required
    #             },
    #             set_timer: {
    #               timer_name: "TimerName", # required
    #               seconds: 1, # required
    #             },
    #             clear_timer: {
    #               timer_name: "TimerName", # required
    #             },
    #             reset_timer: {
    #               timer_name: "TimerName", # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] event_name
    #   The name of the event.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   \[Optional\] The Boolean expression that when TRUE causes the
    #   `actions` to be performed. If not present, the actions are performed
    #   (=TRUE); if the expression result is not a Boolean value the actions
    #   are NOT performed (=FALSE).
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions to be performed.
    #   @return [Array<Types::Action>]
    #
    class Event < Struct.new(
      :event_name,
      :condition,
      :actions)
      include Aws::Structure
    end

    # Information about the input.
    #
    # @!attribute [rw] input_configuration
    #   Information about the configuration of an input.
    #   @return [Types::InputConfiguration]
    #
    # @!attribute [rw] input_definition
    #   The definition of the input.
    #   @return [Types::InputDefinition]
    #
    class Input < Struct.new(
      :input_configuration,
      :input_definition)
      include Aws::Structure
    end

    # Information about the configuration of an input.
    #
    # @!attribute [rw] input_name
    #   The name of the input.
    #   @return [String]
    #
    # @!attribute [rw] input_description
    #   A brief description of the input.
    #   @return [String]
    #
    # @!attribute [rw] input_arn
    #   The ARN of the input.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the input was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last time the input was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the input.
    #   @return [String]
    #
    class InputConfiguration < Struct.new(
      :input_name,
      :input_description,
      :input_arn,
      :creation_time,
      :last_update_time,
      :status)
      include Aws::Structure
    end

    # The definition of the input.
    #
    # @note When making an API call, you may pass InputDefinition
    #   data as a hash:
    #
    #       {
    #         attributes: [ # required
    #           {
    #             json_path: "AttributeJsonPath", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] attributes
    #   The attributes from the JSON payload that are made available by the
    #   input. Inputs are derived from messages sent to the AWS IoT Events
    #   system using `BatchPutMessage`. Each such message contains a JSON
    #   payload, and those attributes (and their paired values) specified
    #   here is available for use in the `condition` expressions used by
    #   detectors that monitor this input.
    #   @return [Array<Types::Attribute>]
    #
    class InputDefinition < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # Information about the input.
    #
    # @!attribute [rw] input_name
    #   The name of the input.
    #   @return [String]
    #
    # @!attribute [rw] input_description
    #   A brief description of the input.
    #   @return [String]
    #
    # @!attribute [rw] input_arn
    #   The ARN of the input.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the input was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last time the input was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the input.
    #   @return [String]
    #
    class InputSummary < Struct.new(
      :input_name,
      :input_description,
      :input_arn,
      :creation_time,
      :last_update_time,
      :status)
      include Aws::Structure
    end

    # An internal failure occurred.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InternalFailureException < Struct.new(
      :message)
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
      include Aws::Structure
    end

    # Information required to publish the MQTT message via the AWS IoT
    # Message Broker.
    #
    # @note When making an API call, you may pass IotTopicPublishAction
    #   data as a hash:
    #
    #       {
    #         mqtt_topic: "MQTTTopic", # required
    #       }
    #
    # @!attribute [rw] mqtt_topic
    #   The MQTT topic of the message.
    #   @return [String]
    #
    class IotTopicPublishAction < Struct.new(
      :mqtt_topic)
      include Aws::Structure
    end

    # A limit was exceeded.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class LimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDetectorModelVersionsRequest
    #   data as a hash:
    #
    #       {
    #         detector_model_name: "DetectorModelName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model whose versions are returned.
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
    class ListDetectorModelVersionsRequest < Struct.new(
      :detector_model_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] detector_model_version_summaries
    #   Summary information about the detector model versions.
    #   @return [Array<Types::DetectorModelVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results, or `null` if there are
    #   no additional results.
    #   @return [String]
    #
    class ListDetectorModelVersionsResponse < Struct.new(
      :detector_model_version_summaries,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDetectorModelsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListDetectorModelsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] detector_model_summaries
    #   Summary information about the detector models.
    #   @return [Array<Types::DetectorModelSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results, or `null` if there are
    #   no additional results.
    #   @return [String]
    #
    class ListDetectorModelsResponse < Struct.new(
      :detector_model_summaries,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInputsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at one time.
    #   @return [Integer]
    #
    class ListInputsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] input_summaries
    #   Summary information about the inputs.
    #   @return [Array<Types::InputSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results, or `null` if there are
    #   no additional results.
    #   @return [String]
    #
    class ListInputsResponse < Struct.new(
      :input_summaries,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # The values of the AWS IoT Events logging options.
    #
    # @note When making an API call, you may pass LoggingOptions
    #   data as a hash:
    #
    #       {
    #         role_arn: "AmazonResourceName", # required
    #         level: "ERROR", # required, accepts ERROR, INFO, DEBUG
    #         enabled: false, # required
    #         detector_debug_options: [
    #           {
    #             detector_model_name: "DetectorModelName", # required
    #             key_value: "KeyValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants permission to AWS IoT Events to
    #   perform logging.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   The logging level. Currently, only "ERROR" is supported.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If TRUE, logging is enabled for AWS IoT Events.
    #   @return [Boolean]
    #
    # @!attribute [rw] detector_debug_options
    #   Information that identifies those detector models and their
    #   detectors (instances) for which the logging level is given.
    #   @return [Array<Types::DetectorDebugOption>]
    #
    class LoggingOptions < Struct.new(
      :role_arn,
      :level,
      :enabled,
      :detector_debug_options)
      include Aws::Structure
    end

    # When entering this state, perform these `actions` if the `condition`
    # is TRUE.
    #
    # @note When making an API call, you may pass OnEnterLifecycle
    #   data as a hash:
    #
    #       {
    #         events: [
    #           {
    #             event_name: "EventName", # required
    #             condition: "Condition",
    #             actions: [
    #               {
    #                 set_variable: {
    #                   variable_name: "VariableName", # required
    #                   value: "VariableValue", # required
    #                 },
    #                 sns: {
    #                   target_arn: "AmazonResourceName", # required
    #                 },
    #                 iot_topic_publish: {
    #                   mqtt_topic: "MQTTTopic", # required
    #                 },
    #                 set_timer: {
    #                   timer_name: "TimerName", # required
    #                   seconds: 1, # required
    #                 },
    #                 clear_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #                 reset_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] events
    #   Specifies the actions that are performed when the state is entered
    #   and the `condition` is TRUE.
    #   @return [Array<Types::Event>]
    #
    class OnEnterLifecycle < Struct.new(
      :events)
      include Aws::Structure
    end

    # When exiting this state, perform these `actions` if the specified
    # `condition` is TRUE.
    #
    # @note When making an API call, you may pass OnExitLifecycle
    #   data as a hash:
    #
    #       {
    #         events: [
    #           {
    #             event_name: "EventName", # required
    #             condition: "Condition",
    #             actions: [
    #               {
    #                 set_variable: {
    #                   variable_name: "VariableName", # required
    #                   value: "VariableValue", # required
    #                 },
    #                 sns: {
    #                   target_arn: "AmazonResourceName", # required
    #                 },
    #                 iot_topic_publish: {
    #                   mqtt_topic: "MQTTTopic", # required
    #                 },
    #                 set_timer: {
    #                   timer_name: "TimerName", # required
    #                   seconds: 1, # required
    #                 },
    #                 clear_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #                 reset_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] events
    #   Specifies the actions that are performed when the state is exited
    #   and the `condition` is TRUE.
    #   @return [Array<Types::Event>]
    #
    class OnExitLifecycle < Struct.new(
      :events)
      include Aws::Structure
    end

    # Specifies the actions performed when the `condition` evaluates to
    # TRUE.
    #
    # @note When making an API call, you may pass OnInputLifecycle
    #   data as a hash:
    #
    #       {
    #         events: [
    #           {
    #             event_name: "EventName", # required
    #             condition: "Condition",
    #             actions: [
    #               {
    #                 set_variable: {
    #                   variable_name: "VariableName", # required
    #                   value: "VariableValue", # required
    #                 },
    #                 sns: {
    #                   target_arn: "AmazonResourceName", # required
    #                 },
    #                 iot_topic_publish: {
    #                   mqtt_topic: "MQTTTopic", # required
    #                 },
    #                 set_timer: {
    #                   timer_name: "TimerName", # required
    #                   seconds: 1, # required
    #                 },
    #                 clear_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #                 reset_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         transition_events: [
    #           {
    #             event_name: "EventName", # required
    #             condition: "Condition", # required
    #             actions: [
    #               {
    #                 set_variable: {
    #                   variable_name: "VariableName", # required
    #                   value: "VariableValue", # required
    #                 },
    #                 sns: {
    #                   target_arn: "AmazonResourceName", # required
    #                 },
    #                 iot_topic_publish: {
    #                   mqtt_topic: "MQTTTopic", # required
    #                 },
    #                 set_timer: {
    #                   timer_name: "TimerName", # required
    #                   seconds: 1, # required
    #                 },
    #                 clear_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #                 reset_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #               },
    #             ],
    #             next_state: "StateName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] events
    #   Specifies the actions performed when the `condition` evaluates to
    #   TRUE.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] transition_events
    #   Specifies the actions performed and the next state entered when a
    #   `condition` evaluates to TRUE.
    #   @return [Array<Types::TransitionEvent>]
    #
    class OnInputLifecycle < Struct.new(
      :events,
      :transition_events)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutLoggingOptionsRequest
    #   data as a hash:
    #
    #       {
    #         logging_options: { # required
    #           role_arn: "AmazonResourceName", # required
    #           level: "ERROR", # required, accepts ERROR, INFO, DEBUG
    #           enabled: false, # required
    #           detector_debug_options: [
    #             {
    #               detector_model_name: "DetectorModelName", # required
    #               key_value: "KeyValue",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] logging_options
    #   The new values of the AWS IoT Events logging options.
    #   @return [Types::LoggingOptions]
    #
    class PutLoggingOptionsRequest < Struct.new(
      :logging_options)
      include Aws::Structure
    end

    # Information needed to reset the timer.
    #
    # @note When making an API call, you may pass ResetTimerAction
    #   data as a hash:
    #
    #       {
    #         timer_name: "TimerName", # required
    #       }
    #
    # @!attribute [rw] timer_name
    #   The name of the timer to reset.
    #   @return [String]
    #
    class ResetTimerAction < Struct.new(
      :timer_name)
      include Aws::Structure
    end

    # The resource already exists.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      :resource_id,
      :resource_arn)
      include Aws::Structure
    end

    # The resource is in use.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ResourceInUseException < Struct.new(
      :message)
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
      include Aws::Structure
    end

    # Information required to publish the Amazon SNS message.
    #
    # @note When making an API call, you may pass SNSTopicPublishAction
    #   data as a hash:
    #
    #       {
    #         target_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] target_arn
    #   The ARN of the Amazon SNS target to which the message is sent.
    #   @return [String]
    #
    class SNSTopicPublishAction < Struct.new(
      :target_arn)
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
      include Aws::Structure
    end

    # Information needed to set the timer.
    #
    # @note When making an API call, you may pass SetTimerAction
    #   data as a hash:
    #
    #       {
    #         timer_name: "TimerName", # required
    #         seconds: 1, # required
    #       }
    #
    # @!attribute [rw] timer_name
    #   The name of the timer.
    #   @return [String]
    #
    # @!attribute [rw] seconds
    #   The number of seconds until the timer expires. The minimum value is
    #   60 seconds to ensure accuracy.
    #   @return [Integer]
    #
    class SetTimerAction < Struct.new(
      :timer_name,
      :seconds)
      include Aws::Structure
    end

    # Information about the variable and its new value.
    #
    # @note When making an API call, you may pass SetVariableAction
    #   data as a hash:
    #
    #       {
    #         variable_name: "VariableName", # required
    #         value: "VariableValue", # required
    #       }
    #
    # @!attribute [rw] variable_name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The new value of the variable.
    #   @return [String]
    #
    class SetVariableAction < Struct.new(
      :variable_name,
      :value)
      include Aws::Structure
    end

    # Information that defines a state of a detector.
    #
    # @note When making an API call, you may pass State
    #   data as a hash:
    #
    #       {
    #         state_name: "StateName", # required
    #         on_input: {
    #           events: [
    #             {
    #               event_name: "EventName", # required
    #               condition: "Condition",
    #               actions: [
    #                 {
    #                   set_variable: {
    #                     variable_name: "VariableName", # required
    #                     value: "VariableValue", # required
    #                   },
    #                   sns: {
    #                     target_arn: "AmazonResourceName", # required
    #                   },
    #                   iot_topic_publish: {
    #                     mqtt_topic: "MQTTTopic", # required
    #                   },
    #                   set_timer: {
    #                     timer_name: "TimerName", # required
    #                     seconds: 1, # required
    #                   },
    #                   clear_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                   reset_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           transition_events: [
    #             {
    #               event_name: "EventName", # required
    #               condition: "Condition", # required
    #               actions: [
    #                 {
    #                   set_variable: {
    #                     variable_name: "VariableName", # required
    #                     value: "VariableValue", # required
    #                   },
    #                   sns: {
    #                     target_arn: "AmazonResourceName", # required
    #                   },
    #                   iot_topic_publish: {
    #                     mqtt_topic: "MQTTTopic", # required
    #                   },
    #                   set_timer: {
    #                     timer_name: "TimerName", # required
    #                     seconds: 1, # required
    #                   },
    #                   clear_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                   reset_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                 },
    #               ],
    #               next_state: "StateName", # required
    #             },
    #           ],
    #         },
    #         on_enter: {
    #           events: [
    #             {
    #               event_name: "EventName", # required
    #               condition: "Condition",
    #               actions: [
    #                 {
    #                   set_variable: {
    #                     variable_name: "VariableName", # required
    #                     value: "VariableValue", # required
    #                   },
    #                   sns: {
    #                     target_arn: "AmazonResourceName", # required
    #                   },
    #                   iot_topic_publish: {
    #                     mqtt_topic: "MQTTTopic", # required
    #                   },
    #                   set_timer: {
    #                     timer_name: "TimerName", # required
    #                     seconds: 1, # required
    #                   },
    #                   clear_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                   reset_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         on_exit: {
    #           events: [
    #             {
    #               event_name: "EventName", # required
    #               condition: "Condition",
    #               actions: [
    #                 {
    #                   set_variable: {
    #                     variable_name: "VariableName", # required
    #                     value: "VariableValue", # required
    #                   },
    #                   sns: {
    #                     target_arn: "AmazonResourceName", # required
    #                   },
    #                   iot_topic_publish: {
    #                     mqtt_topic: "MQTTTopic", # required
    #                   },
    #                   set_timer: {
    #                     timer_name: "TimerName", # required
    #                     seconds: 1, # required
    #                   },
    #                   clear_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                   reset_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] state_name
    #   The name of the state.
    #   @return [String]
    #
    # @!attribute [rw] on_input
    #   When an input is received and the `condition` is TRUE, perform the
    #   specified `actions`.
    #   @return [Types::OnInputLifecycle]
    #
    # @!attribute [rw] on_enter
    #   When entering this state, perform these `actions` if the `condition`
    #   is TRUE.
    #   @return [Types::OnEnterLifecycle]
    #
    # @!attribute [rw] on_exit
    #   When exiting this state, perform these `actions` if the specified
    #   `condition` is TRUE.
    #   @return [Types::OnExitLifecycle]
    #
    class State < Struct.new(
      :state_name,
      :on_input,
      :on_enter,
      :on_exit)
      include Aws::Structure
    end

    # Metadata which can be used to manage the resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The tag's key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value.
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The new or modified tags for the resource.
    #   @return [Array<Types::Tag>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # The request could not be completed due to throttling.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Specifies the actions performed and the next state entered when a
    # `condition` evaluates to TRUE.
    #
    # @note When making an API call, you may pass TransitionEvent
    #   data as a hash:
    #
    #       {
    #         event_name: "EventName", # required
    #         condition: "Condition", # required
    #         actions: [
    #           {
    #             set_variable: {
    #               variable_name: "VariableName", # required
    #               value: "VariableValue", # required
    #             },
    #             sns: {
    #               target_arn: "AmazonResourceName", # required
    #             },
    #             iot_topic_publish: {
    #               mqtt_topic: "MQTTTopic", # required
    #             },
    #             set_timer: {
    #               timer_name: "TimerName", # required
    #               seconds: 1, # required
    #             },
    #             clear_timer: {
    #               timer_name: "TimerName", # required
    #             },
    #             reset_timer: {
    #               timer_name: "TimerName", # required
    #             },
    #           },
    #         ],
    #         next_state: "StateName", # required
    #       }
    #
    # @!attribute [rw] event_name
    #   The name of the transition event.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   \[Required\] A Boolean expression that when TRUE causes the actions
    #   to be performed and the `nextState` to be entered.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions to be performed.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] next_state
    #   The next state to enter.
    #   @return [String]
    #
    class TransitionEvent < Struct.new(
      :event_name,
      :condition,
      :actions,
      :next_state)
      include Aws::Structure
    end

    # The requested operation is not supported.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class UnsupportedOperationException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of the keys of the tags to be removed from the resource.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDetectorModelRequest
    #   data as a hash:
    #
    #       {
    #         detector_model_name: "DetectorModelName", # required
    #         detector_model_definition: { # required
    #           states: [ # required
    #             {
    #               state_name: "StateName", # required
    #               on_input: {
    #                 events: [
    #                   {
    #                     event_name: "EventName", # required
    #                     condition: "Condition",
    #                     actions: [
    #                       {
    #                         set_variable: {
    #                           variable_name: "VariableName", # required
    #                           value: "VariableValue", # required
    #                         },
    #                         sns: {
    #                           target_arn: "AmazonResourceName", # required
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1, # required
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                       },
    #                     ],
    #                   },
    #                 ],
    #                 transition_events: [
    #                   {
    #                     event_name: "EventName", # required
    #                     condition: "Condition", # required
    #                     actions: [
    #                       {
    #                         set_variable: {
    #                           variable_name: "VariableName", # required
    #                           value: "VariableValue", # required
    #                         },
    #                         sns: {
    #                           target_arn: "AmazonResourceName", # required
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1, # required
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                       },
    #                     ],
    #                     next_state: "StateName", # required
    #                   },
    #                 ],
    #               },
    #               on_enter: {
    #                 events: [
    #                   {
    #                     event_name: "EventName", # required
    #                     condition: "Condition",
    #                     actions: [
    #                       {
    #                         set_variable: {
    #                           variable_name: "VariableName", # required
    #                           value: "VariableValue", # required
    #                         },
    #                         sns: {
    #                           target_arn: "AmazonResourceName", # required
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1, # required
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                       },
    #                     ],
    #                   },
    #                 ],
    #               },
    #               on_exit: {
    #                 events: [
    #                   {
    #                     event_name: "EventName", # required
    #                     condition: "Condition",
    #                     actions: [
    #                       {
    #                         set_variable: {
    #                           variable_name: "VariableName", # required
    #                           value: "VariableValue", # required
    #                         },
    #                         sns: {
    #                           target_arn: "AmazonResourceName", # required
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1, # required
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                       },
    #                     ],
    #                   },
    #                 ],
    #               },
    #             },
    #           ],
    #           initial_state_name: "StateName", # required
    #         },
    #         detector_model_description: "DetectorModelDescription",
    #         role_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model to be updated.
    #   @return [String]
    #
    # @!attribute [rw] detector_model_definition
    #   Information that defines how a detector operates.
    #   @return [Types::DetectorModelDefinition]
    #
    # @!attribute [rw] detector_model_description
    #   A brief description of the detector model.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants permission to AWS IoT Events to
    #   perform its operations.
    #   @return [String]
    #
    class UpdateDetectorModelRequest < Struct.new(
      :detector_model_name,
      :detector_model_definition,
      :detector_model_description,
      :role_arn)
      include Aws::Structure
    end

    # @!attribute [rw] detector_model_configuration
    #   Information about how the detector model is configured.
    #   @return [Types::DetectorModelConfiguration]
    #
    class UpdateDetectorModelResponse < Struct.new(
      :detector_model_configuration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateInputRequest
    #   data as a hash:
    #
    #       {
    #         input_name: "InputName", # required
    #         input_description: "InputDescription",
    #         input_definition: { # required
    #           attributes: [ # required
    #             {
    #               json_path: "AttributeJsonPath", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] input_name
    #   The name of the input you want to update.
    #   @return [String]
    #
    # @!attribute [rw] input_description
    #   A brief description of the input.
    #   @return [String]
    #
    # @!attribute [rw] input_definition
    #   The definition of the input.
    #   @return [Types::InputDefinition]
    #
    class UpdateInputRequest < Struct.new(
      :input_name,
      :input_description,
      :input_definition)
      include Aws::Structure
    end

    # @!attribute [rw] input_configuration
    #   Information about the configuration of the input.
    #   @return [Types::InputConfiguration]
    #
    class UpdateInputResponse < Struct.new(
      :input_configuration)
      include Aws::Structure
    end

  end
end
