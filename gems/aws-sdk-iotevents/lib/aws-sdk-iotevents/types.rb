# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTEvents
  module Types

    # Specifies whether to get notified for alarm state changes.
    #
    # @!attribute [rw] enabled
    #   The value must be `TRUE` or `FALSE`. If `TRUE`, you receive a
    #   notification when the alarm state changes. You must choose to
    #   acknowledge the notification before the alarm state can return to
    #   `NORMAL`. If `FALSE`, you won't receive notifications. The alarm
    #   automatically changes to the `NORMAL` state when the input property
    #   value returns to the specified range.
    #   @return [Boolean]
    #
    class AcknowledgeFlow < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An action to be performed when the `condition` is TRUE.
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
    #   action. You can customize the [payload][1]. One column of the
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
    #   action. You can customize the [payload][1]. A separate column of the
    #   DynamoDB table receives one attribute-value pair in the payload that
    #   you specify. For more information, see [Actions][2] in *AWS IoT
    #   Events Developer Guide*.
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

    # Specifies one of the following actions to receive notifications when
    # the alarm state changes.
    #
    # @!attribute [rw] sns
    #   Information required to publish the Amazon SNS message.
    #   @return [Types::SNSTopicPublishAction]
    #
    # @!attribute [rw] iot_topic_publish
    #   Information required to publish the MQTT message through the AWS IoT
    #   message broker.
    #   @return [Types::IotTopicPublishAction]
    #
    # @!attribute [rw] lambda
    #   Calls a Lambda function, passing in information about the detector
    #   model instance and the event that triggered the action.
    #   @return [Types::LambdaAction]
    #
    # @!attribute [rw] iot_events
    #   Sends an AWS IoT Events input, passing in information about the
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
    #   Defines an action to write to the Amazon DynamoDB table that you
    #   created. The standard action payload contains all the information
    #   about the detector model instance and the event that triggered the
    #   action. You can customize the [payload][1]. One column of the
    #   DynamoDB table receives all attribute-value pairs in the payload
    #   that you specify.
    #
    #   You must use expressions for all parameters in `DynamoDBAction`. The
    #   expressions accept literals, operators, functions, references, and
    #   substitution templates.
    #
    #   **Examples**
    #
    #   * For literal values, the expressions must contain single quotes.
    #     For example, the value for the `hashKeyType` parameter can be
    #     `'STRING'`.
    #
    #   * For references, you must specify either variables or input values.
    #     For example, the value for the `hashKeyField` parameter can be
    #     `$input.GreenhouseInput.name`.
    #
    #   * For a substitution template, you must use `$\{\}`, and the
    #     template must be in single quotes. A substitution template can
    #     also contain a combination of literals, operators, functions,
    #     references, and substitution templates.
    #
    #     In the following example, the value for the `hashKeyValue`
    #     parameter uses a substitution template.
    #
    #     `'$\{$input.GreenhouseInput.temperature * 6 / 5 + 32\} in
    #     Fahrenheit'`
    #
    #   * For a string concatenation, you must use `+`. A string
    #     concatenation can also contain a combination of literals,
    #     operators, functions, references, and substitution templates.
    #
    #     In the following example, the value for the `tableName` parameter
    #     uses a string concatenation.
    #
    #     `'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date`
    #
    #   For more information, see [Expressions][2] in the *AWS IoT Events
    #   Developer Guide*.
    #
    #   If the defined payload type is a string, `DynamoDBAction` writes
    #   non-JSON data to the DynamoDB table as binary data. The DynamoDB
    #   console displays the data as Base64-encoded text. The value for the
    #   `payloadField` parameter is `<payload-field>_raw`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html
    #   [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    #   @return [Types::DynamoDBAction]
    #
    # @!attribute [rw] dynamo_d_bv_2
    #   Defines an action to write to the Amazon DynamoDB table that you
    #   created. The default action payload contains all the information
    #   about the detector model instance and the event that triggered the
    #   action. You can customize the [payload][1]. A separate column of the
    #   DynamoDB table receives one attribute-value pair in the payload that
    #   you specify.
    #
    #   You must use expressions for all parameters in `DynamoDBv2Action`.
    #   The expressions accept literals, operators, functions, references,
    #   and substitution templates.
    #
    #   **Examples**
    #
    #   * For literal values, the expressions must contain single quotes.
    #     For example, the value for the `tableName` parameter can be
    #     `'GreenhouseTemperatureTable'`.
    #
    #   * For references, you must specify either variables or input values.
    #     For example, the value for the `tableName` parameter can be
    #     `$variable.ddbtableName`.
    #
    #   * For a substitution template, you must use `$\{\}`, and the
    #     template must be in single quotes. A substitution template can
    #     also contain a combination of literals, operators, functions,
    #     references, and substitution templates.
    #
    #     In the following example, the value for the `contentExpression`
    #     parameter in `Payload` uses a substitution template.
    #
    #     `'\{"sensorID": "$\{$input.GreenhouseInput.sensor_id\}",
    #     "temperature": "$\{$input.GreenhouseInput.temperature * 9 / 5 +
    #     32\}"\}'`
    #
    #   * For a string concatenation, you must use `+`. A string
    #     concatenation can also contain a combination of literals,
    #     operators, functions, references, and substitution templates.
    #
    #     In the following example, the value for the `tableName` parameter
    #     uses a string concatenation.
    #
    #     `'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date`
    #
    #   For more information, see [Expressions][2] in the *AWS IoT Events
    #   Developer Guide*.
    #
    #   The value for the `type` parameter in `Payload` must be `JSON`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html
    #   [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    #   @return [Types::DynamoDBv2Action]
    #
    # @!attribute [rw] iot_site_wise
    #   Sends information about the detector model instance and the event
    #   that triggered the action to a specified asset property in AWS IoT
    #   SiteWise.
    #
    #   You must use expressions for all parameters in `IotSiteWiseAction`.
    #   The expressions accept literals, operators, functions, references,
    #   and substitutions templates.
    #
    #   **Examples**
    #
    #   * For literal values, the expressions must contain single quotes.
    #     For example, the value for the `propertyAlias` parameter can be
    #     `'/company/windfarm/3/turbine/7/temperature'`.
    #
    #   * For references, you must specify either variables or input values.
    #     For example, the value for the `assetId` parameter can be
    #     `$input.TurbineInput.assetId1`.
    #
    #   * For a substitution template, you must use `$\{\}`, and the
    #     template must be in single quotes. A substitution template can
    #     also contain a combination of literals, operators, functions,
    #     references, and substitution templates.
    #
    #     In the following example, the value for the `propertyAlias`
    #     parameter uses a substitution template.
    #
    #     `'company/windfarm/$\{$input.TemperatureInput.sensorData.windfarmID\}/turbine/
    #     $\{$input.TemperatureInput.sensorData.turbineID\}/temperature'`
    #
    #   You must specify either `propertyAlias` or both `assetId` and
    #   `propertyId` to identify the target asset property in AWS IoT
    #   SiteWise.
    #
    #   For more information, see [Expressions][1] in the *AWS IoT Events
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    #   @return [Types::IotSiteWiseAction]
    #
    class AlarmAction < Struct.new(
      :sns,
      :iot_topic_publish,
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

    # Contains the configuration information of alarm state changes.
    #
    # @!attribute [rw] initialization_configuration
    #   Specifies the default alarm state. The configuration applies to all
    #   alarms that were created based on this alarm model.
    #   @return [Types::InitializationConfiguration]
    #
    # @!attribute [rw] acknowledge_flow
    #   Specifies whether to get notified for alarm state changes.
    #   @return [Types::AcknowledgeFlow]
    #
    class AlarmCapabilities < Struct.new(
      :initialization_configuration,
      :acknowledge_flow)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about one or more alarm actions.
    #
    # @!attribute [rw] alarm_actions
    #   Specifies one or more supported actions to receive notifications
    #   when the alarm state changes.
    #   @return [Array<Types::AlarmAction>]
    #
    class AlarmEventActions < Struct.new(
      :alarm_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of an alarm model.
    #
    # @!attribute [rw] creation_time
    #   The time the alarm model was created, in the Unix epoch format.
    #   @return [Time]
    #
    # @!attribute [rw] alarm_model_description
    #   The description of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    class AlarmModelSummary < Struct.new(
      :creation_time,
      :alarm_model_description,
      :alarm_model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of an alarm model version.
    #
    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_arn
    #   The ARN of the alarm model. For more information, see [Amazon
    #   Resource Names (ARNs)][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_version
    #   The version of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that allows the alarm to perform actions and
    #   access AWS resources. For more information, see [Amazon Resource
    #   Names (ARNs)][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the alarm model was created, in the Unix epoch format.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time the alarm model was last updated, in the Unix epoch format.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the alarm model. The status can be one of the
    #   following values:
    #
    #   * `ACTIVE` - The alarm model is active and it's ready to evaluate
    #     data.
    #
    #   * `ACTIVATING` - AWS IoT Events is activating your alarm model.
    #     Activating an alarm model can take up to a few minutes.
    #
    #   * `INACTIVE` - The alarm model is inactive, so it isn't ready to
    #     evaluate data. Check your alarm model information and update the
    #     alarm model.
    #
    #   * `FAILED` - You couldn't create or update the alarm model. Check
    #     your alarm model information and try again.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Contains information about the status of the alarm model version.
    #   @return [String]
    #
    class AlarmModelVersionSummary < Struct.new(
      :alarm_model_name,
      :alarm_model_arn,
      :alarm_model_version,
      :role_arn,
      :creation_time,
      :last_update_time,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about one or more notification actions.
    #
    # @!attribute [rw] notification_actions
    #   Contains the notification settings of an alarm model. The settings
    #   apply to all alarms that were created based on this alarm model.
    #   @return [Array<Types::NotificationAction>]
    #
    class AlarmNotification < Struct.new(
      :notification_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines when your alarm is invoked.
    #
    # @!attribute [rw] simple_rule
    #   A rule that compares an input property value to a threshold value
    #   with a comparison operator.
    #   @return [Types::SimpleRule]
    #
    class AlarmRule < Struct.new(
      :simple_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the result of the analysis.
    #
    # @!attribute [rw] type
    #   The type of the analysis result. Analyses fall into the following
    #   types based on the validators used to generate the analysis result:
    #
    #   * `supported-actions` - You must specify AWS IoT Events supported
    #     actions that work with other AWS services in a supported AWS
    #     Region.
    #
    #   * `service-limits` - Resources or API operations can't exceed
    #     service quotas (also known as limits). Update your detector model
    #     or request a quota increase.
    #
    #   * `structure` - The detector model must follow a structure that AWS
    #     IoT Events supports.
    #
    #   * `expression-syntax` - Your expression must follow the required
    #     syntax.
    #
    #   * `data-type` - Data types referenced in the detector model must be
    #     compatible.
    #
    #   * `referenced-data` - You must define the data referenced in your
    #     detector model before you can use the data.
    #
    #   * `referenced-resource` - Resources that the detector model uses
    #     must be available.
    #
    #   For more information, see [Running detector model analyses][1] in
    #   the *AWS IoT Events Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html
    #   @return [String]
    #
    # @!attribute [rw] level
    #   The severity level of the analysis result. Based on the severity
    #   level, analysis results fall into three general categories:
    #
    #   * `INFO` - An information result tells you about a significant field
    #     in your detector model. This type of result usually doesn't
    #     require immediate action.
    #
    #   * `WARNING` - A warning result draws special attention to fields
    #     that might cause issues for your detector model. We recommend that
    #     you review warnings and take necessary actions before you use your
    #     detector model in production environments. Otherwise, the detector
    #     model might not work as expected.
    #
    #   * `ERROR` - An error result notifies you about a problem found in
    #     your detector model. You must fix all errors before you can
    #     publish your detector model.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Contains additional information about the analysis result.
    #   @return [String]
    #
    # @!attribute [rw] locations
    #   Contains one or more locations that you can use to locate the fields
    #   in your detector model that the analysis result references.
    #   @return [Array<Types::AnalysisResultLocation>]
    #
    class AnalysisResult < Struct.new(
      :type,
      :level,
      :message,
      :locations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information that you can use to locate the field in your
    # detector model that the analysis result references.
    #
    # @!attribute [rw] path
    #   A [JsonPath][1] expression that identifies the error field in your
    #   detector model.
    #
    #
    #
    #   [1]: https://github.com/json-path/JsonPath
    #   @return [String]
    #
    class AnalysisResultLocation < Struct.new(
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains timestamp information. For more information,
    # see [TimeInNanos][1] in the *AWS IoT SiteWise API Reference*.
    #
    # You must use expressions for all parameters in
    # `AssetPropertyTimestamp`. The expressions accept literals, operators,
    # functions, references, and substitution templates.
    #
    # **Examples**
    #
    # * For literal values, the expressions must contain single quotes. For
    #   example, the value for the `timeInSeconds` parameter can be
    #   `'1586400675'`.
    #
    # * For references, you must specify either variables or input values.
    #   For example, the value for the `offsetInNanos` parameter can be
    #   `$variable.time`.
    #
    # * For a substitution template, you must use `$\{\}`, and the template
    #   must be in single quotes. A substitution template can also contain a
    #   combination of literals, operators, functions, references, and
    #   substitution templates.
    #
    #   In the following example, the value for the `timeInSeconds`
    #   parameter uses a substitution template.
    #
    #   `'$\{$input.TemperatureInput.sensorData.timestamp / 1000\}'`
    #
    # For more information, see [Expressions][2] in the *AWS IoT Events
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_TimeInNanos.html
    # [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    #
    # @!attribute [rw] time_in_seconds
    #   The timestamp, in seconds, in the Unix epoch format. The valid range
    #   is between 1-31556889864403199.
    #   @return [String]
    #
    # @!attribute [rw] offset_in_nanos
    #   The nanosecond offset converted from `timeInSeconds`. The valid
    #   range is between 0-999999999.
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
    # You must use expressions for all parameters in `AssetPropertyValue`.
    # The expressions accept literals, operators, functions, references, and
    # substitution templates.
    #
    # **Examples**
    #
    # * For literal values, the expressions must contain single quotes. For
    #   example, the value for the `quality` parameter can be `'GOOD'`.
    #
    # * For references, you must specify either variables or input values.
    #   For example, the value for the `quality` parameter can be
    #   `$input.TemperatureInput.sensorData.quality`.
    #
    # For more information, see [Expressions][2] in the *AWS IoT Events
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetPropertyValue.html
    # [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
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
    #   The quality of the asset property value. The value must be `'GOOD'`,
    #   `'BAD'`, or `'UNCERTAIN'`.
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
    # You must use expressions for all parameters in `AssetPropertyVariant`.
    # The expressions accept literals, operators, functions, references, and
    # substitution templates.
    #
    # **Examples**
    #
    # * For literal values, the expressions must contain single quotes. For
    #   example, the value for the `integerValue` parameter can be `'100'`.
    #
    # * For references, you must specify either variables or parameters. For
    #   example, the value for the `booleanValue` parameter can be
    #   `$variable.offline`.
    #
    # * For a substitution template, you must use `$\{\}`, and the template
    #   must be in single quotes. A substitution template can also contain a
    #   combination of literals, operators, functions, references, and
    #   substitution templates.
    #
    #   In the following example, the value for the `doubleValue` parameter
    #   uses a substitution template.
    #
    #   `'$\{$input.TemperatureInput.sensorData.temperature * 6 / 5 + 32\}'`
    #
    # For more information, see [Expressions][2] in the *AWS IoT Events
    # Developer Guide*.
    #
    # You must specify one of the following value types, depending on the
    # `dataType` of the specified asset property. For more information, see
    # [AssetProperty][3] in the *AWS IoT SiteWise API Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_Variant.html
    # [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    # [3]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetProperty.html
    #
    # @!attribute [rw] string_value
    #   The asset property value is a string. You must use an expression,
    #   and the evaluated result should be a string.
    #   @return [String]
    #
    # @!attribute [rw] integer_value
    #   The asset property value is an integer. You must use an expression,
    #   and the evaluated result should be an integer.
    #   @return [String]
    #
    # @!attribute [rw] double_value
    #   The asset property value is a double. You must use an expression,
    #   and the evaluated result should be a double.
    #   @return [String]
    #
    # @!attribute [rw] boolean_value
    #   The asset property value is a Boolean value that must be `'TRUE'` or
    #   `'FALSE'`. You must use an expression, and the evaluated result
    #   should be a Boolean value.
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
    # @!attribute [rw] timer_name
    #   The name of the timer to clear.
    #   @return [String]
    #
    class ClearTimerAction < Struct.new(
      :timer_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarm_model_name
    #   A unique name that helps you identify the alarm model. You can't
    #   change this name after you create the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_description
    #   A description that tells you what the alarm model detects.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that allows the alarm to perform actions and
    #   access AWS resources. For more information, see [Amazon Resource
    #   Names (ARNs)][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the alarm model.
    #   The tags help you manage the alarm model. For more information, see
    #   [Tagging your AWS IoT Events resources][1] in the *AWS IoT Events
    #   Developer Guide*.
    #
    #   You can create up to 50 tags for one alarm model.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/developerguide/tagging-iotevents.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] key
    #   An input attribute used as a key to create an alarm. AWS IoT Events
    #   routes [inputs][1] associated with this key to the alarm.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   A non-negative integer that reflects the severity level of the
    #   alarm.
    #   @return [Integer]
    #
    # @!attribute [rw] alarm_rule
    #   Defines when your alarm is invoked.
    #   @return [Types::AlarmRule]
    #
    # @!attribute [rw] alarm_notification
    #   Contains information about one or more notification actions.
    #   @return [Types::AlarmNotification]
    #
    # @!attribute [rw] alarm_event_actions
    #   Contains information about one or more alarm actions.
    #   @return [Types::AlarmEventActions]
    #
    # @!attribute [rw] alarm_capabilities
    #   Contains the configuration information of alarm state changes.
    #   @return [Types::AlarmCapabilities]
    #
    class CreateAlarmModelRequest < Struct.new(
      :alarm_model_name,
      :alarm_model_description,
      :role_arn,
      :tags,
      :key,
      :severity,
      :alarm_rule,
      :alarm_notification,
      :alarm_event_actions,
      :alarm_capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The time the alarm model was created, in the Unix epoch format.
    #   @return [Time]
    #
    # @!attribute [rw] alarm_model_arn
    #   The ARN of the alarm model. For more information, see [Amazon
    #   Resource Names (ARNs)][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_version
    #   The version of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The time the alarm model was last updated, in the Unix epoch format.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the alarm model. The status can be one of the
    #   following values:
    #
    #   * `ACTIVE` - The alarm model is active and it's ready to evaluate
    #     data.
    #
    #   * `ACTIVATING` - AWS IoT Events is activating your alarm model.
    #     Activating an alarm model can take up to a few minutes.
    #
    #   * `INACTIVE` - The alarm model is inactive, so it isn't ready to
    #     evaluate data. Check your alarm model information and update the
    #     alarm model.
    #
    #   * `FAILED` - You couldn't create or update the alarm model. Check
    #     your alarm model information and try again.
    #   @return [String]
    #
    class CreateAlarmModelResponse < Struct.new(
      :creation_time,
      :alarm_model_arn,
      :alarm_model_version,
      :last_update_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    class DeleteAlarmModelRequest < Struct.new(
      :alarm_model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteAlarmModelResponse < Aws::EmptyStructure; end

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

    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_version
    #   The version of the alarm model.
    #   @return [String]
    #
    class DescribeAlarmModelRequest < Struct.new(
      :alarm_model_name,
      :alarm_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The time the alarm model was created, in the Unix epoch format.
    #   @return [Time]
    #
    # @!attribute [rw] alarm_model_arn
    #   The ARN of the alarm model. For more information, see [Amazon
    #   Resource Names (ARNs)][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_version
    #   The version of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The time the alarm model was last updated, in the Unix epoch format.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the alarm model. The status can be one of the
    #   following values:
    #
    #   * `ACTIVE` - The alarm model is active and it's ready to evaluate
    #     data.
    #
    #   * `ACTIVATING` - AWS IoT Events is activating your alarm model.
    #     Activating an alarm model can take up to a few minutes.
    #
    #   * `INACTIVE` - The alarm model is inactive, so it isn't ready to
    #     evaluate data. Check your alarm model information and update the
    #     alarm model.
    #
    #   * `FAILED` - You couldn't create or update the alarm model. Check
    #     your alarm model information and try again.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Contains information about the status of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_description
    #   The description of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that allows the alarm to perform actions and
    #   access AWS resources. For more information, see [Amazon Resource
    #   Names (ARNs)][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] key
    #   An input attribute used as a key to create an alarm. AWS IoT Events
    #   routes [inputs][1] associated with this key to the alarm.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   A non-negative integer that reflects the severity level of the
    #   alarm.
    #   @return [Integer]
    #
    # @!attribute [rw] alarm_rule
    #   Defines when your alarm is invoked.
    #   @return [Types::AlarmRule]
    #
    # @!attribute [rw] alarm_notification
    #   Contains information about one or more notification actions.
    #   @return [Types::AlarmNotification]
    #
    # @!attribute [rw] alarm_event_actions
    #   Contains information about one or more alarm actions.
    #   @return [Types::AlarmEventActions]
    #
    # @!attribute [rw] alarm_capabilities
    #   Contains the configuration information of alarm state changes.
    #   @return [Types::AlarmCapabilities]
    #
    class DescribeAlarmModelResponse < Struct.new(
      :creation_time,
      :alarm_model_arn,
      :alarm_model_version,
      :last_update_time,
      :status,
      :status_message,
      :alarm_model_name,
      :alarm_model_description,
      :role_arn,
      :key,
      :severity,
      :alarm_rule,
      :alarm_notification,
      :alarm_event_actions,
      :alarm_capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_id
    #   The ID of the analysis result that you want to retrieve.
    #   @return [String]
    #
    class DescribeDetectorModelAnalysisRequest < Struct.new(
      :analysis_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the analysis activity. The status can be one of the
    #   following values:
    #
    #   * `RUNNING` - AWS IoT Events is analyzing your detector model. This
    #     process can take several minutes to complete.
    #
    #   * `COMPLETE` - AWS IoT Events finished analyzing your detector
    #     model.
    #
    #   * `FAILED` - AWS IoT Events couldn't analyze your detector model.
    #     Try again later.
    #   @return [String]
    #
    class DescribeDetectorModelAnalysisResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # created. The standard action payload contains all the information
    # about the detector model instance and the event that triggered the
    # action. You can customize the [payload][1]. One column of the DynamoDB
    # table receives all attribute-value pairs in the payload that you
    # specify.
    #
    # You must use expressions for all parameters in `DynamoDBAction`. The
    # expressions accept literals, operators, functions, references, and
    # substitution templates.
    #
    # **Examples**
    #
    # * For literal values, the expressions must contain single quotes. For
    #   example, the value for the `hashKeyType` parameter can be
    #   `'STRING'`.
    #
    # * For references, you must specify either variables or input values.
    #   For example, the value for the `hashKeyField` parameter can be
    #   `$input.GreenhouseInput.name`.
    #
    # * For a substitution template, you must use `$\{\}`, and the template
    #   must be in single quotes. A substitution template can also contain a
    #   combination of literals, operators, functions, references, and
    #   substitution templates.
    #
    #   In the following example, the value for the `hashKeyValue` parameter
    #   uses a substitution template.
    #
    #   `'$\{$input.GreenhouseInput.temperature * 6 / 5 + 32\} in
    #   Fahrenheit'`
    #
    # * For a string concatenation, you must use `+`. A string concatenation
    #   can also contain a combination of literals, operators, functions,
    #   references, and substitution templates.
    #
    #   In the following example, the value for the `tableName` parameter
    #   uses a string concatenation.
    #
    #   `'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date`
    #
    # For more information, see [Expressions][2] in the *AWS IoT Events
    # Developer Guide*.
    #
    # If the defined payload type is a string, `DynamoDBAction` writes
    # non-JSON data to the DynamoDB table as binary data. The DynamoDB
    # console displays the data as Base64-encoded text. The value for the
    # `payloadField` parameter is `<payload-field>_raw`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html
    # [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    #
    # @!attribute [rw] hash_key_type
    #   The data type for the hash key (also called the partition key). You
    #   can specify the following values:
    #
    #   * `'STRING'` - The hash key is a string.
    #
    #   * `'NUMBER'` - The hash key is a number.
    #
    #   If you don't specify `hashKeyType`, the default value is
    #   `'STRING'`.
    #   @return [String]
    #
    # @!attribute [rw] hash_key_field
    #   The name of the hash key (also called the partition key). The
    #   `hashKeyField` value must match the partition key of the target
    #   DynamoDB table.
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
    #   * `'STRING'` - The range key is a string.
    #
    #   * `'NUMBER'` - The range key is number.
    #
    #   If you don't specify `rangeKeyField`, the default value is
    #   `'STRING'`.
    #   @return [String]
    #
    # @!attribute [rw] range_key_field
    #   The name of the range key (also called the sort key). The
    #   `rangeKeyField` value must match the sort key of the target DynamoDB
    #   table.
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
    #   * `'INSERT'` - Insert data as a new item into the DynamoDB table.
    #     This item uses the specified hash key as a partition key. If you
    #     specified a range key, the item uses the range key as a sort key.
    #
    #   * `'UPDATE'` - Update an existing item of the DynamoDB table with
    #     new data. This item's partition key must match the specified hash
    #     key. If you specified a range key, the range key must match the
    #     item's sort key.
    #
    #   * `'DELETE'` - Delete an existing item of the DynamoDB table. This
    #     item's partition key must match the specified hash key. If you
    #     specified a range key, the range key must match the item's sort
    #     key.
    #
    #   If you don't specify this parameter, AWS IoT Events triggers the
    #   `'INSERT'` operation.
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
    #   The name of the DynamoDB table. The `tableName` value must match the
    #   table name of the target DynamoDB table.
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
    # created. The default action payload contains all the information about
    # the detector model instance and the event that triggered the action.
    # You can customize the [payload][1]. A separate column of the DynamoDB
    # table receives one attribute-value pair in the payload that you
    # specify.
    #
    # You must use expressions for all parameters in `DynamoDBv2Action`. The
    # expressions accept literals, operators, functions, references, and
    # substitution templates.
    #
    # **Examples**
    #
    # * For literal values, the expressions must contain single quotes. For
    #   example, the value for the `tableName` parameter can be
    #   `'GreenhouseTemperatureTable'`.
    #
    # * For references, you must specify either variables or input values.
    #   For example, the value for the `tableName` parameter can be
    #   `$variable.ddbtableName`.
    #
    # * For a substitution template, you must use `$\{\}`, and the template
    #   must be in single quotes. A substitution template can also contain a
    #   combination of literals, operators, functions, references, and
    #   substitution templates.
    #
    #   In the following example, the value for the `contentExpression`
    #   parameter in `Payload` uses a substitution template.
    #
    #   `'\{"sensorID": "$\{$input.GreenhouseInput.sensor_id\}",
    #   "temperature": "$\{$input.GreenhouseInput.temperature * 9 / 5 +
    #   32\}"\}'`
    #
    # * For a string concatenation, you must use `+`. A string concatenation
    #   can also contain a combination of literals, operators, functions,
    #   references, and substitution templates.
    #
    #   In the following example, the value for the `tableName` parameter
    #   uses a string concatenation.
    #
    #   `'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date`
    #
    # For more information, see [Expressions][2] in the *AWS IoT Events
    # Developer Guide*.
    #
    # The value for the `type` parameter in `Payload` must be `JSON`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html
    # [2]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
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

    # Contains the configuration information of email notifications.
    #
    # @!attribute [rw] from
    #   The email address that sends emails.
    #
    #   If you use the AWS IoT Events managed AWS Lambda function to manage
    #   your emails, you must [verify the email address that sends emails in
    #   Amazon SES][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Contains the subject and message of an email.
    #   @return [Types::EmailContent]
    #
    # @!attribute [rw] recipients
    #   Contains the information of one or more recipients who receive the
    #   emails.
    #
    #   You must [add the users that receive emails to your AWS SSO
    #   store][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html
    #   @return [Types::EmailRecipients]
    #
    class EmailConfiguration < Struct.new(
      :from,
      :content,
      :recipients)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the subject and message of an email.
    #
    # @!attribute [rw] subject
    #   The subject of the email.
    #   @return [String]
    #
    # @!attribute [rw] additional_message
    #   The message that you want to send. The message can be up to 200
    #   characters.
    #   @return [String]
    #
    class EmailContent < Struct.new(
      :subject,
      :additional_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the information of one or more recipients who receive the
    # emails.
    #
    # You must [add the users that receive emails to your AWS SSO store][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html
    #
    # @!attribute [rw] to
    #   Specifies one or more recipients who receive the email.
    #   @return [Array<Types::RecipientDetail>]
    #
    class EmailRecipients < Struct.new(
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the `actions` to be performed when the `condition` evaluates
    # to TRUE.
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

    # @!attribute [rw] analysis_id
    #   The ID of the analysis result that you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token that you can use to return the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    class GetDetectorModelAnalysisResultsRequest < Struct.new(
      :analysis_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_results
    #   Contains information about one or more analysis results.
    #   @return [Array<Types::AnalysisResult>]
    #
    # @!attribute [rw] next_token
    #   The token that you can use to return the next set of results, or
    #   `null` if there are no more results.
    #   @return [String]
    #
    class GetDetectorModelAnalysisResultsResponse < Struct.new(
      :analysis_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the default alarm state. The configuration applies to all
    # alarms that were created based on this alarm model.
    #
    # @!attribute [rw] disabled_on_initialization
    #   The value must be `TRUE` or `FALSE`. If `FALSE`, all alarm instances
    #   created based on the alarm model are activated. The default value is
    #   `TRUE`.
    #   @return [Boolean]
    #
    class InitializationConfiguration < Struct.new(
      :disabled_on_initialization)
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

    # The identifer of the input.
    #
    # @!attribute [rw] iot_events_input_identifier
    #   The identifier of the input routed to AWS IoT Events.
    #   @return [Types::IotEventsInputIdentifier]
    #
    # @!attribute [rw] iot_site_wise_input_identifier
    #   The identifer of the input routed from AWS IoT SiteWise.
    #   @return [Types::IotSiteWiseInputIdentifier]
    #
    class InputIdentifier < Struct.new(
      :iot_events_input_identifier,
      :iot_site_wise_input_identifier)
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

    # The identifier of the input routed to AWS IoT Events.
    #
    # @!attribute [rw] input_name
    #   The name of the input routed to AWS IoT Events.
    #   @return [String]
    #
    class IotEventsInputIdentifier < Struct.new(
      :input_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sends information about the detector model instance and the event that
    # triggered the action to a specified asset property in AWS IoT
    # SiteWise.
    #
    # You must use expressions for all parameters in `IotSiteWiseAction`.
    # The expressions accept literals, operators, functions, references, and
    # substitutions templates.
    #
    # **Examples**
    #
    # * For literal values, the expressions must contain single quotes. For
    #   example, the value for the `propertyAlias` parameter can be
    #   `'/company/windfarm/3/turbine/7/temperature'`.
    #
    # * For references, you must specify either variables or input values.
    #   For example, the value for the `assetId` parameter can be
    #   `$input.TurbineInput.assetId1`.
    #
    # * For a substitution template, you must use `$\{\}`, and the template
    #   must be in single quotes. A substitution template can also contain a
    #   combination of literals, operators, functions, references, and
    #   substitution templates.
    #
    #   In the following example, the value for the `propertyAlias`
    #   parameter uses a substitution template.
    #
    #   `'company/windfarm/$\{$input.TemperatureInput.sensorData.windfarmID\}/turbine/
    #   $\{$input.TemperatureInput.sensorData.turbineID\}/temperature'`
    #
    # You must specify either `propertyAlias` or both `assetId` and
    # `propertyId` to identify the target asset property in AWS IoT
    # SiteWise.
    #
    # For more information, see [Expressions][1] in the *AWS IoT Events
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html
    #
    # @!attribute [rw] entry_id
    #   A unique identifier for this entry. You can use the entry ID to
    #   track which data entry causes an error in case of failure. The
    #   default is a new unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The ID of the asset that has the specified property.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the asset property.
    #   @return [String]
    #
    # @!attribute [rw] property_alias
    #   The alias of the asset property.
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

    # The asset model property identifer of the input routed from AWS IoT
    # SiteWise.
    #
    # @!attribute [rw] asset_model_id
    #   The ID of the AWS IoT SiteWise asset model.
    #   @return [String]
    #
    # @!attribute [rw] property_id
    #   The ID of the AWS IoT SiteWise asset property.
    #   @return [String]
    #
    class IotSiteWiseAssetModelPropertyIdentifier < Struct.new(
      :asset_model_id,
      :property_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identifer of the input routed from AWS IoT SiteWise.
    #
    # @!attribute [rw] iot_site_wise_asset_model_property_identifier
    #   The identifier of the AWS IoT SiteWise asset model property.
    #   @return [Types::IotSiteWiseAssetModelPropertyIdentifier]
    #
    class IotSiteWiseInputIdentifier < Struct.new(
      :iot_site_wise_asset_model_property_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information required to publish the MQTT message through the AWS IoT
    # message broker.
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

    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token that you can use to return the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    class ListAlarmModelVersionsRequest < Struct.new(
      :alarm_model_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarm_model_version_summaries
    #   A list that summarizes each alarm model version.
    #   @return [Array<Types::AlarmModelVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that you can use to return the next set of results, or
    #   `null` if there are no more results.
    #   @return [String]
    #
    class ListAlarmModelVersionsResponse < Struct.new(
      :alarm_model_version_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that you can use to return the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    class ListAlarmModelsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarm_model_summaries
    #   A list that summarizes each alarm model.
    #   @return [Array<Types::AlarmModelSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that you can use to return the next set of results, or
    #   `null` if there are no more results.
    #   @return [String]
    #
    class ListAlarmModelsResponse < Struct.new(
      :alarm_model_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_model_name
    #   The name of the detector model whose versions are returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token that you can use to return the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
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
    #   The token that you can use to return the next set of results, or
    #   `null` if there are no more results.
    #   @return [String]
    #
    class ListDetectorModelVersionsResponse < Struct.new(
      :detector_model_version_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that you can use to return the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
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
    #   The token that you can use to return the next set of results, or
    #   `null` if there are no more results.
    #   @return [String]
    #
    class ListDetectorModelsResponse < Struct.new(
      :detector_model_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_identifier
    #   The identifer of the routed input.
    #   @return [Types::InputIdentifier]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that you can use to return the next set of results.
    #   @return [String]
    #
    class ListInputRoutingsRequest < Struct.new(
      :input_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] routed_resources
    #   Summary information about the routed resources.
    #   @return [Array<Types::RoutedResource>]
    #
    # @!attribute [rw] next_token
    #   The token that you can use to return the next set of results, or
    #   `null` if there are no more results.
    #   @return [String]
    #
    class ListInputRoutingsResponse < Struct.new(
      :routed_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that you can use to return the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
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
    #   The token that you can use to return the next set of results, or
    #   `null` if there are no more results.
    #   @return [String]
    #
    class ListInputsResponse < Struct.new(
      :input_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Contains the notification settings of an alarm model. The settings
    # apply to all alarms that were created based on this alarm model.
    #
    # @!attribute [rw] action
    #   Specifies an AWS Lambda function to manage alarm notifications. You
    #   can create one or use the [AWS Lambda function provided by AWS IoT
    #   Events][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html
    #   @return [Types::NotificationTargetActions]
    #
    # @!attribute [rw] sms_configurations
    #   Contains the configuration information of SMS notifications.
    #   @return [Array<Types::SMSConfiguration>]
    #
    # @!attribute [rw] email_configurations
    #   Contains the configuration information of email notifications.
    #   @return [Array<Types::EmailConfiguration>]
    #
    class NotificationAction < Struct.new(
      :action,
      :sms_configurations,
      :email_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an AWS Lambda function to manage alarm notifications. You
    # can create one or use the [AWS Lambda function provided by AWS IoT
    # Events][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html
    #
    # @!attribute [rw] lambda_action
    #   Calls a Lambda function, passing in information about the detector
    #   model instance and the event that triggered the action.
    #   @return [Types::LambdaAction]
    #
    class NotificationTargetActions < Struct.new(
      :lambda_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # When entering this state, perform these `actions` if the `condition`
    # is TRUE.
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

    # @!attribute [rw] logging_options
    #   The new values of the AWS IoT Events logging options.
    #   @return [Types::LoggingOptions]
    #
    class PutLoggingOptionsRequest < Struct.new(
      :logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information that identifies the recipient.
    #
    # @!attribute [rw] sso_identity
    #   The AWS Single Sign-On (AWS SSO) authentication information.
    #   @return [Types::SSOIdentity]
    #
    class RecipientDetail < Struct.new(
      :sso_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information required to reset the timer. The timer is reset to the
    # previously evaluated result of the duration. The duration expression
    # isn't reevaluated when you reset the timer.
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

    # Contains information about the routed resource.
    #
    # @!attribute [rw] name
    #   The name of the routed resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the routed resource. For more information, see [Amazon
    #   Resource Names (ARNs)][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    class RoutedResource < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information of SMS notifications.
    #
    # @!attribute [rw] sender_id
    #   The sender ID.
    #   @return [String]
    #
    # @!attribute [rw] additional_message
    #   The message that you want to send. The message can be up to 200
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] recipients
    #   Specifies one or more recipients who receive the message.
    #
    #   You must [add the users that receive SMS messages to your AWS SSO
    #   store][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html
    #   @return [Array<Types::RecipientDetail>]
    #
    class SMSConfiguration < Struct.new(
      :sender_id,
      :additional_message,
      :recipients)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information required to publish the Amazon SNS message.
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

    # Contains information about your identity source in AWS Single Sign-On.
    # For more information, see the [AWS Single Sign-On User Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html
    #
    # @!attribute [rw] identity_store_id
    #   The ID of the AWS SSO identity store.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    class SSOIdentity < Struct.new(
      :identity_store_id,
      :user_id)
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

    # A rule that compares an input property value to a threshold value with
    # a comparison operator.
    #
    # @!attribute [rw] input_property
    #   The value on the left side of the comparison operator. You can
    #   specify an AWS IoT Events input attribute as an input property.
    #   @return [String]
    #
    # @!attribute [rw] comparison_operator
    #   The comparison operator.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The value on the right side of the comparison operator. You can
    #   enter a number or specify an AWS IoT Events input attribute.
    #   @return [String]
    #
    class SimpleRule < Struct.new(
      :input_property,
      :comparison_operator,
      :threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sends information about the detector model instance and the event that
    # triggered the action to an Amazon SQS queue.
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

    # @!attribute [rw] detector_model_definition
    #   Information that defines how a detector operates.
    #   @return [Types::DetectorModelDefinition]
    #
    class StartDetectorModelAnalysisRequest < Struct.new(
      :detector_model_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_id
    #   The ID that you can use to retrieve the analysis result.
    #   @return [String]
    #
    class StartDetectorModelAnalysisResponse < Struct.new(
      :analysis_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information that defines a state of a detector.
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

    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_description
    #   The description of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that allows the alarm to perform actions and
    #   access AWS resources. For more information, see [Amazon Resource
    #   Names (ARNs)][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   A non-negative integer that reflects the severity level of the
    #   alarm.
    #   @return [Integer]
    #
    # @!attribute [rw] alarm_rule
    #   Defines when your alarm is invoked.
    #   @return [Types::AlarmRule]
    #
    # @!attribute [rw] alarm_notification
    #   Contains information about one or more notification actions.
    #   @return [Types::AlarmNotification]
    #
    # @!attribute [rw] alarm_event_actions
    #   Contains information about one or more alarm actions.
    #   @return [Types::AlarmEventActions]
    #
    # @!attribute [rw] alarm_capabilities
    #   Contains the configuration information of alarm state changes.
    #   @return [Types::AlarmCapabilities]
    #
    class UpdateAlarmModelRequest < Struct.new(
      :alarm_model_name,
      :alarm_model_description,
      :role_arn,
      :severity,
      :alarm_rule,
      :alarm_notification,
      :alarm_event_actions,
      :alarm_capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The time the alarm model was created, in the Unix epoch format.
    #   @return [Time]
    #
    # @!attribute [rw] alarm_model_arn
    #   The ARN of the alarm model. For more information, see [Amazon
    #   Resource Names (ARNs)][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_version
    #   The version of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The time the alarm model was last updated, in the Unix epoch format.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the alarm model. The status can be one of the
    #   following values:
    #
    #   * `ACTIVE` - The alarm model is active and it's ready to evaluate
    #     data.
    #
    #   * `ACTIVATING` - AWS IoT Events is activating your alarm model.
    #     Activating an alarm model can take up to a few minutes.
    #
    #   * `INACTIVE` - The alarm model is inactive, so it isn't ready to
    #     evaluate data. Check your alarm model information and update the
    #     alarm model.
    #
    #   * `FAILED` - You couldn't create or update the alarm model. Check
    #     your alarm model information and try again.
    #   @return [String]
    #
    class UpdateAlarmModelResponse < Struct.new(
      :creation_time,
      :alarm_model_arn,
      :alarm_model_version,
      :last_update_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

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
