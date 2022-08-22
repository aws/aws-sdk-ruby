# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTEventsData
  # @api private
  module ClientApi

    include Seahorse::Model

    AcknowledgeActionConfiguration = Shapes::StructureShape.new(name: 'AcknowledgeActionConfiguration')
    AcknowledgeAlarmActionRequest = Shapes::StructureShape.new(name: 'AcknowledgeAlarmActionRequest')
    AcknowledgeAlarmActionRequests = Shapes::ListShape.new(name: 'AcknowledgeAlarmActionRequests')
    Alarm = Shapes::StructureShape.new(name: 'Alarm')
    AlarmModelName = Shapes::StringShape.new(name: 'AlarmModelName')
    AlarmModelVersion = Shapes::StringShape.new(name: 'AlarmModelVersion')
    AlarmState = Shapes::StructureShape.new(name: 'AlarmState')
    AlarmStateName = Shapes::StringShape.new(name: 'AlarmStateName')
    AlarmSummaries = Shapes::ListShape.new(name: 'AlarmSummaries')
    AlarmSummary = Shapes::StructureShape.new(name: 'AlarmSummary')
    BatchAcknowledgeAlarmRequest = Shapes::StructureShape.new(name: 'BatchAcknowledgeAlarmRequest')
    BatchAcknowledgeAlarmResponse = Shapes::StructureShape.new(name: 'BatchAcknowledgeAlarmResponse')
    BatchAlarmActionErrorEntries = Shapes::ListShape.new(name: 'BatchAlarmActionErrorEntries')
    BatchAlarmActionErrorEntry = Shapes::StructureShape.new(name: 'BatchAlarmActionErrorEntry')
    BatchDeleteDetectorErrorEntries = Shapes::ListShape.new(name: 'BatchDeleteDetectorErrorEntries')
    BatchDeleteDetectorErrorEntry = Shapes::StructureShape.new(name: 'BatchDeleteDetectorErrorEntry')
    BatchDeleteDetectorRequest = Shapes::StructureShape.new(name: 'BatchDeleteDetectorRequest')
    BatchDeleteDetectorResponse = Shapes::StructureShape.new(name: 'BatchDeleteDetectorResponse')
    BatchDisableAlarmRequest = Shapes::StructureShape.new(name: 'BatchDisableAlarmRequest')
    BatchDisableAlarmResponse = Shapes::StructureShape.new(name: 'BatchDisableAlarmResponse')
    BatchEnableAlarmRequest = Shapes::StructureShape.new(name: 'BatchEnableAlarmRequest')
    BatchEnableAlarmResponse = Shapes::StructureShape.new(name: 'BatchEnableAlarmResponse')
    BatchPutMessageErrorEntries = Shapes::ListShape.new(name: 'BatchPutMessageErrorEntries')
    BatchPutMessageErrorEntry = Shapes::StructureShape.new(name: 'BatchPutMessageErrorEntry')
    BatchPutMessageRequest = Shapes::StructureShape.new(name: 'BatchPutMessageRequest')
    BatchPutMessageResponse = Shapes::StructureShape.new(name: 'BatchPutMessageResponse')
    BatchResetAlarmRequest = Shapes::StructureShape.new(name: 'BatchResetAlarmRequest')
    BatchResetAlarmResponse = Shapes::StructureShape.new(name: 'BatchResetAlarmResponse')
    BatchSnoozeAlarmRequest = Shapes::StructureShape.new(name: 'BatchSnoozeAlarmRequest')
    BatchSnoozeAlarmResponse = Shapes::StructureShape.new(name: 'BatchSnoozeAlarmResponse')
    BatchUpdateDetectorErrorEntries = Shapes::ListShape.new(name: 'BatchUpdateDetectorErrorEntries')
    BatchUpdateDetectorErrorEntry = Shapes::StructureShape.new(name: 'BatchUpdateDetectorErrorEntry')
    BatchUpdateDetectorRequest = Shapes::StructureShape.new(name: 'BatchUpdateDetectorRequest')
    BatchUpdateDetectorResponse = Shapes::StructureShape.new(name: 'BatchUpdateDetectorResponse')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    CustomerAction = Shapes::StructureShape.new(name: 'CustomerAction')
    CustomerActionName = Shapes::StringShape.new(name: 'CustomerActionName')
    DeleteDetectorRequest = Shapes::StructureShape.new(name: 'DeleteDetectorRequest')
    DeleteDetectorRequests = Shapes::ListShape.new(name: 'DeleteDetectorRequests')
    DescribeAlarmRequest = Shapes::StructureShape.new(name: 'DescribeAlarmRequest')
    DescribeAlarmResponse = Shapes::StructureShape.new(name: 'DescribeAlarmResponse')
    DescribeDetectorRequest = Shapes::StructureShape.new(name: 'DescribeDetectorRequest')
    DescribeDetectorResponse = Shapes::StructureShape.new(name: 'DescribeDetectorResponse')
    Detector = Shapes::StructureShape.new(name: 'Detector')
    DetectorModelName = Shapes::StringShape.new(name: 'DetectorModelName')
    DetectorModelVersion = Shapes::StringShape.new(name: 'DetectorModelVersion')
    DetectorState = Shapes::StructureShape.new(name: 'DetectorState')
    DetectorStateDefinition = Shapes::StructureShape.new(name: 'DetectorStateDefinition')
    DetectorStateSummary = Shapes::StructureShape.new(name: 'DetectorStateSummary')
    DetectorSummaries = Shapes::ListShape.new(name: 'DetectorSummaries')
    DetectorSummary = Shapes::StructureShape.new(name: 'DetectorSummary')
    DisableActionConfiguration = Shapes::StructureShape.new(name: 'DisableActionConfiguration')
    DisableAlarmActionRequest = Shapes::StructureShape.new(name: 'DisableAlarmActionRequest')
    DisableAlarmActionRequests = Shapes::ListShape.new(name: 'DisableAlarmActionRequests')
    EnableActionConfiguration = Shapes::StructureShape.new(name: 'EnableActionConfiguration')
    EnableAlarmActionRequest = Shapes::StructureShape.new(name: 'EnableAlarmActionRequest')
    EnableAlarmActionRequests = Shapes::ListShape.new(name: 'EnableAlarmActionRequests')
    EphemeralInputName = Shapes::StringShape.new(name: 'EphemeralInputName')
    EpochMilliTimestamp = Shapes::IntegerShape.new(name: 'EpochMilliTimestamp')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventType = Shapes::StringShape.new(name: 'EventType')
    InputPropertyValue = Shapes::StringShape.new(name: 'InputPropertyValue')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    KeyValue = Shapes::StringShape.new(name: 'KeyValue')
    ListAlarmsRequest = Shapes::StructureShape.new(name: 'ListAlarmsRequest')
    ListAlarmsResponse = Shapes::StructureShape.new(name: 'ListAlarmsResponse')
    ListDetectorsRequest = Shapes::StructureShape.new(name: 'ListDetectorsRequest')
    ListDetectorsResponse = Shapes::StructureShape.new(name: 'ListDetectorsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageId = Shapes::StringShape.new(name: 'MessageId')
    Messages = Shapes::ListShape.new(name: 'Messages')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Note = Shapes::StringShape.new(name: 'Note')
    Payload = Shapes::BlobShape.new(name: 'Payload')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    ResetActionConfiguration = Shapes::StructureShape.new(name: 'ResetActionConfiguration')
    ResetAlarmActionRequest = Shapes::StructureShape.new(name: 'ResetAlarmActionRequest')
    ResetAlarmActionRequests = Shapes::ListShape.new(name: 'ResetAlarmActionRequests')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RuleEvaluation = Shapes::StructureShape.new(name: 'RuleEvaluation')
    Seconds = Shapes::IntegerShape.new(name: 'Seconds')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    Severity = Shapes::IntegerShape.new(name: 'Severity')
    SimpleRuleEvaluation = Shapes::StructureShape.new(name: 'SimpleRuleEvaluation')
    SnoozeActionConfiguration = Shapes::StructureShape.new(name: 'SnoozeActionConfiguration')
    SnoozeAlarmActionRequest = Shapes::StructureShape.new(name: 'SnoozeAlarmActionRequest')
    SnoozeAlarmActionRequests = Shapes::ListShape.new(name: 'SnoozeAlarmActionRequests')
    SnoozeDuration = Shapes::IntegerShape.new(name: 'SnoozeDuration')
    StateChangeConfiguration = Shapes::StructureShape.new(name: 'StateChangeConfiguration')
    StateName = Shapes::StringShape.new(name: 'StateName')
    SystemEvent = Shapes::StructureShape.new(name: 'SystemEvent')
    ThresholdValue = Shapes::StringShape.new(name: 'ThresholdValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timer = Shapes::StructureShape.new(name: 'Timer')
    TimerDefinition = Shapes::StructureShape.new(name: 'TimerDefinition')
    TimerDefinitions = Shapes::ListShape.new(name: 'TimerDefinitions')
    TimerName = Shapes::StringShape.new(name: 'TimerName')
    Timers = Shapes::ListShape.new(name: 'Timers')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampValue = Shapes::StructureShape.new(name: 'TimestampValue')
    TriggerType = Shapes::StringShape.new(name: 'TriggerType')
    UpdateDetectorRequest = Shapes::StructureShape.new(name: 'UpdateDetectorRequest')
    UpdateDetectorRequests = Shapes::ListShape.new(name: 'UpdateDetectorRequests')
    Variable = Shapes::StructureShape.new(name: 'Variable')
    VariableDefinition = Shapes::StructureShape.new(name: 'VariableDefinition')
    VariableDefinitions = Shapes::ListShape.new(name: 'VariableDefinitions')
    VariableName = Shapes::StringShape.new(name: 'VariableName')
    VariableValue = Shapes::StringShape.new(name: 'VariableValue')
    Variables = Shapes::ListShape.new(name: 'Variables')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    AcknowledgeActionConfiguration.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    AcknowledgeActionConfiguration.struct_class = Types::AcknowledgeActionConfiguration

    AcknowledgeAlarmActionRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, required: true, location_name: "requestId"))
    AcknowledgeAlarmActionRequest.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, required: true, location_name: "alarmModelName"))
    AcknowledgeAlarmActionRequest.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    AcknowledgeAlarmActionRequest.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    AcknowledgeAlarmActionRequest.struct_class = Types::AcknowledgeAlarmActionRequest

    AcknowledgeAlarmActionRequests.member = Shapes::ShapeRef.new(shape: AcknowledgeAlarmActionRequest)

    Alarm.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName"))
    Alarm.add_member(:alarm_model_version, Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: "alarmModelVersion"))
    Alarm.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    Alarm.add_member(:alarm_state, Shapes::ShapeRef.new(shape: AlarmState, location_name: "alarmState"))
    Alarm.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    Alarm.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    Alarm.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    Alarm.struct_class = Types::Alarm

    AlarmState.add_member(:state_name, Shapes::ShapeRef.new(shape: AlarmStateName, location_name: "stateName"))
    AlarmState.add_member(:rule_evaluation, Shapes::ShapeRef.new(shape: RuleEvaluation, location_name: "ruleEvaluation"))
    AlarmState.add_member(:customer_action, Shapes::ShapeRef.new(shape: CustomerAction, location_name: "customerAction"))
    AlarmState.add_member(:system_event, Shapes::ShapeRef.new(shape: SystemEvent, location_name: "systemEvent"))
    AlarmState.struct_class = Types::AlarmState

    AlarmSummaries.member = Shapes::ShapeRef.new(shape: AlarmSummary)

    AlarmSummary.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, location_name: "alarmModelName"))
    AlarmSummary.add_member(:alarm_model_version, Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: "alarmModelVersion"))
    AlarmSummary.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    AlarmSummary.add_member(:state_name, Shapes::ShapeRef.new(shape: AlarmStateName, location_name: "stateName"))
    AlarmSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AlarmSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    AlarmSummary.struct_class = Types::AlarmSummary

    BatchAcknowledgeAlarmRequest.add_member(:acknowledge_action_requests, Shapes::ShapeRef.new(shape: AcknowledgeAlarmActionRequests, required: true, location_name: "acknowledgeActionRequests"))
    BatchAcknowledgeAlarmRequest.struct_class = Types::BatchAcknowledgeAlarmRequest

    BatchAcknowledgeAlarmResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: BatchAlarmActionErrorEntries, location_name: "errorEntries"))
    BatchAcknowledgeAlarmResponse.struct_class = Types::BatchAcknowledgeAlarmResponse

    BatchAlarmActionErrorEntries.member = Shapes::ShapeRef.new(shape: BatchAlarmActionErrorEntry)

    BatchAlarmActionErrorEntry.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    BatchAlarmActionErrorEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    BatchAlarmActionErrorEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchAlarmActionErrorEntry.struct_class = Types::BatchAlarmActionErrorEntry

    BatchDeleteDetectorErrorEntries.member = Shapes::ShapeRef.new(shape: BatchDeleteDetectorErrorEntry)

    BatchDeleteDetectorErrorEntry.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "messageId"))
    BatchDeleteDetectorErrorEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    BatchDeleteDetectorErrorEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchDeleteDetectorErrorEntry.struct_class = Types::BatchDeleteDetectorErrorEntry

    BatchDeleteDetectorRequest.add_member(:detectors, Shapes::ShapeRef.new(shape: DeleteDetectorRequests, required: true, location_name: "detectors"))
    BatchDeleteDetectorRequest.struct_class = Types::BatchDeleteDetectorRequest

    BatchDeleteDetectorResponse.add_member(:batch_delete_detector_error_entries, Shapes::ShapeRef.new(shape: BatchDeleteDetectorErrorEntries, location_name: "batchDeleteDetectorErrorEntries"))
    BatchDeleteDetectorResponse.struct_class = Types::BatchDeleteDetectorResponse

    BatchDisableAlarmRequest.add_member(:disable_action_requests, Shapes::ShapeRef.new(shape: DisableAlarmActionRequests, required: true, location_name: "disableActionRequests"))
    BatchDisableAlarmRequest.struct_class = Types::BatchDisableAlarmRequest

    BatchDisableAlarmResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: BatchAlarmActionErrorEntries, location_name: "errorEntries"))
    BatchDisableAlarmResponse.struct_class = Types::BatchDisableAlarmResponse

    BatchEnableAlarmRequest.add_member(:enable_action_requests, Shapes::ShapeRef.new(shape: EnableAlarmActionRequests, required: true, location_name: "enableActionRequests"))
    BatchEnableAlarmRequest.struct_class = Types::BatchEnableAlarmRequest

    BatchEnableAlarmResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: BatchAlarmActionErrorEntries, location_name: "errorEntries"))
    BatchEnableAlarmResponse.struct_class = Types::BatchEnableAlarmResponse

    BatchPutMessageErrorEntries.member = Shapes::ShapeRef.new(shape: BatchPutMessageErrorEntry)

    BatchPutMessageErrorEntry.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "messageId"))
    BatchPutMessageErrorEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    BatchPutMessageErrorEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchPutMessageErrorEntry.struct_class = Types::BatchPutMessageErrorEntry

    BatchPutMessageRequest.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, required: true, location_name: "messages"))
    BatchPutMessageRequest.struct_class = Types::BatchPutMessageRequest

    BatchPutMessageResponse.add_member(:batch_put_message_error_entries, Shapes::ShapeRef.new(shape: BatchPutMessageErrorEntries, location_name: "BatchPutMessageErrorEntries"))
    BatchPutMessageResponse.struct_class = Types::BatchPutMessageResponse

    BatchResetAlarmRequest.add_member(:reset_action_requests, Shapes::ShapeRef.new(shape: ResetAlarmActionRequests, required: true, location_name: "resetActionRequests"))
    BatchResetAlarmRequest.struct_class = Types::BatchResetAlarmRequest

    BatchResetAlarmResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: BatchAlarmActionErrorEntries, location_name: "errorEntries"))
    BatchResetAlarmResponse.struct_class = Types::BatchResetAlarmResponse

    BatchSnoozeAlarmRequest.add_member(:snooze_action_requests, Shapes::ShapeRef.new(shape: SnoozeAlarmActionRequests, required: true, location_name: "snoozeActionRequests"))
    BatchSnoozeAlarmRequest.struct_class = Types::BatchSnoozeAlarmRequest

    BatchSnoozeAlarmResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: BatchAlarmActionErrorEntries, location_name: "errorEntries"))
    BatchSnoozeAlarmResponse.struct_class = Types::BatchSnoozeAlarmResponse

    BatchUpdateDetectorErrorEntries.member = Shapes::ShapeRef.new(shape: BatchUpdateDetectorErrorEntry)

    BatchUpdateDetectorErrorEntry.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "messageId"))
    BatchUpdateDetectorErrorEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    BatchUpdateDetectorErrorEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchUpdateDetectorErrorEntry.struct_class = Types::BatchUpdateDetectorErrorEntry

    BatchUpdateDetectorRequest.add_member(:detectors, Shapes::ShapeRef.new(shape: UpdateDetectorRequests, required: true, location_name: "detectors"))
    BatchUpdateDetectorRequest.struct_class = Types::BatchUpdateDetectorRequest

    BatchUpdateDetectorResponse.add_member(:batch_update_detector_error_entries, Shapes::ShapeRef.new(shape: BatchUpdateDetectorErrorEntries, location_name: "batchUpdateDetectorErrorEntries"))
    BatchUpdateDetectorResponse.struct_class = Types::BatchUpdateDetectorResponse

    CustomerAction.add_member(:action_name, Shapes::ShapeRef.new(shape: CustomerActionName, location_name: "actionName"))
    CustomerAction.add_member(:snooze_action_configuration, Shapes::ShapeRef.new(shape: SnoozeActionConfiguration, location_name: "snoozeActionConfiguration"))
    CustomerAction.add_member(:enable_action_configuration, Shapes::ShapeRef.new(shape: EnableActionConfiguration, location_name: "enableActionConfiguration"))
    CustomerAction.add_member(:disable_action_configuration, Shapes::ShapeRef.new(shape: DisableActionConfiguration, location_name: "disableActionConfiguration"))
    CustomerAction.add_member(:acknowledge_action_configuration, Shapes::ShapeRef.new(shape: AcknowledgeActionConfiguration, location_name: "acknowledgeActionConfiguration"))
    CustomerAction.add_member(:reset_action_configuration, Shapes::ShapeRef.new(shape: ResetActionConfiguration, location_name: "resetActionConfiguration"))
    CustomerAction.struct_class = Types::CustomerAction

    DeleteDetectorRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location_name: "messageId"))
    DeleteDetectorRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location_name: "detectorModelName"))
    DeleteDetectorRequest.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    DeleteDetectorRequest.struct_class = Types::DeleteDetectorRequest

    DeleteDetectorRequests.member = Shapes::ShapeRef.new(shape: DeleteDetectorRequest)

    DescribeAlarmRequest.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, required: true, location: "uri", location_name: "alarmModelName"))
    DescribeAlarmRequest.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location: "querystring", location_name: "keyValue"))
    DescribeAlarmRequest.struct_class = Types::DescribeAlarmRequest

    DescribeAlarmResponse.add_member(:alarm, Shapes::ShapeRef.new(shape: Alarm, location_name: "alarm"))
    DescribeAlarmResponse.struct_class = Types::DescribeAlarmResponse

    DescribeDetectorRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location: "uri", location_name: "detectorModelName"))
    DescribeDetectorRequest.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location: "querystring", location_name: "keyValue"))
    DescribeDetectorRequest.struct_class = Types::DescribeDetectorRequest

    DescribeDetectorResponse.add_member(:detector, Shapes::ShapeRef.new(shape: Detector, location_name: "detector"))
    DescribeDetectorResponse.struct_class = Types::DescribeDetectorResponse

    Detector.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName"))
    Detector.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    Detector.add_member(:detector_model_version, Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: "detectorModelVersion"))
    Detector.add_member(:state, Shapes::ShapeRef.new(shape: DetectorState, location_name: "state"))
    Detector.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    Detector.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    Detector.struct_class = Types::Detector

    DetectorState.add_member(:state_name, Shapes::ShapeRef.new(shape: StateName, required: true, location_name: "stateName"))
    DetectorState.add_member(:variables, Shapes::ShapeRef.new(shape: Variables, required: true, location_name: "variables"))
    DetectorState.add_member(:timers, Shapes::ShapeRef.new(shape: Timers, required: true, location_name: "timers"))
    DetectorState.struct_class = Types::DetectorState

    DetectorStateDefinition.add_member(:state_name, Shapes::ShapeRef.new(shape: StateName, required: true, location_name: "stateName"))
    DetectorStateDefinition.add_member(:variables, Shapes::ShapeRef.new(shape: VariableDefinitions, required: true, location_name: "variables"))
    DetectorStateDefinition.add_member(:timers, Shapes::ShapeRef.new(shape: TimerDefinitions, required: true, location_name: "timers"))
    DetectorStateDefinition.struct_class = Types::DetectorStateDefinition

    DetectorStateSummary.add_member(:state_name, Shapes::ShapeRef.new(shape: StateName, location_name: "stateName"))
    DetectorStateSummary.struct_class = Types::DetectorStateSummary

    DetectorSummaries.member = Shapes::ShapeRef.new(shape: DetectorSummary)

    DetectorSummary.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName"))
    DetectorSummary.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    DetectorSummary.add_member(:detector_model_version, Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: "detectorModelVersion"))
    DetectorSummary.add_member(:state, Shapes::ShapeRef.new(shape: DetectorStateSummary, location_name: "state"))
    DetectorSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DetectorSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    DetectorSummary.struct_class = Types::DetectorSummary

    DisableActionConfiguration.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    DisableActionConfiguration.struct_class = Types::DisableActionConfiguration

    DisableAlarmActionRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, required: true, location_name: "requestId"))
    DisableAlarmActionRequest.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, required: true, location_name: "alarmModelName"))
    DisableAlarmActionRequest.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    DisableAlarmActionRequest.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    DisableAlarmActionRequest.struct_class = Types::DisableAlarmActionRequest

    DisableAlarmActionRequests.member = Shapes::ShapeRef.new(shape: DisableAlarmActionRequest)

    EnableActionConfiguration.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    EnableActionConfiguration.struct_class = Types::EnableActionConfiguration

    EnableAlarmActionRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, required: true, location_name: "requestId"))
    EnableAlarmActionRequest.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, required: true, location_name: "alarmModelName"))
    EnableAlarmActionRequest.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    EnableAlarmActionRequest.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    EnableAlarmActionRequest.struct_class = Types::EnableAlarmActionRequest

    EnableAlarmActionRequests.member = Shapes::ShapeRef.new(shape: EnableAlarmActionRequest)

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ListAlarmsRequest.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, required: true, location: "uri", location_name: "alarmModelName"))
    ListAlarmsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAlarmsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAlarmsRequest.struct_class = Types::ListAlarmsRequest

    ListAlarmsResponse.add_member(:alarm_summaries, Shapes::ShapeRef.new(shape: AlarmSummaries, location_name: "alarmSummaries"))
    ListAlarmsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAlarmsResponse.struct_class = Types::ListAlarmsResponse

    ListDetectorsRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location: "uri", location_name: "detectorModelName"))
    ListDetectorsRequest.add_member(:state_name, Shapes::ShapeRef.new(shape: StateName, location: "querystring", location_name: "stateName"))
    ListDetectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDetectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDetectorsRequest.struct_class = Types::ListDetectorsRequest

    ListDetectorsResponse.add_member(:detector_summaries, Shapes::ShapeRef.new(shape: DetectorSummaries, location_name: "detectorSummaries"))
    ListDetectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDetectorsResponse.struct_class = Types::ListDetectorsResponse

    Message.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location_name: "messageId"))
    Message.add_member(:input_name, Shapes::ShapeRef.new(shape: EphemeralInputName, required: true, location_name: "inputName"))
    Message.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, required: true, location_name: "payload"))
    Message.add_member(:timestamp, Shapes::ShapeRef.new(shape: TimestampValue, location_name: "timestamp"))
    Message.struct_class = Types::Message

    Messages.member = Shapes::ShapeRef.new(shape: Message)

    ResetActionConfiguration.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    ResetActionConfiguration.struct_class = Types::ResetActionConfiguration

    ResetAlarmActionRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, required: true, location_name: "requestId"))
    ResetAlarmActionRequest.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, required: true, location_name: "alarmModelName"))
    ResetAlarmActionRequest.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    ResetAlarmActionRequest.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    ResetAlarmActionRequest.struct_class = Types::ResetAlarmActionRequest

    ResetAlarmActionRequests.member = Shapes::ShapeRef.new(shape: ResetAlarmActionRequest)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RuleEvaluation.add_member(:simple_rule_evaluation, Shapes::ShapeRef.new(shape: SimpleRuleEvaluation, location_name: "simpleRuleEvaluation"))
    RuleEvaluation.struct_class = Types::RuleEvaluation

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SimpleRuleEvaluation.add_member(:input_property_value, Shapes::ShapeRef.new(shape: InputPropertyValue, location_name: "inputPropertyValue"))
    SimpleRuleEvaluation.add_member(:operator, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "operator"))
    SimpleRuleEvaluation.add_member(:threshold_value, Shapes::ShapeRef.new(shape: ThresholdValue, location_name: "thresholdValue"))
    SimpleRuleEvaluation.struct_class = Types::SimpleRuleEvaluation

    SnoozeActionConfiguration.add_member(:snooze_duration, Shapes::ShapeRef.new(shape: SnoozeDuration, location_name: "snoozeDuration"))
    SnoozeActionConfiguration.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    SnoozeActionConfiguration.struct_class = Types::SnoozeActionConfiguration

    SnoozeAlarmActionRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, required: true, location_name: "requestId"))
    SnoozeAlarmActionRequest.add_member(:alarm_model_name, Shapes::ShapeRef.new(shape: AlarmModelName, required: true, location_name: "alarmModelName"))
    SnoozeAlarmActionRequest.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    SnoozeAlarmActionRequest.add_member(:note, Shapes::ShapeRef.new(shape: Note, location_name: "note"))
    SnoozeAlarmActionRequest.add_member(:snooze_duration, Shapes::ShapeRef.new(shape: SnoozeDuration, required: true, location_name: "snoozeDuration"))
    SnoozeAlarmActionRequest.struct_class = Types::SnoozeAlarmActionRequest

    SnoozeAlarmActionRequests.member = Shapes::ShapeRef.new(shape: SnoozeAlarmActionRequest)

    StateChangeConfiguration.add_member(:trigger_type, Shapes::ShapeRef.new(shape: TriggerType, location_name: "triggerType"))
    StateChangeConfiguration.struct_class = Types::StateChangeConfiguration

    SystemEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "eventType"))
    SystemEvent.add_member(:state_change_configuration, Shapes::ShapeRef.new(shape: StateChangeConfiguration, location_name: "stateChangeConfiguration"))
    SystemEvent.struct_class = Types::SystemEvent

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Timer.add_member(:name, Shapes::ShapeRef.new(shape: TimerName, required: true, location_name: "name"))
    Timer.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    Timer.struct_class = Types::Timer

    TimerDefinition.add_member(:name, Shapes::ShapeRef.new(shape: TimerName, required: true, location_name: "name"))
    TimerDefinition.add_member(:seconds, Shapes::ShapeRef.new(shape: Seconds, required: true, location_name: "seconds"))
    TimerDefinition.struct_class = Types::TimerDefinition

    TimerDefinitions.member = Shapes::ShapeRef.new(shape: TimerDefinition)

    Timers.member = Shapes::ShapeRef.new(shape: Timer)

    TimestampValue.add_member(:time_in_millis, Shapes::ShapeRef.new(shape: EpochMilliTimestamp, location_name: "timeInMillis"))
    TimestampValue.struct_class = Types::TimestampValue

    UpdateDetectorRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location_name: "messageId"))
    UpdateDetectorRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location_name: "detectorModelName"))
    UpdateDetectorRequest.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    UpdateDetectorRequest.add_member(:state, Shapes::ShapeRef.new(shape: DetectorStateDefinition, required: true, location_name: "state"))
    UpdateDetectorRequest.struct_class = Types::UpdateDetectorRequest

    UpdateDetectorRequests.member = Shapes::ShapeRef.new(shape: UpdateDetectorRequest)

    Variable.add_member(:name, Shapes::ShapeRef.new(shape: VariableName, required: true, location_name: "name"))
    Variable.add_member(:value, Shapes::ShapeRef.new(shape: VariableValue, required: true, location_name: "value"))
    Variable.struct_class = Types::Variable

    VariableDefinition.add_member(:name, Shapes::ShapeRef.new(shape: VariableName, required: true, location_name: "name"))
    VariableDefinition.add_member(:value, Shapes::ShapeRef.new(shape: VariableValue, required: true, location_name: "value"))
    VariableDefinition.struct_class = Types::VariableDefinition

    VariableDefinitions.member = Shapes::ShapeRef.new(shape: VariableDefinition)

    Variables.member = Shapes::ShapeRef.new(shape: Variable)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-10-23"

      api.metadata = {
        "apiVersion" => "2018-10-23",
        "endpointPrefix" => "data.iotevents",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT Events Data",
        "serviceId" => "IoT Events Data",
        "signatureVersion" => "v4",
        "signingName" => "ioteventsdata",
        "uid" => "iotevents-data-2018-10-23",
      }

      api.add_operation(:batch_acknowledge_alarm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAcknowledgeAlarm"
        o.http_method = "POST"
        o.http_request_uri = "/alarms/acknowledge"
        o.input = Shapes::ShapeRef.new(shape: BatchAcknowledgeAlarmRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchAcknowledgeAlarmResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_delete_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteDetector"
        o.http_method = "POST"
        o.http_request_uri = "/detectors/delete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_disable_alarm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisableAlarm"
        o.http_method = "POST"
        o.http_request_uri = "/alarms/disable"
        o.input = Shapes::ShapeRef.new(shape: BatchDisableAlarmRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisableAlarmResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_enable_alarm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchEnableAlarm"
        o.http_method = "POST"
        o.http_request_uri = "/alarms/enable"
        o.input = Shapes::ShapeRef.new(shape: BatchEnableAlarmRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchEnableAlarmResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_put_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutMessage"
        o.http_method = "POST"
        o.http_request_uri = "/inputs/messages"
        o.input = Shapes::ShapeRef.new(shape: BatchPutMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_reset_alarm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchResetAlarm"
        o.http_method = "POST"
        o.http_request_uri = "/alarms/reset"
        o.input = Shapes::ShapeRef.new(shape: BatchResetAlarmRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchResetAlarmResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_snooze_alarm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchSnoozeAlarm"
        o.http_method = "POST"
        o.http_request_uri = "/alarms/snooze"
        o.input = Shapes::ShapeRef.new(shape: BatchSnoozeAlarmRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchSnoozeAlarmResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_update_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateDetector"
        o.http_method = "POST"
        o.http_request_uri = "/detectors"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_alarm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlarm"
        o.http_method = "GET"
        o.http_request_uri = "/alarms/{alarmModelName}/keyValues/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAlarmRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAlarmResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDetector"
        o.http_method = "GET"
        o.http_request_uri = "/detectors/{detectorModelName}/keyValues/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_alarms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAlarms"
        o.http_method = "GET"
        o.http_request_uri = "/alarms/{alarmModelName}"
        o.input = Shapes::ShapeRef.new(shape: ListAlarmsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAlarmsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_detectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDetectors"
        o.http_method = "GET"
        o.http_request_uri = "/detectors/{detectorModelName}"
        o.input = Shapes::ShapeRef.new(shape: ListDetectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDetectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)
    end

  end
end
