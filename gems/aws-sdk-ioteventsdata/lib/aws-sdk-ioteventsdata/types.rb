# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTEventsData
  module Types

    # Contains the configuration information of an acknowledge action.
    #
    # @!attribute [rw] note
    #   The note that you can leave when you acknowledge the alarm.
    #   @return [String]
    #
    class AcknowledgeActionConfiguration < Struct.new(
      :note)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information needed to acknowledge the alarm.
    #
    # @!attribute [rw] request_id
    #   The request ID. Each ID must be unique within each batch.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the key used as a filter to select only the alarms
    #   associated with the [key][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key
    #   @return [String]
    #
    # @!attribute [rw] note
    #   The note that you can leave when you acknowledge the alarm.
    #   @return [String]
    #
    class AcknowledgeAlarmActionRequest < Struct.new(
      :request_id,
      :alarm_model_name,
      :key_value,
      :note)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an alarm.
    #
    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_version
    #   The version of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the key used as a filter to select only the alarms
    #   associated with the [key][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key
    #   @return [String]
    #
    # @!attribute [rw] alarm_state
    #   Contains information about the current state of the alarm.
    #   @return [Types::AlarmState]
    #
    # @!attribute [rw] severity
    #   A non-negative integer that reflects the severity level of the
    #   alarm.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The time the alarm was created, in the Unix epoch format.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time the alarm was last updated, in the Unix epoch format.
    #   @return [Time]
    #
    class Alarm < Struct.new(
      :alarm_model_name,
      :alarm_model_version,
      :key_value,
      :alarm_state,
      :severity,
      :creation_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the current state of the alarm.
    #
    # @!attribute [rw] state_name
    #   The name of the alarm state. The state name can be one of the
    #   following values:
    #
    #   * `DISABLED` - When the alarm is in the `DISABLED` state, it isn't
    #     ready to evaluate data. To enable the alarm, you must change the
    #     alarm to the `NORMAL` state.
    #
    #   * `NORMAL` - When the alarm is in the `NORMAL` state, it's ready to
    #     evaluate data.
    #
    #   * `ACTIVE` - If the alarm is in the `ACTIVE` state, the alarm is
    #     invoked.
    #
    #   * `ACKNOWLEDGED` - When the alarm is in the `ACKNOWLEDGED` state,
    #     the alarm was invoked and you acknowledged the alarm.
    #
    #   * `SNOOZE_DISABLED` - When the alarm is in the `SNOOZE_DISABLED`
    #     state, the alarm is disabled for a specified period of time. After
    #     the snooze time, the alarm automatically changes to the `NORMAL`
    #     state.
    #
    #   * `LATCHED` - When the alarm is in the `LATCHED` state, the alarm
    #     was invoked. However, the data that the alarm is currently
    #     evaluating is within the specified range. To change the alarm to
    #     the `NORMAL` state, you must acknowledge the alarm.
    #   @return [String]
    #
    # @!attribute [rw] rule_evaluation
    #   Information needed to evaluate data.
    #   @return [Types::RuleEvaluation]
    #
    # @!attribute [rw] customer_action
    #   Contains information about the action that you can take to respond
    #   to the alarm.
    #   @return [Types::CustomerAction]
    #
    # @!attribute [rw] system_event
    #   Contains information about alarm state changes.
    #   @return [Types::SystemEvent]
    #
    class AlarmState < Struct.new(
      :state_name,
      :rule_evaluation,
      :customer_action,
      :system_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of an alarm.
    #
    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_version
    #   The version of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the key used as a filter to select only the alarms
    #   associated with the [key][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key
    #   @return [String]
    #
    # @!attribute [rw] state_name
    #   The name of the alarm state. The state name can be one of the
    #   following values:
    #
    #   * `DISABLED` - When the alarm is in the `DISABLED` state, it isn't
    #     ready to evaluate data. To enable the alarm, you must change the
    #     alarm to the `NORMAL` state.
    #
    #   * `NORMAL` - When the alarm is in the `NORMAL` state, it's ready to
    #     evaluate data.
    #
    #   * `ACTIVE` - If the alarm is in the `ACTIVE` state, the alarm is
    #     invoked.
    #
    #   * `ACKNOWLEDGED` - When the alarm is in the `ACKNOWLEDGED` state,
    #     the alarm was invoked and you acknowledged the alarm.
    #
    #   * `SNOOZE_DISABLED` - When the alarm is in the `SNOOZE_DISABLED`
    #     state, the alarm is disabled for a specified period of time. After
    #     the snooze time, the alarm automatically changes to the `NORMAL`
    #     state.
    #
    #   * `LATCHED` - When the alarm is in the `LATCHED` state, the alarm
    #     was invoked. However, the data that the alarm is currently
    #     evaluating is within the specified range. To change the alarm to
    #     the `NORMAL` state, you must acknowledge the alarm.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the alarm was created, in the Unix epoch format.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time the alarm was last updated, in the Unix epoch format.
    #   @return [Time]
    #
    class AlarmSummary < Struct.new(
      :alarm_model_name,
      :alarm_model_version,
      :key_value,
      :state_name,
      :creation_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acknowledge_action_requests
    #   The list of acknowledge action requests. You can specify up to 10
    #   requests per operation.
    #   @return [Array<Types::AcknowledgeAlarmActionRequest>]
    #
    class BatchAcknowledgeAlarmRequest < Struct.new(
      :acknowledge_action_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   A list of errors associated with the request, or `null` if there are
    #   no errors. Each error entry contains an entry ID that helps you
    #   identify the entry that failed.
    #   @return [Array<Types::BatchAlarmActionErrorEntry>]
    #
    class BatchAcknowledgeAlarmResponse < Struct.new(
      :error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error messages associated with one of the following requests:
    #
    # * [BatchAcknowledgeAlarm][1]
    #
    # * [BatchDisableAlarm][2]
    #
    # * [BatchEnableAlarm][3]
    #
    # * [BatchResetAlarm][4]
    #
    # * [BatchSnoozeAlarm][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchAcknowledgeAlarm.html
    # [2]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchDisableAlarm.html
    # [3]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchEnableAlarm.html
    # [4]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchResetAlarm.html
    # [5]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchSnoozeAlarm.html
    #
    # @!attribute [rw] request_id
    #   The request ID. Each ID must be unique within each batch.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message that describes the error.
    #   @return [String]
    #
    class BatchAlarmActionErrorEntry < Struct.new(
      :request_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error messages associated with the deletion request.
    #
    # @!attribute [rw] message_id
    #   The ID of the message that caused the error. (See the value of the
    #   `"messageId"` in the [detectors][1] object of the
    #   `DeleteDetectorRequest`.)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchDeleteDetector.html#iotevents-iotevents-data_BatchDeleteDetector-request-detectors
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message that describes the error.
    #   @return [String]
    #
    class BatchDeleteDetectorErrorEntry < Struct.new(
      :message_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detectors
    #   The list of one or more detectors to be deleted.
    #   @return [Array<Types::DeleteDetectorRequest>]
    #
    class BatchDeleteDetectorRequest < Struct.new(
      :detectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_delete_detector_error_entries
    #   A list of errors associated with the request, or an empty array
    #   (`[]`) if there are no errors. Each error entry contains a
    #   `messageId` that helps you identify the entry that failed.
    #   @return [Array<Types::BatchDeleteDetectorErrorEntry>]
    #
    class BatchDeleteDetectorResponse < Struct.new(
      :batch_delete_detector_error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disable_action_requests
    #   The list of disable action requests. You can specify up to 10
    #   requests per operation.
    #   @return [Array<Types::DisableAlarmActionRequest>]
    #
    class BatchDisableAlarmRequest < Struct.new(
      :disable_action_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   A list of errors associated with the request, or `null` if there are
    #   no errors. Each error entry contains an entry ID that helps you
    #   identify the entry that failed.
    #   @return [Array<Types::BatchAlarmActionErrorEntry>]
    #
    class BatchDisableAlarmResponse < Struct.new(
      :error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enable_action_requests
    #   The list of enable action requests. You can specify up to 10
    #   requests per operation.
    #   @return [Array<Types::EnableAlarmActionRequest>]
    #
    class BatchEnableAlarmRequest < Struct.new(
      :enable_action_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   A list of errors associated with the request, or `null` if there are
    #   no errors. Each error entry contains an entry ID that helps you
    #   identify the entry that failed.
    #   @return [Array<Types::BatchAlarmActionErrorEntry>]
    #
    class BatchEnableAlarmResponse < Struct.new(
      :error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the errors encountered.
    #
    # @!attribute [rw] message_id
    #   The ID of the message that caused the error. (See the value
    #   corresponding to the `"messageId"` key in the `"message"` object.)
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message that describes the error.
    #   @return [String]
    #
    class BatchPutMessageErrorEntry < Struct.new(
      :message_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] reset_action_requests
    #   The list of reset action requests. You can specify up to 10 requests
    #   per operation.
    #   @return [Array<Types::ResetAlarmActionRequest>]
    #
    class BatchResetAlarmRequest < Struct.new(
      :reset_action_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   A list of errors associated with the request, or `null` if there are
    #   no errors. Each error entry contains an entry ID that helps you
    #   identify the entry that failed.
    #   @return [Array<Types::BatchAlarmActionErrorEntry>]
    #
    class BatchResetAlarmResponse < Struct.new(
      :error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snooze_action_requests
    #   The list of snooze action requests. You can specify up to 10
    #   requests per operation.
    #   @return [Array<Types::SnoozeAlarmActionRequest>]
    #
    class BatchSnoozeAlarmRequest < Struct.new(
      :snooze_action_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   A list of errors associated with the request, or `null` if there are
    #   no errors. Each error entry contains an entry ID that helps you
    #   identify the entry that failed.
    #   @return [Array<Types::BatchAlarmActionErrorEntry>]
    #
    class BatchSnoozeAlarmResponse < Struct.new(
      :error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the error that occurred when attempting to update a
    # detector.
    #
    # @!attribute [rw] message_id
    #   The `"messageId"` of the update request that caused the error. (The
    #   value of the `"messageId"` in the update request `"Detector"`
    #   object.)
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message that describes the error.
    #   @return [String]
    #
    class BatchUpdateDetectorErrorEntry < Struct.new(
      :message_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Contains information about the action that you can take to respond to
    # the alarm.
    #
    # @!attribute [rw] action_name
    #   The name of the action. The action name can be one of the following
    #   values:
    #
    #   * `SNOOZE` - When you snooze the alarm, the alarm state changes to
    #     `SNOOZE_DISABLED`.
    #
    #   * `ENABLE` - When you enable the alarm, the alarm state changes to
    #     `NORMAL`.
    #
    #   * `DISABLE` - When you disable the alarm, the alarm state changes to
    #     `DISABLED`.
    #
    #   * `ACKNOWLEDGE` - When you acknowledge the alarm, the alarm state
    #     changes to `ACKNOWLEDGED`.
    #
    #   * `RESET` - When you reset the alarm, the alarm state changes to
    #     `NORMAL`.
    #
    #   For more information, see the [AlarmState][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_AlarmState.html
    #   @return [String]
    #
    # @!attribute [rw] snooze_action_configuration
    #   Contains the configuration information of a snooze action.
    #   @return [Types::SnoozeActionConfiguration]
    #
    # @!attribute [rw] enable_action_configuration
    #   Contains the configuration information of an enable action.
    #   @return [Types::EnableActionConfiguration]
    #
    # @!attribute [rw] disable_action_configuration
    #   Contains the configuration information of a disable action.
    #   @return [Types::DisableActionConfiguration]
    #
    # @!attribute [rw] acknowledge_action_configuration
    #   Contains the configuration information of an acknowledge action.
    #   @return [Types::AcknowledgeActionConfiguration]
    #
    # @!attribute [rw] reset_action_configuration
    #   Contains the configuration information of a reset action.
    #   @return [Types::ResetActionConfiguration]
    #
    class CustomerAction < Struct.new(
      :action_name,
      :snooze_action_configuration,
      :enable_action_configuration,
      :disable_action_configuration,
      :acknowledge_action_configuration,
      :reset_action_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information used to delete the detector model.
    #
    # @!attribute [rw] message_id
    #   The ID to assign to the `DeleteDetectorRequest`. Each `"messageId"`
    #   must be unique within each batch sent.
    #   @return [String]
    #
    # @!attribute [rw] detector_model_name
    #   The name of the detector model that was used to create the detector
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the [key][1] used to identify the detector.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateDetectorModel.html#iotevents-CreateDetectorModel-request-key
    #   @return [String]
    #
    class DeleteDetectorRequest < Struct.new(
      :message_id,
      :detector_model_name,
      :key_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the key used as a filter to select only the alarms
    #   associated with the [key][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key
    #   @return [String]
    #
    class DescribeAlarmRequest < Struct.new(
      :alarm_model_name,
      :key_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarm
    #   Contains information about an alarm.
    #   @return [Types::Alarm]
    #
    class DescribeAlarmResponse < Struct.new(
      :alarm)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Contains the configuration information of a disable action.
    #
    # @!attribute [rw] note
    #   The note that you can leave when you disable the alarm.
    #   @return [String]
    #
    class DisableActionConfiguration < Struct.new(
      :note)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information used to disable the alarm.
    #
    # @!attribute [rw] request_id
    #   The request ID. Each ID must be unique within each batch.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the key used as a filter to select only the alarms
    #   associated with the [key][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key
    #   @return [String]
    #
    # @!attribute [rw] note
    #   The note that you can leave when you disable the alarm.
    #   @return [String]
    #
    class DisableAlarmActionRequest < Struct.new(
      :request_id,
      :alarm_model_name,
      :key_value,
      :note)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information of an enable action.
    #
    # @!attribute [rw] note
    #   The note that you can leave when you enable the alarm.
    #   @return [String]
    #
    class EnableActionConfiguration < Struct.new(
      :note)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information needed to enable the alarm.
    #
    # @!attribute [rw] request_id
    #   The request ID. Each ID must be unique within each batch.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the key used as a filter to select only the alarms
    #   associated with the [key][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key
    #   @return [String]
    #
    # @!attribute [rw] note
    #   The note that you can leave when you enable the alarm.
    #   @return [String]
    #
    class EnableAlarmActionRequest < Struct.new(
      :request_id,
      :alarm_model_name,
      :key_value,
      :note)
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
    class ListAlarmsRequest < Struct.new(
      :alarm_model_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alarm_summaries
    #   A list that summarizes each alarm.
    #   @return [Array<Types::AlarmSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that you can use to return the next set of results, or
    #   `null` if there are no more results.
    #   @return [String]
    #
    class ListAlarmsResponse < Struct.new(
      :alarm_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The token that you can use to return the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
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
    #   The token that you can use to return the next set of results, or
    #   `null` if there are no more results.
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
    # @!attribute [rw] timestamp
    #   The timestamp associated with the message.
    #   @return [Types::TimestampValue]
    #
    class Message < Struct.new(
      :message_id,
      :input_name,
      :payload,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information of a reset action.
    #
    # @!attribute [rw] note
    #   The note that you can leave when you reset the alarm.
    #   @return [String]
    #
    class ResetActionConfiguration < Struct.new(
      :note)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information needed to reset the alarm.
    #
    # @!attribute [rw] request_id
    #   The request ID. Each ID must be unique within each batch.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the key used as a filter to select only the alarms
    #   associated with the [key][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key
    #   @return [String]
    #
    # @!attribute [rw] note
    #   The note that you can leave when you reset the alarm.
    #   @return [String]
    #
    class ResetAlarmActionRequest < Struct.new(
      :request_id,
      :alarm_model_name,
      :key_value,
      :note)
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

    # Information needed to evaluate data.
    #
    # @!attribute [rw] simple_rule_evaluation
    #   Information needed to compare two values with a comparison operator.
    #   @return [Types::SimpleRuleEvaluation]
    #
    class RuleEvaluation < Struct.new(
      :simple_rule_evaluation)
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

    # Information needed to compare two values with a comparison operator.
    #
    # @!attribute [rw] input_property_value
    #   The value of the input property, on the left side of the comparison
    #   operator.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The comparison operator.
    #   @return [String]
    #
    # @!attribute [rw] threshold_value
    #   The threshold value, on the right side of the comparison operator.
    #   @return [String]
    #
    class SimpleRuleEvaluation < Struct.new(
      :input_property_value,
      :operator,
      :threshold_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information of a snooze action.
    #
    # @!attribute [rw] snooze_duration
    #   The snooze time in seconds. The alarm automatically changes to the
    #   `NORMAL` state after this duration.
    #   @return [Integer]
    #
    # @!attribute [rw] note
    #   The note that you can leave when you snooze the alarm.
    #   @return [String]
    #
    class SnoozeActionConfiguration < Struct.new(
      :snooze_duration,
      :note)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information needed to snooze the alarm.
    #
    # @!attribute [rw] request_id
    #   The request ID. Each ID must be unique within each batch.
    #   @return [String]
    #
    # @!attribute [rw] alarm_model_name
    #   The name of the alarm model.
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The value of the key used as a filter to select only the alarms
    #   associated with the [key][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key
    #   @return [String]
    #
    # @!attribute [rw] note
    #   The note that you can leave when you snooze the alarm.
    #   @return [String]
    #
    # @!attribute [rw] snooze_duration
    #   The snooze time in seconds. The alarm automatically changes to the
    #   `NORMAL` state after this duration.
    #   @return [Integer]
    #
    class SnoozeAlarmActionRequest < Struct.new(
      :request_id,
      :alarm_model_name,
      :key_value,
      :note,
      :snooze_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information of alarm state changes.
    #
    # @!attribute [rw] trigger_type
    #   The trigger type. If the value is `SNOOZE_TIMEOUT`, the snooze
    #   duration ends and the alarm automatically changes to the `NORMAL`
    #   state.
    #   @return [String]
    #
    class StateChangeConfiguration < Struct.new(
      :trigger_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about alarm state changes.
    #
    # @!attribute [rw] event_type
    #   The event type. If the value is `STATE_CHANGE`, the event contains
    #   information about alarm state changes.
    #   @return [String]
    #
    # @!attribute [rw] state_change_configuration
    #   Contains the configuration information of alarm state changes.
    #   @return [Types::StateChangeConfiguration]
    #
    class SystemEvent < Struct.new(
      :event_type,
      :state_change_configuration)
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
    #   The expiration time for the timer.
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

    # Contains information about a timestamp.
    #
    # @!attribute [rw] time_in_millis
    #   The value of the timestamp, in the Unix epoch format.
    #   @return [Integer]
    #
    class TimestampValue < Struct.new(
      :time_in_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information used to update the detector (instance).
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
