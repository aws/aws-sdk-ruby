# frozen_string_literal: true

# This is generated code!

module Aws::IoTEvents
  # This module contains the types returned by client operations.
  module Types

    # <p>Specifies whether to get notified for alarm state changes.</p>
    # @!attribute enabled
    #   <p>The value must be <code>TRUE</code> or <code>FALSE</code>. If <code>TRUE</code>, you
    #         receive a notification when the alarm state changes. You must choose to acknowledge the
    #         notification before the alarm state can return to <code>NORMAL</code>. If <code>FALSE</code>,
    #         you won't receive notifications. The alarm automatically changes to the <code>NORMAL</code>
    #         state when the input property value returns to the specified range.</p>
    #   @return [Boolean]
    class AcknowledgeFlow < Struct.new(
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An action to be performed when the <code>condition</code> is TRUE.</p>
    # @!attribute set_variable
    #   <p>Sets a variable to a specified value.</p>
    #   @return [Types::SetVariableAction]
    # @!attribute sns
    #   <p>Sends an Amazon SNS message.</p>
    #   @return [Types::SNSTopicPublishAction]
    # @!attribute iot_topic_publish
    #   <p>Publishes an MQTT message with the given topic to the AWS IoT message broker.</p>
    #   @return [Types::IotTopicPublishAction]
    # @!attribute set_timer
    #   <p>Information needed to set the timer.</p>
    #   @return [Types::SetTimerAction]
    # @!attribute clear_timer
    #   <p>Information needed to clear the timer.</p>
    #   @return [Types::ClearTimerAction]
    # @!attribute reset_timer
    #   <p>Information needed to reset the timer.</p>
    #   @return [Types::ResetTimerAction]
    # @!attribute lambda
    #   <p>Calls a Lambda function, passing in information about the detector model instance and the
    #         event that triggered the action.</p>
    #   @return [Types::LambdaAction]
    # @!attribute iot_events
    #   <p>Sends AWS IoT Events input, which passes information about the detector model instance and the
    #         event that triggered the action.</p>
    #   @return [Types::IotEventsAction]
    # @!attribute sqs
    #   <p>Sends information about the detector model instance and the event that triggered the
    #         action to an Amazon SQS queue.</p>
    #   @return [Types::SqsAction]
    # @!attribute firehose
    #   <p>Sends information about the detector model instance and the event that triggered the
    #         action to an Amazon Kinesis Data Firehose delivery stream.</p>
    #   @return [Types::FirehoseAction]
    # @!attribute dynamo_db
    #   <p>Writes to the DynamoDB table that you created. The default action payload contains all
    #         attribute-value pairs that have the information about the detector model instance and the
    #         event that triggered the action. You can customize the <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html">payload</a>. One column of the
    #         DynamoDB table receives all attribute-value pairs in the payload that you specify. For more
    #         information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html">Actions</a> in
    #           <i>AWS IoT Events Developer Guide</i>.</p>
    #   @return [Types::DynamoDBAction]
    # @!attribute dynamo_d_bv2
    #   <p>Writes to the DynamoDB table that you created. The default action payload contains all
    #         attribute-value pairs that have the information about the detector model instance and the
    #         event that triggered the action. You can customize the <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html">payload</a>. A separate column of
    #         the DynamoDB table receives one attribute-value pair in the payload that you specify. For more
    #         information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html">Actions</a> in
    #           <i>AWS IoT Events Developer Guide</i>.</p>
    #   @return [Types::DynamoDBv2Action]
    # @!attribute iot_site_wise
    #   <p>Sends information about the detector model instance and the event that triggered the
    #         action to an asset property in AWS IoT SiteWise .</p>
    #   @return [Types::IotSiteWiseAction]
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
      :dynamo_d_bv2,
      :iot_site_wise,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies one of the following actions to receive notifications when the alarm state
    #       changes.</p>
    # @!attribute sns
    #   <p>Information required to publish the Amazon SNS message.</p>
    #   @return [Types::SNSTopicPublishAction]
    # @!attribute iot_topic_publish
    #   <p>Information required to publish the MQTT message through the AWS IoT message broker.</p>
    #   @return [Types::IotTopicPublishAction]
    # @!attribute lambda
    #   <p>Calls a Lambda function, passing in information about the detector model instance and the
    #         event that triggered the action.</p>
    #   @return [Types::LambdaAction]
    # @!attribute iot_events
    #   <p>Sends an AWS IoT Events input, passing in information about the detector model instance and the
    #         event that triggered the action.</p>
    #   @return [Types::IotEventsAction]
    # @!attribute sqs
    #   <p>Sends information about the detector model instance and the event that triggered the
    #         action to an Amazon SQS queue.</p>
    #   @return [Types::SqsAction]
    # @!attribute firehose
    #   <p>Sends information about the detector model instance and the event that triggered the
    #         action to an Amazon Kinesis Data Firehose delivery stream.</p>
    #   @return [Types::FirehoseAction]
    # @!attribute dynamo_db
    #   <p>Defines an action to write to the Amazon DynamoDB table that you created. The standard action
    #         payload contains all the information about the detector model instance and the event that
    #         triggered the action. You can customize the <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html">payload</a>. One column of the
    #         DynamoDB table receives all attribute-value pairs in the payload that you specify.</p>
    #            <p>You must use expressions for all parameters in <code>DynamoDBAction</code>. The expressions
    #         accept literals, operators, functions, references, and substitution templates.</p>
    #            <p class="title">
    #               <b>Examples</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>For literal values, the expressions must contain single quotes. For example, the value
    #             for the <code>hashKeyType</code> parameter can be <code>'STRING'</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For references, you must specify either variables or input values. For example, the
    #             value for the <code>hashKeyField</code> parameter can be
    #               <code>$input.GreenhouseInput.name</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For a substitution template, you must use <code>${}</code>, and the template must be
    #             in single quotes. A substitution template can also contain a combination of literals,
    #             operators, functions, references, and substitution templates.</p>
    #                  <p>In the following example, the value for the <code>hashKeyValue</code> parameter uses a
    #             substitution template. </p>
    #                  <p>
    #                     <code>'${$input.GreenhouseInput.temperature * 6 / 5 + 32} in Fahrenheit'</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For a string concatenation, you must use <code>+</code>. A string concatenation can
    #             also contain a combination of literals, operators, functions, references, and substitution
    #             templates.</p>
    #                  <p>In the following example, the value for the <code>tableName</code> parameter uses a
    #             string concatenation. </p>
    #                  <p>
    #                     <code>'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, 
    #           see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html">Expressions</a> 
    #           in the <i>AWS IoT Events Developer Guide</i>.</p>
    #            <p>If the defined payload type is a string, <code>DynamoDBAction</code> writes non-JSON data to
    #         the DynamoDB table as binary data. The DynamoDB console displays the data as Base64-encoded text.
    #         The value for the <code>payloadField</code> parameter is
    #           <code><payload-field>_raw</code>.</p>
    #   @return [Types::DynamoDBAction]
    # @!attribute dynamo_d_bv2
    #   <p>Defines an action to write to the Amazon DynamoDB table that you created. The default action
    #         payload contains all the information about the detector model instance and the event that
    #         triggered the action. You can customize the <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html">payload</a>. A separate column of
    #         the DynamoDB table receives one attribute-value pair in the payload that you specify.</p>
    #            <p>You must use expressions for all parameters in <code>DynamoDBv2Action</code>. The expressions
    #         accept literals, operators, functions, references, and substitution templates.</p>
    #            <p class="title">
    #               <b>Examples</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>For literal values, the expressions must contain single quotes. For example, the value
    #             for the <code>tableName</code> parameter can be
    #             <code>'GreenhouseTemperatureTable'</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For references, you must specify either variables or input values. For example, the
    #             value for the <code>tableName</code> parameter can be
    #             <code>$variable.ddbtableName</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For a substitution template, you must use <code>${}</code>, and the template must be
    #             in single quotes. A substitution template can also contain a combination of literals,
    #             operators, functions, references, and substitution templates.</p>
    #                  <p>In the following example, the value for the <code>contentExpression</code> parameter
    #             in <code>Payload</code> uses a substitution template. </p>
    #                  <p>
    #                     <code>'{\"sensorID\": \"${$input.GreenhouseInput.sensor_id}\", \"temperature\":
    #               \"${$input.GreenhouseInput.temperature * 9 / 5 + 32}\"}'</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For a string concatenation, you must use <code>+</code>. A string concatenation can
    #             also contain a combination of literals, operators, functions, references, and substitution
    #             templates.</p>
    #                  <p>In the following example, the value for the <code>tableName</code> parameter uses a
    #             string concatenation. </p>
    #                  <p>
    #                     <code>'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, 
    #           see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html">Expressions</a> 
    #           in the <i>AWS IoT Events Developer Guide</i>.</p>
    #            <p>The value for the <code>type</code> parameter in <code>Payload</code> must be
    #           <code>JSON</code>.</p>
    #   @return [Types::DynamoDBv2Action]
    # @!attribute iot_site_wise
    #   <p>Sends information about the detector model instance and the event that triggered the
    #         action to a specified asset property in AWS IoT SiteWise.</p>
    #            <p>You must use expressions for all parameters in <code>IotSiteWiseAction</code>. The
    #         expressions accept literals, operators, functions, references, and substitutions
    #         templates.</p>
    #            <p class="title">
    #               <b>Examples</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>For literal values, the expressions must contain single quotes. For example, the value
    #             for the <code>propertyAlias</code> parameter can be
    #               <code>'/company/windfarm/3/turbine/7/temperature'</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For references, you must specify either variables or input values. For example, the
    #             value for the <code>assetId</code> parameter can be
    #               <code>$input.TurbineInput.assetId1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For a substitution template, you must use <code>${}</code>, and the template must be
    #             in single quotes. A substitution template can also contain a combination of literals,
    #             operators, functions, references, and substitution templates.</p>
    #                  <p>In the following example, the value for the <code>propertyAlias</code> parameter uses
    #             a substitution template. </p>
    #                  <p>
    #                     <code>'company/windfarm/${$input.TemperatureInput.sensorData.windfarmID}/turbine/
    #               ${$input.TemperatureInput.sensorData.turbineID}/temperature'</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You must specify either <code>propertyAlias</code> or both <code>assetId</code> and
    #           <code>propertyId</code> to identify the target asset property in AWS IoT SiteWise.</p>
    #            <p>For more information, 
    #           see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html">Expressions</a> 
    #           in the <i>AWS IoT Events Developer Guide</i>.</p>
    #   @return [Types::IotSiteWiseAction]
    class AlarmAction < Struct.new(
      :sns,
      :iot_topic_publish,
      :lambda,
      :iot_events,
      :sqs,
      :firehose,
      :dynamo_db,
      :dynamo_d_bv2,
      :iot_site_wise,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration information of alarm state changes.</p>
    # @!attribute initialization_configuration
    #   <p>Specifies the default alarm state. 
    #   The configuration applies to all alarms that were created based on this alarm model.</p>
    #   @return [Types::InitializationConfiguration]
    # @!attribute acknowledge_flow
    #   <p>Specifies whether to get notified for alarm state changes.</p>
    #   @return [Types::AcknowledgeFlow]
    class AlarmCapabilities < Struct.new(
      :initialization_configuration,
      :acknowledge_flow,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about one or more alarm actions.</p>
    # @!attribute alarm_actions
    #   <p>Specifies one or more supported actions to receive notifications when the alarm state
    #         changes.</p>
    #   @return [Array<Types::AlarmAction>]
    class AlarmEventActions < Struct.new(
      :alarm_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of an alarm model.</p>
    # @!attribute creation_time
    #   <p>The time the alarm model was created, in the Unix epoch format.</p>
    #   @return [Time]
    # @!attribute alarm_model_description
    #   <p>The description of the alarm model.</p>
    #   @return [String]
    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    class AlarmModelSummary < Struct.new(
      :creation_time,
      :alarm_model_description,
      :alarm_model_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of an alarm model version.</p>
    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute alarm_model_arn
    #   <p>The ARN of the alarm model. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #   @return [String]
    # @!attribute alarm_model_version
    #   <p>The version of the alarm model.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the alarm model was created, in the Unix epoch format.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time the alarm model was last updated, in the Unix epoch format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the alarm model. The status can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The alarm model is active and it's ready to evaluate data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATING</code> - AWS IoT Events is activating your alarm model. 
    #           Activating an alarm model can take up to a few minutes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE</code> - The alarm model is inactive, so it isn't ready to evaluate data. 
    #   	  Check your alarm model information and update the alarm model.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - You couldn't create or update the alarm model. Check your alarm model information 
    #           and try again.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_message
    #   <p>
    #         Contains information about the status of the alarm model version.
    #       </p>
    #   @return [String]
    class AlarmModelVersionSummary < Struct.new(
      :alarm_model_name,
      :alarm_model_arn,
      :alarm_model_version,
      :role_arn,
      :creation_time,
      :last_update_time,
      :status,
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about one or more notification actions.</p>
    # @!attribute notification_actions
    #   <p>Contains the notification settings of an alarm model. 
    #   The settings apply to all alarms that were created based on this alarm model.</p>
    #   @return [Array<Types::NotificationAction>]
    class AlarmNotification < Struct.new(
      :notification_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines when your alarm is invoked.</p>
    # @!attribute simple_rule
    #   <p>A rule that compares an input property value to a threshold value with a comparison operator.</p>
    #   @return [Types::SimpleRule]
    class AlarmRule < Struct.new(
      :simple_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the result of the analysis.</p>
    # @!attribute type
    #   <p>The type of the analysis result. Analyses fall into the following types based on the
    #         validators used to generate the analysis result:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>supported-actions</code> - You must specify AWS IoT Events supported actions that work
    #             with other AWS services in a supported AWS Region.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>service-limits</code> - Resources or API operations can't exceed service
    #             quotas (also known as limits). Update your detector model or request a quota
    #             increase.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>structure</code> - The detector model must follow a structure that AWS IoT Events
    #             supports. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>expression-syntax</code> - Your expression must follow the required
    #             syntax.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>data-type</code> - Data types referenced in the detector model must be
    #             compatible.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>referenced-data</code> - You must define the data referenced in your detector
    #             model before you can use the data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>referenced-resource</code> - Resources that the detector model uses must be
    #             available.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html">Running detector model
    #           analyses</a> in the <i>AWS IoT Events Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute level
    #   <p>The severity level of the analysis result. Based on the severity level, analysis results
    #         fall into three general categories:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INFO</code> - An information result tells you about a significant field in your
    #             detector model. This type of result usually doesn't require immediate action.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WARNING</code> - A warning result draws special attention to fields that might cause issues for your detector model. 
    #             We recommend that you review warnings and take necessary actions
    #             before you use your detector model in production environments. Otherwise, the detector
    #             model might not work as expected.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - An error result notifies you about a problem found in your
    #             detector model. You must fix all errors before you can publish your detector model.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>Contains additional information about the analysis result.</p>
    #   @return [String]
    # @!attribute locations
    #   <p>Contains one or more locations that you can use to locate the fields in your detector
    #         model that the analysis result references.</p>
    #   @return [Array<Types::AnalysisResultLocation>]
    class AnalysisResult < Struct.new(
      :type,
      :level,
      :message,
      :locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information that you can use to locate the field in your detector model that the
    #       analysis result references.</p>
    # @!attribute path
    #   <p>A <a href="https://github.com/json-path/JsonPath">JsonPath</a> expression that
    #         identifies the error field in your detector model.</p>
    #   @return [String]
    class AnalysisResultLocation < Struct.new(
      :path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains timestamp information. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_TimeInNanos.html">TimeInNanos</a> in the <i>AWS IoT SiteWise API Reference</i>.</p>
    #          <p>You must use expressions for all parameters in <code>AssetPropertyTimestamp</code>. The
    #       expressions accept literals, operators, functions, references, and substitution
    #       templates.</p>
    #          <p class="title">
    #             <b>Examples</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>For literal values, the expressions must contain single quotes. For example, the value
    #           for the <code>timeInSeconds</code> parameter can be <code>'1586400675'</code>.</p>
    #             </li>
    #             <li>
    #                <p>For references, you must specify either variables or input values. For example, the
    #           value for the <code>offsetInNanos</code> parameter can be
    #           <code>$variable.time</code>.</p>
    #             </li>
    #             <li>
    #                <p>For a substitution template, you must use <code>${}</code>, and the template must be
    #           in single quotes. A substitution template can also contain a combination of literals,
    #           operators, functions, references, and substitution templates.</p>
    #                <p>In the following example, the value for the <code>timeInSeconds</code> parameter uses
    #           a substitution template.</p>
    #                <p>
    #                   <code>'${$input.TemperatureInput.sensorData.timestamp / 1000}'</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information, 
    #         see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html">Expressions</a> 
    #         in the <i>AWS IoT Events Developer Guide</i>.</p>
    # @!attribute time_in_seconds
    #   <p>The timestamp, in seconds, in the Unix epoch format. The valid range is between
    #         1-31556889864403199.</p>
    #   @return [String]
    # @!attribute offset_in_nanos
    #   <p>The nanosecond offset converted from <code>timeInSeconds</code>. The valid range is
    #         between 0-999999999.</p>
    #   @return [String]
    class AssetPropertyTimestamp < Struct.new(
      :time_in_seconds,
      :offset_in_nanos,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains value information. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetPropertyValue.html">AssetPropertyValue</a> in the <i>AWS IoT SiteWise API Reference</i>.</p>
    #          <p>You must use expressions for all parameters in <code>AssetPropertyValue</code>. The
    #       expressions accept literals, operators, functions, references, and substitution
    #       templates.</p>
    #          <p class="title">
    #             <b>Examples</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>For literal values, the expressions must contain single quotes. For example, the value
    #           for the <code>quality</code> parameter can be <code>'GOOD'</code>.</p>
    #             </li>
    #             <li>
    #                <p>For references, you must specify either variables or input values. For example, the
    #           value for the <code>quality</code> parameter can be
    #             <code>$input.TemperatureInput.sensorData.quality</code>.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, 
    #         see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html">Expressions</a> 
    #         in the <i>AWS IoT Events Developer Guide</i>.</p>
    # @!attribute value
    #   <p>The value to send to an asset property.</p>
    #   @return [Types::AssetPropertyVariant]
    # @!attribute timestamp
    #   <p>The timestamp associated with the asset property value. The default is the current event
    #         time.</p>
    #   @return [Types::AssetPropertyTimestamp]
    # @!attribute quality
    #   <p>The quality of the asset property value. The value must be <code>'GOOD'</code>,
    #           <code>'BAD'</code>, or <code>'UNCERTAIN'</code>.</p>
    #   @return [String]
    class AssetPropertyValue < Struct.new(
      :value,
      :timestamp,
      :quality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains an asset property value. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_Variant.html">Variant</a>
    #       in the <i>AWS IoT SiteWise API Reference</i>.</p>
    #          <p>You must use expressions for all parameters in <code>AssetPropertyVariant</code>. The
    #       expressions accept literals, operators, functions, references, and substitution
    #       templates.</p>
    #          <p class="title">
    #             <b>Examples</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>For literal values, the expressions must contain single quotes. For example, the value
    #           for the <code>integerValue</code> parameter can be <code>'100'</code>.</p>
    #             </li>
    #             <li>
    #                <p>For references, you must specify either variables or parameters. For example, the
    #           value for the <code>booleanValue</code> parameter can be
    #           <code>$variable.offline</code>.</p>
    #             </li>
    #             <li>
    #                <p>For a substitution template, you must use <code>${}</code>, and the template must be
    #           in single quotes. A substitution template can also contain a combination of literals,
    #           operators, functions, references, and substitution templates. </p>
    #                <p>In the following example, the value for the <code>doubleValue</code> parameter uses a
    #           substitution template. </p>
    #                <p>
    #                   <code>'${$input.TemperatureInput.sensorData.temperature * 6 / 5 + 32}'</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information, 
    #         see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html">Expressions</a> 
    #         in the <i>AWS IoT Events Developer Guide</i>.</p>
    #          <p>You must specify one of the following value types, depending on the <code>dataType</code>
    #       of the specified asset property. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetProperty.html">AssetProperty</a> in the
    #         <i>AWS IoT SiteWise API Reference</i>.</p>
    # @!attribute string_value
    #   <p>The asset property value is a string. You must use an expression, and the evaluated result
    #         should be a string.</p>
    #   @return [String]
    # @!attribute integer_value
    #   <p>The asset property value is an integer. You must use an expression, and the evaluated
    #         result should be an integer.</p>
    #   @return [String]
    # @!attribute double_value
    #   <p>The asset property value is a double. You must use an expression, and the evaluated result
    #         should be a double.</p>
    #   @return [String]
    # @!attribute boolean_value
    #   <p>The asset property value is a Boolean value that must be <code>'TRUE'</code> or
    #           <code>'FALSE'</code>. You must use an expression, and the evaluated result should be a
    #         Boolean value.</p>
    #   @return [String]
    class AssetPropertyVariant < Struct.new(
      :string_value,
      :integer_value,
      :double_value,
      :boolean_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The attributes from the JSON payload that are made available by the input. Inputs are
    #       derived from messages sent to the AWS IoT Events system using <code>BatchPutMessage</code>. Each such
    #       message contains a JSON payload. Those attributes (and their paired values) specified here are
    #       available for use in the <code>condition</code> expressions used by detectors. </p>
    # @!attribute json_path
    #   <p>An expression that specifies an attribute-value pair in a JSON structure. Use this to
    #         specify an attribute from the JSON payload that is made available by the input. Inputs are
    #         derived from messages sent to AWS IoT Events (<code>BatchPutMessage</code>). Each such message contains
    #         a JSON payload. The attribute (and its paired value) specified here are available for use in
    #         the <code>condition</code> expressions used by detectors. </p>
    #            <p>Syntax: <code><field-name>.<field-name>...</code>
    #            </p>
    #   @return [String]
    class Attribute < Struct.new(
      :json_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information needed to clear the timer.</p>
    # @!attribute timer_name
    #   <p>The name of the timer to clear.</p>
    #   @return [String]
    class ClearTimerAction < Struct.new(
      :timer_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_model_name
    #   <p>A unique name that helps you identify the alarm model. You can't change this name after
    #         you create the alarm model.</p>
    #   @return [String]
    # @!attribute alarm_model_description
    #   <p>A description that tells you what the alarm model detects.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the alarm model. The tags help you
    #         manage the alarm model. For more information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/tagging-iotevents.html">Tagging your AWS IoT Events
    #           resources</a> in the <i>AWS IoT Events Developer Guide</i>.</p>
    #            <p>You can create up to 50 tags for one alarm model.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute key
    #   <p>An input attribute used as a key to create an alarm. 
    #   AWS IoT Events routes <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html">inputs</a> 
    #   associated with this key to the alarm.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>A non-negative integer that reflects the severity level of the alarm.</p>
    #   @return [Integer]
    # @!attribute alarm_rule
    #   <p>Defines when your alarm is invoked.</p>
    #   @return [Types::AlarmRule]
    # @!attribute alarm_notification
    #   <p>Contains information about one or more notification actions.</p>
    #   @return [Types::AlarmNotification]
    # @!attribute alarm_event_actions
    #   <p>Contains information about one or more alarm actions.</p>
    #   @return [Types::AlarmEventActions]
    # @!attribute alarm_capabilities
    #   <p>Contains the configuration information of alarm state changes.</p>
    #   @return [Types::AlarmCapabilities]
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
      :alarm_capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The time the alarm model was created, in the Unix epoch format.</p>
    #   @return [Time]
    # @!attribute alarm_model_arn
    #   <p>The ARN of the alarm model. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #   @return [String]
    # @!attribute alarm_model_version
    #   <p>The version of the alarm model.</p>
    #   @return [String]
    # @!attribute last_update_time
    #   <p>The time the alarm model was last updated, in the Unix epoch format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the alarm model. The status can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The alarm model is active and it's ready to evaluate data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATING</code> - AWS IoT Events is activating your alarm model. 
    #           Activating an alarm model can take up to a few minutes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE</code> - The alarm model is inactive, so it isn't ready to evaluate data. 
    #   	  Check your alarm model information and update the alarm model.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - You couldn't create or update the alarm model. Check your alarm model information 
    #           and try again.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CreateAlarmModelResponse < Struct.new(
      :creation_time,
      :alarm_model_arn,
      :alarm_model_version,
      :last_update_time,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model_name
    #   <p>The name of the detector model.</p>
    #   @return [String]
    # @!attribute detector_model_definition
    #   <p>Information that defines how the detectors operate.</p>
    #   @return [Types::DetectorModelDefinition]
    # @!attribute detector_model_description
    #   <p>A brief description of the detector model.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The input attribute key used to identify a device or system to create a detector (an
    #         instance of the detector model) and then to route each input received to the appropriate
    #         detector (instance). This parameter uses a JSON-path expression in the message payload of each
    #         input to specify the attribute-value pair that is used to identify the device associated with
    #         the input.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the detector model.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute evaluation_method
    #   <p>Information about the order in which events are evaluated and how actions are executed.
    #       </p>
    #   @return [String]
    class CreateDetectorModelRequest < Struct.new(
      :detector_model_name,
      :detector_model_definition,
      :detector_model_description,
      :key,
      :role_arn,
      :tags,
      :evaluation_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model_configuration
    #   <p>Information about how the detector model is configured.</p>
    #   @return [Types::DetectorModelConfiguration]
    class CreateDetectorModelResponse < Struct.new(
      :detector_model_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_name
    #   <p>The name you want to give to the input.</p>
    #   @return [String]
    # @!attribute input_description
    #   <p>A brief description of the input.</p>
    #   @return [String]
    # @!attribute input_definition
    #   <p>The definition of the input.</p>
    #   @return [Types::InputDefinition]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the input.</p>
    #   @return [Array<Types::Tag>]
    class CreateInputRequest < Struct.new(
      :input_name,
      :input_description,
      :input_definition,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_configuration
    #   <p>Information about the configuration of the input.</p>
    #   @return [Types::InputConfiguration]
    class CreateInputResponse < Struct.new(
      :input_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    class DeleteAlarmModelRequest < Struct.new(
      :alarm_model_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAlarmModelResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model_name
    #   <p>The name of the detector model to be deleted.</p>
    #   @return [String]
    class DeleteDetectorModelRequest < Struct.new(
      :detector_model_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDetectorModelResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_name
    #   <p>The name of the input to delete.</p>
    #   @return [String]
    class DeleteInputRequest < Struct.new(
      :input_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteInputResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute alarm_model_version
    #   <p>The version of the alarm model.</p>
    #   @return [String]
    class DescribeAlarmModelRequest < Struct.new(
      :alarm_model_name,
      :alarm_model_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The time the alarm model was created, in the Unix epoch format.</p>
    #   @return [Time]
    # @!attribute alarm_model_arn
    #   <p>The ARN of the alarm model. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #   @return [String]
    # @!attribute alarm_model_version
    #   <p>The version of the alarm model.</p>
    #   @return [String]
    # @!attribute last_update_time
    #   <p>The time the alarm model was last updated, in the Unix epoch format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the alarm model. The status can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The alarm model is active and it's ready to evaluate data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATING</code> - AWS IoT Events is activating your alarm model. 
    #           Activating an alarm model can take up to a few minutes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE</code> - The alarm model is inactive, so it isn't ready to evaluate data. 
    #   	  Check your alarm model information and update the alarm model.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - You couldn't create or update the alarm model. Check your alarm model information 
    #           and try again.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_message
    #   <p>
    #         Contains information about the status of the alarm model.
    #       </p>
    #   @return [String]
    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute alarm_model_description
    #   <p>The description of the alarm model.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>An input attribute used as a key to create an alarm. 
    #   AWS IoT Events routes <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html">inputs</a> 
    #   associated with this key to the alarm.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>A non-negative integer that reflects the severity level of the alarm.</p>
    #   @return [Integer]
    # @!attribute alarm_rule
    #   <p>Defines when your alarm is invoked.</p>
    #   @return [Types::AlarmRule]
    # @!attribute alarm_notification
    #   <p>Contains information about one or more notification actions.</p>
    #   @return [Types::AlarmNotification]
    # @!attribute alarm_event_actions
    #   <p>Contains information about one or more alarm actions.</p>
    #   @return [Types::AlarmEventActions]
    # @!attribute alarm_capabilities
    #   <p>Contains the configuration information of alarm state changes.</p>
    #   @return [Types::AlarmCapabilities]
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
      :alarm_capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_id
    #   <p>The ID of the analysis result that you want to retrieve.</p>
    #   @return [String]
    class DescribeDetectorModelAnalysisRequest < Struct.new(
      :analysis_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the analysis activity. The status can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> - AWS IoT Events is analyzing your detector model. This process can take
    #             several minutes to complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETE</code> - AWS IoT Events finished analyzing your detector model.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - AWS IoT Events couldn't analyze your detector model. Try again
    #             later.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeDetectorModelAnalysisResponse < Struct.new(
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model_name
    #   <p>The name of the detector model.</p>
    #   @return [String]
    # @!attribute detector_model_version
    #   <p>The version of the detector model.</p>
    #   @return [String]
    class DescribeDetectorModelRequest < Struct.new(
      :detector_model_name,
      :detector_model_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model
    #   <p>Information about the detector model.</p>
    #   @return [Types::DetectorModel]
    class DescribeDetectorModelResponse < Struct.new(
      :detector_model,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_name
    #   <p>The name of the input.</p>
    #   @return [String]
    class DescribeInputRequest < Struct.new(
      :input_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input
    #   <p>Information about the input.</p>
    #   @return [Types::Input]
    class DescribeInputResponse < Struct.new(
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeLoggingOptionsRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_options
    #   <p>The current settings of the AWS IoT Events logging options.</p>
    #   @return [Types::LoggingOptions]
    class DescribeLoggingOptionsResponse < Struct.new(
      :logging_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The detector model and the specific detectors (instances) for which the logging level is
    #       given.</p>
    # @!attribute detector_model_name
    #   <p>The name of the detector model.</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the input attribute key used to create the detector (the instance of the
    #         detector model).</p>
    #   @return [String]
    class DetectorDebugOption < Struct.new(
      :detector_model_name,
      :key_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the detector model.</p>
    # @!attribute detector_model_definition
    #   <p>Information that defines how a detector operates.</p>
    #   @return [Types::DetectorModelDefinition]
    # @!attribute detector_model_configuration
    #   <p>Information about how the detector is configured.</p>
    #   @return [Types::DetectorModelConfiguration]
    class DetectorModel < Struct.new(
      :detector_model_definition,
      :detector_model_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how the detector model is configured.</p>
    # @!attribute detector_model_name
    #   <p>The name of the detector model.</p>
    #   @return [String]
    # @!attribute detector_model_version
    #   <p>The version of the detector model.</p>
    #   @return [String]
    # @!attribute detector_model_description
    #   <p>A brief description of the detector model.</p>
    #   @return [String]
    # @!attribute detector_model_arn
    #   <p>The ARN of the detector model.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the detector model was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time the detector model was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the detector model.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The value used to identify a detector instance. When a device or system sends input, a new
    #         detector instance with a unique key value is created. AWS IoT Events can continue to route input to its
    #         corresponding detector instance based on this identifying information. </p>
    #            <p>This parameter uses a JSON-path expression to select the attribute-value pair in the
    #         message payload that is used for identification. To route the message to the correct detector
    #         instance, the device must send a message payload that contains the same
    #         attribute-value.</p>
    #   @return [String]
    # @!attribute evaluation_method
    #   <p>Information about the order in which events are evaluated and how actions are executed.
    #       </p>
    #   @return [String]
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
      :evaluation_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information that defines how a detector operates.</p>
    # @!attribute states
    #   <p>Information about the states of the detector.</p>
    #   @return [Array<Types::State>]
    # @!attribute initial_state_name
    #   <p>The state that is entered at the creation of each detector (instance).</p>
    #   @return [String]
    class DetectorModelDefinition < Struct.new(
      :states,
      :initial_state_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the detector model.</p>
    # @!attribute detector_model_name
    #   <p>The name of the detector model.</p>
    #   @return [String]
    # @!attribute detector_model_description
    #   <p>A brief description of the detector model.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the detector model was created.</p>
    #   @return [Time]
    class DetectorModelSummary < Struct.new(
      :detector_model_name,
      :detector_model_description,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the detector model version.</p>
    # @!attribute detector_model_name
    #   <p>The name of the detector model.</p>
    #   @return [String]
    # @!attribute detector_model_version
    #   <p>The ID of the detector model version.</p>
    #   @return [String]
    # @!attribute detector_model_arn
    #   <p>The ARN of the detector model version.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the role that grants the detector model permission to perform its tasks.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the detector model version was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The last time the detector model version was updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the detector model version.</p>
    #   @return [String]
    # @!attribute evaluation_method
    #   <p>Information about the order in which events are evaluated and how actions are executed.
    #       </p>
    #   @return [String]
    class DetectorModelVersionSummary < Struct.new(
      :detector_model_name,
      :detector_model_version,
      :detector_model_arn,
      :role_arn,
      :creation_time,
      :last_update_time,
      :status,
      :evaluation_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an action to write to the Amazon DynamoDB table that you created. The standard action
    #       payload contains all the information about the detector model instance and the event that
    #       triggered the action. You can customize the <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html">payload</a>. One column of the
    #       DynamoDB table receives all attribute-value pairs in the payload that you specify.</p>
    #          <p>You must use expressions for all parameters in <code>DynamoDBAction</code>. The expressions
    #       accept literals, operators, functions, references, and substitution templates.</p>
    #          <p class="title">
    #             <b>Examples</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>For literal values, the expressions must contain single quotes. For example, the value
    #           for the <code>hashKeyType</code> parameter can be <code>'STRING'</code>.</p>
    #             </li>
    #             <li>
    #                <p>For references, you must specify either variables or input values. For example, the
    #           value for the <code>hashKeyField</code> parameter can be
    #             <code>$input.GreenhouseInput.name</code>.</p>
    #             </li>
    #             <li>
    #                <p>For a substitution template, you must use <code>${}</code>, and the template must be
    #           in single quotes. A substitution template can also contain a combination of literals,
    #           operators, functions, references, and substitution templates.</p>
    #                <p>In the following example, the value for the <code>hashKeyValue</code> parameter uses a
    #           substitution template. </p>
    #                <p>
    #                   <code>'${$input.GreenhouseInput.temperature * 6 / 5 + 32} in Fahrenheit'</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>For a string concatenation, you must use <code>+</code>. A string concatenation can
    #           also contain a combination of literals, operators, functions, references, and substitution
    #           templates.</p>
    #                <p>In the following example, the value for the <code>tableName</code> parameter uses a
    #           string concatenation. </p>
    #                <p>
    #                   <code>'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information, 
    #         see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html">Expressions</a> 
    #         in the <i>AWS IoT Events Developer Guide</i>.</p>
    #          <p>If the defined payload type is a string, <code>DynamoDBAction</code> writes non-JSON data to
    #       the DynamoDB table as binary data. The DynamoDB console displays the data as Base64-encoded text.
    #       The value for the <code>payloadField</code> parameter is
    #         <code><payload-field>_raw</code>.</p>
    # @!attribute hash_key_type
    #   <p>The data type for the hash key (also called the partition key). You can specify the
    #         following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>'STRING'</code> - The hash key is a string.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>'NUMBER'</code> - The hash key is a number.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify <code>hashKeyType</code>, the default value is
    #         <code>'STRING'</code>.</p>
    #   @return [String]
    # @!attribute hash_key_field
    #   <p>The name of the hash key (also called the partition key). The <code>hashKeyField</code>
    #         value must match the partition key of the target DynamoDB table.</p>
    #   @return [String]
    # @!attribute hash_key_value
    #   <p>The value of the hash key (also called the partition key).</p>
    #   @return [String]
    # @!attribute range_key_type
    #   <p>The data type for the range key (also called the sort key), You can specify the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>'STRING'</code> - The range key is a string.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>'NUMBER'</code> - The range key is number.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify <code>rangeKeyField</code>, the default value is
    #           <code>'STRING'</code>.</p>
    #   @return [String]
    # @!attribute range_key_field
    #   <p>The name of the range key (also called the sort key). The <code>rangeKeyField</code> value
    #         must match the sort key of the target DynamoDB table. </p>
    #   @return [String]
    # @!attribute range_key_value
    #   <p>The value of the range key (also called the sort key).</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The type of operation to perform. You can specify the following values: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>'INSERT'</code> - Insert data as a new item into the DynamoDB table. This item uses
    #             the specified hash key as a partition key. If you specified a range key, the item uses the
    #             range key as a sort key.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>'UPDATE'</code> - Update an existing item of the DynamoDB table with new data. This
    #             item's partition key must match the specified hash key. If you specified a range key, the
    #             range key must match the item's sort key.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>'DELETE'</code> - Delete an existing item of the DynamoDB table. This item's
    #             partition key must match the specified hash key. If you specified a range key, the range
    #             key must match the item's sort key.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify this parameter, AWS IoT Events triggers the <code>'INSERT'</code>
    #         operation.</p>
    #   @return [String]
    # @!attribute payload_field
    #   <p>The name of the DynamoDB column that receives the action payload.</p>
    #            <p>If you don't specify this parameter, the name of the DynamoDB column is
    #         <code>payload</code>.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the DynamoDB table. The <code>tableName</code> value must match the table name of
    #         the target DynamoDB table. </p>
    #   @return [String]
    # @!attribute payload
    #   <p>Information needed to configure the payload.</p>
    #            <p>By default, AWS IoT Events generates a standard payload in JSON for any action. This action payload
    #         contains all attribute-value pairs that have the information about the detector model instance
    #         and the event triggered the action. To configure the action payload, you can use
    #           <code>contentExpression</code>.</p>
    #   @return [Types::Payload]
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
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an action to write to the Amazon DynamoDB table that you created. The default action
    #       payload contains all the information about the detector model instance and the event that
    #       triggered the action. You can customize the <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html">payload</a>. A separate column of
    #       the DynamoDB table receives one attribute-value pair in the payload that you specify.</p>
    #          <p>You must use expressions for all parameters in <code>DynamoDBv2Action</code>. The expressions
    #       accept literals, operators, functions, references, and substitution templates.</p>
    #          <p class="title">
    #             <b>Examples</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>For literal values, the expressions must contain single quotes. For example, the value
    #           for the <code>tableName</code> parameter can be
    #           <code>'GreenhouseTemperatureTable'</code>.</p>
    #             </li>
    #             <li>
    #                <p>For references, you must specify either variables or input values. For example, the
    #           value for the <code>tableName</code> parameter can be
    #           <code>$variable.ddbtableName</code>.</p>
    #             </li>
    #             <li>
    #                <p>For a substitution template, you must use <code>${}</code>, and the template must be
    #           in single quotes. A substitution template can also contain a combination of literals,
    #           operators, functions, references, and substitution templates.</p>
    #                <p>In the following example, the value for the <code>contentExpression</code> parameter
    #           in <code>Payload</code> uses a substitution template. </p>
    #                <p>
    #                   <code>'{\"sensorID\": \"${$input.GreenhouseInput.sensor_id}\", \"temperature\":
    #             \"${$input.GreenhouseInput.temperature * 9 / 5 + 32}\"}'</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>For a string concatenation, you must use <code>+</code>. A string concatenation can
    #           also contain a combination of literals, operators, functions, references, and substitution
    #           templates.</p>
    #                <p>In the following example, the value for the <code>tableName</code> parameter uses a
    #           string concatenation. </p>
    #                <p>
    #                   <code>'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information, 
    #         see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html">Expressions</a> 
    #         in the <i>AWS IoT Events Developer Guide</i>.</p>
    #          <p>The value for the <code>type</code> parameter in <code>Payload</code> must be
    #         <code>JSON</code>.</p>
    # @!attribute table_name
    #   <p>The name of the DynamoDB table.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>Information needed to configure the payload.</p>
    #            <p>By default, AWS IoT Events generates a standard payload in JSON for any action. This action payload
    #         contains all attribute-value pairs that have the information about the detector model instance
    #         and the event triggered the action. To configure the action payload, you can use
    #           <code>contentExpression</code>.</p>
    #   @return [Types::Payload]
    class DynamoDBv2Action < Struct.new(
      :table_name,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration information of email notifications.</p>
    # @!attribute from
    #   <p>The email address that sends emails.</p>
    #            <important>
    #               <p>If you use the AWS IoT Events managed AWS Lambda function to manage your emails, you must <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">verify
    #             the email address that sends emails in Amazon SES</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute content
    #   <p>Contains the subject and message of an email.</p>
    #   @return [Types::EmailContent]
    # @!attribute recipients
    #   <p>Contains the information of one or more recipients who receive the emails.</p>
    #            <important>
    #               <p>You must <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html">add the users that receive emails to your AWS SSO store</a>.</p>
    #            </important>
    #   @return [Types::EmailRecipients]
    class EmailConfiguration < Struct.new(
      :from,
      :content,
      :recipients,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the subject and message of an email.</p>
    # @!attribute subject
    #   <p>The subject of the email.</p>
    #   @return [String]
    # @!attribute additional_message
    #   <p>The message that you want to send. The message can be up to 200 characters.</p>
    #   @return [String]
    class EmailContent < Struct.new(
      :subject,
      :additional_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the information of one or more recipients who receive the emails.</p>
    #          <important>
    #             <p>You must <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html">add the users that receive emails to your AWS SSO store</a>.</p>
    #          </important>
    # @!attribute to
    #   <p>Specifies one or more recipients who receive the email.</p>
    #   @return [Array<Types::RecipientDetail>]
    class EmailRecipients < Struct.new(
      :to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the <code>actions</code> to be performed when the <code>condition</code>
    #       evaluates to TRUE.</p>
    # @!attribute event_name
    #   <p>The name of the event.</p>
    #   @return [String]
    # @!attribute condition
    #   <p>Optional. The Boolean expression that, when TRUE, causes the <code>actions</code> to be
    #         performed. If not present, the actions are performed (=TRUE). If the expression result is not
    #         a Boolean value, the actions are not performed (=FALSE).</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The actions to be performed.</p>
    #   @return [Array<Types::Action>]
    class Event < Struct.new(
      :event_name,
      :condition,
      :actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sends information about the detector model instance and the event that triggered the
    #       action to an Amazon Kinesis Data Firehose delivery stream.</p>
    # @!attribute delivery_stream_name
    #   <p>The name of the Kinesis Data Firehose delivery stream where the data is written.</p>
    #   @return [String]
    # @!attribute separator
    #   <p>A character separator that is used to separate records written to the Kinesis Data
    #         Firehose delivery stream. Valid values are: '\n' (newline), '\t' (tab), '\r\n' (Windows
    #         newline), ',' (comma).</p>
    #   @return [String]
    # @!attribute payload
    #   <p>You can configure the action payload when you send a message to an Amazon Kinesis Data Firehose delivery
    #         stream.</p>
    #   @return [Types::Payload]
    class FirehoseAction < Struct.new(
      :delivery_stream_name,
      :separator,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_id
    #   <p>The ID of the analysis result that you want to retrieve.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #   @return [Integer]
    class GetDetectorModelAnalysisResultsRequest < Struct.new(
      :analysis_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_results
    #   <p>Contains information about one or more analysis results.</p>
    #   @return [Array<Types::AnalysisResult>]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results, 
    #   or <code>null</code> if there are no more results.</p>
    #   @return [String]
    class GetDetectorModelAnalysisResultsResponse < Struct.new(
      :analysis_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the default alarm state. 
    # The configuration applies to all alarms that were created based on this alarm model.</p>
    # @!attribute disabled_on_initialization
    #   <p>The value must be <code>TRUE</code> or <code>FALSE</code>. If <code>FALSE</code>, all
    #         alarm instances created based on the alarm model are activated. The default value is
    #           <code>TRUE</code>.</p>
    #   @return [Boolean]
    class InitializationConfiguration < Struct.new(
      :disabled_on_initialization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the input.</p>
    # @!attribute input_configuration
    #   <p>Information about the configuration of an input.</p>
    #   @return [Types::InputConfiguration]
    # @!attribute input_definition
    #   <p>The definition of the input.</p>
    #   @return [Types::InputDefinition]
    class Input < Struct.new(
      :input_configuration,
      :input_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the configuration of an input.</p>
    # @!attribute input_name
    #   <p>The name of the input.</p>
    #   @return [String]
    # @!attribute input_description
    #   <p>A brief description of the input.</p>
    #   @return [String]
    # @!attribute input_arn
    #   <p>The ARN of the input.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the input was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The last time the input was updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the input.</p>
    #   @return [String]
    class InputConfiguration < Struct.new(
      :input_name,
      :input_description,
      :input_arn,
      :creation_time,
      :last_update_time,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The definition of the input.</p>
    # @!attribute attributes
    #   <p>The attributes from the JSON payload that are made available by the input. Inputs are
    #         derived from messages sent to the AWS IoT Events system using <code>BatchPutMessage</code>. Each such
    #         message contains a JSON payload, and those attributes (and their paired values) specified here
    #         are available for use in the <code>condition</code> expressions used by detectors that monitor
    #         this input. </p>
    #   @return [Array<Types::Attribute>]
    class InputDefinition < Struct.new(
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The identifer of the input.
    #     </p>
    # @!attribute iot_events_input_identifier
    #   <p>
    #         The identifier of the input routed to AWS IoT Events.
    #       </p>
    #   @return [Types::IotEventsInputIdentifier]
    # @!attribute iot_site_wise_input_identifier
    #   <p>
    #         The identifer of the input routed from AWS IoT SiteWise.
    #       </p>
    #   @return [Types::IotSiteWiseInputIdentifier]
    class InputIdentifier < Struct.new(
      :iot_events_input_identifier,
      :iot_site_wise_input_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the input.</p>
    # @!attribute input_name
    #   <p>The name of the input.</p>
    #   @return [String]
    # @!attribute input_description
    #   <p>A brief description of the input.</p>
    #   @return [String]
    # @!attribute input_arn
    #   <p>The ARN of the input.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the input was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The last time the input was updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the input.</p>
    #   @return [String]
    class InputSummary < Struct.new(
      :input_name,
      :input_description,
      :input_arn,
      :creation_time,
      :last_update_time,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal failure occurred.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class InternalFailureException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was invalid.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sends an AWS IoT Events input, passing in information about the detector model instance and the
    #       event that triggered the action.</p>
    # @!attribute input_name
    #   <p>The name of the AWS IoT Events input where the data is sent.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>You can configure the action payload when you send a message to an AWS IoT Events input.</p>
    #   @return [Types::Payload]
    class IotEventsAction < Struct.new(
      :input_name,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The identifier of the input routed to AWS IoT Events.
    #     </p>
    # @!attribute input_name
    #   <p>
    #         The name of the input routed to AWS IoT Events.
    #       </p>
    #   @return [String]
    class IotEventsInputIdentifier < Struct.new(
      :input_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sends information about the detector model instance and the event that triggered the
    #       action to a specified asset property in AWS IoT SiteWise.</p>
    #          <p>You must use expressions for all parameters in <code>IotSiteWiseAction</code>. The
    #       expressions accept literals, operators, functions, references, and substitutions
    #       templates.</p>
    #          <p class="title">
    #             <b>Examples</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>For literal values, the expressions must contain single quotes. For example, the value
    #           for the <code>propertyAlias</code> parameter can be
    #             <code>'/company/windfarm/3/turbine/7/temperature'</code>.</p>
    #             </li>
    #             <li>
    #                <p>For references, you must specify either variables or input values. For example, the
    #           value for the <code>assetId</code> parameter can be
    #             <code>$input.TurbineInput.assetId1</code>.</p>
    #             </li>
    #             <li>
    #                <p>For a substitution template, you must use <code>${}</code>, and the template must be
    #           in single quotes. A substitution template can also contain a combination of literals,
    #           operators, functions, references, and substitution templates.</p>
    #                <p>In the following example, the value for the <code>propertyAlias</code> parameter uses
    #           a substitution template. </p>
    #                <p>
    #                   <code>'company/windfarm/${$input.TemperatureInput.sensorData.windfarmID}/turbine/
    #             ${$input.TemperatureInput.sensorData.turbineID}/temperature'</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>You must specify either <code>propertyAlias</code> or both <code>assetId</code> and
    #         <code>propertyId</code> to identify the target asset property in AWS IoT SiteWise.</p>
    #          <p>For more information, 
    #         see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html">Expressions</a> 
    #         in the <i>AWS IoT Events Developer Guide</i>.</p>
    # @!attribute entry_id
    #   <p>A unique identifier for this entry. You can use the entry ID to track which data entry
    #         causes an error in case of failure. The default is a new unique identifier.</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The ID of the asset that has the specified property.</p>
    #   @return [String]
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #   @return [String]
    # @!attribute property_alias
    #   <p>The alias of the asset property.</p>
    #   @return [String]
    # @!attribute property_value
    #   <p>The value to send to the asset property. This value contains timestamp, quality, and value
    #         (TQV) information. </p>
    #   @return [Types::AssetPropertyValue]
    class IotSiteWiseAction < Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :property_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The asset model property identifer of the input routed from AWS IoT SiteWise.
    #     </p>
    # @!attribute asset_model_id
    #   <p>
    #         The ID of the AWS IoT SiteWise asset model. 
    #       </p>
    #   @return [String]
    # @!attribute property_id
    #   <p>
    #         The ID of the AWS IoT SiteWise asset property.
    #       </p>
    #   @return [String]
    class IotSiteWiseAssetModelPropertyIdentifier < Struct.new(
      :asset_model_id,
      :property_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The identifer of the input routed from AWS IoT SiteWise.
    #     </p>
    # @!attribute iot_site_wise_asset_model_property_identifier
    #   <p>
    #         The identifier of the AWS IoT SiteWise asset model property.
    #       </p>
    #   @return [Types::IotSiteWiseAssetModelPropertyIdentifier]
    class IotSiteWiseInputIdentifier < Struct.new(
      :iot_site_wise_asset_model_property_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information required to publish the MQTT message through the AWS IoT message broker.</p>
    # @!attribute mqtt_topic
    #   <p>The MQTT topic of the message. You can use a string expression that includes variables
    #           (<code>$variable.<variable-name></code>) and input values
    #           (<code>$input.<input-name>.<path-to-datum></code>) as the topic string.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>You can configure the action payload when you publish a message to an AWS IoT Core
    #         topic.</p>
    #   @return [Types::Payload]
    class IotTopicPublishAction < Struct.new(
      :mqtt_topic,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Calls a Lambda function, passing in information about the detector model instance and the
    #       event that triggered the action.</p>
    # @!attribute function_arn
    #   <p>The ARN of the Lambda function that is executed.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>You can configure the action payload when you send a message to a Lambda function.</p>
    #   @return [Types::Payload]
    class LambdaAction < Struct.new(
      :function_arn,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A limit was exceeded.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #   @return [Integer]
    class ListAlarmModelVersionsRequest < Struct.new(
      :alarm_model_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_model_version_summaries
    #   <p>A list that summarizes each alarm model version.</p>
    #   @return [Array<Types::AlarmModelVersionSummary>]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results, 
    #   or <code>null</code> if there are no more results.</p>
    #   @return [String]
    class ListAlarmModelVersionsResponse < Struct.new(
      :alarm_model_version_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #   @return [Integer]
    class ListAlarmModelsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_model_summaries
    #   <p>A list that summarizes each alarm model.</p>
    #   @return [Array<Types::AlarmModelSummary>]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results, 
    #   or <code>null</code> if there are no more results.</p>
    #   @return [String]
    class ListAlarmModelsResponse < Struct.new(
      :alarm_model_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model_name
    #   <p>The name of the detector model whose versions are returned.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #   @return [Integer]
    class ListDetectorModelVersionsRequest < Struct.new(
      :detector_model_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model_version_summaries
    #   <p>Summary information about the detector model versions.</p>
    #   @return [Array<Types::DetectorModelVersionSummary>]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results, 
    #   or <code>null</code> if there are no more results.</p>
    #   @return [String]
    class ListDetectorModelVersionsResponse < Struct.new(
      :detector_model_version_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #   @return [Integer]
    class ListDetectorModelsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model_summaries
    #   <p>Summary information about the detector models.</p>
    #   @return [Array<Types::DetectorModelSummary>]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results, 
    #   or <code>null</code> if there are no more results.</p>
    #   @return [String]
    class ListDetectorModelsResponse < Struct.new(
      :detector_model_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_identifier
    #   <p>
    #         The identifer of the routed input.
    #       </p>
    #   @return [Types::InputIdentifier]
    # @!attribute max_results
    #   <p>
    #         The maximum number of results to be returned per request.
    #       </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #         The token that you can use to return the next set of results.
    #       </p>
    #   @return [String]
    class ListInputRoutingsRequest < Struct.new(
      :input_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute routed_resources
    #   <p>
    #         Summary information about the routed resources.
    #       </p>
    #   @return [Array<Types::RoutedResource>]
    # @!attribute next_token
    #   <p>
    #         The token that you can use to return the next set of results, 
    #   or <code>null</code> if there are no more results.
    #       </p>
    #   @return [String]
    class ListInputRoutingsResponse < Struct.new(
      :routed_resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #   @return [Integer]
    class ListInputsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_summaries
    #   <p>Summary information about the inputs.</p>
    #   @return [Array<Types::InputSummary>]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results, 
    #   or <code>null</code> if there are no more results.</p>
    #   @return [String]
    class ListInputsResponse < Struct.new(
      :input_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags assigned to the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The values of the AWS IoT Events logging options.</p>
    # @!attribute role_arn
    #   <p>The ARN of the role that grants permission to AWS IoT Events to perform logging.</p>
    #   @return [String]
    # @!attribute level
    #   <p>The logging level.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>If TRUE, logging is enabled for AWS IoT Events.</p>
    #   @return [Boolean]
    # @!attribute detector_debug_options
    #   <p>Information that identifies those detector models and their detectors (instances) for
    #         which the logging level is given.</p>
    #   @return [Array<Types::DetectorDebugOption>]
    class LoggingOptions < Struct.new(
      :role_arn,
      :level,
      :enabled,
      :detector_debug_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Contains the notification settings of an alarm model. 
    # The settings apply to all alarms that were created based on this alarm model.</p>
    # @!attribute action
    #   <p>Specifies an AWS Lambda function to manage alarm notifications. 
    #   You can create one or use the <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html">AWS Lambda function provided by AWS IoT Events</a>.</p>
    #   @return [Types::NotificationTargetActions]
    # @!attribute sms_configurations
    #   <p>Contains the configuration information of SMS notifications.</p>
    #   @return [Array<Types::SMSConfiguration>]
    # @!attribute email_configurations
    #   <p>Contains the configuration information of email notifications.</p>
    #   @return [Array<Types::EmailConfiguration>]
    class NotificationAction < Struct.new(
      :action,
      :sms_configurations,
      :email_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an AWS Lambda function to manage alarm notifications. 
    # You can create one or use the <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html">AWS Lambda function provided by AWS IoT Events</a>.</p>
    # @!attribute lambda_action
    #   <p>Calls a Lambda function, passing in information about the detector model instance and the
    #         event that triggered the action.</p>
    #   @return [Types::LambdaAction]
    class NotificationTargetActions < Struct.new(
      :lambda_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>When entering this state, perform these <code>actions</code> if the <code>condition</code>
    #       is TRUE.</p>
    # @!attribute events
    #   <p>Specifies the actions that are performed when the state is entered and the
    #           <code>condition</code> is <code>TRUE</code>.</p>
    #   @return [Array<Types::Event>]
    class OnEnterLifecycle < Struct.new(
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>When exiting this state, perform these <code>actions</code> if the specified
    #         <code>condition</code> is <code>TRUE</code>.</p>
    # @!attribute events
    #   <p>Specifies the <code>actions</code> that are performed when the state is exited and the
    #           <code>condition</code> is <code>TRUE</code>.</p>
    #   @return [Array<Types::Event>]
    class OnExitLifecycle < Struct.new(
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the actions performed when the <code>condition</code> evaluates to TRUE.</p>
    # @!attribute events
    #   <p>Specifies the actions performed when the <code>condition</code> evaluates to TRUE.</p>
    #   @return [Array<Types::Event>]
    # @!attribute transition_events
    #   <p>Specifies the actions performed, and the next state entered, when a <code>condition</code>
    #         evaluates to TRUE.</p>
    #   @return [Array<Types::TransitionEvent>]
    class OnInputLifecycle < Struct.new(
      :events,
      :transition_events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information needed to configure the payload.</p>
    #          <p>By default, AWS IoT Events generates a standard payload in JSON for any action. This action payload
    #       contains all attribute-value pairs that have the information about the detector model instance
    #       and the event triggered the action. To configure the action payload, you can use
    #         <code>contentExpression</code>.</p>
    # @!attribute content_expression
    #   <p>The content of the payload. You can use a string expression that includes quoted strings
    #           (<code>'<string>'</code>), variables (<code>$variable.<variable-name></code>),
    #         input values (<code>$input.<input-name>.<path-to-datum></code>), string
    #         concatenations, and quoted strings that contain <code>${}</code> as the content. The
    #         recommended maximum size of a content expression is 1 KB.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The value of the payload type can be either <code>STRING</code> or
    #         <code>JSON</code>.</p>
    #   @return [String]
    class Payload < Struct.new(
      :content_expression,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_options
    #   <p>The new values of the AWS IoT Events logging options.</p>
    #   @return [Types::LoggingOptions]
    class PutLoggingOptionsRequest < Struct.new(
      :logging_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information that identifies the recipient.</p>
    # @!attribute sso_identity
    #   <p>The AWS Single Sign-On (AWS SSO) authentication information.</p>
    #   @return [Types::SSOIdentity]
    class RecipientDetail < Struct.new(
      :sso_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information required to reset the timer. The timer is reset to the previously evaluated
    #       result of the duration. The duration expression isn't reevaluated when you reset the
    #       timer.</p>
    # @!attribute timer_name
    #   <p>The name of the timer to reset.</p>
    #   @return [String]
    class ResetTimerAction < Struct.new(
      :timer_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource already exists.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      :resource_id,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is in use.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource was not found.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Contains information about the routed resource.
    #     </p>
    # @!attribute name
    #   <p>
    #         The name of the routed resource.  
    #       </p>
    #   @return [String]
    # @!attribute arn
    #   <p>
    #         The ARN of the routed resource. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.
    #       </p>
    #   @return [String]
    class RoutedResource < Struct.new(
      :name,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration information of SMS notifications.</p>
    # @!attribute sender_id
    #   <p>The sender ID.</p>
    #   @return [String]
    # @!attribute additional_message
    #   <p>The message that you want to send. The message can be up to 200 characters.</p>
    #   @return [String]
    # @!attribute recipients
    #   <p>Specifies one or more recipients who receive the message.</p>
    #            <important>
    #               <p>You must <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html">add the users that receive SMS messages to your AWS SSO store</a>.</p>
    #            </important>
    #   @return [Array<Types::RecipientDetail>]
    class SMSConfiguration < Struct.new(
      :sender_id,
      :additional_message,
      :recipients,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information required to publish the Amazon SNS message.</p>
    # @!attribute target_arn
    #   <p>The ARN of the Amazon SNS target where the message is sent.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>You can configure the action payload when you send a message as an Amazon SNS push
    #         notification.</p>
    #   @return [Types::Payload]
    class SNSTopicPublishAction < Struct.new(
      :target_arn,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about your identity source in AWS Single Sign-On. For more information, see
    #       the <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html">AWS Single Sign-On
    #         User Guide</a>.</p>
    # @!attribute identity_store_id
    #   <p>The ID of the AWS SSO identity store.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    class SSOIdentity < Struct.new(
      :identity_store_id,
      :user_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is currently unavailable.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information needed to set the timer.</p>
    # @!attribute timer_name
    #   <p>The name of the timer.</p>
    #   @return [String]
    # @!attribute seconds
    #   <p>The number of seconds until the timer expires. The minimum value is 60 seconds to ensure
    #         accuracy. The maximum value is 31622400 seconds. </p>
    #   @deprecated
    #     seconds is deprecated. You can use durationExpression for SetTimerAction. The value of seconds can be used as a string expression for durationExpression.
    #   @return [Integer]
    # @!attribute duration_expression
    #   <p>The duration of the timer, in seconds. You can use a string expression that includes
    #         numbers, variables (<code>$variable.<variable-name></code>), and input values
    #           (<code>$input.<input-name>.<path-to-datum></code>) as the duration. The range of
    #         the duration is 1-31622400 seconds. To ensure accuracy, the minimum duration is 60 seconds.
    #         The evaluated result of the duration is rounded down to the nearest whole number. </p>
    #   @return [String]
    class SetTimerAction < Struct.new(
      :timer_name,
      :seconds,
      :duration_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the variable and its new value.</p>
    # @!attribute variable_name
    #   <p>The name of the variable.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The new value of the variable.</p>
    #   @return [String]
    class SetVariableAction < Struct.new(
      :variable_name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule that compares an input property value to a threshold value with a comparison operator.</p>
    # @!attribute input_property
    #   <p>The value on the left side of the comparison operator. You can specify an AWS IoT Events input
    #         attribute as an input property.</p>
    #   @return [String]
    # @!attribute comparison_operator
    #   <p>The comparison operator.</p>
    #   @return [String]
    # @!attribute threshold
    #   <p>The value on the right side of the comparison operator. You can enter a number or specify
    #         an AWS IoT Events input attribute.</p>
    #   @return [String]
    class SimpleRule < Struct.new(
      :input_property,
      :comparison_operator,
      :threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sends information about the detector model instance and the event that triggered the
    #       action to an Amazon SQS queue.</p>
    # @!attribute queue_url
    #   <p>The URL of the SQS queue where the data is written.</p>
    #   @return [String]
    # @!attribute use_base64
    #   <p>Set this to TRUE if you want the data to be base-64 encoded before it is written to the
    #         queue. Otherwise, set this to FALSE.</p>
    #   @return [Boolean]
    # @!attribute payload
    #   <p>You can configure the action payload when you send a message to an Amazon SQS
    #         queue.</p>
    #   @return [Types::Payload]
    class SqsAction < Struct.new(
      :queue_url,
      :use_base64,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model_definition
    #   <p>Information that defines how a detector operates.</p>
    #   @return [Types::DetectorModelDefinition]
    class StartDetectorModelAnalysisRequest < Struct.new(
      :detector_model_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_id
    #   <p>The ID that you can use to retrieve the analysis result.</p>
    #   @return [String]
    class StartDetectorModelAnalysisResponse < Struct.new(
      :analysis_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information that defines a state of a detector.</p>
    # @!attribute state_name
    #   <p>The name of the state.</p>
    #   @return [String]
    # @!attribute on_input
    #   <p>When an input is received and the <code>condition</code> is TRUE, perform the specified
    #           <code>actions</code>.</p>
    #   @return [Types::OnInputLifecycle]
    # @!attribute on_enter
    #   <p>When entering this state, perform these <code>actions</code> if the <code>condition</code>
    #         is TRUE.</p>
    #   @return [Types::OnEnterLifecycle]
    # @!attribute on_exit
    #   <p>When exiting this state, perform these <code>actions</code> if the specified
    #           <code>condition</code> is <code>TRUE</code>.</p>
    #   @return [Types::OnExitLifecycle]
    class State < Struct.new(
      :state_name,
      :on_input,
      :on_enter,
      :on_exit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata that can be used to manage the resource.</p>
    # @!attribute key
    #   <p>The tag's key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag's value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The new or modified tags for the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed due to throttling.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the actions performed and the next state entered when a <code>condition</code>
    #       evaluates to TRUE.</p>
    # @!attribute event_name
    #   <p>The name of the transition event.</p>
    #   @return [String]
    # @!attribute condition
    #   <p>Required. A Boolean expression that when TRUE causes the actions to be performed and the
    #           <code>nextState</code> to be entered.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The actions to be performed.</p>
    #   @return [Array<Types::Action>]
    # @!attribute next_state
    #   <p>The next state to enter.</p>
    #   @return [String]
    class TransitionEvent < Struct.new(
      :event_name,
      :condition,
      :actions,
      :next_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation is not supported.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class UnsupportedOperationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of the keys of the tags to be removed from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute alarm_model_description
    #   <p>The description of the alarm model.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>A non-negative integer that reflects the severity level of the alarm.</p>
    #   @return [Integer]
    # @!attribute alarm_rule
    #   <p>Defines when your alarm is invoked.</p>
    #   @return [Types::AlarmRule]
    # @!attribute alarm_notification
    #   <p>Contains information about one or more notification actions.</p>
    #   @return [Types::AlarmNotification]
    # @!attribute alarm_event_actions
    #   <p>Contains information about one or more alarm actions.</p>
    #   @return [Types::AlarmEventActions]
    # @!attribute alarm_capabilities
    #   <p>Contains the configuration information of alarm state changes.</p>
    #   @return [Types::AlarmCapabilities]
    class UpdateAlarmModelRequest < Struct.new(
      :alarm_model_name,
      :alarm_model_description,
      :role_arn,
      :severity,
      :alarm_rule,
      :alarm_notification,
      :alarm_event_actions,
      :alarm_capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The time the alarm model was created, in the Unix epoch format.</p>
    #   @return [Time]
    # @!attribute alarm_model_arn
    #   <p>The ARN of the alarm model. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #   @return [String]
    # @!attribute alarm_model_version
    #   <p>The version of the alarm model.</p>
    #   @return [String]
    # @!attribute last_update_time
    #   <p>The time the alarm model was last updated, in the Unix epoch format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the alarm model. The status can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The alarm model is active and it's ready to evaluate data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATING</code> - AWS IoT Events is activating your alarm model. 
    #           Activating an alarm model can take up to a few minutes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE</code> - The alarm model is inactive, so it isn't ready to evaluate data. 
    #   	  Check your alarm model information and update the alarm model.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - You couldn't create or update the alarm model. Check your alarm model information 
    #           and try again.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateAlarmModelResponse < Struct.new(
      :creation_time,
      :alarm_model_arn,
      :alarm_model_version,
      :last_update_time,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model_name
    #   <p>The name of the detector model that is updated.</p>
    #   @return [String]
    # @!attribute detector_model_definition
    #   <p>Information that defines how a detector operates.</p>
    #   @return [Types::DetectorModelDefinition]
    # @!attribute detector_model_description
    #   <p>A brief description of the detector model.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>
    #   @return [String]
    # @!attribute evaluation_method
    #   <p>Information about the order in which events are evaluated and how actions are executed.
    #       </p>
    #   @return [String]
    class UpdateDetectorModelRequest < Struct.new(
      :detector_model_name,
      :detector_model_definition,
      :detector_model_description,
      :role_arn,
      :evaluation_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model_configuration
    #   <p>Information about how the detector model is configured.</p>
    #   @return [Types::DetectorModelConfiguration]
    class UpdateDetectorModelResponse < Struct.new(
      :detector_model_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_name
    #   <p>The name of the input you want to update.</p>
    #   @return [String]
    # @!attribute input_description
    #   <p>A brief description of the input.</p>
    #   @return [String]
    # @!attribute input_definition
    #   <p>The definition of the input.</p>
    #   @return [Types::InputDefinition]
    class UpdateInputRequest < Struct.new(
      :input_name,
      :input_description,
      :input_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_configuration
    #   <p>Information about the configuration of the input.</p>
    #   @return [Types::InputConfiguration]
    class UpdateInputResponse < Struct.new(
      :input_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
