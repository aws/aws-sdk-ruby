# frozen_string_literal: true

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
    #           payload: {
    #             content_expression: "ContentExpression", # required
    #             type: "STRING", # required, accepts STRING, JSON
    #           },
    #         },
    #         iot_topic_publish: {
    #           mqtt_topic: "MQTTTopic", # required
    #           payload: {
    #             content_expression: "ContentExpression", # required
    #             type: "STRING", # required, accepts STRING, JSON
    #           },
    #         },
    #         set_timer: {
    #           timer_name: "TimerName", # required
    #           seconds: 1,
    #           duration_expression: "VariableValue",
    #         },
    #         clear_timer: {
    #           timer_name: "TimerName", # required
    #         },
    #         reset_timer: {
    #           timer_name: "TimerName", # required
    #         },
    #         lambda: {
    #           function_arn: "AmazonResourceName", # required
    #           payload: {
    #             content_expression: "ContentExpression", # required
    #             type: "STRING", # required, accepts STRING, JSON
    #           },
    #         },
    #         iot_events: {
    #           input_name: "InputName", # required
    #           payload: {
    #             content_expression: "ContentExpression", # required
    #             type: "STRING", # required, accepts STRING, JSON
    #           },
    #         },
    #         sqs: {
    #           queue_url: "QueueUrl", # required
    #           use_base_64: false,
    #           payload: {
    #             content_expression: "ContentExpression", # required
    #             type: "STRING", # required, accepts STRING, JSON
    #           },
    #         },
    #         firehose: {
    #           delivery_stream_name: "DeliveryStreamName", # required
    #           separator: "FirehoseSeparator",
    #           payload: {
    #             content_expression: "ContentExpression", # required
    #             type: "STRING", # required, accepts STRING, JSON
    #           },
    #         },
    #         dynamo_db: {
    #           hash_key_type: "DynamoKeyType",
    #           hash_key_field: "DynamoKeyField", # required
    #           hash_key_value: "DynamoKeyValue", # required
    #           range_key_type: "DynamoKeyType",
    #           range_key_field: "DynamoKeyField",
    #           range_key_value: "DynamoKeyValue",
    #           operation: "DynamoOperation",
    #           payload_field: "DynamoKeyField",
    #           table_name: "DynamoTableName", # required
    #           payload: {
    #             content_expression: "ContentExpression", # required
    #             type: "STRING", # required, accepts STRING, JSON
    #           },
    #         },
    #         dynamo_d_bv_2: {
    #           table_name: "DynamoTableName", # required
    #           payload: {
    #             content_expression: "ContentExpression", # required
    #             type: "STRING", # required, accepts STRING, JSON
    #           },
    #         },
    #         iot_site_wise: {
    #           entry_id: "AssetPropertyEntryId",
    #           asset_id: "AssetId",
    #           property_id: "AssetPropertyId",
    #           property_alias: "AssetPropertyAlias",
    #           property_value: { # required
    #             value: { # required
    #               string_value: "AssetPropertyStringValue",
    #               integer_value: "AssetPropertyIntegerValue",
    #               double_value: "AssetPropertyDoubleValue",
    #               boolean_value: "AssetPropertyBooleanValue",
    #             },
    #             timestamp: {
    #               time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #               offset_in_nanos: "AssetPropertyOffsetInNanos",
    #             },
    #             quality: "AssetPropertyQuality",
    #           },
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
    #   message broker.
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
    # @!attribute [rw] lambda
    #   Calls a Lambda function, passing in information about the detector
    #   model instance and the event that triggered the action.
    #   @return [Types::LambdaAction]
    #
    # @!attribute [rw] iot_events
    #   Sends AWS IoT Events input, which passes information about the
    #   detector model instance and the event that triggered the action.
    #   @return [Types::IotEventsAction]
    #
    # @!attribute [rw] sqs
    #   Sends information about the detector model instance and the event
    #   that triggered the action to an Amazon SQS queue.
    #   @return [Types::SqsAction]
    #
    # @!attribute [rw] firehose
    #   Sends information about the detector model instance and the event
    #   that triggered the action to an Amazon Kinesis Data Firehose
    #   delivery stream.
    #   @return [Types::FirehoseAction]
    #
    # @!attribute [rw] dynamo_db
    #   Writes to the DynamoDB table that you created. The default action
    #   payload contains all attribute-value pairs that have the information
    #   about the detector model instance and the event that triggered the
    #   action. You can also customize the [payload][1]. One column of the
    #   DynamoDB table receives all attribute-value pairs in the payload
    #   that you specify. For more information, see [Actions][2] in *AWS IoT
    #   Events Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html
    #   [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html
    #   @return [Types::DynamoDBAction]
    #
    # @!attribute [rw] dynamo_d_bv_2
    #   Writes to the DynamoDB table that you created. The default action
    #   payload contains all attribute-value pairs that have the information
    #   about the detector model instance and the event that triggered the
    #   action. You can also customize the [payload][1]. A separate column
    #   of the DynamoDB table receives one attribute-value pair in the
    #   payload that you specify. For more information, see [Actions][2] in
    #   *AWS IoT Events Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html
    #   [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html
    #   @return [Types::DynamoDBv2Action]
    #
    # @!attribute [rw] iot_site_wise
    #   Sends information about the detector model instance and the event
    #   that triggered the action to an asset property in AWS IoT SiteWise .
    #   @return [Types::IotSiteWiseAction]
    #
    class Action < Struct.new(
      :set_variable,
      :sns,
      :iot_topic_publish,
      :set_timer,
      :clear_timer,
      :reset_timer,
      :lambda,
      :iot_events,
      :sqs,
      :firehose,
      :dynamo_db,
      :dynamo_d_bv_2,
      :iot_site_wise)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains timestamp information. For more information,
    # see [TimeInNanos][1] in the *AWS IoT SiteWise API Reference*.
    #
    # For parameters that are string data type, you can specify the
    # following options:
    #
    # * Use a string. For example, the `timeInSeconds` value can be
    #   `'1586400675'`.
    #
    # * Use an expression. For example, the `timeInSeconds` value can be
    #   `'$\{$input.TemperatureInput.sensorData.timestamp/1000\}'`.
    #
    #   For more information, see [Expressions][2] in the *AWS IoT Events
    #   Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_TimeInNanos.html
    # [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    #
    # @note When making an API call, you may pass AssetPropertyTimestamp
    #   data as a hash:
    #
    #       {
    #         time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #         offset_in_nanos: "AssetPropertyOffsetInNanos",
    #       }
    #
    # @!attribute [rw] time_in_seconds
    #   The timestamp, in seconds, in the Unix epoch format. The valid range
    #   is between 1-31556889864403199. You can also specify an expression.
    #   @return [String]
    #
    # @!attribute [rw] offset_in_nanos
    #   The nanosecond offset converted from `timeInSeconds`. The valid
    #   range is between 0-999999999. You can also specify an expression.
    #   @return [String]
    #
    class AssetPropertyTimestamp < Struct.new(
      :time_in_seconds,
      :offset_in_nanos)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains value information. For more information, see
    # [AssetPropertyValue][1] in the *AWS IoT SiteWise API Reference*.
    #
    # For parameters that are string data type, you can specify the
    # following options:
    #
    # * Use a string. For example, the `quality` value can be `'GOOD'`.
    #
    # * Use an expression. For example, the `quality` value can be
    #   `$input.TemperatureInput.sensorData.quality` .
    #
    #   For more information, see [Expressions][2] in the *AWS IoT Events
    #   Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetPropertyValue.html
    # [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    #
    # @note When making an API call, you may pass AssetPropertyValue
    #   data as a hash:
    #
    #       {
    #         value: { # required
    #           string_value: "AssetPropertyStringValue",
    #           integer_value: "AssetPropertyIntegerValue",
    #           double_value: "AssetPropertyDoubleValue",
    #           boolean_value: "AssetPropertyBooleanValue",
    #         },
    #         timestamp: {
    #           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #           offset_in_nanos: "AssetPropertyOffsetInNanos",
    #         },
    #         quality: "AssetPropertyQuality",
    #       }
    #
    # @!attribute [rw] value
    #   The value to send to an asset property.
    #   @return [Types::AssetPropertyVariant]
    #
    # @!attribute [rw] timestamp
    #   The timestamp associated with the asset property value. The default
    #   is the current event time.
    #   @return [Types::AssetPropertyTimestamp]
    #
    # @!attribute [rw] quality
    #   The quality of the asset property value. The value must be `GOOD`,
    #   `BAD`, or `UNCERTAIN`. You can also specify an expression.
    #   @return [String]
    #
    class AssetPropertyValue < Struct.new(
      :value,
      :timestamp,
      :quality)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains an asset property value. For more
    # information, see [Variant][1] in the *AWS IoT SiteWise API Reference*.
    #
    # You must specify one of the following value types, depending on the
    # `dataType` of the specified asset property. For more information, see
    # [AssetProperty][2] in the *AWS IoT SiteWise API Reference*.
    #
    # For parameters that are string data type, you can specify the
    # following options:
    #
    # * Use a string. For example, the `doubleValue` value can be `'47.9'`.
    #
    # * Use an expression. For example, the `doubleValue` value can be
    #   `$input.TemperatureInput.sensorData.temperature`.
    #
    #   For more information, see [Expressions][3] in the *AWS IoT Events
    #   Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_Variant.html
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetProperty.html
    # [3]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    #
    # @note When making an API call, you may pass AssetPropertyVariant
    #   data as a hash:
    #
    #       {
    #         string_value: "AssetPropertyStringValue",
    #         integer_value: "AssetPropertyIntegerValue",
    #         double_value: "AssetPropertyDoubleValue",
    #         boolean_value: "AssetPropertyBooleanValue",
    #       }
    #
    # @!attribute [rw] string_value
    #   The asset property value is a string. You can also specify an
    #   expression. If you use an expression, the evaluated result should be
    #   a string.
    #   @return [String]
    #
    # @!attribute [rw] integer_value
    #   The asset property value is an integer. You can also specify an
    #   expression. If you use an expression, the evaluated result should be
    #   an integer.
    #   @return [String]
    #
    # @!attribute [rw] double_value
    #   The asset property value is a double. You can also specify an
    #   expression. If you use an expression, the evaluated result should be
    #   a double.
    #   @return [String]
    #
    # @!attribute [rw] boolean_value
    #   The asset property value is a Boolean value that must be `TRUE` or
    #   `FALSE`. You can also specify an expression. If you use an
    #   expression, the evaluated result should be a Boolean value.
    #   @return [String]
    #
    class AssetPropertyVariant < Struct.new(
      :string_value,
      :integer_value,
      :double_value,
      :boolean_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attributes from the JSON payload that are made available by the
    # input. Inputs are derived from messages sent to the AWS IoT Events
    # system using `BatchPutMessage`. Each such message contains a JSON
    # payload. Those attributes (and their paired values) specified here are
    # available for use in the `condition` expressions used by detectors.
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
    #   messages sent to AWS IoT Events (`BatchPutMessage`). Each such
    #   message contains a JSON payload. The attribute (and its paired
    #   value) specified here are available for use in the `condition`
    #   expressions used by detectors.
    #
    #   Syntax: `<field-name>.<field-name>...`
    #   @return [String]
    #
    class Attribute < Struct.new(
      :json_path)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1,
    #                           duration_expression: "VariableValue",
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         lambda: {
    #                           function_arn: "AmazonResourceName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_events: {
    #                           input_name: "InputName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         sqs: {
    #                           queue_url: "QueueUrl", # required
    #                           use_base_64: false,
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         firehose: {
    #                           delivery_stream_name: "DeliveryStreamName", # required
    #                           separator: "FirehoseSeparator",
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_db: {
    #                           hash_key_type: "DynamoKeyType",
    #                           hash_key_field: "DynamoKeyField", # required
    #                           hash_key_value: "DynamoKeyValue", # required
    #                           range_key_type: "DynamoKeyType",
    #                           range_key_field: "DynamoKeyField",
    #                           range_key_value: "DynamoKeyValue",
    #                           operation: "DynamoOperation",
    #                           payload_field: "DynamoKeyField",
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_d_bv_2: {
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_site_wise: {
    #                           entry_id: "AssetPropertyEntryId",
    #                           asset_id: "AssetId",
    #                           property_id: "AssetPropertyId",
    #                           property_alias: "AssetPropertyAlias",
    #                           property_value: { # required
    #                             value: { # required
    #                               string_value: "AssetPropertyStringValue",
    #                               integer_value: "AssetPropertyIntegerValue",
    #                               double_value: "AssetPropertyDoubleValue",
    #                               boolean_value: "AssetPropertyBooleanValue",
    #                             },
    #                             timestamp: {
    #                               time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                               offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                             },
    #                             quality: "AssetPropertyQuality",
    #                           },
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
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1,
    #                           duration_expression: "VariableValue",
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         lambda: {
    #                           function_arn: "AmazonResourceName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_events: {
    #                           input_name: "InputName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         sqs: {
    #                           queue_url: "QueueUrl", # required
    #                           use_base_64: false,
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         firehose: {
    #                           delivery_stream_name: "DeliveryStreamName", # required
    #                           separator: "FirehoseSeparator",
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_db: {
    #                           hash_key_type: "DynamoKeyType",
    #                           hash_key_field: "DynamoKeyField", # required
    #                           hash_key_value: "DynamoKeyValue", # required
    #                           range_key_type: "DynamoKeyType",
    #                           range_key_field: "DynamoKeyField",
    #                           range_key_value: "DynamoKeyValue",
    #                           operation: "DynamoOperation",
    #                           payload_field: "DynamoKeyField",
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_d_bv_2: {
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_site_wise: {
    #                           entry_id: "AssetPropertyEntryId",
    #                           asset_id: "AssetId",
    #                           property_id: "AssetPropertyId",
    #                           property_alias: "AssetPropertyAlias",
    #                           property_value: { # required
    #                             value: { # required
    #                               string_value: "AssetPropertyStringValue",
    #                               integer_value: "AssetPropertyIntegerValue",
    #                               double_value: "AssetPropertyDoubleValue",
    #                               boolean_value: "AssetPropertyBooleanValue",
    #                             },
    #                             timestamp: {
    #                               time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                               offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                             },
    #                             quality: "AssetPropertyQuality",
    #                           },
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
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1,
    #                           duration_expression: "VariableValue",
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         lambda: {
    #                           function_arn: "AmazonResourceName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_events: {
    #                           input_name: "InputName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         sqs: {
    #                           queue_url: "QueueUrl", # required
    #                           use_base_64: false,
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         firehose: {
    #                           delivery_stream_name: "DeliveryStreamName", # required
    #                           separator: "FirehoseSeparator",
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_db: {
    #                           hash_key_type: "DynamoKeyType",
    #                           hash_key_field: "DynamoKeyField", # required
    #                           hash_key_value: "DynamoKeyValue", # required
    #                           range_key_type: "DynamoKeyType",
    #                           range_key_field: "DynamoKeyField",
    #                           range_key_value: "DynamoKeyValue",
    #                           operation: "DynamoOperation",
    #                           payload_field: "DynamoKeyField",
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_d_bv_2: {
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_site_wise: {
    #                           entry_id: "AssetPropertyEntryId",
    #                           asset_id: "AssetId",
    #                           property_id: "AssetPropertyId",
    #                           property_alias: "AssetPropertyAlias",
    #                           property_value: { # required
    #                             value: { # required
    #                               string_value: "AssetPropertyStringValue",
    #                               integer_value: "AssetPropertyIntegerValue",
    #                               double_value: "AssetPropertyDoubleValue",
    #                               boolean_value: "AssetPropertyBooleanValue",
    #                             },
    #                             timestamp: {
    #                               time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                               offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                             },
    #                             quality: "AssetPropertyQuality",
    #                           },
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
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1,
    #                           duration_expression: "VariableValue",
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         lambda: {
    #                           function_arn: "AmazonResourceName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_events: {
    #                           input_name: "InputName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         sqs: {
    #                           queue_url: "QueueUrl", # required
    #                           use_base_64: false,
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         firehose: {
    #                           delivery_stream_name: "DeliveryStreamName", # required
    #                           separator: "FirehoseSeparator",
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_db: {
    #                           hash_key_type: "DynamoKeyType",
    #                           hash_key_field: "DynamoKeyField", # required
    #                           hash_key_value: "DynamoKeyValue", # required
    #                           range_key_type: "DynamoKeyType",
    #                           range_key_field: "DynamoKeyField",
    #                           range_key_value: "DynamoKeyValue",
    #                           operation: "DynamoOperation",
    #                           payload_field: "DynamoKeyField",
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_d_bv_2: {
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_site_wise: {
    #                           entry_id: "AssetPropertyEntryId",
    #                           asset_id: "AssetId",
    #                           property_id: "AssetPropertyId",
    #                           property_alias: "AssetPropertyAlias",
    #                           property_value: { # required
    #                             value: { # required
    #                               string_value: "AssetPropertyStringValue",
    #                               integer_value: "AssetPropertyIntegerValue",
    #                               double_value: "AssetPropertyDoubleValue",
    #                               boolean_value: "AssetPropertyBooleanValue",
    #                             },
    #                             timestamp: {
    #                               time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                               offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                             },
    #                             quality: "AssetPropertyQuality",
    #                           },
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
    #         evaluation_method: "BATCH", # accepts BATCH, SERIAL
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
    #   The input attribute key used to identify a device or system to
    #   create a detector (an instance of the detector model) and then to
    #   route each input received to the appropriate detector (instance).
    #   This parameter uses a JSON-path expression in the message payload of
    #   each input to specify the attribute-value pair that is used to
    #   identify the device associated with the input.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that grants permission to AWS IoT Events to
    #   perform its operations.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that can be used to manage the detector model.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] evaluation_method
    #   Information about the order in which events are evaluated and how
    #   actions are executed.
    #   @return [String]
    #
    class CreateDetectorModelRequest < Struct.new(
      :detector_model_name,
      :detector_model_definition,
      :detector_model_description,
      :key,
      :role_arn,
      :tags,
      :evaluation_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_model_configuration
    #   Information about how the detector model is configured.
    #   @return [Types::DetectorModelConfiguration]
    #
    class CreateDetectorModelResponse < Struct.new(
      :detector_model_configuration)
      SENSITIVE = []
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
    #   Metadata that can be used to manage the input.
    #   @return [Array<Types::Tag>]
    #
    class CreateInputRequest < Struct.new(
      :input_name,
      :input_description,
      :input_definition,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_configuration
    #   Information about the configuration of the input.
    #   @return [Types::InputConfiguration]
    #
    class CreateInputResponse < Struct.new(
      :input_configuration)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The name of the input to delete.
    #   @return [String]
    #
    class DeleteInputRequest < Struct.new(
      :input_name)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_model
    #   Information about the detector model.
    #   @return [Types::DetectorModel]
    #
    class DescribeDetectorModelResponse < Struct.new(
      :detector_model)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input
    #   Information about the input.
    #   @return [Types::Input]
    #
    class DescribeInputResponse < Struct.new(
      :input)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The value used to identify a detector instance. When a device or
    #   system sends input, a new detector instance with a unique key value
    #   is created. AWS IoT Events can continue to route input to its
    #   corresponding detector instance based on this identifying
    #   information.
    #
    #   This parameter uses a JSON-path expression to select the
    #   attribute-value pair in the message payload that is used for
    #   identification. To route the message to the correct detector
    #   instance, the device must send a message payload that contains the
    #   same attribute-value.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_method
    #   Information about the order in which events are evaluated and how
    #   actions are executed.
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
      :key,
      :evaluation_method)
      SENSITIVE = []
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
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       iot_topic_publish: {
    #                         mqtt_topic: "MQTTTopic", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       set_timer: {
    #                         timer_name: "TimerName", # required
    #                         seconds: 1,
    #                         duration_expression: "VariableValue",
    #                       },
    #                       clear_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       reset_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       lambda: {
    #                         function_arn: "AmazonResourceName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       iot_events: {
    #                         input_name: "InputName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       sqs: {
    #                         queue_url: "QueueUrl", # required
    #                         use_base_64: false,
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       firehose: {
    #                         delivery_stream_name: "DeliveryStreamName", # required
    #                         separator: "FirehoseSeparator",
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       dynamo_db: {
    #                         hash_key_type: "DynamoKeyType",
    #                         hash_key_field: "DynamoKeyField", # required
    #                         hash_key_value: "DynamoKeyValue", # required
    #                         range_key_type: "DynamoKeyType",
    #                         range_key_field: "DynamoKeyField",
    #                         range_key_value: "DynamoKeyValue",
    #                         operation: "DynamoOperation",
    #                         payload_field: "DynamoKeyField",
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       dynamo_d_bv_2: {
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       iot_site_wise: {
    #                         entry_id: "AssetPropertyEntryId",
    #                         asset_id: "AssetId",
    #                         property_id: "AssetPropertyId",
    #                         property_alias: "AssetPropertyAlias",
    #                         property_value: { # required
    #                           value: { # required
    #                             string_value: "AssetPropertyStringValue",
    #                             integer_value: "AssetPropertyIntegerValue",
    #                             double_value: "AssetPropertyDoubleValue",
    #                             boolean_value: "AssetPropertyBooleanValue",
    #                           },
    #                           timestamp: {
    #                             time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                             offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                           },
    #                           quality: "AssetPropertyQuality",
    #                         },
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
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       iot_topic_publish: {
    #                         mqtt_topic: "MQTTTopic", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       set_timer: {
    #                         timer_name: "TimerName", # required
    #                         seconds: 1,
    #                         duration_expression: "VariableValue",
    #                       },
    #                       clear_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       reset_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       lambda: {
    #                         function_arn: "AmazonResourceName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       iot_events: {
    #                         input_name: "InputName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       sqs: {
    #                         queue_url: "QueueUrl", # required
    #                         use_base_64: false,
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       firehose: {
    #                         delivery_stream_name: "DeliveryStreamName", # required
    #                         separator: "FirehoseSeparator",
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       dynamo_db: {
    #                         hash_key_type: "DynamoKeyType",
    #                         hash_key_field: "DynamoKeyField", # required
    #                         hash_key_value: "DynamoKeyValue", # required
    #                         range_key_type: "DynamoKeyType",
    #                         range_key_field: "DynamoKeyField",
    #                         range_key_value: "DynamoKeyValue",
    #                         operation: "DynamoOperation",
    #                         payload_field: "DynamoKeyField",
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       dynamo_d_bv_2: {
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       iot_site_wise: {
    #                         entry_id: "AssetPropertyEntryId",
    #                         asset_id: "AssetId",
    #                         property_id: "AssetPropertyId",
    #                         property_alias: "AssetPropertyAlias",
    #                         property_value: { # required
    #                           value: { # required
    #                             string_value: "AssetPropertyStringValue",
    #                             integer_value: "AssetPropertyIntegerValue",
    #                             double_value: "AssetPropertyDoubleValue",
    #                             boolean_value: "AssetPropertyBooleanValue",
    #                           },
    #                           timestamp: {
    #                             time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                             offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                           },
    #                           quality: "AssetPropertyQuality",
    #                         },
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
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       iot_topic_publish: {
    #                         mqtt_topic: "MQTTTopic", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       set_timer: {
    #                         timer_name: "TimerName", # required
    #                         seconds: 1,
    #                         duration_expression: "VariableValue",
    #                       },
    #                       clear_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       reset_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       lambda: {
    #                         function_arn: "AmazonResourceName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       iot_events: {
    #                         input_name: "InputName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       sqs: {
    #                         queue_url: "QueueUrl", # required
    #                         use_base_64: false,
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       firehose: {
    #                         delivery_stream_name: "DeliveryStreamName", # required
    #                         separator: "FirehoseSeparator",
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       dynamo_db: {
    #                         hash_key_type: "DynamoKeyType",
    #                         hash_key_field: "DynamoKeyField", # required
    #                         hash_key_value: "DynamoKeyValue", # required
    #                         range_key_type: "DynamoKeyType",
    #                         range_key_field: "DynamoKeyField",
    #                         range_key_value: "DynamoKeyValue",
    #                         operation: "DynamoOperation",
    #                         payload_field: "DynamoKeyField",
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       dynamo_d_bv_2: {
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       iot_site_wise: {
    #                         entry_id: "AssetPropertyEntryId",
    #                         asset_id: "AssetId",
    #                         property_id: "AssetPropertyId",
    #                         property_alias: "AssetPropertyAlias",
    #                         property_value: { # required
    #                           value: { # required
    #                             string_value: "AssetPropertyStringValue",
    #                             integer_value: "AssetPropertyIntegerValue",
    #                             double_value: "AssetPropertyDoubleValue",
    #                             boolean_value: "AssetPropertyBooleanValue",
    #                           },
    #                           timestamp: {
    #                             time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                             offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                           },
    #                           quality: "AssetPropertyQuality",
    #                         },
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
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       iot_topic_publish: {
    #                         mqtt_topic: "MQTTTopic", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       set_timer: {
    #                         timer_name: "TimerName", # required
    #                         seconds: 1,
    #                         duration_expression: "VariableValue",
    #                       },
    #                       clear_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       reset_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       lambda: {
    #                         function_arn: "AmazonResourceName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       iot_events: {
    #                         input_name: "InputName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       sqs: {
    #                         queue_url: "QueueUrl", # required
    #                         use_base_64: false,
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       firehose: {
    #                         delivery_stream_name: "DeliveryStreamName", # required
    #                         separator: "FirehoseSeparator",
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       dynamo_db: {
    #                         hash_key_type: "DynamoKeyType",
    #                         hash_key_field: "DynamoKeyField", # required
    #                         hash_key_value: "DynamoKeyValue", # required
    #                         range_key_type: "DynamoKeyType",
    #                         range_key_field: "DynamoKeyField",
    #                         range_key_value: "DynamoKeyValue",
    #                         operation: "DynamoOperation",
    #                         payload_field: "DynamoKeyField",
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       dynamo_d_bv_2: {
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING", # required, accepts STRING, JSON
    #                         },
    #                       },
    #                       iot_site_wise: {
    #                         entry_id: "AssetPropertyEntryId",
    #                         asset_id: "AssetId",
    #                         property_id: "AssetPropertyId",
    #                         property_alias: "AssetPropertyAlias",
    #                         property_value: { # required
    #                           value: { # required
    #                             string_value: "AssetPropertyStringValue",
    #                             integer_value: "AssetPropertyIntegerValue",
    #                             double_value: "AssetPropertyDoubleValue",
    #                             boolean_value: "AssetPropertyBooleanValue",
    #                           },
    #                           timestamp: {
    #                             time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                             offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                           },
    #                           quality: "AssetPropertyQuality",
    #                         },
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] evaluation_method
    #   Information about the order in which events are evaluated and how
    #   actions are executed.
    #   @return [String]
    #
    class DetectorModelVersionSummary < Struct.new(
      :detector_model_name,
      :detector_model_version,
      :detector_model_arn,
      :role_arn,
      :creation_time,
      :last_update_time,
      :status,
      :evaluation_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an action to write to the Amazon DynamoDB table that you
    # created. The standard action payload contains all attribute-value
    # pairs that have the information about the detector model instance and
    # the event that triggered the action. You can also customize the
    # [payload][1]. One column of the DynamoDB table receives all
    # attribute-value pairs in the payload that you specify.
    #
    # The `tableName` and `hashKeyField` values must match the table name
    # and the partition key of the DynamoDB table.
    #
    # <note markdown="1"> If the DynamoDB table also has a sort key, you must specify
    # `rangeKeyField`. The `rangeKeyField` value must match the sort key.
    #
    #  </note>
    #
    #
    #
    # The `hashKeyValue` and `rangeKeyValue` use substitution templates.
    # These templates provide data at runtime. The syntax is
    # `$\{sql-expression\}`.
    #
    # You can use expressions for parameters that are string data type. For
    # more information, see [Expressions][2] in the *AWS IoT Events
    # Developer Guide*.
    #
    # <note markdown="1"> If the defined payload type is a string, `DynamoDBAction` writes
    # non-JSON data to the DynamoDB table as binary data. The DynamoDB
    # console displays the data as Base64-encoded text. The `payloadField`
    # is `<payload-field>_raw`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html
    # [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    #
    # @note When making an API call, you may pass DynamoDBAction
    #   data as a hash:
    #
    #       {
    #         hash_key_type: "DynamoKeyType",
    #         hash_key_field: "DynamoKeyField", # required
    #         hash_key_value: "DynamoKeyValue", # required
    #         range_key_type: "DynamoKeyType",
    #         range_key_field: "DynamoKeyField",
    #         range_key_value: "DynamoKeyValue",
    #         operation: "DynamoOperation",
    #         payload_field: "DynamoKeyField",
    #         table_name: "DynamoTableName", # required
    #         payload: {
    #           content_expression: "ContentExpression", # required
    #           type: "STRING", # required, accepts STRING, JSON
    #         },
    #       }
    #
    # @!attribute [rw] hash_key_type
    #   The data type for the hash key (also called the partition key). You
    #   can specify the following values:
    #
    #   * `STRING` - The hash key is a string.
    #
    #   * `NUMBER` - The hash key is a number.
    #
    #   If you don't specify `hashKeyType`, the default value is `STRING`.
    #   @return [String]
    #
    # @!attribute [rw] hash_key_field
    #   The name of the hash key (also called the partition key).
    #   @return [String]
    #
    # @!attribute [rw] hash_key_value
    #   The value of the hash key (also called the partition key).
    #   @return [String]
    #
    # @!attribute [rw] range_key_type
    #   The data type for the range key (also called the sort key), You can
    #   specify the following values:
    #
    #   * `STRING` - The range key is a string.
    #
    #   * `NUMBER` - The range key is number.
    #
    #   If you don't specify `rangeKeyField`, the default value is
    #   `STRING`.
    #   @return [String]
    #
    # @!attribute [rw] range_key_field
    #   The name of the range key (also called the sort key).
    #   @return [String]
    #
    # @!attribute [rw] range_key_value
    #   The value of the range key (also called the sort key).
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The type of operation to perform. You can specify the following
    #   values:
    #
    #   * `INSERT` - Insert data as a new item into the DynamoDB table. This
    #     item uses the specified hash key as a partition key. If you
    #     specified a range key, the item uses the range key as a sort key.
    #
    #   * `UPDATE` - Update an existing item of the DynamoDB table with new
    #     data. This item's partition key must match the specified hash
    #     key. If you specified a range key, the range key must match the
    #     item's sort key.
    #
    #   * `DELETE` - Delete an existing item of the DynamoDB table. This
    #     item's partition key must match the specified hash key. If you
    #     specified a range key, the range key must match the item's sort
    #     key.
    #
    #   If you don't specify this parameter, AWS IoT Events triggers the
    #   `INSERT` operation.
    #   @return [String]
    #
    # @!attribute [rw] payload_field
    #   The name of the DynamoDB column that receives the action payload.
    #
    #   If you don't specify this parameter, the name of the DynamoDB
    #   column is `payload`.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the DynamoDB table.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   Information needed to configure the payload.
    #
    #   By default, AWS IoT Events generates a standard payload in JSON for
    #   any action. This action payload contains all attribute-value pairs
    #   that have the information about the detector model instance and the
    #   event triggered the action. To configure the action payload, you can
    #   use `contentExpression`.
    #   @return [Types::Payload]
    #
    class DynamoDBAction < Struct.new(
      :hash_key_type,
      :hash_key_field,
      :hash_key_value,
      :range_key_type,
      :range_key_field,
      :range_key_value,
      :operation,
      :payload_field,
      :table_name,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an action to write to the Amazon DynamoDB table that you
    # created. The default action payload contains all attribute-value pairs
    # that have the information about the detector model instance and the
    # event that triggered the action. You can also customize the
    # [payload][1]. A separate column of the DynamoDB table receives one
    # attribute-value pair in the payload that you specify.
    #
    # The `type` value for `Payload` must be `JSON`.
    #
    # You can use expressions for parameters that are strings. For more
    # information, see [Expressions][2] in the *AWS IoT Events Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html
    # [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    #
    # @note When making an API call, you may pass DynamoDBv2Action
    #   data as a hash:
    #
    #       {
    #         table_name: "DynamoTableName", # required
    #         payload: {
    #           content_expression: "ContentExpression", # required
    #           type: "STRING", # required, accepts STRING, JSON
    #         },
    #       }
    #
    # @!attribute [rw] table_name
    #   The name of the DynamoDB table.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   Information needed to configure the payload.
    #
    #   By default, AWS IoT Events generates a standard payload in JSON for
    #   any action. This action payload contains all attribute-value pairs
    #   that have the information about the detector model instance and the
    #   event triggered the action. To configure the action payload, you can
    #   use `contentExpression`.
    #   @return [Types::Payload]
    #
    class DynamoDBv2Action < Struct.new(
      :table_name,
      :payload)
      SENSITIVE = []
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
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             iot_topic_publish: {
    #               mqtt_topic: "MQTTTopic", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             set_timer: {
    #               timer_name: "TimerName", # required
    #               seconds: 1,
    #               duration_expression: "VariableValue",
    #             },
    #             clear_timer: {
    #               timer_name: "TimerName", # required
    #             },
    #             reset_timer: {
    #               timer_name: "TimerName", # required
    #             },
    #             lambda: {
    #               function_arn: "AmazonResourceName", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             iot_events: {
    #               input_name: "InputName", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             sqs: {
    #               queue_url: "QueueUrl", # required
    #               use_base_64: false,
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             firehose: {
    #               delivery_stream_name: "DeliveryStreamName", # required
    #               separator: "FirehoseSeparator",
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             dynamo_db: {
    #               hash_key_type: "DynamoKeyType",
    #               hash_key_field: "DynamoKeyField", # required
    #               hash_key_value: "DynamoKeyValue", # required
    #               range_key_type: "DynamoKeyType",
    #               range_key_field: "DynamoKeyField",
    #               range_key_value: "DynamoKeyValue",
    #               operation: "DynamoOperation",
    #               payload_field: "DynamoKeyField",
    #               table_name: "DynamoTableName", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             dynamo_d_bv_2: {
    #               table_name: "DynamoTableName", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             iot_site_wise: {
    #               entry_id: "AssetPropertyEntryId",
    #               asset_id: "AssetId",
    #               property_id: "AssetPropertyId",
    #               property_alias: "AssetPropertyAlias",
    #               property_value: { # required
    #                 value: { # required
    #                   string_value: "AssetPropertyStringValue",
    #                   integer_value: "AssetPropertyIntegerValue",
    #                   double_value: "AssetPropertyDoubleValue",
    #                   boolean_value: "AssetPropertyBooleanValue",
    #                 },
    #                 timestamp: {
    #                   time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                   offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                 },
    #                 quality: "AssetPropertyQuality",
    #               },
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
    #   Optional. The Boolean expression that, when TRUE, causes the
    #   `actions` to be performed. If not present, the actions are performed
    #   (=TRUE). If the expression result is not a Boolean value, the
    #   actions are not performed (=FALSE).
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Sends information about the detector model instance and the event that
    # triggered the action to an Amazon Kinesis Data Firehose delivery
    # stream.
    #
    # @note When making an API call, you may pass FirehoseAction
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #         separator: "FirehoseSeparator",
    #         payload: {
    #           content_expression: "ContentExpression", # required
    #           type: "STRING", # required, accepts STRING, JSON
    #         },
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the Kinesis Data Firehose delivery stream where the data
    #   is written.
    #   @return [String]
    #
    # @!attribute [rw] separator
    #   A character separator that is used to separate records written to
    #   the Kinesis Data Firehose delivery stream. Valid values are: '\\n'
    #   (newline), '\\t' (tab), '\\r\\n' (Windows newline), ','
    #   (comma).
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   You can configure the action payload when you send a message to an
    #   Amazon Kinesis Data Firehose delivery stream.
    #   @return [Types::Payload]
    #
    class FirehoseAction < Struct.new(
      :delivery_stream_name,
      :separator,
      :payload)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   here are available for use in the `condition` expressions used by
    #   detectors that monitor this input.
    #   @return [Array<Types::Attribute>]
    #
    class InputDefinition < Struct.new(
      :attributes)
      SENSITIVE = []
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
      SENSITIVE = []
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

    # Sends an AWS IoT Events input, passing in information about the
    # detector model instance and the event that triggered the action.
    #
    # @note When making an API call, you may pass IotEventsAction
    #   data as a hash:
    #
    #       {
    #         input_name: "InputName", # required
    #         payload: {
    #           content_expression: "ContentExpression", # required
    #           type: "STRING", # required, accepts STRING, JSON
    #         },
    #       }
    #
    # @!attribute [rw] input_name
    #   The name of the AWS IoT Events input where the data is sent.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   You can configure the action payload when you send a message to an
    #   AWS IoT Events input.
    #   @return [Types::Payload]
    #
    class IotEventsAction < Struct.new(
      :input_name,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sends information about the detector model instance and the event that
    # triggered the action to a specified asset property in AWS IoT
    # SiteWise.
    #
    # You must specify either `propertyAlias` or both `assetId` and
    # `propertyId` to identify the target asset property in AWS IoT
    # SiteWise.
    #
    # For parameters that are string data type, you can specify the
    # following options:
    #
    # * Use a string. For example, the `propertyAlias` value can be
    #   `'/company/windfarm/3/turbine/7/temperature'`.
    #
    # * Use an expression. For example, the `propertyAlias` value can be
    #   `'company/windfarm/$\{$input.TemperatureInput.sensorData.windfarmID\}/turbine/$\{$input.TemperatureInput.sensorData.turbineID\}/temperature'`.
    #
    #   For more information, see [Expressions][1] in the *AWS IoT Events
    #   Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    #
    # @note When making an API call, you may pass IotSiteWiseAction
    #   data as a hash:
    #
    #       {
    #         entry_id: "AssetPropertyEntryId",
    #         asset_id: "AssetId",
    #         property_id: "AssetPropertyId",
    #         property_alias: "AssetPropertyAlias",
    #         property_value: { # required
    #           value: { # required
    #             string_value: "AssetPropertyStringValue",
    #             integer_value: "AssetPropertyIntegerValue",
    #             double_value: "AssetPropertyDoubleValue",
    #             boolean_value: "AssetPropertyBooleanValue",
    #           },
    #           timestamp: {
    #             time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #             offset_in_nanos: "AssetPropertyOffsetInNanos",
    #           },
    #           quality: "AssetPropertyQuality",
    #         },
    #       }
    #
    # @!attribute [rw] entry_id
    #   A unique identifier for this entry. You can use the entry ID to
    #   track which data entry causes an error in case of failure. The
    #   default is a new unique identifier. You can also specify an
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset that has the specified property. You can specify
    #   an expression.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property. You can specify an expression.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The alias of the asset property. You can also specify an expression.
    #   @return [String]
    #
    # @!attribute [rw] property_value
    #   The value to send to the asset property. This value contains
    #   timestamp, quality, and value (TQV) information.
    #   @return [Types::AssetPropertyValue]
    #
    class IotSiteWiseAction < Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :property_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information required to publish the MQTT message through the AWS IoT
    # message broker.
    #
    # @note When making an API call, you may pass IotTopicPublishAction
    #   data as a hash:
    #
    #       {
    #         mqtt_topic: "MQTTTopic", # required
    #         payload: {
    #           content_expression: "ContentExpression", # required
    #           type: "STRING", # required, accepts STRING, JSON
    #         },
    #       }
    #
    # @!attribute [rw] mqtt_topic
    #   The MQTT topic of the message. You can use a string expression that
    #   includes variables (`$variable.<variable-name>`) and input values
    #   (`$input.<input-name>.<path-to-datum>`) as the topic string.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   You can configure the action payload when you publish a message to
    #   an AWS IoT Core topic.
    #   @return [Types::Payload]
    #
    class IotTopicPublishAction < Struct.new(
      :mqtt_topic,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # Calls a Lambda function, passing in information about the detector
    # model instance and the event that triggered the action.
    #
    # @note When making an API call, you may pass LambdaAction
    #   data as a hash:
    #
    #       {
    #         function_arn: "AmazonResourceName", # required
    #         payload: {
    #           content_expression: "ContentExpression", # required
    #           type: "STRING", # required, accepts STRING, JSON
    #         },
    #       }
    #
    # @!attribute [rw] function_arn
    #   The ARN of the Lambda function that is executed.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   You can configure the action payload when you send a message to a
    #   Lambda function.
    #   @return [Types::Payload]
    #
    class LambdaAction < Struct.new(
      :function_arn,
      :payload)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
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
    #   The logging level.
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
      SENSITIVE = []
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
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 iot_topic_publish: {
    #                   mqtt_topic: "MQTTTopic", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 set_timer: {
    #                   timer_name: "TimerName", # required
    #                   seconds: 1,
    #                   duration_expression: "VariableValue",
    #                 },
    #                 clear_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #                 reset_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #                 lambda: {
    #                   function_arn: "AmazonResourceName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 iot_events: {
    #                   input_name: "InputName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 sqs: {
    #                   queue_url: "QueueUrl", # required
    #                   use_base_64: false,
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 firehose: {
    #                   delivery_stream_name: "DeliveryStreamName", # required
    #                   separator: "FirehoseSeparator",
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 dynamo_db: {
    #                   hash_key_type: "DynamoKeyType",
    #                   hash_key_field: "DynamoKeyField", # required
    #                   hash_key_value: "DynamoKeyValue", # required
    #                   range_key_type: "DynamoKeyType",
    #                   range_key_field: "DynamoKeyField",
    #                   range_key_value: "DynamoKeyValue",
    #                   operation: "DynamoOperation",
    #                   payload_field: "DynamoKeyField",
    #                   table_name: "DynamoTableName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 dynamo_d_bv_2: {
    #                   table_name: "DynamoTableName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 iot_site_wise: {
    #                   entry_id: "AssetPropertyEntryId",
    #                   asset_id: "AssetId",
    #                   property_id: "AssetPropertyId",
    #                   property_alias: "AssetPropertyAlias",
    #                   property_value: { # required
    #                     value: { # required
    #                       string_value: "AssetPropertyStringValue",
    #                       integer_value: "AssetPropertyIntegerValue",
    #                       double_value: "AssetPropertyDoubleValue",
    #                       boolean_value: "AssetPropertyBooleanValue",
    #                     },
    #                     timestamp: {
    #                       time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                       offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                     },
    #                     quality: "AssetPropertyQuality",
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] events
    #   Specifies the actions that are performed when the state is entered
    #   and the `condition` is `TRUE`.
    #   @return [Array<Types::Event>]
    #
    class OnEnterLifecycle < Struct.new(
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # When exiting this state, perform these `actions` if the specified
    # `condition` is `TRUE`.
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
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 iot_topic_publish: {
    #                   mqtt_topic: "MQTTTopic", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 set_timer: {
    #                   timer_name: "TimerName", # required
    #                   seconds: 1,
    #                   duration_expression: "VariableValue",
    #                 },
    #                 clear_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #                 reset_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #                 lambda: {
    #                   function_arn: "AmazonResourceName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 iot_events: {
    #                   input_name: "InputName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 sqs: {
    #                   queue_url: "QueueUrl", # required
    #                   use_base_64: false,
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 firehose: {
    #                   delivery_stream_name: "DeliveryStreamName", # required
    #                   separator: "FirehoseSeparator",
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 dynamo_db: {
    #                   hash_key_type: "DynamoKeyType",
    #                   hash_key_field: "DynamoKeyField", # required
    #                   hash_key_value: "DynamoKeyValue", # required
    #                   range_key_type: "DynamoKeyType",
    #                   range_key_field: "DynamoKeyField",
    #                   range_key_value: "DynamoKeyValue",
    #                   operation: "DynamoOperation",
    #                   payload_field: "DynamoKeyField",
    #                   table_name: "DynamoTableName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 dynamo_d_bv_2: {
    #                   table_name: "DynamoTableName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 iot_site_wise: {
    #                   entry_id: "AssetPropertyEntryId",
    #                   asset_id: "AssetId",
    #                   property_id: "AssetPropertyId",
    #                   property_alias: "AssetPropertyAlias",
    #                   property_value: { # required
    #                     value: { # required
    #                       string_value: "AssetPropertyStringValue",
    #                       integer_value: "AssetPropertyIntegerValue",
    #                       double_value: "AssetPropertyDoubleValue",
    #                       boolean_value: "AssetPropertyBooleanValue",
    #                     },
    #                     timestamp: {
    #                       time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                       offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                     },
    #                     quality: "AssetPropertyQuality",
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] events
    #   Specifies the `actions` that are performed when the state is exited
    #   and the `condition` is `TRUE`.
    #   @return [Array<Types::Event>]
    #
    class OnExitLifecycle < Struct.new(
      :events)
      SENSITIVE = []
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
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 iot_topic_publish: {
    #                   mqtt_topic: "MQTTTopic", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 set_timer: {
    #                   timer_name: "TimerName", # required
    #                   seconds: 1,
    #                   duration_expression: "VariableValue",
    #                 },
    #                 clear_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #                 reset_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #                 lambda: {
    #                   function_arn: "AmazonResourceName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 iot_events: {
    #                   input_name: "InputName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 sqs: {
    #                   queue_url: "QueueUrl", # required
    #                   use_base_64: false,
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 firehose: {
    #                   delivery_stream_name: "DeliveryStreamName", # required
    #                   separator: "FirehoseSeparator",
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 dynamo_db: {
    #                   hash_key_type: "DynamoKeyType",
    #                   hash_key_field: "DynamoKeyField", # required
    #                   hash_key_value: "DynamoKeyValue", # required
    #                   range_key_type: "DynamoKeyType",
    #                   range_key_field: "DynamoKeyField",
    #                   range_key_value: "DynamoKeyValue",
    #                   operation: "DynamoOperation",
    #                   payload_field: "DynamoKeyField",
    #                   table_name: "DynamoTableName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 dynamo_d_bv_2: {
    #                   table_name: "DynamoTableName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 iot_site_wise: {
    #                   entry_id: "AssetPropertyEntryId",
    #                   asset_id: "AssetId",
    #                   property_id: "AssetPropertyId",
    #                   property_alias: "AssetPropertyAlias",
    #                   property_value: { # required
    #                     value: { # required
    #                       string_value: "AssetPropertyStringValue",
    #                       integer_value: "AssetPropertyIntegerValue",
    #                       double_value: "AssetPropertyDoubleValue",
    #                       boolean_value: "AssetPropertyBooleanValue",
    #                     },
    #                     timestamp: {
    #                       time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                       offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                     },
    #                     quality: "AssetPropertyQuality",
    #                   },
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
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 iot_topic_publish: {
    #                   mqtt_topic: "MQTTTopic", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 set_timer: {
    #                   timer_name: "TimerName", # required
    #                   seconds: 1,
    #                   duration_expression: "VariableValue",
    #                 },
    #                 clear_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #                 reset_timer: {
    #                   timer_name: "TimerName", # required
    #                 },
    #                 lambda: {
    #                   function_arn: "AmazonResourceName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 iot_events: {
    #                   input_name: "InputName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 sqs: {
    #                   queue_url: "QueueUrl", # required
    #                   use_base_64: false,
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 firehose: {
    #                   delivery_stream_name: "DeliveryStreamName", # required
    #                   separator: "FirehoseSeparator",
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 dynamo_db: {
    #                   hash_key_type: "DynamoKeyType",
    #                   hash_key_field: "DynamoKeyField", # required
    #                   hash_key_value: "DynamoKeyValue", # required
    #                   range_key_type: "DynamoKeyType",
    #                   range_key_field: "DynamoKeyField",
    #                   range_key_value: "DynamoKeyValue",
    #                   operation: "DynamoOperation",
    #                   payload_field: "DynamoKeyField",
    #                   table_name: "DynamoTableName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 dynamo_d_bv_2: {
    #                   table_name: "DynamoTableName", # required
    #                   payload: {
    #                     content_expression: "ContentExpression", # required
    #                     type: "STRING", # required, accepts STRING, JSON
    #                   },
    #                 },
    #                 iot_site_wise: {
    #                   entry_id: "AssetPropertyEntryId",
    #                   asset_id: "AssetId",
    #                   property_id: "AssetPropertyId",
    #                   property_alias: "AssetPropertyAlias",
    #                   property_value: { # required
    #                     value: { # required
    #                       string_value: "AssetPropertyStringValue",
    #                       integer_value: "AssetPropertyIntegerValue",
    #                       double_value: "AssetPropertyDoubleValue",
    #                       boolean_value: "AssetPropertyBooleanValue",
    #                     },
    #                     timestamp: {
    #                       time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                       offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                     },
    #                     quality: "AssetPropertyQuality",
    #                   },
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
    #   Specifies the actions performed, and the next state entered, when a
    #   `condition` evaluates to TRUE.
    #   @return [Array<Types::TransitionEvent>]
    #
    class OnInputLifecycle < Struct.new(
      :events,
      :transition_events)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information needed to configure the payload.
    #
    # By default, AWS IoT Events generates a standard payload in JSON for
    # any action. This action payload contains all attribute-value pairs
    # that have the information about the detector model instance and the
    # event triggered the action. To configure the action payload, you can
    # use `contentExpression`.
    #
    # @note When making an API call, you may pass Payload
    #   data as a hash:
    #
    #       {
    #         content_expression: "ContentExpression", # required
    #         type: "STRING", # required, accepts STRING, JSON
    #       }
    #
    # @!attribute [rw] content_expression
    #   The content of the payload. You can use a string expression that
    #   includes quoted strings (`'<string>'`), variables
    #   (`$variable.<variable-name>`), input values
    #   (`$input.<input-name>.<path-to-datum>`), string concatenations, and
    #   quoted strings that contain `$\{\}` as the content. The recommended
    #   maximum size of a content expression is 1 KB.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The value of the payload type can be either `STRING` or `JSON`.
    #   @return [String]
    #
    class Payload < Struct.new(
      :content_expression,
      :type)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information required to reset the timer. The timer is reset to the
    # previously evaluated result of the duration. The duration expression
    # isn't reevaluated when you reset the timer.
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
      SENSITIVE = []
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
      SENSITIVE = []
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

    # Information required to publish the Amazon SNS message.
    #
    # @note When making an API call, you may pass SNSTopicPublishAction
    #   data as a hash:
    #
    #       {
    #         target_arn: "AmazonResourceName", # required
    #         payload: {
    #           content_expression: "ContentExpression", # required
    #           type: "STRING", # required, accepts STRING, JSON
    #         },
    #       }
    #
    # @!attribute [rw] target_arn
    #   The ARN of the Amazon SNS target where the message is sent.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   You can configure the action payload when you send a message as an
    #   Amazon SNS push notification.
    #   @return [Types::Payload]
    #
    class SNSTopicPublishAction < Struct.new(
      :target_arn,
      :payload)
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

    # Information needed to set the timer.
    #
    # @note When making an API call, you may pass SetTimerAction
    #   data as a hash:
    #
    #       {
    #         timer_name: "TimerName", # required
    #         seconds: 1,
    #         duration_expression: "VariableValue",
    #       }
    #
    # @!attribute [rw] timer_name
    #   The name of the timer.
    #   @return [String]
    #
    # @!attribute [rw] seconds
    #   The number of seconds until the timer expires. The minimum value is
    #   60 seconds to ensure accuracy. The maximum value is 31622400
    #   seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] duration_expression
    #   The duration of the timer, in seconds. You can use a string
    #   expression that includes numbers, variables
    #   (`$variable.<variable-name>`), and input values
    #   (`$input.<input-name>.<path-to-datum>`) as the duration. The range
    #   of the duration is 1-31622400 seconds. To ensure accuracy, the
    #   minimum duration is 60 seconds. The evaluated result of the duration
    #   is rounded down to the nearest whole number.
    #   @return [String]
    #
    class SetTimerAction < Struct.new(
      :timer_name,
      :seconds,
      :duration_expression)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Sends information about the detector model instance and the event that
    # triggered the action to an Amazon SQS queue.
    #
    # @note When making an API call, you may pass SqsAction
    #   data as a hash:
    #
    #       {
    #         queue_url: "QueueUrl", # required
    #         use_base_64: false,
    #         payload: {
    #           content_expression: "ContentExpression", # required
    #           type: "STRING", # required, accepts STRING, JSON
    #         },
    #       }
    #
    # @!attribute [rw] queue_url
    #   The URL of the SQS queue where the data is written.
    #   @return [String]
    #
    # @!attribute [rw] use_base_64
    #   Set this to TRUE if you want the data to be base-64 encoded before
    #   it is written to the queue. Otherwise, set this to FALSE.
    #   @return [Boolean]
    #
    # @!attribute [rw] payload
    #   You can configure the action payload when you send a message to an
    #   Amazon SQS queue.
    #   @return [Types::Payload]
    #
    class SqsAction < Struct.new(
      :queue_url,
      :use_base_64,
      :payload)
      SENSITIVE = []
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
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   iot_topic_publish: {
    #                     mqtt_topic: "MQTTTopic", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   set_timer: {
    #                     timer_name: "TimerName", # required
    #                     seconds: 1,
    #                     duration_expression: "VariableValue",
    #                   },
    #                   clear_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                   reset_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                   lambda: {
    #                     function_arn: "AmazonResourceName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   iot_events: {
    #                     input_name: "InputName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   sqs: {
    #                     queue_url: "QueueUrl", # required
    #                     use_base_64: false,
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   firehose: {
    #                     delivery_stream_name: "DeliveryStreamName", # required
    #                     separator: "FirehoseSeparator",
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   dynamo_db: {
    #                     hash_key_type: "DynamoKeyType",
    #                     hash_key_field: "DynamoKeyField", # required
    #                     hash_key_value: "DynamoKeyValue", # required
    #                     range_key_type: "DynamoKeyType",
    #                     range_key_field: "DynamoKeyField",
    #                     range_key_value: "DynamoKeyValue",
    #                     operation: "DynamoOperation",
    #                     payload_field: "DynamoKeyField",
    #                     table_name: "DynamoTableName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   dynamo_d_bv_2: {
    #                     table_name: "DynamoTableName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   iot_site_wise: {
    #                     entry_id: "AssetPropertyEntryId",
    #                     asset_id: "AssetId",
    #                     property_id: "AssetPropertyId",
    #                     property_alias: "AssetPropertyAlias",
    #                     property_value: { # required
    #                       value: { # required
    #                         string_value: "AssetPropertyStringValue",
    #                         integer_value: "AssetPropertyIntegerValue",
    #                         double_value: "AssetPropertyDoubleValue",
    #                         boolean_value: "AssetPropertyBooleanValue",
    #                       },
    #                       timestamp: {
    #                         time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                         offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                       },
    #                       quality: "AssetPropertyQuality",
    #                     },
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
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   iot_topic_publish: {
    #                     mqtt_topic: "MQTTTopic", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   set_timer: {
    #                     timer_name: "TimerName", # required
    #                     seconds: 1,
    #                     duration_expression: "VariableValue",
    #                   },
    #                   clear_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                   reset_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                   lambda: {
    #                     function_arn: "AmazonResourceName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   iot_events: {
    #                     input_name: "InputName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   sqs: {
    #                     queue_url: "QueueUrl", # required
    #                     use_base_64: false,
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   firehose: {
    #                     delivery_stream_name: "DeliveryStreamName", # required
    #                     separator: "FirehoseSeparator",
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   dynamo_db: {
    #                     hash_key_type: "DynamoKeyType",
    #                     hash_key_field: "DynamoKeyField", # required
    #                     hash_key_value: "DynamoKeyValue", # required
    #                     range_key_type: "DynamoKeyType",
    #                     range_key_field: "DynamoKeyField",
    #                     range_key_value: "DynamoKeyValue",
    #                     operation: "DynamoOperation",
    #                     payload_field: "DynamoKeyField",
    #                     table_name: "DynamoTableName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   dynamo_d_bv_2: {
    #                     table_name: "DynamoTableName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   iot_site_wise: {
    #                     entry_id: "AssetPropertyEntryId",
    #                     asset_id: "AssetId",
    #                     property_id: "AssetPropertyId",
    #                     property_alias: "AssetPropertyAlias",
    #                     property_value: { # required
    #                       value: { # required
    #                         string_value: "AssetPropertyStringValue",
    #                         integer_value: "AssetPropertyIntegerValue",
    #                         double_value: "AssetPropertyDoubleValue",
    #                         boolean_value: "AssetPropertyBooleanValue",
    #                       },
    #                       timestamp: {
    #                         time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                         offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                       },
    #                       quality: "AssetPropertyQuality",
    #                     },
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
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   iot_topic_publish: {
    #                     mqtt_topic: "MQTTTopic", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   set_timer: {
    #                     timer_name: "TimerName", # required
    #                     seconds: 1,
    #                     duration_expression: "VariableValue",
    #                   },
    #                   clear_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                   reset_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                   lambda: {
    #                     function_arn: "AmazonResourceName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   iot_events: {
    #                     input_name: "InputName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   sqs: {
    #                     queue_url: "QueueUrl", # required
    #                     use_base_64: false,
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   firehose: {
    #                     delivery_stream_name: "DeliveryStreamName", # required
    #                     separator: "FirehoseSeparator",
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   dynamo_db: {
    #                     hash_key_type: "DynamoKeyType",
    #                     hash_key_field: "DynamoKeyField", # required
    #                     hash_key_value: "DynamoKeyValue", # required
    #                     range_key_type: "DynamoKeyType",
    #                     range_key_field: "DynamoKeyField",
    #                     range_key_value: "DynamoKeyValue",
    #                     operation: "DynamoOperation",
    #                     payload_field: "DynamoKeyField",
    #                     table_name: "DynamoTableName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   dynamo_d_bv_2: {
    #                     table_name: "DynamoTableName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   iot_site_wise: {
    #                     entry_id: "AssetPropertyEntryId",
    #                     asset_id: "AssetId",
    #                     property_id: "AssetPropertyId",
    #                     property_alias: "AssetPropertyAlias",
    #                     property_value: { # required
    #                       value: { # required
    #                         string_value: "AssetPropertyStringValue",
    #                         integer_value: "AssetPropertyIntegerValue",
    #                         double_value: "AssetPropertyDoubleValue",
    #                         boolean_value: "AssetPropertyBooleanValue",
    #                       },
    #                       timestamp: {
    #                         time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                         offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                       },
    #                       quality: "AssetPropertyQuality",
    #                     },
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
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   iot_topic_publish: {
    #                     mqtt_topic: "MQTTTopic", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   set_timer: {
    #                     timer_name: "TimerName", # required
    #                     seconds: 1,
    #                     duration_expression: "VariableValue",
    #                   },
    #                   clear_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                   reset_timer: {
    #                     timer_name: "TimerName", # required
    #                   },
    #                   lambda: {
    #                     function_arn: "AmazonResourceName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   iot_events: {
    #                     input_name: "InputName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   sqs: {
    #                     queue_url: "QueueUrl", # required
    #                     use_base_64: false,
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   firehose: {
    #                     delivery_stream_name: "DeliveryStreamName", # required
    #                     separator: "FirehoseSeparator",
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   dynamo_db: {
    #                     hash_key_type: "DynamoKeyType",
    #                     hash_key_field: "DynamoKeyField", # required
    #                     hash_key_value: "DynamoKeyValue", # required
    #                     range_key_type: "DynamoKeyType",
    #                     range_key_field: "DynamoKeyField",
    #                     range_key_value: "DynamoKeyValue",
    #                     operation: "DynamoOperation",
    #                     payload_field: "DynamoKeyField",
    #                     table_name: "DynamoTableName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   dynamo_d_bv_2: {
    #                     table_name: "DynamoTableName", # required
    #                     payload: {
    #                       content_expression: "ContentExpression", # required
    #                       type: "STRING", # required, accepts STRING, JSON
    #                     },
    #                   },
    #                   iot_site_wise: {
    #                     entry_id: "AssetPropertyEntryId",
    #                     asset_id: "AssetId",
    #                     property_id: "AssetPropertyId",
    #                     property_alias: "AssetPropertyAlias",
    #                     property_value: { # required
    #                       value: { # required
    #                         string_value: "AssetPropertyStringValue",
    #                         integer_value: "AssetPropertyIntegerValue",
    #                         double_value: "AssetPropertyDoubleValue",
    #                         boolean_value: "AssetPropertyBooleanValue",
    #                       },
    #                       timestamp: {
    #                         time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                         offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                       },
    #                       quality: "AssetPropertyQuality",
    #                     },
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
    #   `condition` is `TRUE`.
    #   @return [Types::OnExitLifecycle]
    #
    class State < Struct.new(
      :state_name,
      :on_input,
      :on_enter,
      :on_exit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata that can be used to manage the resource.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             iot_topic_publish: {
    #               mqtt_topic: "MQTTTopic", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             set_timer: {
    #               timer_name: "TimerName", # required
    #               seconds: 1,
    #               duration_expression: "VariableValue",
    #             },
    #             clear_timer: {
    #               timer_name: "TimerName", # required
    #             },
    #             reset_timer: {
    #               timer_name: "TimerName", # required
    #             },
    #             lambda: {
    #               function_arn: "AmazonResourceName", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             iot_events: {
    #               input_name: "InputName", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             sqs: {
    #               queue_url: "QueueUrl", # required
    #               use_base_64: false,
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             firehose: {
    #               delivery_stream_name: "DeliveryStreamName", # required
    #               separator: "FirehoseSeparator",
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             dynamo_db: {
    #               hash_key_type: "DynamoKeyType",
    #               hash_key_field: "DynamoKeyField", # required
    #               hash_key_value: "DynamoKeyValue", # required
    #               range_key_type: "DynamoKeyType",
    #               range_key_field: "DynamoKeyField",
    #               range_key_value: "DynamoKeyValue",
    #               operation: "DynamoOperation",
    #               payload_field: "DynamoKeyField",
    #               table_name: "DynamoTableName", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             dynamo_d_bv_2: {
    #               table_name: "DynamoTableName", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING", # required, accepts STRING, JSON
    #               },
    #             },
    #             iot_site_wise: {
    #               entry_id: "AssetPropertyEntryId",
    #               asset_id: "AssetId",
    #               property_id: "AssetPropertyId",
    #               property_alias: "AssetPropertyAlias",
    #               property_value: { # required
    #                 value: { # required
    #                   string_value: "AssetPropertyStringValue",
    #                   integer_value: "AssetPropertyIntegerValue",
    #                   double_value: "AssetPropertyDoubleValue",
    #                   boolean_value: "AssetPropertyBooleanValue",
    #                 },
    #                 timestamp: {
    #                   time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                   offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                 },
    #                 quality: "AssetPropertyQuality",
    #               },
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
    #   Required. A Boolean expression that when TRUE causes the actions to
    #   be performed and the `nextState` to be entered.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1,
    #                           duration_expression: "VariableValue",
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         lambda: {
    #                           function_arn: "AmazonResourceName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_events: {
    #                           input_name: "InputName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         sqs: {
    #                           queue_url: "QueueUrl", # required
    #                           use_base_64: false,
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         firehose: {
    #                           delivery_stream_name: "DeliveryStreamName", # required
    #                           separator: "FirehoseSeparator",
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_db: {
    #                           hash_key_type: "DynamoKeyType",
    #                           hash_key_field: "DynamoKeyField", # required
    #                           hash_key_value: "DynamoKeyValue", # required
    #                           range_key_type: "DynamoKeyType",
    #                           range_key_field: "DynamoKeyField",
    #                           range_key_value: "DynamoKeyValue",
    #                           operation: "DynamoOperation",
    #                           payload_field: "DynamoKeyField",
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_d_bv_2: {
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_site_wise: {
    #                           entry_id: "AssetPropertyEntryId",
    #                           asset_id: "AssetId",
    #                           property_id: "AssetPropertyId",
    #                           property_alias: "AssetPropertyAlias",
    #                           property_value: { # required
    #                             value: { # required
    #                               string_value: "AssetPropertyStringValue",
    #                               integer_value: "AssetPropertyIntegerValue",
    #                               double_value: "AssetPropertyDoubleValue",
    #                               boolean_value: "AssetPropertyBooleanValue",
    #                             },
    #                             timestamp: {
    #                               time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                               offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                             },
    #                             quality: "AssetPropertyQuality",
    #                           },
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
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1,
    #                           duration_expression: "VariableValue",
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         lambda: {
    #                           function_arn: "AmazonResourceName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_events: {
    #                           input_name: "InputName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         sqs: {
    #                           queue_url: "QueueUrl", # required
    #                           use_base_64: false,
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         firehose: {
    #                           delivery_stream_name: "DeliveryStreamName", # required
    #                           separator: "FirehoseSeparator",
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_db: {
    #                           hash_key_type: "DynamoKeyType",
    #                           hash_key_field: "DynamoKeyField", # required
    #                           hash_key_value: "DynamoKeyValue", # required
    #                           range_key_type: "DynamoKeyType",
    #                           range_key_field: "DynamoKeyField",
    #                           range_key_value: "DynamoKeyValue",
    #                           operation: "DynamoOperation",
    #                           payload_field: "DynamoKeyField",
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_d_bv_2: {
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_site_wise: {
    #                           entry_id: "AssetPropertyEntryId",
    #                           asset_id: "AssetId",
    #                           property_id: "AssetPropertyId",
    #                           property_alias: "AssetPropertyAlias",
    #                           property_value: { # required
    #                             value: { # required
    #                               string_value: "AssetPropertyStringValue",
    #                               integer_value: "AssetPropertyIntegerValue",
    #                               double_value: "AssetPropertyDoubleValue",
    #                               boolean_value: "AssetPropertyBooleanValue",
    #                             },
    #                             timestamp: {
    #                               time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                               offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                             },
    #                             quality: "AssetPropertyQuality",
    #                           },
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
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1,
    #                           duration_expression: "VariableValue",
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         lambda: {
    #                           function_arn: "AmazonResourceName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_events: {
    #                           input_name: "InputName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         sqs: {
    #                           queue_url: "QueueUrl", # required
    #                           use_base_64: false,
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         firehose: {
    #                           delivery_stream_name: "DeliveryStreamName", # required
    #                           separator: "FirehoseSeparator",
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_db: {
    #                           hash_key_type: "DynamoKeyType",
    #                           hash_key_field: "DynamoKeyField", # required
    #                           hash_key_value: "DynamoKeyValue", # required
    #                           range_key_type: "DynamoKeyType",
    #                           range_key_field: "DynamoKeyField",
    #                           range_key_value: "DynamoKeyValue",
    #                           operation: "DynamoOperation",
    #                           payload_field: "DynamoKeyField",
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_d_bv_2: {
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_site_wise: {
    #                           entry_id: "AssetPropertyEntryId",
    #                           asset_id: "AssetId",
    #                           property_id: "AssetPropertyId",
    #                           property_alias: "AssetPropertyAlias",
    #                           property_value: { # required
    #                             value: { # required
    #                               string_value: "AssetPropertyStringValue",
    #                               integer_value: "AssetPropertyIntegerValue",
    #                               double_value: "AssetPropertyDoubleValue",
    #                               boolean_value: "AssetPropertyBooleanValue",
    #                             },
    #                             timestamp: {
    #                               time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                               offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                             },
    #                             quality: "AssetPropertyQuality",
    #                           },
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
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_topic_publish: {
    #                           mqtt_topic: "MQTTTopic", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         set_timer: {
    #                           timer_name: "TimerName", # required
    #                           seconds: 1,
    #                           duration_expression: "VariableValue",
    #                         },
    #                         clear_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         reset_timer: {
    #                           timer_name: "TimerName", # required
    #                         },
    #                         lambda: {
    #                           function_arn: "AmazonResourceName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_events: {
    #                           input_name: "InputName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         sqs: {
    #                           queue_url: "QueueUrl", # required
    #                           use_base_64: false,
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         firehose: {
    #                           delivery_stream_name: "DeliveryStreamName", # required
    #                           separator: "FirehoseSeparator",
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_db: {
    #                           hash_key_type: "DynamoKeyType",
    #                           hash_key_field: "DynamoKeyField", # required
    #                           hash_key_value: "DynamoKeyValue", # required
    #                           range_key_type: "DynamoKeyType",
    #                           range_key_field: "DynamoKeyField",
    #                           range_key_value: "DynamoKeyValue",
    #                           operation: "DynamoOperation",
    #                           payload_field: "DynamoKeyField",
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         dynamo_d_bv_2: {
    #                           table_name: "DynamoTableName", # required
    #                           payload: {
    #                             content_expression: "ContentExpression", # required
    #                             type: "STRING", # required, accepts STRING, JSON
    #                           },
    #                         },
    #                         iot_site_wise: {
    #                           entry_id: "AssetPropertyEntryId",
    #                           asset_id: "AssetId",
    #                           property_id: "AssetPropertyId",
    #                           property_alias: "AssetPropertyAlias",
    #                           property_value: { # required
    #                             value: { # required
    #                               string_value: "AssetPropertyStringValue",
    #                               integer_value: "AssetPropertyIntegerValue",
    #                               double_value: "AssetPropertyDoubleValue",
    #                               boolean_value: "AssetPropertyBooleanValue",
    #                             },
    #                             timestamp: {
    #                               time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                               offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                             },
    #                             quality: "AssetPropertyQuality",
    #                           },
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
    #         evaluation_method: "BATCH", # accepts BATCH, SERIAL
    #       }
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model that is updated.
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
    # @!attribute [rw] evaluation_method
    #   Information about the order in which events are evaluated and how
    #   actions are executed.
    #   @return [String]
    #
    class UpdateDetectorModelRequest < Struct.new(
      :detector_model_name,
      :detector_model_definition,
      :detector_model_description,
      :role_arn,
      :evaluation_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_model_configuration
    #   Information about how the detector model is configured.
    #   @return [Types::DetectorModelConfiguration]
    #
    class UpdateDetectorModelResponse < Struct.new(
      :detector_model_configuration)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_configuration
    #   Information about the configuration of the input.
    #   @return [Types::InputConfiguration]
    #
    class UpdateInputResponse < Struct.new(
      :input_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
