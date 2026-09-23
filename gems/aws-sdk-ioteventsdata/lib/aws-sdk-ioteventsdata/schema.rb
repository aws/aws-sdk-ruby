# frozen_string_literal: true

# This is generated code!

module Aws::IoTEventsData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcknowledgeActionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#AcknowledgeActionConfiguration", name: "AcknowledgeActionConfiguration")
    AcknowledgeAlarmActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#AcknowledgeAlarmActionRequest", name: "AcknowledgeAlarmActionRequest")
    AcknowledgeAlarmActionRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#AcknowledgeAlarmActionRequests", name: "AcknowledgeAlarmActionRequests", traits: {"smithy.api#length" => {"min" => 1}})
    Alarm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#Alarm", name: "Alarm")
    AlarmModelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#AlarmModelName", name: "AlarmModelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    AlarmModelVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#AlarmModelVersion", name: "AlarmModelVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AlarmState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#AlarmState", name: "AlarmState")
    AlarmStateName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ioteventsdata#AlarmStateName", name: "AlarmStateName")
    AlarmSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#AlarmSummaries", name: "AlarmSummaries")
    AlarmSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#AlarmSummary", name: "AlarmSummary")
    BatchAcknowledgeAlarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchAcknowledgeAlarmRequest", name: "BatchAcknowledgeAlarmRequest")
    BatchAcknowledgeAlarmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchAcknowledgeAlarmResponse", name: "BatchAcknowledgeAlarmResponse")
    BatchAlarmActionErrorEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#BatchAlarmActionErrorEntries", name: "BatchAlarmActionErrorEntries")
    BatchAlarmActionErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchAlarmActionErrorEntry", name: "BatchAlarmActionErrorEntry")
    BatchDeleteDetectorErrorEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#BatchDeleteDetectorErrorEntries", name: "BatchDeleteDetectorErrorEntries")
    BatchDeleteDetectorErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchDeleteDetectorErrorEntry", name: "BatchDeleteDetectorErrorEntry")
    BatchDeleteDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchDeleteDetectorRequest", name: "BatchDeleteDetectorRequest")
    BatchDeleteDetectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchDeleteDetectorResponse", name: "BatchDeleteDetectorResponse")
    BatchDisableAlarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchDisableAlarmRequest", name: "BatchDisableAlarmRequest")
    BatchDisableAlarmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchDisableAlarmResponse", name: "BatchDisableAlarmResponse")
    BatchEnableAlarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchEnableAlarmRequest", name: "BatchEnableAlarmRequest")
    BatchEnableAlarmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchEnableAlarmResponse", name: "BatchEnableAlarmResponse")
    BatchPutMessageErrorEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#BatchPutMessageErrorEntries", name: "BatchPutMessageErrorEntries")
    BatchPutMessageErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchPutMessageErrorEntry", name: "BatchPutMessageErrorEntry")
    BatchPutMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchPutMessageRequest", name: "BatchPutMessageRequest")
    BatchPutMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchPutMessageResponse", name: "BatchPutMessageResponse")
    BatchResetAlarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchResetAlarmRequest", name: "BatchResetAlarmRequest")
    BatchResetAlarmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchResetAlarmResponse", name: "BatchResetAlarmResponse")
    BatchSnoozeAlarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchSnoozeAlarmRequest", name: "BatchSnoozeAlarmRequest")
    BatchSnoozeAlarmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchSnoozeAlarmResponse", name: "BatchSnoozeAlarmResponse")
    BatchUpdateDetectorErrorEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#BatchUpdateDetectorErrorEntries", name: "BatchUpdateDetectorErrorEntries")
    BatchUpdateDetectorErrorEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchUpdateDetectorErrorEntry", name: "BatchUpdateDetectorErrorEntry")
    BatchUpdateDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchUpdateDetectorRequest", name: "BatchUpdateDetectorRequest")
    BatchUpdateDetectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#BatchUpdateDetectorResponse", name: "BatchUpdateDetectorResponse")
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ioteventsdata#ComparisonOperator", name: "ComparisonOperator")
    CustomerAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#CustomerAction", name: "CustomerAction")
    CustomerActionName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ioteventsdata#CustomerActionName", name: "CustomerActionName")
    DeleteDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#DeleteDetectorRequest", name: "DeleteDetectorRequest")
    DeleteDetectorRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#DeleteDetectorRequests", name: "DeleteDetectorRequests", traits: {"smithy.api#length" => {"min" => 1}})
    DescribeAlarmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#DescribeAlarmRequest", name: "DescribeAlarmRequest")
    DescribeAlarmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#DescribeAlarmResponse", name: "DescribeAlarmResponse")
    DescribeDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#DescribeDetectorRequest", name: "DescribeDetectorRequest")
    DescribeDetectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#DescribeDetectorResponse", name: "DescribeDetectorResponse")
    Detector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#Detector", name: "Detector")
    DetectorModelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#DetectorModelName", name: "DetectorModelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    DetectorModelVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#DetectorModelVersion", name: "DetectorModelVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DetectorState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#DetectorState", name: "DetectorState")
    DetectorStateDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#DetectorStateDefinition", name: "DetectorStateDefinition")
    DetectorStateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#DetectorStateSummary", name: "DetectorStateSummary")
    DetectorSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#DetectorSummaries", name: "DetectorSummaries")
    DetectorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#DetectorSummary", name: "DetectorSummary")
    DisableActionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#DisableActionConfiguration", name: "DisableActionConfiguration")
    DisableAlarmActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#DisableAlarmActionRequest", name: "DisableAlarmActionRequest")
    DisableAlarmActionRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#DisableAlarmActionRequests", name: "DisableAlarmActionRequests", traits: {"smithy.api#length" => {"min" => 1}})
    EnableActionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#EnableActionConfiguration", name: "EnableActionConfiguration")
    EnableAlarmActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#EnableAlarmActionRequest", name: "EnableAlarmActionRequest")
    EnableAlarmActionRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#EnableAlarmActionRequests", name: "EnableAlarmActionRequests", traits: {"smithy.api#length" => {"min" => 1}})
    EphemeralInputName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#EphemeralInputName", name: "EphemeralInputName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_.-]*$"})
    EpochMilliTimestamp = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ioteventsdata#EpochMilliTimestamp", name: "EpochMilliTimestamp", traits: {"smithy.api#range" => {"min" => 1, "max" => 9223372036854775807}})
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ioteventsdata#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#ErrorMessage", name: "ErrorMessage")
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ioteventsdata#EventType", name: "EventType")
    InputPropertyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#InputPropertyValue", name: "InputPropertyValue")
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KeyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#KeyValue", name: "KeyValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_:]+$"})
    ListAlarmsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#ListAlarmsRequest", name: "ListAlarmsRequest")
    ListAlarmsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#ListAlarmsResponse", name: "ListAlarmsResponse")
    ListDetectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#ListDetectorsRequest", name: "ListDetectorsRequest")
    ListDetectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#ListDetectorsResponse", name: "ListDetectorsResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ioteventsdata#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#Message", name: "Message")
    MessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#MessageId", name: "MessageId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    Messages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#Messages", name: "Messages", traits: {"smithy.api#length" => {"min" => 1}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#NextToken", name: "NextToken")
    Note = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#Note", name: "Note", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Payload = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.ioteventsdata#Payload", name: "Payload")
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#RequestId", name: "RequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ResetActionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#ResetActionConfiguration", name: "ResetActionConfiguration")
    ResetAlarmActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#ResetAlarmActionRequest", name: "ResetAlarmActionRequest")
    ResetAlarmActionRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#ResetAlarmActionRequests", name: "ResetAlarmActionRequests", traits: {"smithy.api#length" => {"min" => 1}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RuleEvaluation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#RuleEvaluation", name: "RuleEvaluation")
    Seconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ioteventsdata#Seconds", name: "Seconds")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    Severity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ioteventsdata#Severity", name: "Severity", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    SimpleRuleEvaluation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#SimpleRuleEvaluation", name: "SimpleRuleEvaluation")
    SnoozeActionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#SnoozeActionConfiguration", name: "SnoozeActionConfiguration")
    SnoozeAlarmActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#SnoozeAlarmActionRequest", name: "SnoozeAlarmActionRequest")
    SnoozeAlarmActionRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#SnoozeAlarmActionRequests", name: "SnoozeAlarmActionRequests", traits: {"smithy.api#length" => {"min" => 1}})
    SnoozeDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ioteventsdata#SnoozeDuration", name: "SnoozeDuration")
    StateChangeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#StateChangeConfiguration", name: "StateChangeConfiguration")
    StateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#StateName", name: "StateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SystemEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#SystemEvent", name: "SystemEvent")
    ThresholdValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#ThresholdValue", name: "ThresholdValue")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#Timer", name: "Timer")
    TimerDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#TimerDefinition", name: "TimerDefinition")
    TimerDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#TimerDefinitions", name: "TimerDefinitions")
    TimerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#TimerName", name: "TimerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Timers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#Timers", name: "Timers")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.ioteventsdata#Timestamp", name: "Timestamp")
    TimestampValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#TimestampValue", name: "TimestampValue")
    TriggerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ioteventsdata#TriggerType", name: "TriggerType")
    UpdateDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#UpdateDetectorRequest", name: "UpdateDetectorRequest")
    UpdateDetectorRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#UpdateDetectorRequests", name: "UpdateDetectorRequests", traits: {"smithy.api#length" => {"min" => 1}})
    Variable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#Variable", name: "Variable")
    VariableDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ioteventsdata#VariableDefinition", name: "VariableDefinition")
    VariableDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#VariableDefinitions", name: "VariableDefinitions")
    VariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#VariableName", name: "VariableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    VariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ioteventsdata#VariableValue", name: "VariableValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Variables = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ioteventsdata#Variables", name: "Variables")

    AcknowledgeActionConfiguration.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    AcknowledgeActionConfiguration.type = Types::AcknowledgeActionConfiguration
    AcknowledgeAlarmActionRequest.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId", traits: {"smithy.api#required" => {}}))
    AcknowledgeAlarmActionRequest.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmModelName, name: "alarmModelName", traits: {"smithy.api#required" => {}}))
    AcknowledgeAlarmActionRequest.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue"))
    AcknowledgeAlarmActionRequest.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    AcknowledgeAlarmActionRequest.type = Types::AcknowledgeAlarmActionRequest
    AcknowledgeAlarmActionRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcknowledgeAlarmActionRequest, name: "member"))
    Alarm.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmModelName, name: "alarmModelName"))
    Alarm.add_member(:alarm_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmModelVersion, name: "alarmModelVersion"))
    Alarm.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue"))
    Alarm.add_member(:alarm_state, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmState, name: "alarmState"))
    Alarm.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Severity, name: "severity"))
    Alarm.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    Alarm.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    Alarm.type = Types::Alarm
    AlarmState.add_member(:state_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmStateName, name: "stateName"))
    AlarmState.add_member(:rule_evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleEvaluation, name: "ruleEvaluation"))
    AlarmState.add_member(:customer_action, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAction, name: "customerAction"))
    AlarmState.add_member(:system_event, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemEvent, name: "systemEvent"))
    AlarmState.type = Types::AlarmState
    AlarmStateName.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AlarmStateName.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NORMAL", traits: {"smithy.api#enumValue" => "NORMAL"}))
    AlarmStateName.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AlarmStateName.add_member(:acknowledged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACKNOWLEDGED", traits: {"smithy.api#enumValue" => "ACKNOWLEDGED"}))
    AlarmStateName.add_member(:snooze_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNOOZE_DISABLED", traits: {"smithy.api#enumValue" => "SNOOZE_DISABLED"}))
    AlarmStateName.add_member(:latched, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATCHED", traits: {"smithy.api#enumValue" => "LATCHED"}))
    AlarmSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmSummary, name: "member"))
    AlarmSummary.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmModelName, name: "alarmModelName"))
    AlarmSummary.add_member(:alarm_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmModelVersion, name: "alarmModelVersion"))
    AlarmSummary.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue"))
    AlarmSummary.add_member(:state_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmStateName, name: "stateName"))
    AlarmSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    AlarmSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    AlarmSummary.type = Types::AlarmSummary
    BatchAcknowledgeAlarmRequest.add_member(:acknowledge_action_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: AcknowledgeAlarmActionRequests, name: "acknowledgeActionRequests", traits: {"smithy.api#required" => {}}))
    BatchAcknowledgeAlarmRequest.type = Types::BatchAcknowledgeAlarmRequest
    BatchAcknowledgeAlarmResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAlarmActionErrorEntries, name: "errorEntries"))
    BatchAcknowledgeAlarmResponse.type = Types::BatchAcknowledgeAlarmResponse
    BatchAlarmActionErrorEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAlarmActionErrorEntry, name: "member"))
    BatchAlarmActionErrorEntry.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId"))
    BatchAlarmActionErrorEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode"))
    BatchAlarmActionErrorEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    BatchAlarmActionErrorEntry.type = Types::BatchAlarmActionErrorEntry
    BatchDeleteDetectorErrorEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteDetectorErrorEntry, name: "member"))
    BatchDeleteDetectorErrorEntry.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "messageId"))
    BatchDeleteDetectorErrorEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode"))
    BatchDeleteDetectorErrorEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    BatchDeleteDetectorErrorEntry.type = Types::BatchDeleteDetectorErrorEntry
    BatchDeleteDetectorRequest.add_member(:detectors, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteDetectorRequests, name: "detectors", traits: {"smithy.api#required" => {}}))
    BatchDeleteDetectorRequest.type = Types::BatchDeleteDetectorRequest
    BatchDeleteDetectorResponse.add_member(:batch_delete_detector_error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteDetectorErrorEntries, name: "batchDeleteDetectorErrorEntries"))
    BatchDeleteDetectorResponse.type = Types::BatchDeleteDetectorResponse
    BatchDisableAlarmRequest.add_member(:disable_action_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: DisableAlarmActionRequests, name: "disableActionRequests", traits: {"smithy.api#required" => {}}))
    BatchDisableAlarmRequest.type = Types::BatchDisableAlarmRequest
    BatchDisableAlarmResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAlarmActionErrorEntries, name: "errorEntries"))
    BatchDisableAlarmResponse.type = Types::BatchDisableAlarmResponse
    BatchEnableAlarmRequest.add_member(:enable_action_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAlarmActionRequests, name: "enableActionRequests", traits: {"smithy.api#required" => {}}))
    BatchEnableAlarmRequest.type = Types::BatchEnableAlarmRequest
    BatchEnableAlarmResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAlarmActionErrorEntries, name: "errorEntries"))
    BatchEnableAlarmResponse.type = Types::BatchEnableAlarmResponse
    BatchPutMessageErrorEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutMessageErrorEntry, name: "member"))
    BatchPutMessageErrorEntry.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "messageId"))
    BatchPutMessageErrorEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode"))
    BatchPutMessageErrorEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    BatchPutMessageErrorEntry.type = Types::BatchPutMessageErrorEntry
    BatchPutMessageRequest.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, name: "messages", traits: {"smithy.api#required" => {}}))
    BatchPutMessageRequest.type = Types::BatchPutMessageRequest
    BatchPutMessageResponse.add_member(:batch_put_message_error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutMessageErrorEntries, name: "BatchPutMessageErrorEntries"))
    BatchPutMessageResponse.type = Types::BatchPutMessageResponse
    BatchResetAlarmRequest.add_member(:reset_action_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: ResetAlarmActionRequests, name: "resetActionRequests", traits: {"smithy.api#required" => {}}))
    BatchResetAlarmRequest.type = Types::BatchResetAlarmRequest
    BatchResetAlarmResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAlarmActionErrorEntries, name: "errorEntries"))
    BatchResetAlarmResponse.type = Types::BatchResetAlarmResponse
    BatchSnoozeAlarmRequest.add_member(:snooze_action_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: SnoozeAlarmActionRequests, name: "snoozeActionRequests", traits: {"smithy.api#required" => {}}))
    BatchSnoozeAlarmRequest.type = Types::BatchSnoozeAlarmRequest
    BatchSnoozeAlarmResponse.add_member(:error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAlarmActionErrorEntries, name: "errorEntries"))
    BatchSnoozeAlarmResponse.type = Types::BatchSnoozeAlarmResponse
    BatchUpdateDetectorErrorEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateDetectorErrorEntry, name: "member"))
    BatchUpdateDetectorErrorEntry.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "messageId"))
    BatchUpdateDetectorErrorEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode"))
    BatchUpdateDetectorErrorEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    BatchUpdateDetectorErrorEntry.type = Types::BatchUpdateDetectorErrorEntry
    BatchUpdateDetectorRequest.add_member(:detectors, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateDetectorRequests, name: "detectors", traits: {"smithy.api#required" => {}}))
    BatchUpdateDetectorRequest.type = Types::BatchUpdateDetectorRequest
    BatchUpdateDetectorResponse.add_member(:batch_update_detector_error_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateDetectorErrorEntries, name: "batchUpdateDetectorErrorEntries"))
    BatchUpdateDetectorResponse.type = Types::BatchUpdateDetectorResponse
    ComparisonOperator.add_member(:greater, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER", traits: {"smithy.api#enumValue" => "GREATER"}))
    ComparisonOperator.add_member(:greater_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_OR_EQUAL", traits: {"smithy.api#enumValue" => "GREATER_OR_EQUAL"}))
    ComparisonOperator.add_member(:less, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS", traits: {"smithy.api#enumValue" => "LESS"}))
    ComparisonOperator.add_member(:less_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_OR_EQUAL", traits: {"smithy.api#enumValue" => "LESS_OR_EQUAL"}))
    ComparisonOperator.add_member(:equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUAL", traits: {"smithy.api#enumValue" => "EQUAL"}))
    ComparisonOperator.add_member(:not_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL", traits: {"smithy.api#enumValue" => "NOT_EQUAL"}))
    CustomerAction.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerActionName, name: "actionName"))
    CustomerAction.add_member(:snooze_action_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnoozeActionConfiguration, name: "snoozeActionConfiguration"))
    CustomerAction.add_member(:enable_action_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableActionConfiguration, name: "enableActionConfiguration"))
    CustomerAction.add_member(:disable_action_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DisableActionConfiguration, name: "disableActionConfiguration"))
    CustomerAction.add_member(:acknowledge_action_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AcknowledgeActionConfiguration, name: "acknowledgeActionConfiguration"))
    CustomerAction.add_member(:reset_action_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResetActionConfiguration, name: "resetActionConfiguration"))
    CustomerAction.type = Types::CustomerAction
    CustomerActionName.add_member(:snooze, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNOOZE", traits: {"smithy.api#enumValue" => "SNOOZE"}))
    CustomerActionName.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLE", traits: {"smithy.api#enumValue" => "ENABLE"}))
    CustomerActionName.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    CustomerActionName.add_member(:acknowledge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACKNOWLEDGE", traits: {"smithy.api#enumValue" => "ACKNOWLEDGE"}))
    CustomerActionName.add_member(:reset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESET", traits: {"smithy.api#enumValue" => "RESET"}))
    DeleteDetectorRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "messageId", traits: {"smithy.api#required" => {}}))
    DeleteDetectorRequest.add_member(:detector_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorModelName, name: "detectorModelName", traits: {"smithy.api#required" => {}}))
    DeleteDetectorRequest.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue"))
    DeleteDetectorRequest.type = Types::DeleteDetectorRequest
    DeleteDetectorRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteDetectorRequest, name: "member"))
    DescribeAlarmRequest.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmModelName, name: "alarmModelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAlarmRequest.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue", traits: {"smithy.api#httpQuery" => "keyValue"}))
    DescribeAlarmRequest.type = Types::DescribeAlarmRequest
    DescribeAlarmResponse.add_member(:alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: Alarm, name: "alarm"))
    DescribeAlarmResponse.type = Types::DescribeAlarmResponse
    DescribeDetectorRequest.add_member(:detector_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorModelName, name: "detectorModelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDetectorRequest.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue", traits: {"smithy.api#httpQuery" => "keyValue"}))
    DescribeDetectorRequest.type = Types::DescribeDetectorRequest
    DescribeDetectorResponse.add_member(:detector, ::Smithy::Schema::Shapes::MemberShape.new(target: Detector, name: "detector"))
    DescribeDetectorResponse.type = Types::DescribeDetectorResponse
    Detector.add_member(:detector_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorModelName, name: "detectorModelName"))
    Detector.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue"))
    Detector.add_member(:detector_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorModelVersion, name: "detectorModelVersion"))
    Detector.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorState, name: "state"))
    Detector.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    Detector.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    Detector.type = Types::Detector
    DetectorState.add_member(:state_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StateName, name: "stateName", traits: {"smithy.api#required" => {}}))
    DetectorState.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: Variables, name: "variables", traits: {"smithy.api#required" => {}}))
    DetectorState.add_member(:timers, ::Smithy::Schema::Shapes::MemberShape.new(target: Timers, name: "timers", traits: {"smithy.api#required" => {}}))
    DetectorState.type = Types::DetectorState
    DetectorStateDefinition.add_member(:state_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StateName, name: "stateName", traits: {"smithy.api#required" => {}}))
    DetectorStateDefinition.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableDefinitions, name: "variables", traits: {"smithy.api#required" => {}}))
    DetectorStateDefinition.add_member(:timers, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerDefinitions, name: "timers", traits: {"smithy.api#required" => {}}))
    DetectorStateDefinition.type = Types::DetectorStateDefinition
    DetectorStateSummary.add_member(:state_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StateName, name: "stateName"))
    DetectorStateSummary.type = Types::DetectorStateSummary
    DetectorSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorSummary, name: "member"))
    DetectorSummary.add_member(:detector_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorModelName, name: "detectorModelName"))
    DetectorSummary.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue"))
    DetectorSummary.add_member(:detector_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorModelVersion, name: "detectorModelVersion"))
    DetectorSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorStateSummary, name: "state"))
    DetectorSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTime"))
    DetectorSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    DetectorSummary.type = Types::DetectorSummary
    DisableActionConfiguration.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    DisableActionConfiguration.type = Types::DisableActionConfiguration
    DisableAlarmActionRequest.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId", traits: {"smithy.api#required" => {}}))
    DisableAlarmActionRequest.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmModelName, name: "alarmModelName", traits: {"smithy.api#required" => {}}))
    DisableAlarmActionRequest.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue"))
    DisableAlarmActionRequest.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    DisableAlarmActionRequest.type = Types::DisableAlarmActionRequest
    DisableAlarmActionRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DisableAlarmActionRequest, name: "member"))
    EnableActionConfiguration.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    EnableActionConfiguration.type = Types::EnableActionConfiguration
    EnableAlarmActionRequest.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId", traits: {"smithy.api#required" => {}}))
    EnableAlarmActionRequest.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmModelName, name: "alarmModelName", traits: {"smithy.api#required" => {}}))
    EnableAlarmActionRequest.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue"))
    EnableAlarmActionRequest.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    EnableAlarmActionRequest.type = Types::EnableAlarmActionRequest
    EnableAlarmActionRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAlarmActionRequest, name: "member"))
    ErrorCode.add_member(:resource_not_found_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceNotFoundException", traits: {"smithy.api#enumValue" => "ResourceNotFoundException"}))
    ErrorCode.add_member(:invalid_request_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidRequestException", traits: {"smithy.api#enumValue" => "InvalidRequestException"}))
    ErrorCode.add_member(:internal_failure_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalFailureException", traits: {"smithy.api#enumValue" => "InternalFailureException"}))
    ErrorCode.add_member(:service_unavailable_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceUnavailableException", traits: {"smithy.api#enumValue" => "ServiceUnavailableException"}))
    ErrorCode.add_member(:throttling_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ThrottlingException", traits: {"smithy.api#enumValue" => "ThrottlingException"}))
    EventType.add_member(:state_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATE_CHANGE", traits: {"smithy.api#enumValue" => "STATE_CHANGE"}))
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    ListAlarmsRequest.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmModelName, name: "alarmModelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAlarmsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAlarmsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAlarmsRequest.type = Types::ListAlarmsRequest
    ListAlarmsResponse.add_member(:alarm_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmSummaries, name: "alarmSummaries"))
    ListAlarmsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAlarmsResponse.type = Types::ListAlarmsResponse
    ListDetectorsRequest.add_member(:detector_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorModelName, name: "detectorModelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDetectorsRequest.add_member(:state_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StateName, name: "stateName", traits: {"smithy.api#httpQuery" => "stateName"}))
    ListDetectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDetectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDetectorsRequest.type = Types::ListDetectorsRequest
    ListDetectorsResponse.add_member(:detector_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorSummaries, name: "detectorSummaries"))
    ListDetectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDetectorsResponse.type = Types::ListDetectorsResponse
    Message.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "messageId", traits: {"smithy.api#required" => {}}))
    Message.add_member(:input_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralInputName, name: "inputName", traits: {"smithy.api#required" => {}}))
    Message.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, name: "payload", traits: {"smithy.api#required" => {}}))
    Message.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampValue, name: "timestamp"))
    Message.type = Types::Message
    Messages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "member"))
    ResetActionConfiguration.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    ResetActionConfiguration.type = Types::ResetActionConfiguration
    ResetAlarmActionRequest.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId", traits: {"smithy.api#required" => {}}))
    ResetAlarmActionRequest.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmModelName, name: "alarmModelName", traits: {"smithy.api#required" => {}}))
    ResetAlarmActionRequest.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue"))
    ResetAlarmActionRequest.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    ResetAlarmActionRequest.type = Types::ResetAlarmActionRequest
    ResetAlarmActionRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResetAlarmActionRequest, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RuleEvaluation.add_member(:simple_rule_evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: SimpleRuleEvaluation, name: "simpleRuleEvaluation"))
    RuleEvaluation.type = Types::RuleEvaluation
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SimpleRuleEvaluation.add_member(:input_property_value, ::Smithy::Schema::Shapes::MemberShape.new(target: InputPropertyValue, name: "inputPropertyValue"))
    SimpleRuleEvaluation.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "operator"))
    SimpleRuleEvaluation.add_member(:threshold_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ThresholdValue, name: "thresholdValue"))
    SimpleRuleEvaluation.type = Types::SimpleRuleEvaluation
    SnoozeActionConfiguration.add_member(:snooze_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnoozeDuration, name: "snoozeDuration"))
    SnoozeActionConfiguration.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    SnoozeActionConfiguration.type = Types::SnoozeActionConfiguration
    SnoozeAlarmActionRequest.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId", traits: {"smithy.api#required" => {}}))
    SnoozeAlarmActionRequest.add_member(:alarm_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmModelName, name: "alarmModelName", traits: {"smithy.api#required" => {}}))
    SnoozeAlarmActionRequest.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue"))
    SnoozeAlarmActionRequest.add_member(:note, ::Smithy::Schema::Shapes::MemberShape.new(target: Note, name: "note"))
    SnoozeAlarmActionRequest.add_member(:snooze_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnoozeDuration, name: "snoozeDuration", traits: {"smithy.api#required" => {}}))
    SnoozeAlarmActionRequest.type = Types::SnoozeAlarmActionRequest
    SnoozeAlarmActionRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SnoozeAlarmActionRequest, name: "member"))
    StateChangeConfiguration.add_member(:trigger_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerType, name: "triggerType"))
    StateChangeConfiguration.type = Types::StateChangeConfiguration
    SystemEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "eventType"))
    SystemEvent.add_member(:state_change_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StateChangeConfiguration, name: "stateChangeConfiguration"))
    SystemEvent.type = Types::SystemEvent
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    Timer.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerName, name: "name", traits: {"smithy.api#required" => {}}))
    Timer.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    Timer.type = Types::Timer
    TimerDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerName, name: "name", traits: {"smithy.api#required" => {}}))
    TimerDefinition.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Seconds, name: "seconds", traits: {"smithy.api#required" => {}}))
    TimerDefinition.type = Types::TimerDefinition
    TimerDefinitions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TimerDefinition, name: "member"))
    Timers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Timer, name: "member"))
    TimestampValue.add_member(:time_in_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMilliTimestamp, name: "timeInMillis"))
    TimestampValue.type = Types::TimestampValue
    TriggerType.add_member(:snooze_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNOOZE_TIMEOUT", traits: {"smithy.api#enumValue" => "SNOOZE_TIMEOUT"}))
    UpdateDetectorRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageId, name: "messageId", traits: {"smithy.api#required" => {}}))
    UpdateDetectorRequest.add_member(:detector_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorModelName, name: "detectorModelName", traits: {"smithy.api#required" => {}}))
    UpdateDetectorRequest.add_member(:key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "keyValue"))
    UpdateDetectorRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorStateDefinition, name: "state", traits: {"smithy.api#required" => {}}))
    UpdateDetectorRequest.type = Types::UpdateDetectorRequest
    UpdateDetectorRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateDetectorRequest, name: "member"))
    Variable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableName, name: "name", traits: {"smithy.api#required" => {}}))
    Variable.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableValue, name: "value", traits: {"smithy.api#required" => {}}))
    Variable.type = Types::Variable
    VariableDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableName, name: "name", traits: {"smithy.api#required" => {}}))
    VariableDefinition.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableValue, name: "value", traits: {"smithy.api#required" => {}}))
    VariableDefinition.type = Types::VariableDefinition
    VariableDefinitions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableDefinition, name: "member"))
    Variables.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Variable, name: "member"))

    IotColumboDataService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ioteventsdata#IotColumboDataService"
      service.name = "IotColumboDataService"
      service.version = "2018-10-23"
      service.traits = {"aws.api#service" => {"sdkId" => "IoT Events Data", "arnNamespace" => "ioteventsdata", "cloudFormationName" => "IoTEventsData", "cloudTrailEventSource" => "ioteventsdata.amazonaws.com", "docId" => "iotevents-data-2018-10-23", "endpointPrefix" => "data.iotevents"}, "aws.auth#sigv4" => {"name" => "ioteventsdata"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Events Data"}
      service.add_operation(:batch_acknowledge_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchAcknowledgeAlarm"
        operation.name = "BatchAcknowledgeAlarm"
        operation.input = BatchAcknowledgeAlarmRequest
        operation.output = BatchAcknowledgeAlarmResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarms/acknowledge", "code" => 202}}
      end)
      service.add_operation(:batch_delete_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchDeleteDetector"
        operation.name = "BatchDeleteDetector"
        operation.input = BatchDeleteDetectorRequest
        operation.output = BatchDeleteDetectorResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detectors/delete", "code" => 200}}
      end)
      service.add_operation(:batch_disable_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchDisableAlarm"
        operation.name = "BatchDisableAlarm"
        operation.input = BatchDisableAlarmRequest
        operation.output = BatchDisableAlarmResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarms/disable", "code" => 202}}
      end)
      service.add_operation(:batch_enable_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchEnableAlarm"
        operation.name = "BatchEnableAlarm"
        operation.input = BatchEnableAlarmRequest
        operation.output = BatchEnableAlarmResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarms/enable", "code" => 202}}
      end)
      service.add_operation(:batch_put_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchPutMessage"
        operation.name = "BatchPutMessage"
        operation.input = BatchPutMessageRequest
        operation.output = BatchPutMessageResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/inputs/messages", "code" => 200}}
      end)
      service.add_operation(:batch_reset_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchResetAlarm"
        operation.name = "BatchResetAlarm"
        operation.input = BatchResetAlarmRequest
        operation.output = BatchResetAlarmResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarms/reset", "code" => 202}}
      end)
      service.add_operation(:batch_snooze_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchSnoozeAlarm"
        operation.name = "BatchSnoozeAlarm"
        operation.input = BatchSnoozeAlarmRequest
        operation.output = BatchSnoozeAlarmResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/alarms/snooze", "code" => 202}}
      end)
      service.add_operation(:batch_update_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#BatchUpdateDetector"
        operation.name = "BatchUpdateDetector"
        operation.input = BatchUpdateDetectorRequest
        operation.output = BatchUpdateDetectorResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detectors", "code" => 200}}
      end)
      service.add_operation(:describe_alarm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#DescribeAlarm"
        operation.name = "DescribeAlarm"
        operation.input = DescribeAlarmRequest
        operation.output = DescribeAlarmResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/alarms/{alarmModelName}/keyValues", "code" => 200}}
      end)
      service.add_operation(:describe_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#DescribeDetector"
        operation.name = "DescribeDetector"
        operation.input = DescribeDetectorRequest
        operation.output = DescribeDetectorResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detectors/{detectorModelName}/keyValues", "code" => 200}}
      end)
      service.add_operation(:list_alarms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#ListAlarms"
        operation.name = "ListAlarms"
        operation.input = ListAlarmsRequest
        operation.output = ListAlarmsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/alarms/{alarmModelName}", "code" => 200}}
      end)
      service.add_operation(:list_detectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ioteventsdata#ListDetectors"
        operation.name = "ListDetectors"
        operation.input = ListDetectorsRequest
        operation.output = ListDetectorsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detectors/{detectorModelName}", "code" => 200}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
