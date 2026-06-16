# frozen_string_literal: true

# This is generated code!

module Aws::SSMIncidents
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Action = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#Action", name: "Action")
    ActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#ActionsList", name: "ActionsList", traits: {"smithy.api#length" => {"max" => 1}})
    AddRegionAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#AddRegionAction", name: "AddRegionAction")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#Arn", name: "Arn", traits: {"smithy.api#length" => {"max" => 1000}, "smithy.api#pattern" => "^arn:aws(-cn|-us-gov)?:[a-z0-9-]*:[a-z0-9-]*:([0-9]{12})?:.+$"})
    AttributeValueList = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#AttributeValueList", name: "AttributeValueList")
    AutomationExecution = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#AutomationExecution", name: "AutomationExecution")
    AutomationExecutionSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#AutomationExecutionSet", name: "AutomationExecutionSet", traits: {"smithy.api#length" => {"max" => 100}})
    BatchGetIncidentFindingsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#BatchGetIncidentFindingsError", name: "BatchGetIncidentFindingsError")
    BatchGetIncidentFindingsErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#BatchGetIncidentFindingsErrorList", name: "BatchGetIncidentFindingsErrorList")
    BatchGetIncidentFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#BatchGetIncidentFindingsInput", name: "BatchGetIncidentFindingsInput")
    BatchGetIncidentFindingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#BatchGetIncidentFindingsOutput", name: "BatchGetIncidentFindingsOutput")
    ChatChannel = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#ChatChannel", name: "ChatChannel")
    ChatbotSnsConfigurationSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#ChatbotSnsConfigurationSet", name: "ChatbotSnsConfigurationSet", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"max" => 128}})
    CloudFormationStackUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#CloudFormationStackUpdate", name: "CloudFormationStackUpdate")
    CodeDeployDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#CodeDeployDeployment", name: "CodeDeployDeployment")
    Condition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#Condition", name: "Condition")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateReplicationSetOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#CreateReplicationSetOperationInput", name: "CreateReplicationSetOperationInput")
    CreateReplicationSetOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#CreateReplicationSetOperationOutput", name: "CreateReplicationSetOperationOutput")
    CreateResponsePlanOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#CreateResponsePlanOperationInput", name: "CreateResponsePlanOperationInput")
    CreateResponsePlanOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#CreateResponsePlanOperationOutput", name: "CreateResponsePlanOperationOutput")
    CreateTimelineEventOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#CreateTimelineEventOperationInput", name: "CreateTimelineEventOperationInput")
    CreateTimelineEventOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#CreateTimelineEventOperationOutput", name: "CreateTimelineEventOperationOutput")
    DedupeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#DedupeString", name: "DedupeString", traits: {"smithy.api#length" => {"max" => 1000}})
    DeleteIncidentRecordOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#DeleteIncidentRecordOperationInput", name: "DeleteIncidentRecordOperationInput")
    DeleteIncidentRecordOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#DeleteIncidentRecordOperationOutput", name: "DeleteIncidentRecordOperationOutput")
    DeleteRegionAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#DeleteRegionAction", name: "DeleteRegionAction")
    DeleteReplicationSetOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#DeleteReplicationSetOperationInput", name: "DeleteReplicationSetOperationInput")
    DeleteReplicationSetOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#DeleteReplicationSetOperationOutput", name: "DeleteReplicationSetOperationOutput")
    DeleteResourcePolicyOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#DeleteResourcePolicyOperationInput", name: "DeleteResourcePolicyOperationInput")
    DeleteResourcePolicyOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#DeleteResourcePolicyOperationOutput", name: "DeleteResourcePolicyOperationOutput")
    DeleteResponsePlanOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#DeleteResponsePlanOperationInput", name: "DeleteResponsePlanOperationInput")
    DeleteResponsePlanOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#DeleteResponsePlanOperationOutput", name: "DeleteResponsePlanOperationOutput")
    DeleteTimelineEventOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#DeleteTimelineEventOperationInput", name: "DeleteTimelineEventOperationInput")
    DeleteTimelineEventOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#DeleteTimelineEventOperationOutput", name: "DeleteTimelineEventOperationOutput")
    DynamicSsmParameterValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#DynamicSsmParameterValue", name: "DynamicSsmParameterValue")
    DynamicSsmParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssmincidents#DynamicSsmParameters", name: "DynamicSsmParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    EmptyChatChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#EmptyChatChannel", name: "EmptyChatChannel")
    EngagementSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#EngagementSet", name: "EngagementSet", traits: {"smithy.api#length" => {"max" => 5}, "smithy.api#uniqueItems" => {}})
    EventData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#EventData", name: "EventData", traits: {"smithy.api#length" => {"max" => 12000}})
    EventReference = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#EventReference", name: "EventReference")
    EventReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#EventReferenceList", name: "EventReferenceList", traits: {"smithy.api#length" => {"max" => 10}})
    EventSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#EventSummary", name: "EventSummary")
    EventSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#EventSummaryList", name: "EventSummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#ExceptionMessage", name: "ExceptionMessage")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#FilterList", name: "FilterList", traits: {"smithy.api#length" => {"max" => 5}})
    Finding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#Finding", name: "Finding")
    FindingDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#FindingDetails", name: "FindingDetails")
    FindingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#FindingId", name: "FindingId", traits: {"smithy.api#length" => {"max" => 128}})
    FindingIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#FindingIdList", name: "FindingIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    FindingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#FindingList", name: "FindingList")
    FindingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#FindingSummary", name: "FindingSummary")
    FindingSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#FindingSummaryList", name: "FindingSummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    GeneratedId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#GeneratedId", name: "GeneratedId", traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#pattern" => "^related-item/(ANALYSIS|INCIDENT|METRIC|PARENT|ATTACHMENT|OTHER|AUTOMATION|INVOLVED_RESOURCE|TASK)/([0-9]|[A-F]){32}$"})
    GetIncidentRecordOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#GetIncidentRecordOperationInput", name: "GetIncidentRecordOperationInput")
    GetIncidentRecordOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#GetIncidentRecordOperationOutput", name: "GetIncidentRecordOperationOutput")
    GetReplicationSetOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#GetReplicationSetOperationInput", name: "GetReplicationSetOperationInput")
    GetReplicationSetOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#GetReplicationSetOperationOutput", name: "GetReplicationSetOperationOutput")
    GetResourcePoliciesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#GetResourcePoliciesOperationInput", name: "GetResourcePoliciesOperationInput")
    GetResourcePoliciesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#GetResourcePoliciesOperationOutput", name: "GetResourcePoliciesOperationOutput")
    GetResponsePlanOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#GetResponsePlanOperationInput", name: "GetResponsePlanOperationInput")
    GetResponsePlanOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#GetResponsePlanOperationOutput", name: "GetResponsePlanOperationOutput")
    GetTimelineEventOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#GetTimelineEventOperationInput", name: "GetTimelineEventOperationInput")
    GetTimelineEventOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#GetTimelineEventOperationOutput", name: "GetTimelineEventOperationOutput")
    Impact = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssmincidents#Impact", name: "Impact", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    IncidentRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#IncidentRecord", name: "IncidentRecord")
    IncidentRecordSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#IncidentRecordSource", name: "IncidentRecordSource")
    IncidentRecordStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#IncidentRecordStatus", name: "IncidentRecordStatus", traits: {"smithy.api#enum" => [{"value" => "OPEN", "name" => "OPEN"}, {"value" => "RESOLVED", "name" => "RESOLVED"}]})
    IncidentRecordSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#IncidentRecordSummary", name: "IncidentRecordSummary")
    IncidentRecordSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#IncidentRecordSummaryList", name: "IncidentRecordSummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    IncidentSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#IncidentSource", name: "IncidentSource", traits: {"smithy.api#length" => {"max" => 50}})
    IncidentSummary = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#IncidentSummary", name: "IncidentSummary", traits: {"smithy.api#length" => {"max" => 8000}})
    IncidentTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#IncidentTemplate", name: "IncidentTemplate")
    IncidentTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#IncidentTitle", name: "IncidentTitle", traits: {"smithy.api#length" => {"max" => 200}})
    IntegerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#IntegerList", name: "IntegerList", traits: {"smithy.api#length" => {"max" => 100}})
    Integration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#Integration", name: "Integration")
    Integrations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#Integrations", name: "Integrations", traits: {"smithy.api#length" => {"max" => 1}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ItemIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ItemIdentifier", name: "ItemIdentifier")
    ItemType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#ItemType", name: "ItemType", traits: {"smithy.api#enum" => [{"value" => "ANALYSIS", "name" => "ANALYSIS"}, {"value" => "INCIDENT", "name" => "INCIDENT"}, {"value" => "METRIC", "name" => "METRIC"}, {"value" => "PARENT", "name" => "PARENT"}, {"value" => "ATTACHMENT", "name" => "ATTACHMENT"}, {"value" => "OTHER", "name" => "OTHER"}, {"value" => "AUTOMATION", "name" => "AUTOMATION"}, {"value" => "INVOLVED_RESOURCE", "name" => "INVOLVED_RESOURCE"}, {"value" => "TASK", "name" => "TASK"}]})
    ItemValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#ItemValue", name: "ItemValue")
    ListIncidentFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListIncidentFindingsInput", name: "ListIncidentFindingsInput")
    ListIncidentFindingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListIncidentFindingsOutput", name: "ListIncidentFindingsOutput")
    ListIncidentRecordsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListIncidentRecordsOperationInput", name: "ListIncidentRecordsOperationInput")
    ListIncidentRecordsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListIncidentRecordsOperationOutput", name: "ListIncidentRecordsOperationOutput")
    ListRelatedItemsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListRelatedItemsOperationInput", name: "ListRelatedItemsOperationInput")
    ListRelatedItemsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListRelatedItemsOperationOutput", name: "ListRelatedItemsOperationOutput")
    ListReplicationSetsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListReplicationSetsOperationInput", name: "ListReplicationSetsOperationInput")
    ListReplicationSetsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListReplicationSetsOperationOutput", name: "ListReplicationSetsOperationOutput")
    ListResponsePlansOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListResponsePlansOperationInput", name: "ListResponsePlansOperationInput")
    ListResponsePlansOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListResponsePlansOperationOutput", name: "ListResponsePlansOperationOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTimelineEventsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListTimelineEventsOperationInput", name: "ListTimelineEventsOperationInput")
    ListTimelineEventsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ListTimelineEventsOperationOutput", name: "ListTimelineEventsOperationOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ssmincidents#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#MetricDefinition", name: "MetricDefinition", traits: {"smithy.api#length" => {"max" => 4000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"max" => 2000}})
    NotificationTargetItem = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#NotificationTargetItem", name: "NotificationTargetItem")
    NotificationTargetSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#NotificationTargetSet", name: "NotificationTargetSet", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PagerDutyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#PagerDutyConfiguration", name: "PagerDutyConfiguration")
    PagerDutyIncidentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#PagerDutyIncidentConfiguration", name: "PagerDutyIncidentConfiguration")
    PagerDutyIncidentDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#PagerDutyIncidentDetail", name: "PagerDutyIncidentDetail")
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#Policy", name: "Policy", traits: {"smithy.api#length" => {"max" => 4000}})
    PolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#PolicyId", name: "PolicyId", traits: {"smithy.api#length" => {"max" => 256}})
    PutResourcePolicyOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#PutResourcePolicyOperationInput", name: "PutResourcePolicyOperationInput")
    PutResourcePolicyOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#PutResourcePolicyOperationOutput", name: "PutResourcePolicyOperationOutput")
    RawData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#RawData", name: "RawData", traits: {"smithy.api#length" => {"max" => 10000}})
    RegionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#RegionInfo", name: "RegionInfo")
    RegionInfoMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssmincidents#RegionInfoMap", name: "RegionInfoMap")
    RegionMapInput = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssmincidents#RegionMapInput", name: "RegionMapInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    RegionMapInputValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#RegionMapInputValue", name: "RegionMapInputValue")
    RegionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#RegionName", name: "RegionName", traits: {"smithy.api#length" => {"max" => 20}})
    RegionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#RegionStatus", name: "RegionStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE", "documentation" => "All operations have completed successfully and the region is ready to use"}, {"value" => "CREATING", "name" => "CREATING", "documentation" => "The region is in the process of being created."}, {"value" => "DELETING", "name" => "DELETING", "documentation" => "The region is in the process of being deleted."}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "The region is not healthy and we cannot automatically fix it."}]})
    RelatedItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#RelatedItem", name: "RelatedItem")
    RelatedItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#RelatedItemList", name: "RelatedItemList", traits: {"smithy.api#length" => {"max" => 100}})
    RelatedItemsUpdate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#RelatedItemsUpdate", name: "RelatedItemsUpdate")
    ReplicationSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ReplicationSet", name: "ReplicationSet")
    ReplicationSetArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#ReplicationSetArnList", name: "ReplicationSetArnList")
    ReplicationSetStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#ReplicationSetStatus", name: "ReplicationSetStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE", "documentation" => "All operations have completed successfully and the replication set is ready to use"}, {"value" => "CREATING", "name" => "CREATING", "documentation" => "Replication set is in the process of being created."}, {"value" => "UPDATING", "name" => "UPDATING", "documentation" => "Replication set is in the process of being updated."}, {"value" => "DELETING", "name" => "DELETING", "documentation" => "Replication set is in the process of being deleted."}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "Replication set is not healthy and we cannot fix it."}]})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ResourcePolicy", name: "ResourcePolicy")
    ResourcePolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#ResourcePolicyList", name: "ResourcePolicyList", traits: {"smithy.api#length" => {"max" => 100}})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#ResourceType", name: "ResourceType", traits: {"smithy.api#enum" => [{"value" => "RESPONSE_PLAN", "name" => "RESPONSE_PLAN"}, {"value" => "INCIDENT_RECORD", "name" => "INCIDENT_RECORD"}, {"value" => "TIMELINE_EVENT", "name" => "TIMELINE_EVENT"}, {"value" => "REPLICATION_SET", "name" => "REPLICATION_SET"}, {"value" => "RESOURCE_POLICY", "name" => "RESOURCE_POLICY"}]})
    ResponsePlanDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#ResponsePlanDisplayName", name: "ResponsePlanDisplayName", traits: {"smithy.api#length" => {"max" => 200}})
    ResponsePlanName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#ResponsePlanName", name: "ResponsePlanName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    ResponsePlanSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ResponsePlanSummary", name: "ResponsePlanSummary")
    ResponsePlanSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#ResponsePlanSummaryList", name: "ResponsePlanSummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#RoleArn", name: "RoleArn", traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"max" => 1000}, "smithy.api#pattern" => "^arn:aws(-cn|-us-gov)?:iam::([0-9]{12})?:role/.+$"})
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#ServiceCode", name: "ServiceCode", traits: {"smithy.api#enum" => [{"value" => "ssm-incidents", "name" => "SSM_INCIDENTS"}]})
    ServicePrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#ServicePrincipal", name: "ServicePrincipal", traits: {"smithy.api#length" => {"max" => 1000}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SnsArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#SnsArn", name: "SnsArn", traits: {"aws.api#arnReference" => {"type" => "AWS::SNS::Topic"}, "smithy.api#length" => {"max" => 1000}})
    SortOrder = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#SortOrder", name: "SortOrder", traits: {"smithy.api#enum" => [{"value" => "ASCENDING", "name" => "ASCENDING"}, {"value" => "DESCENDING", "name" => "DESCENDING"}]})
    SseKmsKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#SseKmsKey", name: "SseKmsKey", traits: {"smithy.api#length" => {"max" => 2048}})
    SsmAutomation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#SsmAutomation", name: "SsmAutomation")
    SsmContactsArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#SsmContactsArn", name: "SsmContactsArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws(-cn|-us-gov)?:ssm-contacts:[a-z0-9-]*:([0-9]{12}):contact/[a-z0-9_-]+$"})
    SsmParameterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#SsmParameterValues", name: "SsmParameterValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SsmParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssmincidents#SsmParameters", name: "SsmParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    SsmTargetAccount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#SsmTargetAccount", name: "SsmTargetAccount", traits: {"smithy.api#enum" => [{"value" => "RESPONSE_PLAN_OWNER_ACCOUNT", "name" => "RESPONSE_PLAN_OWNER_ACCOUNT"}, {"value" => "IMPACTED_ACCOUNT", "name" => "IMPACTED_ACCOUNT"}]})
    StartIncidentOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#StartIncidentOperationInput", name: "StartIncidentOperationInput")
    StartIncidentOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#StartIncidentOperationOutput", name: "StartIncidentOperationOutput")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#StringList", name: "StringList", traits: {"smithy.api#length" => {"max" => 100}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[A-Za-z0-9 _=@:.+-/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssmincidents#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMapUpdate = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssmincidents#TagMapUpdate", name: "TagMapUpdate", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9 _=@:.+-/]*$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimelineEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#TimelineEvent", name: "TimelineEvent")
    TimelineEventSort = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#TimelineEventSort", name: "TimelineEventSort", traits: {"smithy.api#enum" => [{"value" => "EVENT_TIME", "name" => "EVENT_TIME"}]})
    TimelineEventType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#TimelineEventType", name: "TimelineEventType", traits: {"smithy.api#length" => {"max" => 100}})
    TriggerDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#TriggerDetails", name: "TriggerDetails")
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#UUID", name: "UUID", traits: {"smithy.api#length" => {"max" => 50}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmincidents#UpdateActionList", name: "UpdateActionList")
    UpdateDeletionProtectionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UpdateDeletionProtectionOperationInput", name: "UpdateDeletionProtectionOperationInput")
    UpdateDeletionProtectionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UpdateDeletionProtectionOperationOutput", name: "UpdateDeletionProtectionOperationOutput")
    UpdateIncidentRecordOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UpdateIncidentRecordOperationInput", name: "UpdateIncidentRecordOperationInput")
    UpdateIncidentRecordOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UpdateIncidentRecordOperationOutput", name: "UpdateIncidentRecordOperationOutput")
    UpdateRelatedItemsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UpdateRelatedItemsOperationInput", name: "UpdateRelatedItemsOperationInput")
    UpdateRelatedItemsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UpdateRelatedItemsOperationOutput", name: "UpdateRelatedItemsOperationOutput")
    UpdateReplicationSetAction = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.ssmincidents#UpdateReplicationSetAction", name: "UpdateReplicationSetAction")
    UpdateReplicationSetOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UpdateReplicationSetOperationInput", name: "UpdateReplicationSetOperationInput")
    UpdateReplicationSetOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UpdateReplicationSetOperationOutput", name: "UpdateReplicationSetOperationOutput")
    UpdateResponsePlanOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UpdateResponsePlanOperationInput", name: "UpdateResponsePlanOperationInput")
    UpdateResponsePlanOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UpdateResponsePlanOperationOutput", name: "UpdateResponsePlanOperationOutput")
    UpdateTimelineEventOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UpdateTimelineEventOperationInput", name: "UpdateTimelineEventOperationInput")
    UpdateTimelineEventOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#UpdateTimelineEventOperationOutput", name: "UpdateTimelineEventOperationOutput")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#Url", name: "Url", traits: {"smithy.api#length" => {"max" => 1000}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmincidents#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VariableType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmincidents#VariableType", name: "VariableType", traits: {"smithy.api#enum" => [{"value" => "INCIDENT_RECORD_ARN", "name" => "INCIDENT_RECORD_ARN"}, {"value" => "INVOLVED_RESOURCES", "name" => "INVOLVED_RESOURCES"}]})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Action.add_member(:ssm_automation, Types::Action::SsmAutomation, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmAutomation, location_name: "ssmAutomation"))
    Action.add_member(:unknown, Types::Action::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Action.type = Types::Action
    ActionsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Action)
    AddRegionAction.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, location_name: "regionName", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    AddRegionAction.add_member(:sse_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SseKmsKey, location_name: "sseKmsKeyId"))
    AddRegionAction.type = Types::AddRegionAction
    AttributeValueList.add_member(:string_values, Types::AttributeValueList::StringValues, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "stringValues"))
    AttributeValueList.add_member(:integer_values, Types::AttributeValueList::IntegerValues, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, location_name: "integerValues"))
    AttributeValueList.add_member(:unknown, Types::AttributeValueList::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AttributeValueList.type = Types::AttributeValueList
    AutomationExecution.add_member(:ssm_execution_arn, Types::AutomationExecution::SsmExecutionArn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "ssmExecutionArn", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    AutomationExecution.add_member(:unknown, Types::AutomationExecution::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AutomationExecution.type = Types::AutomationExecution
    AutomationExecutionSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecution)
    BatchGetIncidentFindingsError.add_member(:finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId, location_name: "findingId", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    BatchGetIncidentFindingsError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    BatchGetIncidentFindingsError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    BatchGetIncidentFindingsError.type = Types::BatchGetIncidentFindingsError
    BatchGetIncidentFindingsErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetIncidentFindingsError)
    BatchGetIncidentFindingsInput.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    BatchGetIncidentFindingsInput.add_member(:finding_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingIdList, location_name: "findingIds", traits: {"smithy.api#required" => {}}))
    BatchGetIncidentFindingsInput.type = Types::BatchGetIncidentFindingsInput
    BatchGetIncidentFindingsOutput.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingList, location_name: "findings", traits: {"smithy.api#required" => {}}))
    BatchGetIncidentFindingsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetIncidentFindingsErrorList, location_name: "errors", traits: {"smithy.api#required" => {}}))
    BatchGetIncidentFindingsOutput.type = Types::BatchGetIncidentFindingsOutput
    ChatChannel.add_member(:empty, Types::ChatChannel::Empty, ::Smithy::Schema::Shapes::MemberShape.new(target: EmptyChatChannel, location_name: "empty"))
    ChatChannel.add_member(:chatbot_sns, Types::ChatChannel::ChatbotSns, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatbotSnsConfigurationSet, location_name: "chatbotSns"))
    ChatChannel.add_member(:unknown, Types::ChatChannel::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ChatChannel.type = Types::ChatChannel
    ChatbotSnsConfigurationSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SnsArn, traits: {"smithy.api#tags" => ["logs_investigations"]})
    CloudFormationStackUpdate.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "startTime", traits: {"smithy.api#required" => {}}))
    CloudFormationStackUpdate.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "endTime"))
    CloudFormationStackUpdate.add_member(:stack_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "stackArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    CloudFormationStackUpdate.type = Types::CloudFormationStackUpdate
    CodeDeployDeployment.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "startTime", traits: {"smithy.api#required" => {}}))
    CodeDeployDeployment.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "endTime"))
    CodeDeployDeployment.add_member(:deployment_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "deploymentGroupArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    CodeDeployDeployment.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "deploymentId", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    CodeDeployDeployment.type = Types::CodeDeployDeployment
    Condition.add_member(:before, Types::Condition::Before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "before", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    Condition.add_member(:after, Types::Condition::After, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "after", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    Condition.add_member(:equals, Types::Condition::Equals, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, location_name: "equals"))
    Condition.add_member(:unknown, Types::Condition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Condition.type = Types::Condition
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceIdentifier"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "resourceType"))
    ConflictException.add_member(:retry_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "retryAfter"))
    ConflictException.type = Types::ConflictException
    CreateReplicationSetOperationInput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionMapInput, location_name: "regions", traits: {"smithy.api#required" => {}}))
    CreateReplicationSetOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    CreateReplicationSetOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateReplicationSetOperationInput.type = Types::CreateReplicationSetOperationInput
    CreateReplicationSetOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateReplicationSetOperationOutput.type = Types::CreateReplicationSetOperationOutput
    CreateResponsePlanOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    CreateResponsePlanOperationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsePlanName, location_name: "name", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    CreateResponsePlanOperationInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsePlanDisplayName, location_name: "displayName"))
    CreateResponsePlanOperationInput.add_member(:incident_template, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentTemplate, location_name: "incidentTemplate", traits: {"smithy.api#required" => {}}))
    CreateResponsePlanOperationInput.add_member(:chat_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatChannel, location_name: "chatChannel"))
    CreateResponsePlanOperationInput.add_member(:engagements, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementSet, location_name: "engagements"))
    CreateResponsePlanOperationInput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsList, location_name: "actions"))
    CreateResponsePlanOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateResponsePlanOperationInput.add_member(:integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: Integrations, location_name: "integrations"))
    CreateResponsePlanOperationInput.type = Types::CreateResponsePlanOperationInput
    CreateResponsePlanOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateResponsePlanOperationOutput.type = Types::CreateResponsePlanOperationOutput
    CreateTimelineEventOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    CreateTimelineEventOperationInput.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    CreateTimelineEventOperationInput.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "eventTime", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    CreateTimelineEventOperationInput.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TimelineEventType, location_name: "eventType", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    CreateTimelineEventOperationInput.add_member(:event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EventData, location_name: "eventData", traits: {"smithy.api#required" => {}}))
    CreateTimelineEventOperationInput.add_member(:event_references, ::Smithy::Schema::Shapes::MemberShape.new(target: EventReferenceList, location_name: "eventReferences"))
    CreateTimelineEventOperationInput.type = Types::CreateTimelineEventOperationInput
    CreateTimelineEventOperationOutput.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#required" => {}}))
    CreateTimelineEventOperationOutput.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "eventId", traits: {"smithy.api#required" => {}}))
    CreateTimelineEventOperationOutput.type = Types::CreateTimelineEventOperationOutput
    DeleteIncidentRecordOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    DeleteIncidentRecordOperationInput.type = Types::DeleteIncidentRecordOperationInput
    DeleteIncidentRecordOperationOutput.type = Types::DeleteIncidentRecordOperationOutput
    DeleteRegionAction.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, location_name: "regionName", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    DeleteRegionAction.type = Types::DeleteRegionAction
    DeleteReplicationSetOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    DeleteReplicationSetOperationInput.type = Types::DeleteReplicationSetOperationInput
    DeleteReplicationSetOperationOutput.type = Types::DeleteReplicationSetOperationOutput
    DeleteResourcePolicyOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    DeleteResourcePolicyOperationInput.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, location_name: "policyId", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigation"]}))
    DeleteResourcePolicyOperationInput.type = Types::DeleteResourcePolicyOperationInput
    DeleteResourcePolicyOperationOutput.type = Types::DeleteResourcePolicyOperationOutput
    DeleteResponsePlanOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    DeleteResponsePlanOperationInput.type = Types::DeleteResponsePlanOperationInput
    DeleteResponsePlanOperationOutput.type = Types::DeleteResponsePlanOperationOutput
    DeleteTimelineEventOperationInput.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    DeleteTimelineEventOperationInput.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "eventId", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    DeleteTimelineEventOperationInput.type = Types::DeleteTimelineEventOperationInput
    DeleteTimelineEventOperationOutput.type = Types::DeleteTimelineEventOperationOutput
    DynamicSsmParameterValue.add_member(:variable, Types::DynamicSsmParameterValue::Variable, ::Smithy::Schema::Shapes::MemberShape.new(target: VariableType, location_name: "variable", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    DynamicSsmParameterValue.add_member(:unknown, Types::DynamicSsmParameterValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DynamicSsmParameterValue.type = Types::DynamicSsmParameterValue
    DynamicSsmParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DynamicSsmParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicSsmParameterValue)
    EmptyChatChannel.type = Types::EmptyChatChannel
    EngagementSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SsmContactsArn, traits: {"smithy.api#tags" => ["logs_investigations"]})
    EventReference.add_member(:resource, Types::EventReference::Resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resource", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    EventReference.add_member(:related_item_id, Types::EventReference::RelatedItemId, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedId, location_name: "relatedItemId", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    EventReference.add_member(:unknown, Types::EventReference::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EventReference.type = Types::EventReference
    EventReferenceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventReference)
    EventSummary.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#required" => {}}))
    EventSummary.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "eventId", traits: {"smithy.api#required" => {}}))
    EventSummary.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "eventTime", traits: {"smithy.api#required" => {}}))
    EventSummary.add_member(:event_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "eventUpdatedTime", traits: {"smithy.api#required" => {}}))
    EventSummary.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TimelineEventType, location_name: "eventType", traits: {"smithy.api#required" => {}}))
    EventSummary.add_member(:event_references, ::Smithy::Schema::Shapes::MemberShape.new(target: EventReferenceList, location_name: "eventReferences"))
    EventSummary.type = Types::EventSummary
    EventSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventSummary)
    Filter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "key", traits: {"smithy.api#length" => {"max" => 50}, "smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    Filter.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, location_name: "condition", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Filter)
    Finding.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    Finding.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModifiedTime", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingDetails, location_name: "details"))
    Finding.type = Types::Finding
    FindingDetails.add_member(:code_deploy_deployment, Types::FindingDetails::CodeDeployDeployment, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeDeployDeployment, location_name: "codeDeployDeployment"))
    FindingDetails.add_member(:cloud_formation_stack_update, Types::FindingDetails::CloudFormationStackUpdate, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationStackUpdate, location_name: "cloudFormationStackUpdate"))
    FindingDetails.add_member(:unknown, Types::FindingDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FindingDetails.type = Types::FindingDetails
    FindingIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId)
    FindingList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Finding)
    FindingSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId, location_name: "id", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    FindingSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModifiedTime", traits: {"smithy.api#required" => {}}))
    FindingSummary.type = Types::FindingSummary
    FindingSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSummary)
    GetIncidentRecordOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    GetIncidentRecordOperationInput.type = Types::GetIncidentRecordOperationInput
    GetIncidentRecordOperationOutput.add_member(:incident_record, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentRecord, location_name: "incidentRecord", traits: {"smithy.api#required" => {}}))
    GetIncidentRecordOperationOutput.type = Types::GetIncidentRecordOperationOutput
    GetReplicationSetOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    GetReplicationSetOperationInput.type = Types::GetReplicationSetOperationInput
    GetReplicationSetOperationOutput.add_member(:replication_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationSet, location_name: "replicationSet", traits: {"smithy.api#required" => {}}))
    GetReplicationSetOperationOutput.type = Types::GetReplicationSetOperationOutput
    GetResourcePoliciesOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    GetResourcePoliciesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    GetResourcePoliciesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    GetResourcePoliciesOperationInput.type = Types::GetResourcePoliciesOperationInput
    GetResourcePoliciesOperationOutput.add_member(:resource_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyList, location_name: "resourcePolicies", traits: {"smithy.api#required" => {}}))
    GetResourcePoliciesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    GetResourcePoliciesOperationOutput.type = Types::GetResourcePoliciesOperationOutput
    GetResponsePlanOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    GetResponsePlanOperationInput.type = Types::GetResponsePlanOperationInput
    GetResponsePlanOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetResponsePlanOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsePlanName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetResponsePlanOperationOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsePlanDisplayName, location_name: "displayName"))
    GetResponsePlanOperationOutput.add_member(:incident_template, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentTemplate, location_name: "incidentTemplate", traits: {"smithy.api#required" => {}}))
    GetResponsePlanOperationOutput.add_member(:chat_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatChannel, location_name: "chatChannel"))
    GetResponsePlanOperationOutput.add_member(:engagements, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementSet, location_name: "engagements"))
    GetResponsePlanOperationOutput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsList, location_name: "actions"))
    GetResponsePlanOperationOutput.add_member(:integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: Integrations, location_name: "integrations"))
    GetResponsePlanOperationOutput.type = Types::GetResponsePlanOperationOutput
    GetTimelineEventOperationInput.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#httpQuery" => "incidentRecordArn", "smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    GetTimelineEventOperationInput.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "eventId", traits: {"smithy.api#httpQuery" => "eventId", "smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    GetTimelineEventOperationInput.type = Types::GetTimelineEventOperationInput
    GetTimelineEventOperationOutput.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: TimelineEvent, location_name: "event", traits: {"smithy.api#required" => {}}))
    GetTimelineEventOperationOutput.type = Types::GetTimelineEventOperationOutput
    IncidentRecord.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    IncidentRecord.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentTitle, location_name: "title", traits: {"smithy.api#required" => {}}))
    IncidentRecord.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentSummary, location_name: "summary"))
    IncidentRecord.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentRecordStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    IncidentRecord.add_member(:impact, ::Smithy::Schema::Shapes::MemberShape.new(target: Impact, location_name: "impact", traits: {"smithy.api#required" => {}}))
    IncidentRecord.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    IncidentRecord.add_member(:resolved_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "resolvedTime"))
    IncidentRecord.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModifiedTime", traits: {"smithy.api#required" => {}}))
    IncidentRecord.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "lastModifiedBy", traits: {"smithy.api#required" => {}}))
    IncidentRecord.add_member(:automation_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationExecutionSet, location_name: "automationExecutions"))
    IncidentRecord.add_member(:incident_record_source, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentRecordSource, location_name: "incidentRecordSource", traits: {"smithy.api#required" => {}}))
    IncidentRecord.add_member(:dedupe_string, ::Smithy::Schema::Shapes::MemberShape.new(target: DedupeString, location_name: "dedupeString", traits: {"smithy.api#required" => {}}))
    IncidentRecord.add_member(:chat_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatChannel, location_name: "chatChannel"))
    IncidentRecord.add_member(:notification_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTargetSet, location_name: "notificationTargets"))
    IncidentRecord.type = Types::IncidentRecord
    IncidentRecordSource.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "createdBy", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    IncidentRecordSource.add_member(:invoked_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, location_name: "invokedBy", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    IncidentRecordSource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    IncidentRecordSource.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentSource, location_name: "source", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    IncidentRecordSource.type = Types::IncidentRecordSource
    IncidentRecordSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    IncidentRecordSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentTitle, location_name: "title", traits: {"smithy.api#required" => {}}))
    IncidentRecordSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentRecordStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    IncidentRecordSummary.add_member(:impact, ::Smithy::Schema::Shapes::MemberShape.new(target: Impact, location_name: "impact", traits: {"smithy.api#required" => {}}))
    IncidentRecordSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    IncidentRecordSummary.add_member(:resolved_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "resolvedTime"))
    IncidentRecordSummary.add_member(:incident_record_source, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentRecordSource, location_name: "incidentRecordSource", traits: {"smithy.api#required" => {}}))
    IncidentRecordSummary.type = Types::IncidentRecordSummary
    IncidentRecordSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentRecordSummary)
    IncidentTemplate.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentTitle, location_name: "title", traits: {"smithy.api#required" => {}}))
    IncidentTemplate.add_member(:impact, ::Smithy::Schema::Shapes::MemberShape.new(target: Impact, location_name: "impact", traits: {"smithy.api#required" => {}}))
    IncidentTemplate.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentSummary, location_name: "summary"))
    IncidentTemplate.add_member(:dedupe_string, ::Smithy::Schema::Shapes::MemberShape.new(target: DedupeString, location_name: "dedupeString", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    IncidentTemplate.add_member(:notification_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTargetSet, location_name: "notificationTargets"))
    IncidentTemplate.add_member(:incident_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "incidentTags"))
    IncidentTemplate.type = Types::IncidentTemplate
    IntegerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, traits: {"smithy.api#tags" => ["logs_investigations"]})
    Integration.add_member(:pager_duty_configuration, Types::Integration::PagerDutyConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: PagerDutyConfiguration, location_name: "pagerDutyConfiguration"))
    Integration.add_member(:unknown, Types::Integration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Integration.type = Types::Integration
    Integrations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Integration)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ItemIdentifier.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    ItemIdentifier.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemType, location_name: "type", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    ItemIdentifier.type = Types::ItemIdentifier
    ItemValue.add_member(:arn, Types::ItemValue::Arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ItemValue.add_member(:url, Types::ItemValue::Url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, location_name: "url"))
    ItemValue.add_member(:metric_definition, Types::ItemValue::MetricDefinition, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDefinition, location_name: "metricDefinition"))
    ItemValue.add_member(:pager_duty_incident_detail, Types::ItemValue::PagerDutyIncidentDetail, ::Smithy::Schema::Shapes::MemberShape.new(target: PagerDutyIncidentDetail, location_name: "pagerDutyIncidentDetail"))
    ItemValue.add_member(:unknown, Types::ItemValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ItemValue.type = Types::ItemValue
    ListIncidentFindingsInput.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    ListIncidentFindingsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}, "smithy.api#tags" => ["logs_investigations"]}))
    ListIncidentFindingsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListIncidentFindingsInput.type = Types::ListIncidentFindingsInput
    ListIncidentFindingsOutput.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSummaryList, location_name: "findings", traits: {"smithy.api#required" => {}}))
    ListIncidentFindingsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListIncidentFindingsOutput.type = Types::ListIncidentFindingsOutput
    ListIncidentRecordsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListIncidentRecordsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListIncidentRecordsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListIncidentRecordsOperationInput.type = Types::ListIncidentRecordsOperationInput
    ListIncidentRecordsOperationOutput.add_member(:incident_record_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentRecordSummaryList, location_name: "incidentRecordSummaries", traits: {"smithy.api#required" => {}}))
    ListIncidentRecordsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListIncidentRecordsOperationOutput.type = Types::ListIncidentRecordsOperationOutput
    ListRelatedItemsOperationInput.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    ListRelatedItemsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListRelatedItemsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListRelatedItemsOperationInput.type = Types::ListRelatedItemsOperationInput
    ListRelatedItemsOperationOutput.add_member(:related_items, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedItemList, location_name: "relatedItems", traits: {"smithy.api#required" => {}}))
    ListRelatedItemsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListRelatedItemsOperationOutput.type = Types::ListRelatedItemsOperationOutput
    ListReplicationSetsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListReplicationSetsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListReplicationSetsOperationInput.type = Types::ListReplicationSetsOperationInput
    ListReplicationSetsOperationOutput.add_member(:replication_set_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationSetArnList, location_name: "replicationSetArns", traits: {"smithy.api#required" => {}}))
    ListReplicationSetsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListReplicationSetsOperationOutput.type = Types::ListReplicationSetsOperationOutput
    ListResponsePlansOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListResponsePlansOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListResponsePlansOperationInput.type = Types::ListResponsePlansOperationInput
    ListResponsePlansOperationOutput.add_member(:response_plan_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsePlanSummaryList, location_name: "responsePlanSummaries", traits: {"smithy.api#required" => {}}))
    ListResponsePlansOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListResponsePlansOperationOutput.type = Types::ListResponsePlansOperationOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTimelineEventsOperationInput.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    ListTimelineEventsOperationInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListTimelineEventsOperationInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: TimelineEventSort, location_name: "sortBy", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListTimelineEventsOperationInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, location_name: "sortOrder", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListTimelineEventsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListTimelineEventsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    ListTimelineEventsOperationInput.type = Types::ListTimelineEventsOperationInput
    ListTimelineEventsOperationOutput.add_member(:event_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSummaryList, location_name: "eventSummaries", traits: {"smithy.api#required" => {}}))
    ListTimelineEventsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListTimelineEventsOperationOutput.type = Types::ListTimelineEventsOperationOutput
    NotificationTargetItem.add_member(:sns_topic_arn, Types::NotificationTargetItem::SnsTopicArn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "snsTopicArn", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    NotificationTargetItem.add_member(:unknown, Types::NotificationTargetItem::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    NotificationTargetItem.type = Types::NotificationTargetItem
    NotificationTargetSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTargetItem)
    PagerDutyConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#required" => {}}))
    PagerDutyConfiguration.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "secretId", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#required" => {}}))
    PagerDutyConfiguration.add_member(:pager_duty_incident_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PagerDutyIncidentConfiguration, location_name: "pagerDutyIncidentConfiguration", traits: {"smithy.api#required" => {}}))
    PagerDutyConfiguration.type = Types::PagerDutyConfiguration
    PagerDutyIncidentConfiguration.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#required" => {}}))
    PagerDutyIncidentConfiguration.type = Types::PagerDutyIncidentConfiguration
    PagerDutyIncidentDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#required" => {}}))
    PagerDutyIncidentDetail.add_member(:auto_resolve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "autoResolve"))
    PagerDutyIncidentDetail.add_member(:secret_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "secretId", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}}))
    PagerDutyIncidentDetail.type = Types::PagerDutyIncidentDetail
    PutResourcePolicyOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    PutResourcePolicyOperationInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, location_name: "policy", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    PutResourcePolicyOperationInput.type = Types::PutResourcePolicyOperationInput
    PutResourcePolicyOperationOutput.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, location_name: "policyId", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyOperationOutput.type = Types::PutResourcePolicyOperationOutput
    RegionInfo.add_member(:sse_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SseKmsKey, location_name: "sseKmsKeyId"))
    RegionInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    RegionInfo.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    RegionInfo.add_member(:status_update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "statusUpdateDateTime", traits: {"smithy.api#required" => {}}))
    RegionInfo.type = Types::RegionInfo
    RegionInfoMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName)
    RegionInfoMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RegionInfo)
    RegionMapInput.key = ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, traits: {"smithy.api#tags" => ["logs_investigations"]})
    RegionMapInput.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RegionMapInputValue)
    RegionMapInputValue.add_member(:sse_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SseKmsKey, location_name: "sseKmsKeyId"))
    RegionMapInputValue.type = Types::RegionMapInputValue
    RelatedItem.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemIdentifier, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    RelatedItem.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "title", traits: {"smithy.api#length" => {"max" => 200}}))
    RelatedItem.add_member(:generated_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedId, location_name: "generatedId"))
    RelatedItem.type = Types::RelatedItem
    RelatedItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedItem)
    RelatedItemsUpdate.add_member(:item_to_add, Types::RelatedItemsUpdate::ItemToAdd, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedItem, location_name: "itemToAdd"))
    RelatedItemsUpdate.add_member(:item_to_remove, Types::RelatedItemsUpdate::ItemToRemove, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemIdentifier, location_name: "itemToRemove"))
    RelatedItemsUpdate.add_member(:unknown, Types::RelatedItemsUpdate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RelatedItemsUpdate.type = Types::RelatedItemsUpdate
    ReplicationSet.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn"))
    ReplicationSet.add_member(:region_map, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionInfoMap, location_name: "regionMap", traits: {"smithy.api#required" => {}}))
    ReplicationSet.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationSetStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ReplicationSet.add_member(:deletion_protected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "deletionProtected", traits: {"smithy.api#required" => {}}))
    ReplicationSet.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdTime", traits: {"smithy.api#required" => {}}))
    ReplicationSet.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "createdBy", traits: {"smithy.api#required" => {}}))
    ReplicationSet.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModifiedTime", traits: {"smithy.api#required" => {}}))
    ReplicationSet.add_member(:last_modified_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "lastModifiedBy", traits: {"smithy.api#required" => {}}))
    ReplicationSet.type = Types::ReplicationSet
    ReplicationSetArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Arn)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceIdentifier"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicy.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, location_name: "policyDocument", traits: {"smithy.api#required" => {}}))
    ResourcePolicy.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, location_name: "policyId", traits: {"smithy.api#required" => {}}))
    ResourcePolicy.add_member(:ram_resource_share_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ramResourceShareRegion", traits: {"smithy.api#required" => {}}))
    ResourcePolicy.type = Types::ResourcePolicy
    ResourcePolicyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy)
    ResponsePlanSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ResponsePlanSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsePlanName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ResponsePlanSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsePlanDisplayName, location_name: "displayName"))
    ResponsePlanSummary.type = Types::ResponsePlanSummary
    ResponsePlanSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsePlanSummary)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceIdentifier"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SsmAutomation.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    SsmAutomation.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "documentName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-.:/]{3,128}$", "smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    SsmAutomation.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "documentVersion", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#tags" => ["logs_investigations"]}))
    SsmAutomation.add_member(:target_account, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmTargetAccount, location_name: "targetAccount", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    SsmAutomation.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameters, location_name: "parameters"))
    SsmAutomation.add_member(:dynamic_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicSsmParameters, location_name: "dynamicParameters"))
    SsmAutomation.type = Types::SsmAutomation
    SsmParameterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    SsmParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    SsmParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterValues)
    StartIncidentOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    StartIncidentOperationInput.add_member(:response_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "responsePlanArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    StartIncidentOperationInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentTitle, location_name: "title"))
    StartIncidentOperationInput.add_member(:impact, ::Smithy::Schema::Shapes::MemberShape.new(target: Impact, location_name: "impact"))
    StartIncidentOperationInput.add_member(:trigger_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerDetails, location_name: "triggerDetails"))
    StartIncidentOperationInput.add_member(:related_items, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedItemList, location_name: "relatedItems"))
    StartIncidentOperationInput.type = Types::StartIncidentOperationInput
    StartIncidentOperationOutput.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#required" => {}}))
    StartIncidentOperationOutput.type = Types::StartIncidentOperationOutput
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"max" => 1000}, "smithy.api#tags" => ["logs_investigations"]})
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, traits: {"smithy.api#tags" => ["logs_investigations"]})
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, traits: {"smithy.api#tags" => ["logs_investigations"]})
    TagMapUpdate.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, traits: {"smithy.api#tags" => ["logs_investigations"]})
    TagMapUpdate.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, traits: {"smithy.api#tags" => ["logs_investigations"]})
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimelineEvent.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#required" => {}}))
    TimelineEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "eventId", traits: {"smithy.api#required" => {}}))
    TimelineEvent.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "eventTime", traits: {"smithy.api#required" => {}}))
    TimelineEvent.add_member(:event_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "eventUpdatedTime", traits: {"smithy.api#required" => {}}))
    TimelineEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TimelineEventType, location_name: "eventType", traits: {"smithy.api#required" => {}}))
    TimelineEvent.add_member(:event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EventData, location_name: "eventData", traits: {"smithy.api#required" => {}}))
    TimelineEvent.add_member(:event_references, ::Smithy::Schema::Shapes::MemberShape.new(target: EventReferenceList, location_name: "eventReferences"))
    TimelineEvent.type = Types::TimelineEvent
    TriggerDetails.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentSource, location_name: "source", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    TriggerDetails.add_member(:trigger_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "triggerArn", traits: {"smithy.api#tags" => ["logs_required"]}))
    TriggerDetails.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "timestamp", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    TriggerDetails.add_member(:raw_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RawData, location_name: "rawData"))
    TriggerDetails.type = Types::TriggerDetails
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateActionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateReplicationSetAction)
    UpdateDeletionProtectionOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    UpdateDeletionProtectionOperationInput.add_member(:deletion_protected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "deletionProtected", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    UpdateDeletionProtectionOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    UpdateDeletionProtectionOperationInput.type = Types::UpdateDeletionProtectionOperationInput
    UpdateDeletionProtectionOperationOutput.type = Types::UpdateDeletionProtectionOperationOutput
    UpdateIncidentRecordOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    UpdateIncidentRecordOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    UpdateIncidentRecordOperationInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentTitle, location_name: "title"))
    UpdateIncidentRecordOperationInput.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentSummary, location_name: "summary"))
    UpdateIncidentRecordOperationInput.add_member(:impact, ::Smithy::Schema::Shapes::MemberShape.new(target: Impact, location_name: "impact"))
    UpdateIncidentRecordOperationInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentRecordStatus, location_name: "status", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    UpdateIncidentRecordOperationInput.add_member(:chat_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatChannel, location_name: "chatChannel"))
    UpdateIncidentRecordOperationInput.add_member(:notification_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTargetSet, location_name: "notificationTargets"))
    UpdateIncidentRecordOperationInput.type = Types::UpdateIncidentRecordOperationInput
    UpdateIncidentRecordOperationOutput.type = Types::UpdateIncidentRecordOperationOutput
    UpdateRelatedItemsOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    UpdateRelatedItemsOperationInput.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    UpdateRelatedItemsOperationInput.add_member(:related_items_update, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedItemsUpdate, location_name: "relatedItemsUpdate", traits: {"smithy.api#required" => {}}))
    UpdateRelatedItemsOperationInput.type = Types::UpdateRelatedItemsOperationInput
    UpdateRelatedItemsOperationOutput.type = Types::UpdateRelatedItemsOperationOutput
    UpdateReplicationSetAction.add_member(:add_region_action, Types::UpdateReplicationSetAction::AddRegionAction, ::Smithy::Schema::Shapes::MemberShape.new(target: AddRegionAction, location_name: "addRegionAction"))
    UpdateReplicationSetAction.add_member(:delete_region_action, Types::UpdateReplicationSetAction::DeleteRegionAction, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteRegionAction, location_name: "deleteRegionAction"))
    UpdateReplicationSetAction.add_member(:unknown, Types::UpdateReplicationSetAction::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    UpdateReplicationSetAction.type = Types::UpdateReplicationSetAction
    UpdateReplicationSetOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    UpdateReplicationSetOperationInput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateActionList, location_name: "actions", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    UpdateReplicationSetOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    UpdateReplicationSetOperationInput.type = Types::UpdateReplicationSetOperationInput
    UpdateReplicationSetOperationOutput.type = Types::UpdateReplicationSetOperationOutput
    UpdateResponsePlanOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    UpdateResponsePlanOperationInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    UpdateResponsePlanOperationInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponsePlanDisplayName, location_name: "displayName"))
    UpdateResponsePlanOperationInput.add_member(:incident_template_title, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentTitle, location_name: "incidentTemplateTitle"))
    UpdateResponsePlanOperationInput.add_member(:incident_template_impact, ::Smithy::Schema::Shapes::MemberShape.new(target: Impact, location_name: "incidentTemplateImpact"))
    UpdateResponsePlanOperationInput.add_member(:incident_template_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: IncidentSummary, location_name: "incidentTemplateSummary"))
    UpdateResponsePlanOperationInput.add_member(:incident_template_dedupe_string, ::Smithy::Schema::Shapes::MemberShape.new(target: DedupeString, location_name: "incidentTemplateDedupeString", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    UpdateResponsePlanOperationInput.add_member(:incident_template_notification_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTargetSet, location_name: "incidentTemplateNotificationTargets"))
    UpdateResponsePlanOperationInput.add_member(:chat_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatChannel, location_name: "chatChannel"))
    UpdateResponsePlanOperationInput.add_member(:engagements, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementSet, location_name: "engagements"))
    UpdateResponsePlanOperationInput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsList, location_name: "actions"))
    UpdateResponsePlanOperationInput.add_member(:incident_template_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMapUpdate, location_name: "incidentTemplateTags"))
    UpdateResponsePlanOperationInput.add_member(:integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: Integrations, location_name: "integrations"))
    UpdateResponsePlanOperationInput.type = Types::UpdateResponsePlanOperationInput
    UpdateResponsePlanOperationOutput.type = Types::UpdateResponsePlanOperationOutput
    UpdateTimelineEventOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#tags" => ["logs_investigations"]}))
    UpdateTimelineEventOperationInput.add_member(:incident_record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "incidentRecordArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    UpdateTimelineEventOperationInput.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "eventId", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["logs_required"]}))
    UpdateTimelineEventOperationInput.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "eventTime", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    UpdateTimelineEventOperationInput.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TimelineEventType, location_name: "eventType", traits: {"smithy.api#tags" => ["logs_investigations"]}))
    UpdateTimelineEventOperationInput.add_member(:event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EventData, location_name: "eventData"))
    UpdateTimelineEventOperationInput.add_member(:event_references, ::Smithy::Schema::Shapes::MemberShape.new(target: EventReferenceList, location_name: "eventReferences"))
    UpdateTimelineEventOperationInput.type = Types::UpdateTimelineEventOperationInput
    UpdateTimelineEventOperationOutput.type = Types::UpdateTimelineEventOperationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    SSMIncidents = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ssmincidents#SSMIncidents"
      service.name = "SSMIncidents"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "SSM Incidents", "arnNamespace" => "ssm-incidents", "awsProductName" => "AWSSystemsManager", "cloudFormationName" => "SSMIncidents"}, "aws.auth#sigv4" => {"name" => "ssm-incidents"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id"]}, "smithy.api#title" => "AWS Systems Manager Incident Manager"}
      service.add_operation(:batch_get_incident_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#BatchGetIncidentFindings"
        operation.name = "BatchGetIncidentFindings"
        operation.input = BatchGetIncidentFindingsInput
        operation.output = BatchGetIncidentFindingsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/batchGetIncidentFindings"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_replication_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#CreateReplicationSet"
        operation.name = "CreateReplicationSet"
        operation.input = CreateReplicationSetOperationInput
        operation.output = CreateReplicationSetOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/createReplicationSet"}}
      end)
      service.add_operation(:create_response_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#CreateResponsePlan"
        operation.name = "CreateResponsePlan"
        operation.input = CreateResponsePlanOperationInput
        operation.output = CreateResponsePlanOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/createResponsePlan"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_timeline_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#CreateTimelineEvent"
        operation.name = "CreateTimelineEvent"
        operation.input = CreateTimelineEventOperationInput
        operation.output = CreateTimelineEventOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/createTimelineEvent"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_incident_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#DeleteIncidentRecord"
        operation.name = "DeleteIncidentRecord"
        operation.input = DeleteIncidentRecordOperationInput
        operation.output = DeleteIncidentRecordOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/deleteIncidentRecord"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_replication_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#DeleteReplicationSet"
        operation.name = "DeleteReplicationSet"
        operation.input = DeleteReplicationSetOperationInput
        operation.output = DeleteReplicationSetOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/deleteReplicationSet"}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyOperationInput
        operation.output = DeleteResourcePolicyOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/deleteResourcePolicy"}}
      end)
      service.add_operation(:delete_response_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#DeleteResponsePlan"
        operation.name = "DeleteResponsePlan"
        operation.input = DeleteResponsePlanOperationInput
        operation.output = DeleteResponsePlanOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/deleteResponsePlan"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_timeline_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#DeleteTimelineEvent"
        operation.name = "DeleteTimelineEvent"
        operation.input = DeleteTimelineEventOperationInput
        operation.output = DeleteTimelineEventOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/deleteTimelineEvent"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_incident_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#GetIncidentRecord"
        operation.name = "GetIncidentRecord"
        operation.input = GetIncidentRecordOperationInput
        operation.output = GetIncidentRecordOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/getIncidentRecord"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_replication_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#GetReplicationSet"
        operation.name = "GetReplicationSet"
        operation.input = GetReplicationSetOperationInput
        operation.output = GetReplicationSetOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/getReplicationSet"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#GetResourcePolicies"
        operation.name = "GetResourcePolicies"
        operation.input = GetResourcePoliciesOperationInput
        operation.output = GetResourcePoliciesOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/getResourcePolicies"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetResourcePolicies.new
      end)
      service.add_operation(:get_response_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#GetResponsePlan"
        operation.name = "GetResponsePlan"
        operation.input = GetResponsePlanOperationInput
        operation.output = GetResponsePlanOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/getResponsePlan"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_timeline_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#GetTimelineEvent"
        operation.name = "GetTimelineEvent"
        operation.input = GetTimelineEventOperationInput
        operation.output = GetTimelineEventOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/getTimelineEvent"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_incident_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#ListIncidentFindings"
        operation.name = "ListIncidentFindings"
        operation.input = ListIncidentFindingsInput
        operation.output = ListIncidentFindingsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listIncidentFindings"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIncidentFindings.new
      end)
      service.add_operation(:list_incident_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#ListIncidentRecords"
        operation.name = "ListIncidentRecords"
        operation.input = ListIncidentRecordsOperationInput
        operation.output = ListIncidentRecordsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listIncidentRecords"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIncidentRecords.new
      end)
      service.add_operation(:list_related_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#ListRelatedItems"
        operation.name = "ListRelatedItems"
        operation.input = ListRelatedItemsOperationInput
        operation.output = ListRelatedItemsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listRelatedItems"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRelatedItems.new
      end)
      service.add_operation(:list_replication_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#ListReplicationSets"
        operation.name = "ListReplicationSets"
        operation.input = ListReplicationSetsOperationInput
        operation.output = ListReplicationSetsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listReplicationSets"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReplicationSets.new
      end)
      service.add_operation(:list_response_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#ListResponsePlans"
        operation.name = "ListResponsePlans"
        operation.input = ListResponsePlansOperationInput
        operation.output = ListResponsePlansOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listResponsePlans"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResponsePlans.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_timeline_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#ListTimelineEvents"
        operation.name = "ListTimelineEvents"
        operation.input = ListTimelineEventsOperationInput
        operation.output = ListTimelineEventsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listTimelineEvents"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTimelineEvents.new
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyOperationInput
        operation.output = PutResourcePolicyOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/putResourcePolicy"}}
      end)
      service.add_operation(:start_incident, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#StartIncident"
        operation.name = "StartIncident"
        operation.input = StartIncidentOperationInput
        operation.output = StartIncidentOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/startIncident"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_deletion_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#UpdateDeletionProtection"
        operation.name = "UpdateDeletionProtection"
        operation.input = UpdateDeletionProtectionOperationInput
        operation.output = UpdateDeletionProtectionOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/updateDeletionProtection"}}
      end)
      service.add_operation(:update_incident_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#UpdateIncidentRecord"
        operation.name = "UpdateIncidentRecord"
        operation.input = UpdateIncidentRecordOperationInput
        operation.output = UpdateIncidentRecordOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/updateIncidentRecord"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_related_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#UpdateRelatedItems"
        operation.name = "UpdateRelatedItems"
        operation.input = UpdateRelatedItemsOperationInput
        operation.output = UpdateRelatedItemsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/updateRelatedItems"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_replication_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#UpdateReplicationSet"
        operation.name = "UpdateReplicationSet"
        operation.input = UpdateReplicationSetOperationInput
        operation.output = UpdateReplicationSetOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/updateReplicationSet"}}
      end)
      service.add_operation(:update_response_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#UpdateResponsePlan"
        operation.name = "UpdateResponsePlan"
        operation.input = UpdateResponsePlanOperationInput
        operation.output = UpdateResponsePlanOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/updateResponsePlan"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_timeline_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmincidents#UpdateTimelineEvent"
        operation.name = "UpdateTimelineEvent"
        operation.input = UpdateTimelineEventOperationInput
        operation.output = UpdateTimelineEventOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/updateTimelineEvent"}, "smithy.api#idempotent" => {}}
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
