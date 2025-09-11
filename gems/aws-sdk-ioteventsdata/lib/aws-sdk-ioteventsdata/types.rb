# frozen_string_literal: true

# This is generated code!

module Aws::IoTEventsData
  # This module contains the types returned by client operations.
  module Types

    # <p>Contains the configuration information of an acknowledge action.</p>
    # @!attribute note
    #   <p>The note that you can leave when you acknowledge the alarm.</p>
    #   @return [String]
    class AcknowledgeActionConfiguration < Struct.new(
      :note,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information needed to acknowledge the alarm.</p>
    # @!attribute request_id
    #   <p>The request ID. Each ID must be unique within each batch.</p>
    #   @return [String]
    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the key used as a filter to select only the alarms associated with the 
    #   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key">key</a>.</p>
    #   @return [String]
    # @!attribute note
    #   <p>The note that you can leave when you acknowledge the alarm.</p>
    #   @return [String]
    class AcknowledgeAlarmActionRequest < Struct.new(
      :request_id,
      :alarm_model_name,
      :key_value,
      :note,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an alarm.</p>
    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute alarm_model_version
    #   <p>The version of the alarm model.</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the key used as a filter to select only the alarms associated with the 
    #   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key">key</a>.</p>
    #   @return [String]
    # @!attribute alarm_state
    #   <p>Contains information about the current state of the alarm.</p>
    #   @return [Types::AlarmState]
    # @!attribute severity
    #   <p>A non-negative integer that reflects the severity level of the alarm.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The time the alarm was created, in the Unix epoch format.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time the alarm was last updated, in the Unix epoch format.</p>
    #   @return [Time]
    class Alarm < Struct.new(
      :alarm_model_name,
      :alarm_model_version,
      :key_value,
      :alarm_state,
      :severity,
      :creation_time,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the current state of the alarm.</p>
    # @!attribute state_name
    #   <p>The name of the alarm state. The state name can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - When the alarm is in the <code>DISABLED</code> state, 
    #   		it isn't ready to evaluate data. To enable the alarm, 
    #   		you must change the alarm to the <code>NORMAL</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NORMAL</code> - When the alarm is in the <code>NORMAL</code> state, 
    #   		it's ready to evaluate data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - If the alarm is in the <code>ACTIVE</code> state, 
    #   		the alarm is invoked.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACKNOWLEDGED</code> - When the alarm is in the <code>ACKNOWLEDGED</code> state, 
    #   		the alarm was invoked and you acknowledged the alarm.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SNOOZE_DISABLED</code> - When the alarm is in the <code>SNOOZE_DISABLED</code> state, 
    #   		the alarm is disabled for a specified period of time. After the snooze time, 
    #   		the alarm automatically changes to the <code>NORMAL</code> state. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LATCHED</code> - When the alarm is in the <code>LATCHED</code> state, 
    #   		the alarm was invoked. However, the data that the alarm is currently evaluating is within the specified range. 
    #   		To change the alarm to the <code>NORMAL</code> state, you must acknowledge the alarm.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute rule_evaluation
    #   <p>Information needed to evaluate data.</p>
    #   @return [Types::RuleEvaluation]
    # @!attribute customer_action
    #   <p>Contains information about the action that you can take to respond to the alarm.</p>
    #   @return [Types::CustomerAction]
    # @!attribute system_event
    #   <p>Contains information about alarm state changes.</p>
    #   @return [Types::SystemEvent]
    class AlarmState < Struct.new(
      :state_name,
      :rule_evaluation,
      :customer_action,
      :system_event,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of an alarm.</p>
    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute alarm_model_version
    #   <p>The version of the alarm model.</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the key used as a filter to select only the alarms associated with the 
    #   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key">key</a>.</p>
    #   @return [String]
    # @!attribute state_name
    #   <p>The name of the alarm state. The state name can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - When the alarm is in the <code>DISABLED</code> state, 
    #   		it isn't ready to evaluate data. To enable the alarm, 
    #   		you must change the alarm to the <code>NORMAL</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NORMAL</code> - When the alarm is in the <code>NORMAL</code> state, 
    #   		it's ready to evaluate data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - If the alarm is in the <code>ACTIVE</code> state, 
    #   		the alarm is invoked.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACKNOWLEDGED</code> - When the alarm is in the <code>ACKNOWLEDGED</code> state, 
    #   		the alarm was invoked and you acknowledged the alarm.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SNOOZE_DISABLED</code> - When the alarm is in the <code>SNOOZE_DISABLED</code> state, 
    #   		the alarm is disabled for a specified period of time. After the snooze time, 
    #   		the alarm automatically changes to the <code>NORMAL</code> state. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LATCHED</code> - When the alarm is in the <code>LATCHED</code> state, 
    #   		the alarm was invoked. However, the data that the alarm is currently evaluating is within the specified range. 
    #   		To change the alarm to the <code>NORMAL</code> state, you must acknowledge the alarm.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the alarm was created, in the Unix epoch format.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time the alarm was last updated, in the Unix epoch format.</p>
    #   @return [Time]
    class AlarmSummary < Struct.new(
      :alarm_model_name,
      :alarm_model_version,
      :key_value,
      :state_name,
      :creation_time,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acknowledge_action_requests
    #   <p>The list of acknowledge action requests. You can specify up to 10 requests per operation.</p>
    #   @return [Array<Types::AcknowledgeAlarmActionRequest>]
    class BatchAcknowledgeAlarmRequest < Struct.new(
      :acknowledge_action_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>A list of errors associated with the request, or <code>null</code> if there are no errors. 
    #   Each error entry contains an entry ID that helps you identify the entry that failed.</p>
    #   @return [Array<Types::BatchAlarmActionErrorEntry>]
    class BatchAcknowledgeAlarmResponse < Struct.new(
      :error_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error messages associated with one of the following requests:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchAcknowledgeAlarm.html">BatchAcknowledgeAlarm</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchDisableAlarm.html">BatchDisableAlarm</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchEnableAlarm.html">BatchEnableAlarm</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchResetAlarm.html">BatchResetAlarm</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchSnoozeAlarm.html">BatchSnoozeAlarm</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute request_id
    #   <p>The request ID. Each ID must be unique within each batch.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message that describes the error.</p>
    #   @return [String]
    class BatchAlarmActionErrorEntry < Struct.new(
      :request_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error messages associated with the deletion request.</p>
    # @!attribute message_id
    #   <p>The ID of the message that caused the error. (See the value of the <code>"messageId"</code> in the <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchDeleteDetector.html#iotevents-iotevents-data_BatchDeleteDetector-request-detectors">detectors</a> object of the <code>DeleteDetectorRequest</code>.)</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message that describes the error.</p>
    #   @return [String]
    class BatchDeleteDetectorErrorEntry < Struct.new(
      :message_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detectors
    #   <p>The list of one or more detectors to be deleted.</p>
    #   @return [Array<Types::DeleteDetectorRequest>]
    class BatchDeleteDetectorRequest < Struct.new(
      :detectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_delete_detector_error_entries
    #   <p>A list of errors associated with the request, or an empty array (<code>[]</code>) if there are no errors. Each error entry contains a <code>messageId</code> that helps you identify the entry that failed.</p>
    #   @return [Array<Types::BatchDeleteDetectorErrorEntry>]
    class BatchDeleteDetectorResponse < Struct.new(
      :batch_delete_detector_error_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute disable_action_requests
    #   <p>The list of disable action requests. You can specify up to 10 requests per operation.</p>
    #   @return [Array<Types::DisableAlarmActionRequest>]
    class BatchDisableAlarmRequest < Struct.new(
      :disable_action_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>A list of errors associated with the request, or <code>null</code> if there are no errors. 
    #   Each error entry contains an entry ID that helps you identify the entry that failed.</p>
    #   @return [Array<Types::BatchAlarmActionErrorEntry>]
    class BatchDisableAlarmResponse < Struct.new(
      :error_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute enable_action_requests
    #   <p>The list of enable action requests. You can specify up to 10 requests per operation.</p>
    #   @return [Array<Types::EnableAlarmActionRequest>]
    class BatchEnableAlarmRequest < Struct.new(
      :enable_action_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>A list of errors associated with the request, or <code>null</code> if there are no errors. 
    #   Each error entry contains an entry ID that helps you identify the entry that failed.</p>
    #   @return [Array<Types::BatchAlarmActionErrorEntry>]
    class BatchEnableAlarmResponse < Struct.new(
      :error_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the errors encountered.</p>
    # @!attribute message_id
    #   <p>The ID of the message that caused the error. (See the value corresponding to the
    #           <code>"messageId"</code> key in the <code>"message"</code> object.)</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message that describes the error.</p>
    #   @return [String]
    class BatchPutMessageErrorEntry < Struct.new(
      :message_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute messages
    #   <p>The list of messages to send. Each message has the following format: <code>'{ "messageId":
    #           "string", "inputName": "string", "payload": "string"}'</code>
    #            </p>
    #   @return [Array<Types::Message>]
    class BatchPutMessageRequest < Struct.new(
      :messages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_put_message_error_entries
    #   <p>A list of any errors encountered when sending the messages.</p>
    #   @return [Array<Types::BatchPutMessageErrorEntry>]
    class BatchPutMessageResponse < Struct.new(
      :batch_put_message_error_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reset_action_requests
    #   <p>The list of reset action requests. You can specify up to 10 requests per operation.</p>
    #   @return [Array<Types::ResetAlarmActionRequest>]
    class BatchResetAlarmRequest < Struct.new(
      :reset_action_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>A list of errors associated with the request, or <code>null</code> if there are no errors. 
    #   Each error entry contains an entry ID that helps you identify the entry that failed.</p>
    #   @return [Array<Types::BatchAlarmActionErrorEntry>]
    class BatchResetAlarmResponse < Struct.new(
      :error_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snooze_action_requests
    #   <p>The list of snooze action requests. You can specify up to 10 requests per operation.</p>
    #   @return [Array<Types::SnoozeAlarmActionRequest>]
    class BatchSnoozeAlarmRequest < Struct.new(
      :snooze_action_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>A list of errors associated with the request, or <code>null</code> if there are no errors. 
    #   Each error entry contains an entry ID that helps you identify the entry that failed.</p>
    #   @return [Array<Types::BatchAlarmActionErrorEntry>]
    class BatchSnoozeAlarmResponse < Struct.new(
      :error_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the error that occurred when attempting to update a detector.</p>
    # @!attribute message_id
    #   <p>The <code>"messageId"</code> of the update request that caused the error. (The value of
    #         the <code>"messageId"</code> in the update request <code>"Detector"</code> object.)</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message that describes the error.</p>
    #   @return [String]
    class BatchUpdateDetectorErrorEntry < Struct.new(
      :message_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detectors
    #   <p>The list of detectors (instances) to update, along with the values to update.</p>
    #   @return [Array<Types::UpdateDetectorRequest>]
    class BatchUpdateDetectorRequest < Struct.new(
      :detectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_update_detector_error_entries
    #   <p>A list of those detector updates that resulted in errors. (If an error is listed here, the
    #         specific update did not occur.)</p>
    #   @return [Array<Types::BatchUpdateDetectorErrorEntry>]
    class BatchUpdateDetectorResponse < Struct.new(
      :batch_update_detector_error_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the action that you can take to respond to the alarm.</p>
    # @!attribute action_name
    #   <p>The name of the action. The action name can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SNOOZE</code> - When you snooze the alarm, the alarm state changes to <code>SNOOZE_DISABLED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLE</code> - When you enable the alarm, the alarm state changes to <code>NORMAL</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLE</code> - When you disable the alarm, the alarm state changes to <code>DISABLED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACKNOWLEDGE</code> - When you acknowledge the alarm, the alarm state changes to <code>ACKNOWLEDGED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESET</code> - When you reset the alarm, the alarm state changes to <code>NORMAL</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see the <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_AlarmState.html">AlarmState</a> API.</p>
    #   @return [String]
    # @!attribute snooze_action_configuration
    #   <p>Contains the configuration information of a snooze action.</p>
    #   @return [Types::SnoozeActionConfiguration]
    # @!attribute enable_action_configuration
    #   <p>Contains the configuration information of an enable action.</p>
    #   @return [Types::EnableActionConfiguration]
    # @!attribute disable_action_configuration
    #   <p>Contains the configuration information of a disable action.</p>
    #   @return [Types::DisableActionConfiguration]
    # @!attribute acknowledge_action_configuration
    #   <p>Contains the configuration information of an acknowledge action.</p>
    #   @return [Types::AcknowledgeActionConfiguration]
    # @!attribute reset_action_configuration
    #   <p>Contains the configuration information of a reset action.</p>
    #   @return [Types::ResetActionConfiguration]
    class CustomerAction < Struct.new(
      :action_name,
      :snooze_action_configuration,
      :enable_action_configuration,
      :disable_action_configuration,
      :acknowledge_action_configuration,
      :reset_action_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information used to delete the detector model.</p>
    # @!attribute message_id
    #   <p>The ID to assign to the <code>DeleteDetectorRequest</code>. Each <code>"messageId"</code> must be unique within each batch sent.</p>
    #   @return [String]
    # @!attribute detector_model_name
    #   <p>The name of the detector model that was used to create the detector instance.</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateDetectorModel.html#iotevents-CreateDetectorModel-request-key">key</a> used to identify the detector. </p>
    #   @return [String]
    class DeleteDetectorRequest < Struct.new(
      :message_id,
      :detector_model_name,
      :key_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the key used as a filter to select only the alarms associated with the 
    #   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key">key</a>.</p>
    #   @return [String]
    class DescribeAlarmRequest < Struct.new(
      :alarm_model_name,
      :key_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm
    #   <p>Contains information about an alarm.</p>
    #   @return [Types::Alarm]
    class DescribeAlarmResponse < Struct.new(
      :alarm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model_name
    #   <p>The name of the detector model whose detectors (instances) you want information
    #         about.</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>A filter used to limit results to detectors (instances) created because of the given key
    #         ID.</p>
    #   @return [String]
    class DescribeDetectorRequest < Struct.new(
      :detector_model_name,
      :key_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector
    #   <p>Information about the detector (instance).</p>
    #   @return [Types::Detector]
    class DescribeDetectorResponse < Struct.new(
      :detector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the detector (instance).</p>
    # @!attribute detector_model_name
    #   <p>The name of the detector model that created this detector (instance).</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the key (identifying the device or system) that caused the creation of this
    #         detector (instance).</p>
    #   @return [String]
    # @!attribute detector_model_version
    #   <p>The version of the detector model that created this detector (instance).</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the detector (instance).</p>
    #   @return [Types::DetectorState]
    # @!attribute creation_time
    #   <p>The time the detector (instance) was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time the detector (instance) was last updated.</p>
    #   @return [Time]
    class Detector < Struct.new(
      :detector_model_name,
      :key_value,
      :detector_model_version,
      :state,
      :creation_time,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the current state of the detector instance.</p>
    # @!attribute state_name
    #   <p>The name of the state.</p>
    #   @return [String]
    # @!attribute variables
    #   <p>The current values of the detector's variables.</p>
    #   @return [Array<Types::Variable>]
    # @!attribute timers
    #   <p>The current state of the detector's timers.</p>
    #   @return [Array<Types::Timer>]
    class DetectorState < Struct.new(
      :state_name,
      :variables,
      :timers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The new state, variable values, and timer settings of the detector (instance).</p>
    # @!attribute state_name
    #   <p>The name of the new state of the detector (instance).</p>
    #   @return [String]
    # @!attribute variables
    #   <p>The new values of the detector's variables. Any variable whose value isn't specified is
    #         cleared.</p>
    #   @return [Array<Types::VariableDefinition>]
    # @!attribute timers
    #   <p>The new values of the detector's timers. Any timer whose value isn't specified is cleared,
    #         and its timeout event won't occur.</p>
    #   @return [Array<Types::TimerDefinition>]
    class DetectorStateDefinition < Struct.new(
      :state_name,
      :variables,
      :timers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the detector state.</p>
    # @!attribute state_name
    #   <p>The name of the state.</p>
    #   @return [String]
    class DetectorStateSummary < Struct.new(
      :state_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the detector (instance).</p>
    # @!attribute detector_model_name
    #   <p>The name of the detector model that created this detector (instance).</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the key (identifying the device or system) that caused the creation of this
    #         detector (instance).</p>
    #   @return [String]
    # @!attribute detector_model_version
    #   <p>The version of the detector model that created this detector (instance).</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the detector (instance).</p>
    #   @return [Types::DetectorStateSummary]
    # @!attribute creation_time
    #   <p>The time the detector (instance) was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time the detector (instance) was last updated.</p>
    #   @return [Time]
    class DetectorSummary < Struct.new(
      :detector_model_name,
      :key_value,
      :detector_model_version,
      :state,
      :creation_time,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration information of a disable action.</p>
    # @!attribute note
    #   <p>The note that you can leave when you disable the alarm.</p>
    #   @return [String]
    class DisableActionConfiguration < Struct.new(
      :note,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information used to disable the alarm.</p>
    # @!attribute request_id
    #   <p>The request ID. Each ID must be unique within each batch.</p>
    #   @return [String]
    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the key used as a filter to select only the alarms associated with the 
    #   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key">key</a>.</p>
    #   @return [String]
    # @!attribute note
    #   <p>The note that you can leave when you disable the alarm.</p>
    #   @return [String]
    class DisableAlarmActionRequest < Struct.new(
      :request_id,
      :alarm_model_name,
      :key_value,
      :note,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration information of an enable action.</p>
    # @!attribute note
    #   <p>The note that you can leave when you enable the alarm.</p>
    #   @return [String]
    class EnableActionConfiguration < Struct.new(
      :note,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information needed to enable the alarm.</p>
    # @!attribute request_id
    #   <p>The request ID. Each ID must be unique within each batch.</p>
    #   @return [String]
    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the key used as a filter to select only the alarms associated with the 
    #   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key">key</a>.</p>
    #   @return [String]
    # @!attribute note
    #   <p>The note that you can leave when you enable the alarm.</p>
    #   @return [String]
    class EnableAlarmActionRequest < Struct.new(
      :request_id,
      :alarm_model_name,
      :key_value,
      :note,
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

    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #   @return [Integer]
    class ListAlarmsRequest < Struct.new(
      :alarm_model_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_summaries
    #   <p>A list that summarizes each alarm.</p>
    #   @return [Array<Types::AlarmSummary>]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results, 
    #   or <code>null</code> if there are no more results.</p>
    #   @return [String]
    class ListAlarmsResponse < Struct.new(
      :alarm_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_model_name
    #   <p>The name of the detector model whose detectors (instances) are listed.</p>
    #   @return [String]
    # @!attribute state_name
    #   <p>A filter that limits results to those detectors (instances) in the given state.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #   @return [Integer]
    class ListDetectorsRequest < Struct.new(
      :detector_model_name,
      :state_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detector_summaries
    #   <p>A list of summary information about the detectors (instances).</p>
    #   @return [Array<Types::DetectorSummary>]
    # @!attribute next_token
    #   <p>The token that you can use to return the next set of results, 
    #   or <code>null</code> if there are no more results.</p>
    #   @return [String]
    class ListDetectorsResponse < Struct.new(
      :detector_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a message.</p>
    # @!attribute message_id
    #   <p>The ID to assign to the message. Within each batch sent, each <code>"messageId"</code>
    #         must be unique.</p>
    #   @return [String]
    # @!attribute input_name
    #   <p>The name of the input into which the message payload is transformed.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The payload of the message. This can be a JSON string or a Base-64-encoded string
    #         representing binary data (in which case you must decode it).</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp associated with the message.</p>
    #   @return [Types::TimestampValue]
    class Message < Struct.new(
      :message_id,
      :input_name,
      :payload,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration information of a reset action.</p>
    # @!attribute note
    #   <p>The note that you can leave when you reset the alarm.</p>
    #   @return [String]
    class ResetActionConfiguration < Struct.new(
      :note,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information needed to reset the alarm.</p>
    # @!attribute request_id
    #   <p>The request ID. Each ID must be unique within each batch.</p>
    #   @return [String]
    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the key used as a filter to select only the alarms associated with the 
    #   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key">key</a>.</p>
    #   @return [String]
    # @!attribute note
    #   <p>The note that you can leave when you reset the alarm.</p>
    #   @return [String]
    class ResetAlarmActionRequest < Struct.new(
      :request_id,
      :alarm_model_name,
      :key_value,
      :note,
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

    # <p>Information needed to evaluate data.</p>
    # @!attribute simple_rule_evaluation
    #   <p>Information needed to compare two values with a comparison operator.</p>
    #   @return [Types::SimpleRuleEvaluation]
    class RuleEvaluation < Struct.new(
      :simple_rule_evaluation,
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

    # <p>Information needed to compare two values with a comparison operator.</p>
    # @!attribute input_property_value
    #   <p>The value of the input property, on the left side of the comparison operator.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The comparison operator.</p>
    #   @return [String]
    # @!attribute threshold_value
    #   <p>The threshold value, on the right side of the comparison operator.</p>
    #   @return [String]
    class SimpleRuleEvaluation < Struct.new(
      :input_property_value,
      :operator,
      :threshold_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration information of a snooze action.</p>
    # @!attribute snooze_duration
    #   <p>The snooze time in seconds. The alarm automatically changes to the <code>NORMAL</code> state after this duration.</p>
    #   @return [Integer]
    # @!attribute note
    #   <p>The note that you can leave when you snooze the alarm.</p>
    #   @return [String]
    class SnoozeActionConfiguration < Struct.new(
      :snooze_duration,
      :note,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information needed to snooze the alarm.</p>
    # @!attribute request_id
    #   <p>The request ID. Each ID must be unique within each batch.</p>
    #   @return [String]
    # @!attribute alarm_model_name
    #   <p>The name of the alarm model.</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the key used as a filter to select only the alarms associated with the 
    #   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key">key</a>.</p>
    #   @return [String]
    # @!attribute note
    #   <p>The note that you can leave when you snooze the alarm.</p>
    #   @return [String]
    # @!attribute snooze_duration
    #   <p>The snooze time in seconds. The alarm automatically changes to the <code>NORMAL</code> state after this duration.</p>
    #   @return [Integer]
    class SnoozeAlarmActionRequest < Struct.new(
      :request_id,
      :alarm_model_name,
      :key_value,
      :note,
      :snooze_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration information of alarm state changes.</p>
    # @!attribute trigger_type
    #   <p>The trigger type. If the value is <code>SNOOZE_TIMEOUT</code>, the snooze duration ends
    #         and the alarm automatically changes to the <code>NORMAL</code> state.</p>
    #   @return [String]
    class StateChangeConfiguration < Struct.new(
      :trigger_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about alarm state changes.</p>
    # @!attribute event_type
    #   <p>The event type. If the value is <code>STATE_CHANGE</code>, the event contains information
    #         about alarm state changes.</p>
    #   @return [String]
    # @!attribute state_change_configuration
    #   <p>Contains the configuration information of alarm state changes.</p>
    #   @return [Types::StateChangeConfiguration]
    class SystemEvent < Struct.new(
      :event_type,
      :state_change_configuration,
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

    # <p>The current state of a timer.</p>
    # @!attribute name
    #   <p>The name of the timer.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The expiration time for the timer.</p>
    #   @return [Time]
    class Timer < Struct.new(
      :name,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The new setting of a timer.</p>
    # @!attribute name
    #   <p>The name of the timer.</p>
    #   @return [String]
    # @!attribute seconds
    #   <p>The new setting of the timer (the number of seconds before the timer elapses).</p>
    #   @return [Integer]
    class TimerDefinition < Struct.new(
      :name,
      :seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a timestamp.</p>
    # @!attribute time_in_millis
    #   <p>The value of the timestamp, in the Unix epoch format.</p>
    #   @return [Integer]
    class TimestampValue < Struct.new(
      :time_in_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information used to update the detector (instance).</p>
    # @!attribute message_id
    #   <p>The ID to assign to the detector update <code>"message"</code>. Each
    #           <code>"messageId"</code> must be unique within each batch sent.</p>
    #   @return [String]
    # @!attribute detector_model_name
    #   <p>The name of the detector model that created the detectors (instances).</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The value of the input key attribute (identifying the device or system) that caused the
    #         creation of this detector (instance).</p>
    #   @return [String]
    # @!attribute state
    #   <p>The new state, variable values, and timer settings of the detector (instance).</p>
    #   @return [Types::DetectorStateDefinition]
    class UpdateDetectorRequest < Struct.new(
      :message_id,
      :detector_model_name,
      :key_value,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The current state of the variable.</p>
    # @!attribute name
    #   <p>The name of the variable.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The current value of the variable.</p>
    #   @return [String]
    class Variable < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The new value of the variable.</p>
    # @!attribute name
    #   <p>The name of the variable.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The new value of the variable.</p>
    #   @return [String]
    class VariableDefinition < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
