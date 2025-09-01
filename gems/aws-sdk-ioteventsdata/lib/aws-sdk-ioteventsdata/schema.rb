# frozen_string_literal: true

# This is generated code!

module Aws::IoTEventsData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcknowledgeActionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#AcknowledgeActionConfiguration', name: 'AcknowledgeActionConfiguration')
    AcknowledgeAlarmActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#AcknowledgeAlarmActionRequest', name: 'AcknowledgeAlarmActionRequest')
    AcknowledgeAlarmActionRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#AcknowledgeAlarmActionRequests', name: 'AcknowledgeAlarmActionRequests', traits: {"smithy.api#length" => {"min" => 1}})
    Alarm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#Alarm', name: 'Alarm')
    AlarmModelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#AlarmModelName', name: 'AlarmModelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    AlarmModelVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#AlarmModelVersion', name: 'AlarmModelVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AlarmState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#AlarmState', name: 'AlarmState')
    AlarmStateName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ioteventsdata#AlarmStateName', name: 'AlarmStateName')
    AlarmSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#AlarmSummaries', name: 'AlarmSummaries')
    AlarmSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#AlarmSummary', name: 'AlarmSummary')
    BatchAcknowledgeAlarmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchAcknowledgeAlarmRequest', name: 'BatchAcknowledgeAlarmRequest')
    BatchAcknowledgeAlarmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchAcknowledgeAlarmResponse', name: 'BatchAcknowledgeAlarmResponse')
    BatchAlarmActionErrorEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#BatchAlarmActionErrorEntries', name: 'BatchAlarmActionErrorEntries')
    BatchAlarmActionErrorEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchAlarmActionErrorEntry', name: 'BatchAlarmActionErrorEntry')
    BatchDeleteDetectorErrorEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#BatchDeleteDetectorErrorEntries', name: 'BatchDeleteDetectorErrorEntries')
    BatchDeleteDetectorErrorEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchDeleteDetectorErrorEntry', name: 'BatchDeleteDetectorErrorEntry')
    BatchDeleteDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchDeleteDetectorRequest', name: 'BatchDeleteDetectorRequest')
    BatchDeleteDetectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchDeleteDetectorResponse', name: 'BatchDeleteDetectorResponse')
    BatchDisableAlarmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchDisableAlarmRequest', name: 'BatchDisableAlarmRequest')
    BatchDisableAlarmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchDisableAlarmResponse', name: 'BatchDisableAlarmResponse')
    BatchEnableAlarmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchEnableAlarmRequest', name: 'BatchEnableAlarmRequest')
    BatchEnableAlarmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchEnableAlarmResponse', name: 'BatchEnableAlarmResponse')
    BatchPutMessageErrorEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#BatchPutMessageErrorEntries', name: 'BatchPutMessageErrorEntries')
    BatchPutMessageErrorEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchPutMessageErrorEntry', name: 'BatchPutMessageErrorEntry')
    BatchPutMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchPutMessageRequest', name: 'BatchPutMessageRequest')
    BatchPutMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchPutMessageResponse', name: 'BatchPutMessageResponse')
    BatchResetAlarmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchResetAlarmRequest', name: 'BatchResetAlarmRequest')
    BatchResetAlarmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchResetAlarmResponse', name: 'BatchResetAlarmResponse')
    BatchSnoozeAlarmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchSnoozeAlarmRequest', name: 'BatchSnoozeAlarmRequest')
    BatchSnoozeAlarmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchSnoozeAlarmResponse', name: 'BatchSnoozeAlarmResponse')
    BatchUpdateDetectorErrorEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#BatchUpdateDetectorErrorEntries', name: 'BatchUpdateDetectorErrorEntries')
    BatchUpdateDetectorErrorEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchUpdateDetectorErrorEntry', name: 'BatchUpdateDetectorErrorEntry')
    BatchUpdateDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchUpdateDetectorRequest', name: 'BatchUpdateDetectorRequest')
    BatchUpdateDetectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#BatchUpdateDetectorResponse', name: 'BatchUpdateDetectorResponse')
    ComparisonOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ioteventsdata#ComparisonOperator', name: 'ComparisonOperator')
    CustomerAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#CustomerAction', name: 'CustomerAction')
    CustomerActionName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ioteventsdata#CustomerActionName', name: 'CustomerActionName')
    DeleteDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#DeleteDetectorRequest', name: 'DeleteDetectorRequest')
    DeleteDetectorRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#DeleteDetectorRequests', name: 'DeleteDetectorRequests', traits: {"smithy.api#length" => {"min" => 1}})
    DescribeAlarmRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#DescribeAlarmRequest', name: 'DescribeAlarmRequest')
    DescribeAlarmResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#DescribeAlarmResponse', name: 'DescribeAlarmResponse')
    DescribeDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#DescribeDetectorRequest', name: 'DescribeDetectorRequest')
    DescribeDetectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#DescribeDetectorResponse', name: 'DescribeDetectorResponse')
    Detector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#Detector', name: 'Detector')
    DetectorModelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#DetectorModelName', name: 'DetectorModelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    DetectorModelVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#DetectorModelVersion', name: 'DetectorModelVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DetectorState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#DetectorState', name: 'DetectorState')
    DetectorStateDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#DetectorStateDefinition', name: 'DetectorStateDefinition')
    DetectorStateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#DetectorStateSummary', name: 'DetectorStateSummary')
    DetectorSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#DetectorSummaries', name: 'DetectorSummaries')
    DetectorSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#DetectorSummary', name: 'DetectorSummary')
    DisableActionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#DisableActionConfiguration', name: 'DisableActionConfiguration')
    DisableAlarmActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#DisableAlarmActionRequest', name: 'DisableAlarmActionRequest')
    DisableAlarmActionRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#DisableAlarmActionRequests', name: 'DisableAlarmActionRequests', traits: {"smithy.api#length" => {"min" => 1}})
    EnableActionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#EnableActionConfiguration', name: 'EnableActionConfiguration')
    EnableAlarmActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#EnableAlarmActionRequest', name: 'EnableAlarmActionRequest')
    EnableAlarmActionRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#EnableAlarmActionRequests', name: 'EnableAlarmActionRequests', traits: {"smithy.api#length" => {"min" => 1}})
    EphemeralInputName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#EphemeralInputName', name: 'EphemeralInputName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_.-]*$"})
    EpochMilliTimestamp = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ioteventsdata#EpochMilliTimestamp', name: 'EpochMilliTimestamp', traits: {"smithy.api#range" => {"min" => 1, "max" => 9223372036854775807}})
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ioteventsdata#ErrorCode', name: 'ErrorCode')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#ErrorMessage', name: 'ErrorMessage')
    EventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ioteventsdata#EventType', name: 'EventType')
    InputPropertyValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#InputPropertyValue', name: 'InputPropertyValue')
    InternalFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KeyValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#KeyValue', name: 'KeyValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_:]+$"})
    ListAlarmsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#ListAlarmsRequest', name: 'ListAlarmsRequest')
    ListAlarmsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#ListAlarmsResponse', name: 'ListAlarmsResponse')
    ListDetectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#ListDetectorsRequest', name: 'ListDetectorsRequest')
    ListDetectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#ListDetectorsResponse', name: 'ListDetectorsResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ioteventsdata#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    Message = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#Message', name: 'Message')
    MessageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#MessageId', name: 'MessageId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    Messages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#Messages', name: 'Messages', traits: {"smithy.api#length" => {"min" => 1}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#NextToken', name: 'NextToken')
    Note = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#Note', name: 'Note', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Payload = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.ioteventsdata#Payload', name: 'Payload')
    RequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#RequestId', name: 'RequestId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ResetActionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#ResetActionConfiguration', name: 'ResetActionConfiguration')
    ResetAlarmActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#ResetAlarmActionRequest', name: 'ResetAlarmActionRequest')
    ResetAlarmActionRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#ResetAlarmActionRequests', name: 'ResetAlarmActionRequests', traits: {"smithy.api#length" => {"min" => 1}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RuleEvaluation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#RuleEvaluation', name: 'RuleEvaluation')
    Seconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ioteventsdata#Seconds', name: 'Seconds')
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    Severity = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ioteventsdata#Severity', name: 'Severity', traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    SimpleRuleEvaluation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#SimpleRuleEvaluation', name: 'SimpleRuleEvaluation')
    SnoozeActionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#SnoozeActionConfiguration', name: 'SnoozeActionConfiguration')
    SnoozeAlarmActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#SnoozeAlarmActionRequest', name: 'SnoozeAlarmActionRequest')
    SnoozeAlarmActionRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#SnoozeAlarmActionRequests', name: 'SnoozeAlarmActionRequests', traits: {"smithy.api#length" => {"min" => 1}})
    SnoozeDuration = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ioteventsdata#SnoozeDuration', name: 'SnoozeDuration')
    StateChangeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#StateChangeConfiguration', name: 'StateChangeConfiguration')
    StateName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#StateName', name: 'StateName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SystemEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#SystemEvent', name: 'SystemEvent')
    ThresholdValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#ThresholdValue', name: 'ThresholdValue')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#Timer', name: 'Timer')
    TimerDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#TimerDefinition', name: 'TimerDefinition')
    TimerDefinitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#TimerDefinitions', name: 'TimerDefinitions')
    TimerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#TimerName', name: 'TimerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Timers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#Timers', name: 'Timers')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ioteventsdata#Timestamp', name: 'Timestamp')
    TimestampValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#TimestampValue', name: 'TimestampValue')
    TriggerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ioteventsdata#TriggerType', name: 'TriggerType')
    UpdateDetectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#UpdateDetectorRequest', name: 'UpdateDetectorRequest')
    UpdateDetectorRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#UpdateDetectorRequests', name: 'UpdateDetectorRequests', traits: {"smithy.api#length" => {"min" => 1}})
    Variable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#Variable', name: 'Variable')
    VariableDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ioteventsdata#VariableDefinition', name: 'VariableDefinition')
    VariableDefinitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#VariableDefinitions', name: 'VariableDefinitions')
    VariableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#VariableName', name: 'VariableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    VariableValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ioteventsdata#VariableValue', name: 'VariableValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Variables = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ioteventsdata#Variables', name: 'Variables')

    AcknowledgeActionConfiguration.add_member(:note, Smithy::Schema::Shapes::ShapeRef.new(shape: Note, location_name: 'note', traits: {"smithy.api#documentation" => "<p>The note that you can leave when you acknowledge the alarm.</p>"}))
    AcknowledgeActionConfiguration.type = Types::AcknowledgeActionConfiguration
    AcknowledgeAlarmActionRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The request ID. Each ID must be unique within each batch.</p>", "smithy.api#required" => {}}))
    AcknowledgeAlarmActionRequest.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>", "smithy.api#required" => {}}))
    AcknowledgeAlarmActionRequest.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the key used as a filter to select only the alarms associated with the \n<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>"}))
    AcknowledgeAlarmActionRequest.add_member(:note, Smithy::Schema::Shapes::ShapeRef.new(shape: Note, location_name: 'note', traits: {"smithy.api#documentation" => "<p>The note that you can leave when you acknowledge the alarm.</p>"}))
    AcknowledgeAlarmActionRequest.type = Types::AcknowledgeAlarmActionRequest
    AcknowledgeAlarmActionRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgeAlarmActionRequest)
    Alarm.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>"}))
    Alarm.add_member(:alarm_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: 'alarmModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the alarm model.</p>"}))
    Alarm.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the key used as a filter to select only the alarms associated with the \n<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>"}))
    Alarm.add_member(:alarm_state, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmState, location_name: 'alarmState', traits: {"smithy.api#documentation" => "<p>Contains information about the current state of the alarm.</p>"}))
    Alarm.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>A non-negative integer that reflects the severity level of the alarm.</p>"}))
    Alarm.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the alarm was created, in the Unix epoch format.</p>"}))
    Alarm.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time the alarm was last updated, in the Unix epoch format.</p>"}))
    Alarm.type = Types::Alarm
    AlarmState.add_member(:state_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmStateName, location_name: 'stateName', traits: {"smithy.api#documentation" => "<p>The name of the alarm state. The state name can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DISABLED</code> - When the alarm is in the <code>DISABLED</code> state, \n\t\tit isn't ready to evaluate data. To enable the alarm, \n\t\tyou must change the alarm to the <code>NORMAL</code> state.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NORMAL</code> - When the alarm is in the <code>NORMAL</code> state, \n\t\tit's ready to evaluate data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACTIVE</code> - If the alarm is in the <code>ACTIVE</code> state, \n\t\tthe alarm is invoked.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACKNOWLEDGED</code> - When the alarm is in the <code>ACKNOWLEDGED</code> state, \n\t\tthe alarm was invoked and you acknowledged the alarm.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SNOOZE_DISABLED</code> - When the alarm is in the <code>SNOOZE_DISABLED</code> state, \n\t\tthe alarm is disabled for a specified period of time. After the snooze time, \n\t\tthe alarm automatically changes to the <code>NORMAL</code> state. </p>\n            </li>\n            <li>\n               <p>\n                  <code>LATCHED</code> - When the alarm is in the <code>LATCHED</code> state, \n\t\tthe alarm was invoked. However, the data that the alarm is currently evaluating is within the specified range. \n\t\tTo change the alarm to the <code>NORMAL</code> state, you must acknowledge the alarm.</p>\n            </li>\n         </ul>"}))
    AlarmState.add_member(:rule_evaluation, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleEvaluation, location_name: 'ruleEvaluation', traits: {"smithy.api#documentation" => "<p>Information needed to evaluate data.</p>"}))
    AlarmState.add_member(:customer_action, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAction, location_name: 'customerAction', traits: {"smithy.api#documentation" => "<p>Contains information about the action that you can take to respond to the alarm.</p>"}))
    AlarmState.add_member(:system_event, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemEvent, location_name: 'systemEvent', traits: {"smithy.api#documentation" => "<p>Contains information about alarm state changes.</p>"}))
    AlarmState.type = Types::AlarmState
    AlarmStateName.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AlarmStateName.add_member(:normal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NORMAL', traits: {"smithy.api#enumValue" => "NORMAL"}))
    AlarmStateName.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AlarmStateName.add_member(:acknowledged, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACKNOWLEDGED', traits: {"smithy.api#enumValue" => "ACKNOWLEDGED"}))
    AlarmStateName.add_member(:snooze_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNOOZE_DISABLED', traits: {"smithy.api#enumValue" => "SNOOZE_DISABLED"}))
    AlarmStateName.add_member(:latched, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LATCHED', traits: {"smithy.api#enumValue" => "LATCHED"}))
    AlarmSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmSummary)
    AlarmSummary.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>"}))
    AlarmSummary.add_member(:alarm_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelVersion, location_name: 'alarmModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the alarm model.</p>"}))
    AlarmSummary.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the key used as a filter to select only the alarms associated with the \n<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>"}))
    AlarmSummary.add_member(:state_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmStateName, location_name: 'stateName', traits: {"smithy.api#documentation" => "<p>The name of the alarm state. The state name can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DISABLED</code> - When the alarm is in the <code>DISABLED</code> state, \n\t\tit isn't ready to evaluate data. To enable the alarm, \n\t\tyou must change the alarm to the <code>NORMAL</code> state.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NORMAL</code> - When the alarm is in the <code>NORMAL</code> state, \n\t\tit's ready to evaluate data.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACTIVE</code> - If the alarm is in the <code>ACTIVE</code> state, \n\t\tthe alarm is invoked.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACKNOWLEDGED</code> - When the alarm is in the <code>ACKNOWLEDGED</code> state, \n\t\tthe alarm was invoked and you acknowledged the alarm.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SNOOZE_DISABLED</code> - When the alarm is in the <code>SNOOZE_DISABLED</code> state, \n\t\tthe alarm is disabled for a specified period of time. After the snooze time, \n\t\tthe alarm automatically changes to the <code>NORMAL</code> state. </p>\n            </li>\n            <li>\n               <p>\n                  <code>LATCHED</code> - When the alarm is in the <code>LATCHED</code> state, \n\t\tthe alarm was invoked. However, the data that the alarm is currently evaluating is within the specified range. \n\t\tTo change the alarm to the <code>NORMAL</code> state, you must acknowledge the alarm.</p>\n            </li>\n         </ul>"}))
    AlarmSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the alarm was created, in the Unix epoch format.</p>"}))
    AlarmSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time the alarm was last updated, in the Unix epoch format.</p>"}))
    AlarmSummary.type = Types::AlarmSummary
    BatchAcknowledgeAlarmRequest.add_member(:acknowledge_action_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgeAlarmActionRequests, location_name: 'acknowledgeActionRequests', traits: {"smithy.api#documentation" => "<p>The list of acknowledge action requests. You can specify up to 10 requests per operation.</p>", "smithy.api#required" => {}}))
    BatchAcknowledgeAlarmRequest.type = Types::BatchAcknowledgeAlarmRequest
    BatchAcknowledgeAlarmResponse.add_member(:error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAlarmActionErrorEntries, location_name: 'errorEntries', traits: {"smithy.api#documentation" => "<p>A list of errors associated with the request, or <code>null</code> if there are no errors. \nEach error entry contains an entry ID that helps you identify the entry that failed.</p>"}))
    BatchAcknowledgeAlarmResponse.type = Types::BatchAcknowledgeAlarmResponse
    BatchAlarmActionErrorEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAlarmActionErrorEntry)
    BatchAlarmActionErrorEntry.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The request ID. Each ID must be unique within each batch.</p>"}))
    BatchAlarmActionErrorEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    BatchAlarmActionErrorEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>A message that describes the error.</p>"}))
    BatchAlarmActionErrorEntry.type = Types::BatchAlarmActionErrorEntry
    BatchDeleteDetectorErrorEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDetectorErrorEntry)
    BatchDeleteDetectorErrorEntry.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The ID of the message that caused the error. (See the value of the <code>\"messageId\"</code> in the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchDeleteDetector.html#iotevents-iotevents-data_BatchDeleteDetector-request-detectors\">detectors</a> object of the <code>DeleteDetectorRequest</code>.)</p>"}))
    BatchDeleteDetectorErrorEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    BatchDeleteDetectorErrorEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>A message that describes the error.</p>"}))
    BatchDeleteDetectorErrorEntry.type = Types::BatchDeleteDetectorErrorEntry
    BatchDeleteDetectorRequest.add_member(:detectors, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDetectorRequests, location_name: 'detectors', traits: {"smithy.api#documentation" => "<p>The list of one or more detectors to be deleted.</p>", "smithy.api#required" => {}}))
    BatchDeleteDetectorRequest.type = Types::BatchDeleteDetectorRequest
    BatchDeleteDetectorResponse.add_member(:batch_delete_detector_error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDetectorErrorEntries, location_name: 'batchDeleteDetectorErrorEntries', traits: {"smithy.api#documentation" => "<p>A list of errors associated with the request, or an empty array (<code>[]</code>) if there are no errors. Each error entry contains a <code>messageId</code> that helps you identify the entry that failed.</p>"}))
    BatchDeleteDetectorResponse.type = Types::BatchDeleteDetectorResponse
    BatchDisableAlarmRequest.add_member(:disable_action_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: DisableAlarmActionRequests, location_name: 'disableActionRequests', traits: {"smithy.api#documentation" => "<p>The list of disable action requests. You can specify up to 10 requests per operation.</p>", "smithy.api#required" => {}}))
    BatchDisableAlarmRequest.type = Types::BatchDisableAlarmRequest
    BatchDisableAlarmResponse.add_member(:error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAlarmActionErrorEntries, location_name: 'errorEntries', traits: {"smithy.api#documentation" => "<p>A list of errors associated with the request, or <code>null</code> if there are no errors. \nEach error entry contains an entry ID that helps you identify the entry that failed.</p>"}))
    BatchDisableAlarmResponse.type = Types::BatchDisableAlarmResponse
    BatchEnableAlarmRequest.add_member(:enable_action_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAlarmActionRequests, location_name: 'enableActionRequests', traits: {"smithy.api#documentation" => "<p>The list of enable action requests. You can specify up to 10 requests per operation.</p>", "smithy.api#required" => {}}))
    BatchEnableAlarmRequest.type = Types::BatchEnableAlarmRequest
    BatchEnableAlarmResponse.add_member(:error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAlarmActionErrorEntries, location_name: 'errorEntries', traits: {"smithy.api#documentation" => "<p>A list of errors associated with the request, or <code>null</code> if there are no errors. \nEach error entry contains an entry ID that helps you identify the entry that failed.</p>"}))
    BatchEnableAlarmResponse.type = Types::BatchEnableAlarmResponse
    BatchPutMessageErrorEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutMessageErrorEntry)
    BatchPutMessageErrorEntry.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The ID of the message that caused the error. (See the value corresponding to the\n        <code>\"messageId\"</code> key in the <code>\"message\"</code> object.)</p>"}))
    BatchPutMessageErrorEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    BatchPutMessageErrorEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>A message that describes the error.</p>"}))
    BatchPutMessageErrorEntry.type = Types::BatchPutMessageErrorEntry
    BatchPutMessageRequest.add_member(:messages, Smithy::Schema::Shapes::ShapeRef.new(shape: Messages, location_name: 'messages', traits: {"smithy.api#documentation" => "<p>The list of messages to send. Each message has the following format: <code>'{ \"messageId\":\n        \"string\", \"inputName\": \"string\", \"payload\": \"string\"}'</code>\n         </p>", "smithy.api#required" => {}}))
    BatchPutMessageRequest.type = Types::BatchPutMessageRequest
    BatchPutMessageResponse.add_member(:batch_put_message_error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutMessageErrorEntries, location_name: 'BatchPutMessageErrorEntries', traits: {"smithy.api#documentation" => "<p>A list of any errors encountered when sending the messages.</p>"}))
    BatchPutMessageResponse.type = Types::BatchPutMessageResponse
    BatchResetAlarmRequest.add_member(:reset_action_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: ResetAlarmActionRequests, location_name: 'resetActionRequests', traits: {"smithy.api#documentation" => "<p>The list of reset action requests. You can specify up to 10 requests per operation.</p>", "smithy.api#required" => {}}))
    BatchResetAlarmRequest.type = Types::BatchResetAlarmRequest
    BatchResetAlarmResponse.add_member(:error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAlarmActionErrorEntries, location_name: 'errorEntries', traits: {"smithy.api#documentation" => "<p>A list of errors associated with the request, or <code>null</code> if there are no errors. \nEach error entry contains an entry ID that helps you identify the entry that failed.</p>"}))
    BatchResetAlarmResponse.type = Types::BatchResetAlarmResponse
    BatchSnoozeAlarmRequest.add_member(:snooze_action_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: SnoozeAlarmActionRequests, location_name: 'snoozeActionRequests', traits: {"smithy.api#documentation" => "<p>The list of snooze action requests. You can specify up to 10 requests per operation.</p>", "smithy.api#required" => {}}))
    BatchSnoozeAlarmRequest.type = Types::BatchSnoozeAlarmRequest
    BatchSnoozeAlarmResponse.add_member(:error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAlarmActionErrorEntries, location_name: 'errorEntries', traits: {"smithy.api#documentation" => "<p>A list of errors associated with the request, or <code>null</code> if there are no errors. \nEach error entry contains an entry ID that helps you identify the entry that failed.</p>"}))
    BatchSnoozeAlarmResponse.type = Types::BatchSnoozeAlarmResponse
    BatchUpdateDetectorErrorEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateDetectorErrorEntry)
    BatchUpdateDetectorErrorEntry.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The <code>\"messageId\"</code> of the update request that caused the error. (The value of\n      the <code>\"messageId\"</code> in the update request <code>\"Detector\"</code> object.)</p>"}))
    BatchUpdateDetectorErrorEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    BatchUpdateDetectorErrorEntry.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>A message that describes the error.</p>"}))
    BatchUpdateDetectorErrorEntry.type = Types::BatchUpdateDetectorErrorEntry
    BatchUpdateDetectorRequest.add_member(:detectors, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDetectorRequests, location_name: 'detectors', traits: {"smithy.api#documentation" => "<p>The list of detectors (instances) to update, along with the values to update.</p>", "smithy.api#required" => {}}))
    BatchUpdateDetectorRequest.type = Types::BatchUpdateDetectorRequest
    BatchUpdateDetectorResponse.add_member(:batch_update_detector_error_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateDetectorErrorEntries, location_name: 'batchUpdateDetectorErrorEntries', traits: {"smithy.api#documentation" => "<p>A list of those detector updates that resulted in errors. (If an error is listed here, the\n      specific update did not occur.)</p>"}))
    BatchUpdateDetectorResponse.type = Types::BatchUpdateDetectorResponse
    ComparisonOperator.add_member(:greater, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER', traits: {"smithy.api#enumValue" => "GREATER"}))
    ComparisonOperator.add_member(:greater_or_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_OR_EQUAL', traits: {"smithy.api#enumValue" => "GREATER_OR_EQUAL"}))
    ComparisonOperator.add_member(:less, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS', traits: {"smithy.api#enumValue" => "LESS"}))
    ComparisonOperator.add_member(:less_or_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_OR_EQUAL', traits: {"smithy.api#enumValue" => "LESS_OR_EQUAL"}))
    ComparisonOperator.add_member(:equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUAL', traits: {"smithy.api#enumValue" => "EQUAL"}))
    ComparisonOperator.add_member(:not_equal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUAL', traits: {"smithy.api#enumValue" => "NOT_EQUAL"}))
    CustomerAction.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerActionName, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>The name of the action. The action name can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SNOOZE</code> - When you snooze the alarm, the alarm state changes to <code>SNOOZE_DISABLED</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ENABLE</code> - When you enable the alarm, the alarm state changes to <code>NORMAL</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLE</code> - When you disable the alarm, the alarm state changes to <code>DISABLED</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACKNOWLEDGE</code> - When you acknowledge the alarm, the alarm state changes to <code>ACKNOWLEDGED</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RESET</code> - When you reset the alarm, the alarm state changes to <code>NORMAL</code>.</p>\n            </li>\n         </ul>\n         <p>For more information, see the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_AlarmState.html\">AlarmState</a> API.</p>"}))
    CustomerAction.add_member(:snooze_action_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SnoozeActionConfiguration, location_name: 'snoozeActionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of a snooze action.</p>"}))
    CustomerAction.add_member(:enable_action_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableActionConfiguration, location_name: 'enableActionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of an enable action.</p>"}))
    CustomerAction.add_member(:disable_action_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DisableActionConfiguration, location_name: 'disableActionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of a disable action.</p>"}))
    CustomerAction.add_member(:acknowledge_action_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgeActionConfiguration, location_name: 'acknowledgeActionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of an acknowledge action.</p>"}))
    CustomerAction.add_member(:reset_action_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ResetActionConfiguration, location_name: 'resetActionConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of a reset action.</p>"}))
    CustomerAction.type = Types::CustomerAction
    CustomerActionName.add_member(:snooze, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNOOZE', traits: {"smithy.api#enumValue" => "SNOOZE"}))
    CustomerActionName.add_member(:enable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE', traits: {"smithy.api#enumValue" => "ENABLE"}))
    CustomerActionName.add_member(:disable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLE', traits: {"smithy.api#enumValue" => "DISABLE"}))
    CustomerActionName.add_member(:acknowledge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACKNOWLEDGE', traits: {"smithy.api#enumValue" => "ACKNOWLEDGE"}))
    CustomerActionName.add_member(:reset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESET', traits: {"smithy.api#enumValue" => "RESET"}))
    DeleteDetectorRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The ID to assign to the <code>DeleteDetectorRequest</code>. Each <code>\"messageId\"</code> must be unique within each batch sent.</p>", "smithy.api#required" => {}}))
    DeleteDetectorRequest.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model that was used to create the detector instance.</p>", "smithy.api#required" => {}}))
    DeleteDetectorRequest.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateDetectorModel.html#iotevents-CreateDetectorModel-request-key\">key</a> used to identify the detector. </p>"}))
    DeleteDetectorRequest.type = Types::DeleteDetectorRequest
    DeleteDetectorRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDetectorRequest)
    DescribeAlarmRequest.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAlarmRequest.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the key used as a filter to select only the alarms associated with the \n<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>", "smithy.api#httpQuery" => "keyValue"}))
    DescribeAlarmRequest.type = Types::DescribeAlarmRequest
    DescribeAlarmResponse.add_member(:alarm, Smithy::Schema::Shapes::ShapeRef.new(shape: Alarm, location_name: 'alarm', traits: {"smithy.api#documentation" => "<p>Contains information about an alarm.</p>"}))
    DescribeAlarmResponse.type = Types::DescribeAlarmResponse
    DescribeDetectorRequest.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model whose detectors (instances) you want information\n      about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDetectorRequest.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>A filter used to limit results to detectors (instances) created because of the given key\n      ID.</p>", "smithy.api#httpQuery" => "keyValue"}))
    DescribeDetectorRequest.type = Types::DescribeDetectorRequest
    DescribeDetectorResponse.add_member(:detector, Smithy::Schema::Shapes::ShapeRef.new(shape: Detector, location_name: 'detector', traits: {"smithy.api#documentation" => "<p>Information about the detector (instance).</p>"}))
    DescribeDetectorResponse.type = Types::DescribeDetectorResponse
    Detector.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model that created this detector (instance).</p>"}))
    Detector.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the key (identifying the device or system) that caused the creation of this\n      detector (instance).</p>"}))
    Detector.add_member(:detector_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: 'detectorModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the detector model that created this detector (instance).</p>"}))
    Detector.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current state of the detector (instance).</p>"}))
    Detector.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the detector (instance) was created.</p>"}))
    Detector.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time the detector (instance) was last updated.</p>"}))
    Detector.type = Types::Detector
    DetectorState.add_member(:state_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StateName, location_name: 'stateName', traits: {"smithy.api#documentation" => "<p>The name of the state.</p>", "smithy.api#required" => {}}))
    DetectorState.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: Variables, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>The current values of the detector's variables.</p>", "smithy.api#required" => {}}))
    DetectorState.add_member(:timers, Smithy::Schema::Shapes::ShapeRef.new(shape: Timers, location_name: 'timers', traits: {"smithy.api#documentation" => "<p>The current state of the detector's timers.</p>", "smithy.api#required" => {}}))
    DetectorState.type = Types::DetectorState
    DetectorStateDefinition.add_member(:state_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StateName, location_name: 'stateName', traits: {"smithy.api#documentation" => "<p>The name of the new state of the detector (instance).</p>", "smithy.api#required" => {}}))
    DetectorStateDefinition.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableDefinitions, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>The new values of the detector's variables. Any variable whose value isn't specified is\n      cleared.</p>", "smithy.api#required" => {}}))
    DetectorStateDefinition.add_member(:timers, Smithy::Schema::Shapes::ShapeRef.new(shape: TimerDefinitions, location_name: 'timers', traits: {"smithy.api#documentation" => "<p>The new values of the detector's timers. Any timer whose value isn't specified is cleared,\n      and its timeout event won't occur.</p>", "smithy.api#required" => {}}))
    DetectorStateDefinition.type = Types::DetectorStateDefinition
    DetectorStateSummary.add_member(:state_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StateName, location_name: 'stateName', traits: {"smithy.api#documentation" => "<p>The name of the state.</p>"}))
    DetectorStateSummary.type = Types::DetectorStateSummary
    DetectorSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorSummary)
    DetectorSummary.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model that created this detector (instance).</p>"}))
    DetectorSummary.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the key (identifying the device or system) that caused the creation of this\n      detector (instance).</p>"}))
    DetectorSummary.add_member(:detector_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: 'detectorModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the detector model that created this detector (instance).</p>"}))
    DetectorSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorStateSummary, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current state of the detector (instance).</p>"}))
    DetectorSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time the detector (instance) was created.</p>"}))
    DetectorSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The time the detector (instance) was last updated.</p>"}))
    DetectorSummary.type = Types::DetectorSummary
    DisableActionConfiguration.add_member(:note, Smithy::Schema::Shapes::ShapeRef.new(shape: Note, location_name: 'note', traits: {"smithy.api#documentation" => "<p>The note that you can leave when you disable the alarm.</p>"}))
    DisableActionConfiguration.type = Types::DisableActionConfiguration
    DisableAlarmActionRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The request ID. Each ID must be unique within each batch.</p>", "smithy.api#required" => {}}))
    DisableAlarmActionRequest.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>", "smithy.api#required" => {}}))
    DisableAlarmActionRequest.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the key used as a filter to select only the alarms associated with the \n<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>"}))
    DisableAlarmActionRequest.add_member(:note, Smithy::Schema::Shapes::ShapeRef.new(shape: Note, location_name: 'note', traits: {"smithy.api#documentation" => "<p>The note that you can leave when you disable the alarm.</p>"}))
    DisableAlarmActionRequest.type = Types::DisableAlarmActionRequest
    DisableAlarmActionRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableAlarmActionRequest)
    EnableActionConfiguration.add_member(:note, Smithy::Schema::Shapes::ShapeRef.new(shape: Note, location_name: 'note', traits: {"smithy.api#documentation" => "<p>The note that you can leave when you enable the alarm.</p>"}))
    EnableActionConfiguration.type = Types::EnableActionConfiguration
    EnableAlarmActionRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The request ID. Each ID must be unique within each batch.</p>", "smithy.api#required" => {}}))
    EnableAlarmActionRequest.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>", "smithy.api#required" => {}}))
    EnableAlarmActionRequest.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the key used as a filter to select only the alarms associated with the \n<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>"}))
    EnableAlarmActionRequest.add_member(:note, Smithy::Schema::Shapes::ShapeRef.new(shape: Note, location_name: 'note', traits: {"smithy.api#documentation" => "<p>The note that you can leave when you enable the alarm.</p>"}))
    EnableAlarmActionRequest.type = Types::EnableAlarmActionRequest
    EnableAlarmActionRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAlarmActionRequest)
    ErrorCode.add_member(:resource_not_found_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceNotFoundException', traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    ErrorCode.add_member(:invalid_request_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidRequestException', traits: {"smithy.api#enumValue" => "InvalidRequestException"}))
    ErrorCode.add_member(:internal_failure_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalFailureException', traits: {"smithy.api#enumValue" => "InternalFailureException"}))
    ErrorCode.add_member(:service_unavailable_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ServiceUnavailableException', traits: {"smithy.api#enumValue" => "ServiceUnavailableException"}))
    ErrorCode.add_member(:throttling_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ThrottlingException', traits: {"smithy.api#enumValue" => "ThrottlingException"}))
    EventType.add_member(:state_change, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATE_CHANGE', traits: {"smithy.api#enumValue" => "STATE_CHANGE"}))
    InternalFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    InvalidRequestException.type = Types::InvalidRequestException
    ListAlarmsRequest.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAlarmsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAlarmsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAlarmsRequest.type = Types::ListAlarmsRequest
    ListAlarmsResponse.add_member(:alarm_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmSummaries, location_name: 'alarmSummaries', traits: {"smithy.api#documentation" => "<p>A list that summarizes each alarm.</p>"}))
    ListAlarmsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results, \nor <code>null</code> if there are no more results.</p>"}))
    ListAlarmsResponse.type = Types::ListAlarmsResponse
    ListDetectorsRequest.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model whose detectors (instances) are listed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDetectorsRequest.add_member(:state_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StateName, location_name: 'stateName', traits: {"smithy.api#documentation" => "<p>A filter that limits results to those detectors (instances) in the given state.</p>", "smithy.api#httpQuery" => "stateName"}))
    ListDetectorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDetectorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be returned per request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDetectorsRequest.type = Types::ListDetectorsRequest
    ListDetectorsResponse.add_member(:detector_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorSummaries, location_name: 'detectorSummaries', traits: {"smithy.api#documentation" => "<p>A list of summary information about the detectors (instances).</p>"}))
    ListDetectorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that you can use to return the next set of results, \nor <code>null</code> if there are no more results.</p>"}))
    ListDetectorsResponse.type = Types::ListDetectorsResponse
    Message.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The ID to assign to the message. Within each batch sent, each <code>\"messageId\"</code>\n      must be unique.</p>", "smithy.api#required" => {}}))
    Message.add_member(:input_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemeralInputName, location_name: 'inputName', traits: {"smithy.api#documentation" => "<p>The name of the input into which the message payload is transformed.</p>", "smithy.api#required" => {}}))
    Message.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The payload of the message. This can be a JSON string or a Base-64-encoded string\n      representing binary data (in which case you must decode it).</p>", "smithy.api#required" => {}}))
    Message.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampValue, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The timestamp associated with the message.</p>"}))
    Message.type = Types::Message
    Messages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Message)
    ResetActionConfiguration.add_member(:note, Smithy::Schema::Shapes::ShapeRef.new(shape: Note, location_name: 'note', traits: {"smithy.api#documentation" => "<p>The note that you can leave when you reset the alarm.</p>"}))
    ResetActionConfiguration.type = Types::ResetActionConfiguration
    ResetAlarmActionRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The request ID. Each ID must be unique within each batch.</p>", "smithy.api#required" => {}}))
    ResetAlarmActionRequest.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>", "smithy.api#required" => {}}))
    ResetAlarmActionRequest.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the key used as a filter to select only the alarms associated with the \n<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>"}))
    ResetAlarmActionRequest.add_member(:note, Smithy::Schema::Shapes::ShapeRef.new(shape: Note, location_name: 'note', traits: {"smithy.api#documentation" => "<p>The note that you can leave when you reset the alarm.</p>"}))
    ResetAlarmActionRequest.type = Types::ResetAlarmActionRequest
    ResetAlarmActionRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetAlarmActionRequest)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RuleEvaluation.add_member(:simple_rule_evaluation, Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleRuleEvaluation, location_name: 'simpleRuleEvaluation', traits: {"smithy.api#documentation" => "<p>Information needed to compare two values with a comparison operator.</p>"}))
    RuleEvaluation.type = Types::RuleEvaluation
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SimpleRuleEvaluation.add_member(:input_property_value, Smithy::Schema::Shapes::ShapeRef.new(shape: InputPropertyValue, location_name: 'inputPropertyValue', traits: {"smithy.api#documentation" => "<p>The value of the input property, on the left side of the comparison operator.</p>"}))
    SimpleRuleEvaluation.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The comparison operator.</p>"}))
    SimpleRuleEvaluation.add_member(:threshold_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ThresholdValue, location_name: 'thresholdValue', traits: {"smithy.api#documentation" => "<p>The threshold value, on the right side of the comparison operator.</p>"}))
    SimpleRuleEvaluation.type = Types::SimpleRuleEvaluation
    SnoozeActionConfiguration.add_member(:snooze_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: SnoozeDuration, location_name: 'snoozeDuration', traits: {"smithy.api#documentation" => "<p>The snooze time in seconds. The alarm automatically changes to the <code>NORMAL</code> state after this duration.</p>"}))
    SnoozeActionConfiguration.add_member(:note, Smithy::Schema::Shapes::ShapeRef.new(shape: Note, location_name: 'note', traits: {"smithy.api#documentation" => "<p>The note that you can leave when you snooze the alarm.</p>"}))
    SnoozeActionConfiguration.type = Types::SnoozeActionConfiguration
    SnoozeAlarmActionRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The request ID. Each ID must be unique within each batch.</p>", "smithy.api#required" => {}}))
    SnoozeAlarmActionRequest.add_member(:alarm_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmModelName, location_name: 'alarmModelName', traits: {"smithy.api#documentation" => "<p>The name of the alarm model.</p>", "smithy.api#required" => {}}))
    SnoozeAlarmActionRequest.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the key used as a filter to select only the alarms associated with the \n<a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key\">key</a>.</p>"}))
    SnoozeAlarmActionRequest.add_member(:note, Smithy::Schema::Shapes::ShapeRef.new(shape: Note, location_name: 'note', traits: {"smithy.api#documentation" => "<p>The note that you can leave when you snooze the alarm.</p>"}))
    SnoozeAlarmActionRequest.add_member(:snooze_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: SnoozeDuration, location_name: 'snoozeDuration', traits: {"smithy.api#documentation" => "<p>The snooze time in seconds. The alarm automatically changes to the <code>NORMAL</code> state after this duration.</p>", "smithy.api#required" => {}}))
    SnoozeAlarmActionRequest.type = Types::SnoozeAlarmActionRequest
    SnoozeAlarmActionRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SnoozeAlarmActionRequest)
    StateChangeConfiguration.add_member(:trigger_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerType, location_name: 'triggerType', traits: {"smithy.api#documentation" => "<p>The trigger type. If the value is <code>SNOOZE_TIMEOUT</code>, the snooze duration ends\n      and the alarm automatically changes to the <code>NORMAL</code> state.</p>"}))
    StateChangeConfiguration.type = Types::StateChangeConfiguration
    SystemEvent.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>The event type. If the value is <code>STATE_CHANGE</code>, the event contains information\n      about alarm state changes.</p>"}))
    SystemEvent.add_member(:state_change_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: StateChangeConfiguration, location_name: 'stateChangeConfiguration', traits: {"smithy.api#documentation" => "<p>Contains the configuration information of alarm state changes.</p>"}))
    SystemEvent.type = Types::SystemEvent
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    Timer.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TimerName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the timer.</p>", "smithy.api#required" => {}}))
    Timer.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The expiration time for the timer.</p>", "smithy.api#required" => {}}))
    Timer.type = Types::Timer
    TimerDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TimerName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the timer.</p>", "smithy.api#required" => {}}))
    TimerDefinition.add_member(:seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Seconds, location_name: 'seconds', traits: {"smithy.api#documentation" => "<p>The new setting of the timer (the number of seconds before the timer elapses).</p>", "smithy.api#required" => {}}))
    TimerDefinition.type = Types::TimerDefinition
    TimerDefinitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TimerDefinition)
    Timers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Timer)
    TimestampValue.add_member(:time_in_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: EpochMilliTimestamp, location_name: 'timeInMillis', traits: {"smithy.api#documentation" => "<p>The value of the timestamp, in the Unix epoch format.</p>"}))
    TimestampValue.type = Types::TimestampValue
    TriggerType.add_member(:snooze_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNOOZE_TIMEOUT', traits: {"smithy.api#enumValue" => "SNOOZE_TIMEOUT"}))
    UpdateDetectorRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The ID to assign to the detector update <code>\"message\"</code>. Each\n        <code>\"messageId\"</code> must be unique within each batch sent.</p>", "smithy.api#required" => {}}))
    UpdateDetectorRequest.add_member(:detector_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorModelName, location_name: 'detectorModelName', traits: {"smithy.api#documentation" => "<p>The name of the detector model that created the detectors (instances).</p>", "smithy.api#required" => {}}))
    UpdateDetectorRequest.add_member(:key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue, location_name: 'keyValue', traits: {"smithy.api#documentation" => "<p>The value of the input key attribute (identifying the device or system) that caused the\n      creation of this detector (instance).</p>"}))
    UpdateDetectorRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectorStateDefinition, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The new state, variable values, and timer settings of the detector (instance).</p>", "smithy.api#required" => {}}))
    UpdateDetectorRequest.type = Types::UpdateDetectorRequest
    UpdateDetectorRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDetectorRequest)
    Variable.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the variable.</p>", "smithy.api#required" => {}}))
    Variable.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The current value of the variable.</p>", "smithy.api#required" => {}}))
    Variable.type = Types::Variable
    VariableDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the variable.</p>", "smithy.api#required" => {}}))
    VariableDefinition.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: VariableValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The new value of the variable.</p>", "smithy.api#required" => {}}))
    VariableDefinition.type = Types::VariableDefinition
    VariableDefinitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VariableDefinition)
    Variables.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Variable)

    IotColumboDataService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ioteventsdata#IotColumboDataService"
      service.name = "IotColumboDataService"
      service.version = "2018-10-23"
      service.traits = {"aws.api#service" => {"sdkId" => "IoT Events Data", "arnNamespace" => "ioteventsdata", "cloudFormationName" => "IoTEventsData", "cloudTrailEventSource" => "ioteventsdata.amazonaws.com", "docId" => "iotevents-data-2018-10-23", "endpointPrefix" => "data.iotevents"}, "aws.auth#sigv4" => {"name" => "ioteventsdata"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Events Data"}
      service.add_operation(:batch_acknowledge_alarm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchAcknowledgeAlarm"
        operation.name = "BatchAcknowledgeAlarm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAcknowledgeAlarmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAcknowledgeAlarmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarms/acknowledge", "code" => 202}}
      end)
      service.add_operation(:batch_delete_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchDeleteDetector"
        operation.name = "BatchDeleteDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDetectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detectors/delete", "code" => 200}}
      end)
      service.add_operation(:batch_disable_alarm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchDisableAlarm"
        operation.name = "BatchDisableAlarm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisableAlarmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisableAlarmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarms/disable", "code" => 202}}
      end)
      service.add_operation(:batch_enable_alarm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchEnableAlarm"
        operation.name = "BatchEnableAlarm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEnableAlarmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchEnableAlarmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarms/enable", "code" => 202}}
      end)
      service.add_operation(:batch_put_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchPutMessage"
        operation.name = "BatchPutMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/inputs/messages", "code" => 200}}
      end)
      service.add_operation(:batch_reset_alarm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchResetAlarm"
        operation.name = "BatchResetAlarm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchResetAlarmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchResetAlarmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarms/reset", "code" => 202}}
      end)
      service.add_operation(:batch_snooze_alarm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchSnoozeAlarm"
        operation.name = "BatchSnoozeAlarm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSnoozeAlarmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSnoozeAlarmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarms/snooze", "code" => 202}}
      end)
      service.add_operation(:batch_update_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchUpdateDetector"
        operation.name = "BatchUpdateDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateDetectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detectors", "code" => 200}}
      end)
      service.add_operation(:describe_alarm, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#DescribeAlarm"
        operation.name = "DescribeAlarm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAlarmResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/alarms/{alarmModelName}/keyValues", "code" => 200}}
      end)
      service.add_operation(:describe_detector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#DescribeDetector"
        operation.name = "DescribeDetector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDetectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDetectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detectors/{detectorModelName}/keyValues", "code" => 200}}
      end)
      service.add_operation(:list_alarms, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#ListAlarms"
        operation.name = "ListAlarms"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlarmsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlarmsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/alarms/{alarmModelName}", "code" => 200}}
      end)
      service.add_operation(:list_detectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#ListDetectors"
        operation.name = "ListDetectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDetectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDetectorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detectors/{detectorModelName}", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
