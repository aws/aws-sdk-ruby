# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSMIncidents
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Action = Shapes::UnionShape.new(name: 'Action')
    ActionsList = Shapes::ListShape.new(name: 'ActionsList')
    AddRegionAction = Shapes::StructureShape.new(name: 'AddRegionAction')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AttributeValueList = Shapes::UnionShape.new(name: 'AttributeValueList')
    AutomationExecution = Shapes::UnionShape.new(name: 'AutomationExecution')
    AutomationExecutionSet = Shapes::ListShape.new(name: 'AutomationExecutionSet')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChatChannel = Shapes::UnionShape.new(name: 'ChatChannel')
    ChatbotSnsConfigurationSet = Shapes::ListShape.new(name: 'ChatbotSnsConfigurationSet')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Condition = Shapes::UnionShape.new(name: 'Condition')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateReplicationSetInput = Shapes::StructureShape.new(name: 'CreateReplicationSetInput')
    CreateReplicationSetOutput = Shapes::StructureShape.new(name: 'CreateReplicationSetOutput')
    CreateResponsePlanInput = Shapes::StructureShape.new(name: 'CreateResponsePlanInput')
    CreateResponsePlanOutput = Shapes::StructureShape.new(name: 'CreateResponsePlanOutput')
    CreateTimelineEventInput = Shapes::StructureShape.new(name: 'CreateTimelineEventInput')
    CreateTimelineEventOutput = Shapes::StructureShape.new(name: 'CreateTimelineEventOutput')
    DedupeString = Shapes::StringShape.new(name: 'DedupeString')
    DeleteIncidentRecordInput = Shapes::StructureShape.new(name: 'DeleteIncidentRecordInput')
    DeleteIncidentRecordOutput = Shapes::StructureShape.new(name: 'DeleteIncidentRecordOutput')
    DeleteRegionAction = Shapes::StructureShape.new(name: 'DeleteRegionAction')
    DeleteReplicationSetInput = Shapes::StructureShape.new(name: 'DeleteReplicationSetInput')
    DeleteReplicationSetOutput = Shapes::StructureShape.new(name: 'DeleteReplicationSetOutput')
    DeleteResourcePolicyInput = Shapes::StructureShape.new(name: 'DeleteResourcePolicyInput')
    DeleteResourcePolicyOutput = Shapes::StructureShape.new(name: 'DeleteResourcePolicyOutput')
    DeleteResponsePlanInput = Shapes::StructureShape.new(name: 'DeleteResponsePlanInput')
    DeleteResponsePlanOutput = Shapes::StructureShape.new(name: 'DeleteResponsePlanOutput')
    DeleteTimelineEventInput = Shapes::StructureShape.new(name: 'DeleteTimelineEventInput')
    DeleteTimelineEventOutput = Shapes::StructureShape.new(name: 'DeleteTimelineEventOutput')
    DynamicSsmParameterValue = Shapes::UnionShape.new(name: 'DynamicSsmParameterValue')
    DynamicSsmParameters = Shapes::MapShape.new(name: 'DynamicSsmParameters')
    DynamicSsmParametersKeyString = Shapes::StringShape.new(name: 'DynamicSsmParametersKeyString')
    EmptyChatChannel = Shapes::StructureShape.new(name: 'EmptyChatChannel')
    EngagementSet = Shapes::ListShape.new(name: 'EngagementSet')
    EventData = Shapes::StringShape.new(name: 'EventData')
    EventReference = Shapes::UnionShape.new(name: 'EventReference')
    EventReferenceList = Shapes::ListShape.new(name: 'EventReferenceList')
    EventSummary = Shapes::StructureShape.new(name: 'EventSummary')
    EventSummaryList = Shapes::ListShape.new(name: 'EventSummaryList')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterKeyString = Shapes::StringShape.new(name: 'FilterKeyString')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    GeneratedId = Shapes::StringShape.new(name: 'GeneratedId')
    GetIncidentRecordInput = Shapes::StructureShape.new(name: 'GetIncidentRecordInput')
    GetIncidentRecordOutput = Shapes::StructureShape.new(name: 'GetIncidentRecordOutput')
    GetReplicationSetInput = Shapes::StructureShape.new(name: 'GetReplicationSetInput')
    GetReplicationSetOutput = Shapes::StructureShape.new(name: 'GetReplicationSetOutput')
    GetResourcePoliciesInput = Shapes::StructureShape.new(name: 'GetResourcePoliciesInput')
    GetResourcePoliciesOutput = Shapes::StructureShape.new(name: 'GetResourcePoliciesOutput')
    GetResponsePlanInput = Shapes::StructureShape.new(name: 'GetResponsePlanInput')
    GetResponsePlanOutput = Shapes::StructureShape.new(name: 'GetResponsePlanOutput')
    GetTimelineEventInput = Shapes::StructureShape.new(name: 'GetTimelineEventInput')
    GetTimelineEventOutput = Shapes::StructureShape.new(name: 'GetTimelineEventOutput')
    Impact = Shapes::IntegerShape.new(name: 'Impact')
    IncidentRecord = Shapes::StructureShape.new(name: 'IncidentRecord')
    IncidentRecordSource = Shapes::StructureShape.new(name: 'IncidentRecordSource')
    IncidentRecordStatus = Shapes::StringShape.new(name: 'IncidentRecordStatus')
    IncidentRecordSummary = Shapes::StructureShape.new(name: 'IncidentRecordSummary')
    IncidentRecordSummaryList = Shapes::ListShape.new(name: 'IncidentRecordSummaryList')
    IncidentSource = Shapes::StringShape.new(name: 'IncidentSource')
    IncidentSummary = Shapes::StringShape.new(name: 'IncidentSummary')
    IncidentTemplate = Shapes::StructureShape.new(name: 'IncidentTemplate')
    IncidentTitle = Shapes::StringShape.new(name: 'IncidentTitle')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerList = Shapes::ListShape.new(name: 'IntegerList')
    Integration = Shapes::UnionShape.new(name: 'Integration')
    Integrations = Shapes::ListShape.new(name: 'Integrations')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ItemIdentifier = Shapes::StructureShape.new(name: 'ItemIdentifier')
    ItemType = Shapes::StringShape.new(name: 'ItemType')
    ItemValue = Shapes::UnionShape.new(name: 'ItemValue')
    ListIncidentRecordsInput = Shapes::StructureShape.new(name: 'ListIncidentRecordsInput')
    ListIncidentRecordsOutput = Shapes::StructureShape.new(name: 'ListIncidentRecordsOutput')
    ListRelatedItemsInput = Shapes::StructureShape.new(name: 'ListRelatedItemsInput')
    ListRelatedItemsOutput = Shapes::StructureShape.new(name: 'ListRelatedItemsOutput')
    ListReplicationSetsInput = Shapes::StructureShape.new(name: 'ListReplicationSetsInput')
    ListReplicationSetsOutput = Shapes::StructureShape.new(name: 'ListReplicationSetsOutput')
    ListResponsePlansInput = Shapes::StructureShape.new(name: 'ListResponsePlansInput')
    ListResponsePlansOutput = Shapes::StructureShape.new(name: 'ListResponsePlansOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTimelineEventsInput = Shapes::StructureShape.new(name: 'ListTimelineEventsInput')
    ListTimelineEventsOutput = Shapes::StructureShape.new(name: 'ListTimelineEventsOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricDefinition = Shapes::StringShape.new(name: 'MetricDefinition')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotificationTargetItem = Shapes::UnionShape.new(name: 'NotificationTargetItem')
    NotificationTargetSet = Shapes::ListShape.new(name: 'NotificationTargetSet')
    PagerDutyConfiguration = Shapes::StructureShape.new(name: 'PagerDutyConfiguration')
    PagerDutyConfigurationNameString = Shapes::StringShape.new(name: 'PagerDutyConfigurationNameString')
    PagerDutyConfigurationSecretIdString = Shapes::StringShape.new(name: 'PagerDutyConfigurationSecretIdString')
    PagerDutyIncidentConfiguration = Shapes::StructureShape.new(name: 'PagerDutyIncidentConfiguration')
    PagerDutyIncidentConfigurationServiceIdString = Shapes::StringShape.new(name: 'PagerDutyIncidentConfigurationServiceIdString')
    PagerDutyIncidentDetail = Shapes::StructureShape.new(name: 'PagerDutyIncidentDetail')
    PagerDutyIncidentDetailIdString = Shapes::StringShape.new(name: 'PagerDutyIncidentDetailIdString')
    PagerDutyIncidentDetailSecretIdString = Shapes::StringShape.new(name: 'PagerDutyIncidentDetailSecretIdString')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PolicyId = Shapes::StringShape.new(name: 'PolicyId')
    PutResourcePolicyInput = Shapes::StructureShape.new(name: 'PutResourcePolicyInput')
    PutResourcePolicyOutput = Shapes::StructureShape.new(name: 'PutResourcePolicyOutput')
    RawData = Shapes::StringShape.new(name: 'RawData')
    RegionInfo = Shapes::StructureShape.new(name: 'RegionInfo')
    RegionInfoMap = Shapes::MapShape.new(name: 'RegionInfoMap')
    RegionMapInput = Shapes::MapShape.new(name: 'RegionMapInput')
    RegionMapInputValue = Shapes::StructureShape.new(name: 'RegionMapInputValue')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    RegionStatus = Shapes::StringShape.new(name: 'RegionStatus')
    RelatedItem = Shapes::StructureShape.new(name: 'RelatedItem')
    RelatedItemList = Shapes::ListShape.new(name: 'RelatedItemList')
    RelatedItemTitleString = Shapes::StringShape.new(name: 'RelatedItemTitleString')
    RelatedItemsUpdate = Shapes::UnionShape.new(name: 'RelatedItemsUpdate')
    ReplicationSet = Shapes::StructureShape.new(name: 'ReplicationSet')
    ReplicationSetArnList = Shapes::ListShape.new(name: 'ReplicationSetArnList')
    ReplicationSetStatus = Shapes::StringShape.new(name: 'ReplicationSetStatus')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicy = Shapes::StructureShape.new(name: 'ResourcePolicy')
    ResourcePolicyList = Shapes::ListShape.new(name: 'ResourcePolicyList')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResponsePlanDisplayName = Shapes::StringShape.new(name: 'ResponsePlanDisplayName')
    ResponsePlanName = Shapes::StringShape.new(name: 'ResponsePlanName')
    ResponsePlanSummary = Shapes::StructureShape.new(name: 'ResponsePlanSummary')
    ResponsePlanSummaryList = Shapes::ListShape.new(name: 'ResponsePlanSummaryList')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServicePrincipal = Shapes::StringShape.new(name: 'ServicePrincipal')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SnsArn = Shapes::StringShape.new(name: 'SnsArn')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SseKmsKey = Shapes::StringShape.new(name: 'SseKmsKey')
    SsmAutomation = Shapes::StructureShape.new(name: 'SsmAutomation')
    SsmAutomationDocumentNameString = Shapes::StringShape.new(name: 'SsmAutomationDocumentNameString')
    SsmAutomationDocumentVersionString = Shapes::StringShape.new(name: 'SsmAutomationDocumentVersionString')
    SsmContactsArn = Shapes::StringShape.new(name: 'SsmContactsArn')
    SsmParameterValues = Shapes::ListShape.new(name: 'SsmParameterValues')
    SsmParameterValuesMemberString = Shapes::StringShape.new(name: 'SsmParameterValuesMemberString')
    SsmParameters = Shapes::MapShape.new(name: 'SsmParameters')
    SsmParametersKeyString = Shapes::StringShape.new(name: 'SsmParametersKeyString')
    SsmTargetAccount = Shapes::StringShape.new(name: 'SsmTargetAccount')
    StartIncidentInput = Shapes::StructureShape.new(name: 'StartIncidentInput')
    StartIncidentOutput = Shapes::StructureShape.new(name: 'StartIncidentOutput')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringListMemberString = Shapes::StringShape.new(name: 'StringListMemberString')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagMapUpdate = Shapes::MapShape.new(name: 'TagMapUpdate')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimelineEvent = Shapes::StructureShape.new(name: 'TimelineEvent')
    TimelineEventSort = Shapes::StringShape.new(name: 'TimelineEventSort')
    TimelineEventType = Shapes::StringShape.new(name: 'TimelineEventType')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TriggerDetails = Shapes::StructureShape.new(name: 'TriggerDetails')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDeletionProtectionInput = Shapes::StructureShape.new(name: 'UpdateDeletionProtectionInput')
    UpdateDeletionProtectionOutput = Shapes::StructureShape.new(name: 'UpdateDeletionProtectionOutput')
    UpdateIncidentRecordInput = Shapes::StructureShape.new(name: 'UpdateIncidentRecordInput')
    UpdateIncidentRecordOutput = Shapes::StructureShape.new(name: 'UpdateIncidentRecordOutput')
    UpdateRelatedItemsInput = Shapes::StructureShape.new(name: 'UpdateRelatedItemsInput')
    UpdateRelatedItemsOutput = Shapes::StructureShape.new(name: 'UpdateRelatedItemsOutput')
    UpdateReplicationSetAction = Shapes::UnionShape.new(name: 'UpdateReplicationSetAction')
    UpdateReplicationSetInput = Shapes::StructureShape.new(name: 'UpdateReplicationSetInput')
    UpdateReplicationSetInputActionsList = Shapes::ListShape.new(name: 'UpdateReplicationSetInputActionsList')
    UpdateReplicationSetOutput = Shapes::StructureShape.new(name: 'UpdateReplicationSetOutput')
    UpdateResponsePlanInput = Shapes::StructureShape.new(name: 'UpdateResponsePlanInput')
    UpdateResponsePlanOutput = Shapes::StructureShape.new(name: 'UpdateResponsePlanOutput')
    UpdateTimelineEventInput = Shapes::StructureShape.new(name: 'UpdateTimelineEventInput')
    UpdateTimelineEventOutput = Shapes::StructureShape.new(name: 'UpdateTimelineEventOutput')
    Url = Shapes::StringShape.new(name: 'Url')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VariableType = Shapes::StringShape.new(name: 'VariableType')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Action.add_member(:ssm_automation, Shapes::ShapeRef.new(shape: SsmAutomation, location_name: "ssmAutomation"))
    Action.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Action.add_member_subclass(:ssm_automation, Types::Action::SsmAutomation)
    Action.add_member_subclass(:unknown, Types::Action::Unknown)
    Action.struct_class = Types::Action

    ActionsList.member = Shapes::ShapeRef.new(shape: Action)

    AddRegionAction.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "regionName"))
    AddRegionAction.add_member(:sse_kms_key_id, Shapes::ShapeRef.new(shape: SseKmsKey, location_name: "sseKmsKeyId"))
    AddRegionAction.struct_class = Types::AddRegionAction

    AttributeValueList.add_member(:integer_values, Shapes::ShapeRef.new(shape: IntegerList, location_name: "integerValues"))
    AttributeValueList.add_member(:string_values, Shapes::ShapeRef.new(shape: StringList, location_name: "stringValues"))
    AttributeValueList.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AttributeValueList.add_member_subclass(:integer_values, Types::AttributeValueList::IntegerValues)
    AttributeValueList.add_member_subclass(:string_values, Types::AttributeValueList::StringValues)
    AttributeValueList.add_member_subclass(:unknown, Types::AttributeValueList::Unknown)
    AttributeValueList.struct_class = Types::AttributeValueList

    AutomationExecution.add_member(:ssm_execution_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ssmExecutionArn"))
    AutomationExecution.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AutomationExecution.add_member_subclass(:ssm_execution_arn, Types::AutomationExecution::SsmExecutionArn)
    AutomationExecution.add_member_subclass(:unknown, Types::AutomationExecution::Unknown)
    AutomationExecution.struct_class = Types::AutomationExecution

    AutomationExecutionSet.member = Shapes::ShapeRef.new(shape: AutomationExecution)

    ChatChannel.add_member(:chatbot_sns, Shapes::ShapeRef.new(shape: ChatbotSnsConfigurationSet, location_name: "chatbotSns"))
    ChatChannel.add_member(:empty, Shapes::ShapeRef.new(shape: EmptyChatChannel, location_name: "empty"))
    ChatChannel.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ChatChannel.add_member_subclass(:chatbot_sns, Types::ChatChannel::ChatbotSns)
    ChatChannel.add_member_subclass(:empty, Types::ChatChannel::Empty)
    ChatChannel.add_member_subclass(:unknown, Types::ChatChannel::Unknown)
    ChatChannel.struct_class = Types::ChatChannel

    ChatbotSnsConfigurationSet.member = Shapes::ShapeRef.new(shape: SnsArn)

    Condition.add_member(:after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "after"))
    Condition.add_member(:before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "before"))
    Condition.add_member(:equals, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "equals"))
    Condition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Condition.add_member_subclass(:after, Types::Condition::After)
    Condition.add_member_subclass(:before, Types::Condition::Before)
    Condition.add_member_subclass(:equals, Types::Condition::Equals)
    Condition.add_member_subclass(:unknown, Types::Condition::Unknown)
    Condition.struct_class = Types::Condition

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ConflictException.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "resourceIdentifier"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ConflictException.add_member(:retry_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "retryAfter"))
    ConflictException.struct_class = Types::ConflictException

    CreateReplicationSetInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateReplicationSetInput.add_member(:regions, Shapes::ShapeRef.new(shape: RegionMapInput, required: true, location_name: "regions"))
    CreateReplicationSetInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateReplicationSetInput.struct_class = Types::CreateReplicationSetInput

    CreateReplicationSetOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    CreateReplicationSetOutput.struct_class = Types::CreateReplicationSetOutput

    CreateResponsePlanInput.add_member(:actions, Shapes::ShapeRef.new(shape: ActionsList, location_name: "actions"))
    CreateResponsePlanInput.add_member(:chat_channel, Shapes::ShapeRef.new(shape: ChatChannel, location_name: "chatChannel"))
    CreateResponsePlanInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateResponsePlanInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResponsePlanDisplayName, location_name: "displayName"))
    CreateResponsePlanInput.add_member(:engagements, Shapes::ShapeRef.new(shape: EngagementSet, location_name: "engagements"))
    CreateResponsePlanInput.add_member(:incident_template, Shapes::ShapeRef.new(shape: IncidentTemplate, required: true, location_name: "incidentTemplate"))
    CreateResponsePlanInput.add_member(:integrations, Shapes::ShapeRef.new(shape: Integrations, location_name: "integrations"))
    CreateResponsePlanInput.add_member(:name, Shapes::ShapeRef.new(shape: ResponsePlanName, required: true, location_name: "name"))
    CreateResponsePlanInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateResponsePlanInput.struct_class = Types::CreateResponsePlanInput

    CreateResponsePlanOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    CreateResponsePlanOutput.struct_class = Types::CreateResponsePlanOutput

    CreateTimelineEventInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateTimelineEventInput.add_member(:event_data, Shapes::ShapeRef.new(shape: EventData, required: true, location_name: "eventData"))
    CreateTimelineEventInput.add_member(:event_references, Shapes::ShapeRef.new(shape: EventReferenceList, location_name: "eventReferences"))
    CreateTimelineEventInput.add_member(:event_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "eventTime"))
    CreateTimelineEventInput.add_member(:event_type, Shapes::ShapeRef.new(shape: TimelineEventType, required: true, location_name: "eventType"))
    CreateTimelineEventInput.add_member(:incident_record_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "incidentRecordArn"))
    CreateTimelineEventInput.struct_class = Types::CreateTimelineEventInput

    CreateTimelineEventOutput.add_member(:event_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "eventId"))
    CreateTimelineEventOutput.add_member(:incident_record_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "incidentRecordArn"))
    CreateTimelineEventOutput.struct_class = Types::CreateTimelineEventOutput

    DeleteIncidentRecordInput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    DeleteIncidentRecordInput.struct_class = Types::DeleteIncidentRecordInput

    DeleteIncidentRecordOutput.struct_class = Types::DeleteIncidentRecordOutput

    DeleteRegionAction.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "regionName"))
    DeleteRegionAction.struct_class = Types::DeleteRegionAction

    DeleteReplicationSetInput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "arn"))
    DeleteReplicationSetInput.struct_class = Types::DeleteReplicationSetInput

    DeleteReplicationSetOutput.struct_class = Types::DeleteReplicationSetOutput

    DeleteResourcePolicyInput.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    DeleteResourcePolicyInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    DeleteResourcePolicyInput.struct_class = Types::DeleteResourcePolicyInput

    DeleteResourcePolicyOutput.struct_class = Types::DeleteResourcePolicyOutput

    DeleteResponsePlanInput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    DeleteResponsePlanInput.struct_class = Types::DeleteResponsePlanInput

    DeleteResponsePlanOutput.struct_class = Types::DeleteResponsePlanOutput

    DeleteTimelineEventInput.add_member(:event_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "eventId"))
    DeleteTimelineEventInput.add_member(:incident_record_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "incidentRecordArn"))
    DeleteTimelineEventInput.struct_class = Types::DeleteTimelineEventInput

    DeleteTimelineEventOutput.struct_class = Types::DeleteTimelineEventOutput

    DynamicSsmParameterValue.add_member(:variable, Shapes::ShapeRef.new(shape: VariableType, location_name: "variable"))
    DynamicSsmParameterValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DynamicSsmParameterValue.add_member_subclass(:variable, Types::DynamicSsmParameterValue::Variable)
    DynamicSsmParameterValue.add_member_subclass(:unknown, Types::DynamicSsmParameterValue::Unknown)
    DynamicSsmParameterValue.struct_class = Types::DynamicSsmParameterValue

    DynamicSsmParameters.key = Shapes::ShapeRef.new(shape: DynamicSsmParametersKeyString)
    DynamicSsmParameters.value = Shapes::ShapeRef.new(shape: DynamicSsmParameterValue)

    EmptyChatChannel.struct_class = Types::EmptyChatChannel

    EngagementSet.member = Shapes::ShapeRef.new(shape: SsmContactsArn)

    EventReference.add_member(:related_item_id, Shapes::ShapeRef.new(shape: GeneratedId, location_name: "relatedItemId"))
    EventReference.add_member(:resource, Shapes::ShapeRef.new(shape: Arn, location_name: "resource"))
    EventReference.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EventReference.add_member_subclass(:related_item_id, Types::EventReference::RelatedItemId)
    EventReference.add_member_subclass(:resource, Types::EventReference::Resource)
    EventReference.add_member_subclass(:unknown, Types::EventReference::Unknown)
    EventReference.struct_class = Types::EventReference

    EventReferenceList.member = Shapes::ShapeRef.new(shape: EventReference)

    EventSummary.add_member(:event_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "eventId"))
    EventSummary.add_member(:event_references, Shapes::ShapeRef.new(shape: EventReferenceList, location_name: "eventReferences"))
    EventSummary.add_member(:event_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "eventTime"))
    EventSummary.add_member(:event_type, Shapes::ShapeRef.new(shape: TimelineEventType, required: true, location_name: "eventType"))
    EventSummary.add_member(:event_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "eventUpdatedTime"))
    EventSummary.add_member(:incident_record_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "incidentRecordArn"))
    EventSummary.struct_class = Types::EventSummary

    EventSummaryList.member = Shapes::ShapeRef.new(shape: EventSummary)

    Filter.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, required: true, location_name: "condition"))
    Filter.add_member(:key, Shapes::ShapeRef.new(shape: FilterKeyString, required: true, location_name: "key"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    GetIncidentRecordInput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "arn"))
    GetIncidentRecordInput.struct_class = Types::GetIncidentRecordInput

    GetIncidentRecordOutput.add_member(:incident_record, Shapes::ShapeRef.new(shape: IncidentRecord, required: true, location_name: "incidentRecord"))
    GetIncidentRecordOutput.struct_class = Types::GetIncidentRecordOutput

    GetReplicationSetInput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "arn"))
    GetReplicationSetInput.struct_class = Types::GetReplicationSetInput

    GetReplicationSetOutput.add_member(:replication_set, Shapes::ShapeRef.new(shape: ReplicationSet, required: true, location_name: "replicationSet"))
    GetReplicationSetOutput.struct_class = Types::GetReplicationSetOutput

    GetResourcePoliciesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetResourcePoliciesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetResourcePoliciesInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "resourceArn"))
    GetResourcePoliciesInput.struct_class = Types::GetResourcePoliciesInput

    GetResourcePoliciesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetResourcePoliciesOutput.add_member(:resource_policies, Shapes::ShapeRef.new(shape: ResourcePolicyList, required: true, location_name: "resourcePolicies"))
    GetResourcePoliciesOutput.struct_class = Types::GetResourcePoliciesOutput

    GetResponsePlanInput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "arn"))
    GetResponsePlanInput.struct_class = Types::GetResponsePlanInput

    GetResponsePlanOutput.add_member(:actions, Shapes::ShapeRef.new(shape: ActionsList, location_name: "actions"))
    GetResponsePlanOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    GetResponsePlanOutput.add_member(:chat_channel, Shapes::ShapeRef.new(shape: ChatChannel, location_name: "chatChannel"))
    GetResponsePlanOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResponsePlanDisplayName, location_name: "displayName"))
    GetResponsePlanOutput.add_member(:engagements, Shapes::ShapeRef.new(shape: EngagementSet, location_name: "engagements"))
    GetResponsePlanOutput.add_member(:incident_template, Shapes::ShapeRef.new(shape: IncidentTemplate, required: true, location_name: "incidentTemplate"))
    GetResponsePlanOutput.add_member(:integrations, Shapes::ShapeRef.new(shape: Integrations, location_name: "integrations"))
    GetResponsePlanOutput.add_member(:name, Shapes::ShapeRef.new(shape: ResponsePlanName, required: true, location_name: "name"))
    GetResponsePlanOutput.struct_class = Types::GetResponsePlanOutput

    GetTimelineEventInput.add_member(:event_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "querystring", location_name: "eventId"))
    GetTimelineEventInput.add_member(:incident_record_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "incidentRecordArn"))
    GetTimelineEventInput.struct_class = Types::GetTimelineEventInput

    GetTimelineEventOutput.add_member(:event, Shapes::ShapeRef.new(shape: TimelineEvent, required: true, location_name: "event"))
    GetTimelineEventOutput.struct_class = Types::GetTimelineEventOutput

    IncidentRecord.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    IncidentRecord.add_member(:automation_executions, Shapes::ShapeRef.new(shape: AutomationExecutionSet, location_name: "automationExecutions"))
    IncidentRecord.add_member(:chat_channel, Shapes::ShapeRef.new(shape: ChatChannel, location_name: "chatChannel"))
    IncidentRecord.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    IncidentRecord.add_member(:dedupe_string, Shapes::ShapeRef.new(shape: DedupeString, required: true, location_name: "dedupeString"))
    IncidentRecord.add_member(:impact, Shapes::ShapeRef.new(shape: Impact, required: true, location_name: "impact"))
    IncidentRecord.add_member(:incident_record_source, Shapes::ShapeRef.new(shape: IncidentRecordSource, required: true, location_name: "incidentRecordSource"))
    IncidentRecord.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "lastModifiedBy"))
    IncidentRecord.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedTime"))
    IncidentRecord.add_member(:notification_targets, Shapes::ShapeRef.new(shape: NotificationTargetSet, location_name: "notificationTargets"))
    IncidentRecord.add_member(:resolved_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "resolvedTime"))
    IncidentRecord.add_member(:status, Shapes::ShapeRef.new(shape: IncidentRecordStatus, required: true, location_name: "status"))
    IncidentRecord.add_member(:summary, Shapes::ShapeRef.new(shape: IncidentSummary, location_name: "summary"))
    IncidentRecord.add_member(:title, Shapes::ShapeRef.new(shape: IncidentTitle, required: true, location_name: "title"))
    IncidentRecord.struct_class = Types::IncidentRecord

    IncidentRecordSource.add_member(:created_by, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "createdBy"))
    IncidentRecordSource.add_member(:invoked_by, Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: "invokedBy"))
    IncidentRecordSource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn"))
    IncidentRecordSource.add_member(:source, Shapes::ShapeRef.new(shape: IncidentSource, required: true, location_name: "source"))
    IncidentRecordSource.struct_class = Types::IncidentRecordSource

    IncidentRecordSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    IncidentRecordSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    IncidentRecordSummary.add_member(:impact, Shapes::ShapeRef.new(shape: Impact, required: true, location_name: "impact"))
    IncidentRecordSummary.add_member(:incident_record_source, Shapes::ShapeRef.new(shape: IncidentRecordSource, required: true, location_name: "incidentRecordSource"))
    IncidentRecordSummary.add_member(:resolved_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "resolvedTime"))
    IncidentRecordSummary.add_member(:status, Shapes::ShapeRef.new(shape: IncidentRecordStatus, required: true, location_name: "status"))
    IncidentRecordSummary.add_member(:title, Shapes::ShapeRef.new(shape: IncidentTitle, required: true, location_name: "title"))
    IncidentRecordSummary.struct_class = Types::IncidentRecordSummary

    IncidentRecordSummaryList.member = Shapes::ShapeRef.new(shape: IncidentRecordSummary)

    IncidentTemplate.add_member(:dedupe_string, Shapes::ShapeRef.new(shape: DedupeString, location_name: "dedupeString"))
    IncidentTemplate.add_member(:impact, Shapes::ShapeRef.new(shape: Impact, required: true, location_name: "impact"))
    IncidentTemplate.add_member(:incident_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "incidentTags"))
    IncidentTemplate.add_member(:notification_targets, Shapes::ShapeRef.new(shape: NotificationTargetSet, location_name: "notificationTargets"))
    IncidentTemplate.add_member(:summary, Shapes::ShapeRef.new(shape: IncidentSummary, location_name: "summary"))
    IncidentTemplate.add_member(:title, Shapes::ShapeRef.new(shape: IncidentTitle, required: true, location_name: "title"))
    IncidentTemplate.struct_class = Types::IncidentTemplate

    IntegerList.member = Shapes::ShapeRef.new(shape: Integer)

    Integration.add_member(:pager_duty_configuration, Shapes::ShapeRef.new(shape: PagerDutyConfiguration, location_name: "pagerDutyConfiguration"))
    Integration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Integration.add_member_subclass(:pager_duty_configuration, Types::Integration::PagerDutyConfiguration)
    Integration.add_member_subclass(:unknown, Types::Integration::Unknown)
    Integration.struct_class = Types::Integration

    Integrations.member = Shapes::ShapeRef.new(shape: Integration)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ItemIdentifier.add_member(:type, Shapes::ShapeRef.new(shape: ItemType, required: true, location_name: "type"))
    ItemIdentifier.add_member(:value, Shapes::ShapeRef.new(shape: ItemValue, required: true, location_name: "value"))
    ItemIdentifier.struct_class = Types::ItemIdentifier

    ItemValue.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    ItemValue.add_member(:metric_definition, Shapes::ShapeRef.new(shape: MetricDefinition, location_name: "metricDefinition"))
    ItemValue.add_member(:pager_duty_incident_detail, Shapes::ShapeRef.new(shape: PagerDutyIncidentDetail, location_name: "pagerDutyIncidentDetail"))
    ItemValue.add_member(:url, Shapes::ShapeRef.new(shape: Url, location_name: "url"))
    ItemValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ItemValue.add_member_subclass(:arn, Types::ItemValue::Arn)
    ItemValue.add_member_subclass(:metric_definition, Types::ItemValue::MetricDefinition)
    ItemValue.add_member_subclass(:pager_duty_incident_detail, Types::ItemValue::PagerDutyIncidentDetail)
    ItemValue.add_member_subclass(:url, Types::ItemValue::Url)
    ItemValue.add_member_subclass(:unknown, Types::ItemValue::Unknown)
    ItemValue.struct_class = Types::ItemValue

    ListIncidentRecordsInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListIncidentRecordsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListIncidentRecordsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIncidentRecordsInput.struct_class = Types::ListIncidentRecordsInput

    ListIncidentRecordsOutput.add_member(:incident_record_summaries, Shapes::ShapeRef.new(shape: IncidentRecordSummaryList, required: true, location_name: "incidentRecordSummaries"))
    ListIncidentRecordsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIncidentRecordsOutput.struct_class = Types::ListIncidentRecordsOutput

    ListRelatedItemsInput.add_member(:incident_record_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "incidentRecordArn"))
    ListRelatedItemsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListRelatedItemsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRelatedItemsInput.struct_class = Types::ListRelatedItemsInput

    ListRelatedItemsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRelatedItemsOutput.add_member(:related_items, Shapes::ShapeRef.new(shape: RelatedItemList, required: true, location_name: "relatedItems"))
    ListRelatedItemsOutput.struct_class = Types::ListRelatedItemsOutput

    ListReplicationSetsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListReplicationSetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListReplicationSetsInput.struct_class = Types::ListReplicationSetsInput

    ListReplicationSetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListReplicationSetsOutput.add_member(:replication_set_arns, Shapes::ShapeRef.new(shape: ReplicationSetArnList, required: true, location_name: "replicationSetArns"))
    ListReplicationSetsOutput.struct_class = Types::ListReplicationSetsOutput

    ListResponsePlansInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListResponsePlansInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListResponsePlansInput.struct_class = Types::ListResponsePlansInput

    ListResponsePlansOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListResponsePlansOutput.add_member(:response_plan_summaries, Shapes::ShapeRef.new(shape: ResponsePlanSummaryList, required: true, location_name: "responsePlanSummaries"))
    ListResponsePlansOutput.struct_class = Types::ListResponsePlansOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTimelineEventsInput.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListTimelineEventsInput.add_member(:incident_record_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "incidentRecordArn"))
    ListTimelineEventsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTimelineEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTimelineEventsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: TimelineEventSort, location_name: "sortBy"))
    ListTimelineEventsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ListTimelineEventsInput.struct_class = Types::ListTimelineEventsInput

    ListTimelineEventsOutput.add_member(:event_summaries, Shapes::ShapeRef.new(shape: EventSummaryList, required: true, location_name: "eventSummaries"))
    ListTimelineEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTimelineEventsOutput.struct_class = Types::ListTimelineEventsOutput

    NotificationTargetItem.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "snsTopicArn"))
    NotificationTargetItem.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    NotificationTargetItem.add_member_subclass(:sns_topic_arn, Types::NotificationTargetItem::SnsTopicArn)
    NotificationTargetItem.add_member_subclass(:unknown, Types::NotificationTargetItem::Unknown)
    NotificationTargetItem.struct_class = Types::NotificationTargetItem

    NotificationTargetSet.member = Shapes::ShapeRef.new(shape: NotificationTargetItem)

    PagerDutyConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: PagerDutyConfigurationNameString, required: true, location_name: "name"))
    PagerDutyConfiguration.add_member(:pager_duty_incident_configuration, Shapes::ShapeRef.new(shape: PagerDutyIncidentConfiguration, required: true, location_name: "pagerDutyIncidentConfiguration"))
    PagerDutyConfiguration.add_member(:secret_id, Shapes::ShapeRef.new(shape: PagerDutyConfigurationSecretIdString, required: true, location_name: "secretId"))
    PagerDutyConfiguration.struct_class = Types::PagerDutyConfiguration

    PagerDutyIncidentConfiguration.add_member(:service_id, Shapes::ShapeRef.new(shape: PagerDutyIncidentConfigurationServiceIdString, required: true, location_name: "serviceId"))
    PagerDutyIncidentConfiguration.struct_class = Types::PagerDutyIncidentConfiguration

    PagerDutyIncidentDetail.add_member(:auto_resolve, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoResolve"))
    PagerDutyIncidentDetail.add_member(:id, Shapes::ShapeRef.new(shape: PagerDutyIncidentDetailIdString, required: true, location_name: "id"))
    PagerDutyIncidentDetail.add_member(:secret_id, Shapes::ShapeRef.new(shape: PagerDutyIncidentDetailSecretIdString, location_name: "secretId"))
    PagerDutyIncidentDetail.struct_class = Types::PagerDutyIncidentDetail

    PutResourcePolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "policy"))
    PutResourcePolicyInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    PutResourcePolicyInput.struct_class = Types::PutResourcePolicyInput

    PutResourcePolicyOutput.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    PutResourcePolicyOutput.struct_class = Types::PutResourcePolicyOutput

    RegionInfo.add_member(:sse_kms_key_id, Shapes::ShapeRef.new(shape: SseKmsKey, location_name: "sseKmsKeyId"))
    RegionInfo.add_member(:status, Shapes::ShapeRef.new(shape: RegionStatus, required: true, location_name: "status"))
    RegionInfo.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    RegionInfo.add_member(:status_update_date_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "statusUpdateDateTime"))
    RegionInfo.struct_class = Types::RegionInfo

    RegionInfoMap.key = Shapes::ShapeRef.new(shape: RegionName)
    RegionInfoMap.value = Shapes::ShapeRef.new(shape: RegionInfo)

    RegionMapInput.key = Shapes::ShapeRef.new(shape: RegionName)
    RegionMapInput.value = Shapes::ShapeRef.new(shape: RegionMapInputValue)

    RegionMapInputValue.add_member(:sse_kms_key_id, Shapes::ShapeRef.new(shape: SseKmsKey, location_name: "sseKmsKeyId"))
    RegionMapInputValue.struct_class = Types::RegionMapInputValue

    RelatedItem.add_member(:generated_id, Shapes::ShapeRef.new(shape: GeneratedId, location_name: "generatedId"))
    RelatedItem.add_member(:identifier, Shapes::ShapeRef.new(shape: ItemIdentifier, required: true, location_name: "identifier"))
    RelatedItem.add_member(:title, Shapes::ShapeRef.new(shape: RelatedItemTitleString, location_name: "title"))
    RelatedItem.struct_class = Types::RelatedItem

    RelatedItemList.member = Shapes::ShapeRef.new(shape: RelatedItem)

    RelatedItemsUpdate.add_member(:item_to_add, Shapes::ShapeRef.new(shape: RelatedItem, location_name: "itemToAdd"))
    RelatedItemsUpdate.add_member(:item_to_remove, Shapes::ShapeRef.new(shape: ItemIdentifier, location_name: "itemToRemove"))
    RelatedItemsUpdate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RelatedItemsUpdate.add_member_subclass(:item_to_add, Types::RelatedItemsUpdate::ItemToAdd)
    RelatedItemsUpdate.add_member_subclass(:item_to_remove, Types::RelatedItemsUpdate::ItemToRemove)
    RelatedItemsUpdate.add_member_subclass(:unknown, Types::RelatedItemsUpdate::Unknown)
    RelatedItemsUpdate.struct_class = Types::RelatedItemsUpdate

    ReplicationSet.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    ReplicationSet.add_member(:created_by, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "createdBy"))
    ReplicationSet.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    ReplicationSet.add_member(:deletion_protected, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "deletionProtected"))
    ReplicationSet.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "lastModifiedBy"))
    ReplicationSet.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedTime"))
    ReplicationSet.add_member(:region_map, Shapes::ShapeRef.new(shape: RegionInfoMap, required: true, location_name: "regionMap"))
    ReplicationSet.add_member(:status, Shapes::ShapeRef.new(shape: ReplicationSetStatus, required: true, location_name: "status"))
    ReplicationSet.struct_class = Types::ReplicationSet

    ReplicationSetArnList.member = Shapes::ShapeRef.new(shape: Arn)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "resourceIdentifier"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePolicy.add_member(:policy_document, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "policyDocument"))
    ResourcePolicy.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    ResourcePolicy.add_member(:ram_resource_share_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ramResourceShareRegion"))
    ResourcePolicy.struct_class = Types::ResourcePolicy

    ResourcePolicyList.member = Shapes::ShapeRef.new(shape: ResourcePolicy)

    ResponsePlanSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    ResponsePlanSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: ResponsePlanDisplayName, location_name: "displayName"))
    ResponsePlanSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResponsePlanName, required: true, location_name: "name"))
    ResponsePlanSummary.struct_class = Types::ResponsePlanSummary

    ResponsePlanSummaryList.member = Shapes::ShapeRef.new(shape: ResponsePlanSummary)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "resourceIdentifier"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SsmAutomation.add_member(:document_name, Shapes::ShapeRef.new(shape: SsmAutomationDocumentNameString, required: true, location_name: "documentName"))
    SsmAutomation.add_member(:document_version, Shapes::ShapeRef.new(shape: SsmAutomationDocumentVersionString, location_name: "documentVersion"))
    SsmAutomation.add_member(:dynamic_parameters, Shapes::ShapeRef.new(shape: DynamicSsmParameters, location_name: "dynamicParameters"))
    SsmAutomation.add_member(:parameters, Shapes::ShapeRef.new(shape: SsmParameters, location_name: "parameters"))
    SsmAutomation.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    SsmAutomation.add_member(:target_account, Shapes::ShapeRef.new(shape: SsmTargetAccount, location_name: "targetAccount"))
    SsmAutomation.struct_class = Types::SsmAutomation

    SsmParameterValues.member = Shapes::ShapeRef.new(shape: SsmParameterValuesMemberString)

    SsmParameters.key = Shapes::ShapeRef.new(shape: SsmParametersKeyString)
    SsmParameters.value = Shapes::ShapeRef.new(shape: SsmParameterValues)

    StartIncidentInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartIncidentInput.add_member(:impact, Shapes::ShapeRef.new(shape: Impact, location_name: "impact"))
    StartIncidentInput.add_member(:related_items, Shapes::ShapeRef.new(shape: RelatedItemList, location_name: "relatedItems"))
    StartIncidentInput.add_member(:response_plan_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "responsePlanArn"))
    StartIncidentInput.add_member(:title, Shapes::ShapeRef.new(shape: IncidentTitle, location_name: "title"))
    StartIncidentInput.add_member(:trigger_details, Shapes::ShapeRef.new(shape: TriggerDetails, location_name: "triggerDetails"))
    StartIncidentInput.struct_class = Types::StartIncidentInput

    StartIncidentOutput.add_member(:incident_record_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "incidentRecordArn"))
    StartIncidentOutput.struct_class = Types::StartIncidentOutput

    StringList.member = Shapes::ShapeRef.new(shape: StringListMemberString)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagMapUpdate.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMapUpdate.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimelineEvent.add_member(:event_data, Shapes::ShapeRef.new(shape: EventData, required: true, location_name: "eventData"))
    TimelineEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "eventId"))
    TimelineEvent.add_member(:event_references, Shapes::ShapeRef.new(shape: EventReferenceList, location_name: "eventReferences"))
    TimelineEvent.add_member(:event_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "eventTime"))
    TimelineEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: TimelineEventType, required: true, location_name: "eventType"))
    TimelineEvent.add_member(:event_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "eventUpdatedTime"))
    TimelineEvent.add_member(:incident_record_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "incidentRecordArn"))
    TimelineEvent.struct_class = Types::TimelineEvent

    TriggerDetails.add_member(:raw_data, Shapes::ShapeRef.new(shape: RawData, location_name: "rawData"))
    TriggerDetails.add_member(:source, Shapes::ShapeRef.new(shape: IncidentSource, required: true, location_name: "source"))
    TriggerDetails.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    TriggerDetails.add_member(:trigger_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "triggerArn"))
    TriggerDetails.struct_class = Types::TriggerDetails

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDeletionProtectionInput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    UpdateDeletionProtectionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateDeletionProtectionInput.add_member(:deletion_protected, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "deletionProtected"))
    UpdateDeletionProtectionInput.struct_class = Types::UpdateDeletionProtectionInput

    UpdateDeletionProtectionOutput.struct_class = Types::UpdateDeletionProtectionOutput

    UpdateIncidentRecordInput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    UpdateIncidentRecordInput.add_member(:chat_channel, Shapes::ShapeRef.new(shape: ChatChannel, location_name: "chatChannel"))
    UpdateIncidentRecordInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateIncidentRecordInput.add_member(:impact, Shapes::ShapeRef.new(shape: Impact, location_name: "impact"))
    UpdateIncidentRecordInput.add_member(:notification_targets, Shapes::ShapeRef.new(shape: NotificationTargetSet, location_name: "notificationTargets"))
    UpdateIncidentRecordInput.add_member(:status, Shapes::ShapeRef.new(shape: IncidentRecordStatus, location_name: "status"))
    UpdateIncidentRecordInput.add_member(:summary, Shapes::ShapeRef.new(shape: IncidentSummary, location_name: "summary"))
    UpdateIncidentRecordInput.add_member(:title, Shapes::ShapeRef.new(shape: IncidentTitle, location_name: "title"))
    UpdateIncidentRecordInput.struct_class = Types::UpdateIncidentRecordInput

    UpdateIncidentRecordOutput.struct_class = Types::UpdateIncidentRecordOutput

    UpdateRelatedItemsInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateRelatedItemsInput.add_member(:incident_record_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "incidentRecordArn"))
    UpdateRelatedItemsInput.add_member(:related_items_update, Shapes::ShapeRef.new(shape: RelatedItemsUpdate, required: true, location_name: "relatedItemsUpdate"))
    UpdateRelatedItemsInput.struct_class = Types::UpdateRelatedItemsInput

    UpdateRelatedItemsOutput.struct_class = Types::UpdateRelatedItemsOutput

    UpdateReplicationSetAction.add_member(:add_region_action, Shapes::ShapeRef.new(shape: AddRegionAction, location_name: "addRegionAction"))
    UpdateReplicationSetAction.add_member(:delete_region_action, Shapes::ShapeRef.new(shape: DeleteRegionAction, location_name: "deleteRegionAction"))
    UpdateReplicationSetAction.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    UpdateReplicationSetAction.add_member_subclass(:add_region_action, Types::UpdateReplicationSetAction::AddRegionAction)
    UpdateReplicationSetAction.add_member_subclass(:delete_region_action, Types::UpdateReplicationSetAction::DeleteRegionAction)
    UpdateReplicationSetAction.add_member_subclass(:unknown, Types::UpdateReplicationSetAction::Unknown)
    UpdateReplicationSetAction.struct_class = Types::UpdateReplicationSetAction

    UpdateReplicationSetInput.add_member(:actions, Shapes::ShapeRef.new(shape: UpdateReplicationSetInputActionsList, required: true, location_name: "actions"))
    UpdateReplicationSetInput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    UpdateReplicationSetInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateReplicationSetInput.struct_class = Types::UpdateReplicationSetInput

    UpdateReplicationSetInputActionsList.member = Shapes::ShapeRef.new(shape: UpdateReplicationSetAction)

    UpdateReplicationSetOutput.struct_class = Types::UpdateReplicationSetOutput

    UpdateResponsePlanInput.add_member(:actions, Shapes::ShapeRef.new(shape: ActionsList, location_name: "actions"))
    UpdateResponsePlanInput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    UpdateResponsePlanInput.add_member(:chat_channel, Shapes::ShapeRef.new(shape: ChatChannel, location_name: "chatChannel"))
    UpdateResponsePlanInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateResponsePlanInput.add_member(:display_name, Shapes::ShapeRef.new(shape: ResponsePlanDisplayName, location_name: "displayName"))
    UpdateResponsePlanInput.add_member(:engagements, Shapes::ShapeRef.new(shape: EngagementSet, location_name: "engagements"))
    UpdateResponsePlanInput.add_member(:incident_template_dedupe_string, Shapes::ShapeRef.new(shape: DedupeString, location_name: "incidentTemplateDedupeString"))
    UpdateResponsePlanInput.add_member(:incident_template_impact, Shapes::ShapeRef.new(shape: Impact, location_name: "incidentTemplateImpact"))
    UpdateResponsePlanInput.add_member(:incident_template_notification_targets, Shapes::ShapeRef.new(shape: NotificationTargetSet, location_name: "incidentTemplateNotificationTargets"))
    UpdateResponsePlanInput.add_member(:incident_template_summary, Shapes::ShapeRef.new(shape: IncidentSummary, location_name: "incidentTemplateSummary"))
    UpdateResponsePlanInput.add_member(:incident_template_tags, Shapes::ShapeRef.new(shape: TagMapUpdate, location_name: "incidentTemplateTags"))
    UpdateResponsePlanInput.add_member(:incident_template_title, Shapes::ShapeRef.new(shape: IncidentTitle, location_name: "incidentTemplateTitle"))
    UpdateResponsePlanInput.add_member(:integrations, Shapes::ShapeRef.new(shape: Integrations, location_name: "integrations"))
    UpdateResponsePlanInput.struct_class = Types::UpdateResponsePlanInput

    UpdateResponsePlanOutput.struct_class = Types::UpdateResponsePlanOutput

    UpdateTimelineEventInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateTimelineEventInput.add_member(:event_data, Shapes::ShapeRef.new(shape: EventData, location_name: "eventData"))
    UpdateTimelineEventInput.add_member(:event_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "eventId"))
    UpdateTimelineEventInput.add_member(:event_references, Shapes::ShapeRef.new(shape: EventReferenceList, location_name: "eventReferences"))
    UpdateTimelineEventInput.add_member(:event_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "eventTime"))
    UpdateTimelineEventInput.add_member(:event_type, Shapes::ShapeRef.new(shape: TimelineEventType, location_name: "eventType"))
    UpdateTimelineEventInput.add_member(:incident_record_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "incidentRecordArn"))
    UpdateTimelineEventInput.struct_class = Types::UpdateTimelineEventInput

    UpdateTimelineEventOutput.struct_class = Types::UpdateTimelineEventOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "ssm-incidents",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "SSM Incidents",
        "serviceFullName" => "AWS Systems Manager Incident Manager",
        "serviceId" => "SSM Incidents",
        "signatureVersion" => "v4",
        "signingName" => "ssm-incidents",
        "uid" => "ssm-incidents-2018-05-10",
      }

      api.add_operation(:create_replication_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationSet"
        o.http_method = "POST"
        o.http_request_uri = "/createReplicationSet"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationSetInput)
        o.output = Shapes::ShapeRef.new(shape: CreateReplicationSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_response_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResponsePlan"
        o.http_method = "POST"
        o.http_request_uri = "/createResponsePlan"
        o.input = Shapes::ShapeRef.new(shape: CreateResponsePlanInput)
        o.output = Shapes::ShapeRef.new(shape: CreateResponsePlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_timeline_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTimelineEvent"
        o.http_method = "POST"
        o.http_request_uri = "/createTimelineEvent"
        o.input = Shapes::ShapeRef.new(shape: CreateTimelineEventInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTimelineEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_incident_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIncidentRecord"
        o.http_method = "POST"
        o.http_request_uri = "/deleteIncidentRecord"
        o.input = Shapes::ShapeRef.new(shape: DeleteIncidentRecordInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteIncidentRecordOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_replication_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationSet"
        o.http_method = "POST"
        o.http_request_uri = "/deleteReplicationSet"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationSetInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/deleteResourcePolicy"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_response_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResponsePlan"
        o.http_method = "POST"
        o.http_request_uri = "/deleteResponsePlan"
        o.input = Shapes::ShapeRef.new(shape: DeleteResponsePlanInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteResponsePlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_timeline_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTimelineEvent"
        o.http_method = "POST"
        o.http_request_uri = "/deleteTimelineEvent"
        o.input = Shapes::ShapeRef.new(shape: DeleteTimelineEventInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTimelineEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_incident_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIncidentRecord"
        o.http_method = "GET"
        o.http_request_uri = "/getIncidentRecord"
        o.input = Shapes::ShapeRef.new(shape: GetIncidentRecordInput)
        o.output = Shapes::ShapeRef.new(shape: GetIncidentRecordOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_replication_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReplicationSet"
        o.http_method = "GET"
        o.http_request_uri = "/getReplicationSet"
        o.input = Shapes::ShapeRef.new(shape: GetReplicationSetInput)
        o.output = Shapes::ShapeRef.new(shape: GetReplicationSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/getResourcePolicies"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePoliciesInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePoliciesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_response_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResponsePlan"
        o.http_method = "GET"
        o.http_request_uri = "/getResponsePlan"
        o.input = Shapes::ShapeRef.new(shape: GetResponsePlanInput)
        o.output = Shapes::ShapeRef.new(shape: GetResponsePlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_timeline_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTimelineEvent"
        o.http_method = "GET"
        o.http_request_uri = "/getTimelineEvent"
        o.input = Shapes::ShapeRef.new(shape: GetTimelineEventInput)
        o.output = Shapes::ShapeRef.new(shape: GetTimelineEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_incident_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIncidentRecords"
        o.http_method = "POST"
        o.http_request_uri = "/listIncidentRecords"
        o.input = Shapes::ShapeRef.new(shape: ListIncidentRecordsInput)
        o.output = Shapes::ShapeRef.new(shape: ListIncidentRecordsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_related_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRelatedItems"
        o.http_method = "POST"
        o.http_request_uri = "/listRelatedItems"
        o.input = Shapes::ShapeRef.new(shape: ListRelatedItemsInput)
        o.output = Shapes::ShapeRef.new(shape: ListRelatedItemsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_replication_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReplicationSets"
        o.http_method = "POST"
        o.http_request_uri = "/listReplicationSets"
        o.input = Shapes::ShapeRef.new(shape: ListReplicationSetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListReplicationSetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_response_plans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResponsePlans"
        o.http_method = "POST"
        o.http_request_uri = "/listResponsePlans"
        o.input = Shapes::ShapeRef.new(shape: ListResponsePlansInput)
        o.output = Shapes::ShapeRef.new(shape: ListResponsePlansOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_timeline_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTimelineEvents"
        o.http_method = "POST"
        o.http_request_uri = "/listTimelineEvents"
        o.input = Shapes::ShapeRef.new(shape: ListTimelineEventsInput)
        o.output = Shapes::ShapeRef.new(shape: ListTimelineEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/putResourcePolicy"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_incident, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartIncident"
        o.http_method = "POST"
        o.http_request_uri = "/startIncident"
        o.input = Shapes::ShapeRef.new(shape: StartIncidentInput)
        o.output = Shapes::ShapeRef.new(shape: StartIncidentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_deletion_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDeletionProtection"
        o.http_method = "POST"
        o.http_request_uri = "/updateDeletionProtection"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeletionProtectionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeletionProtectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_incident_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIncidentRecord"
        o.http_method = "POST"
        o.http_request_uri = "/updateIncidentRecord"
        o.input = Shapes::ShapeRef.new(shape: UpdateIncidentRecordInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateIncidentRecordOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_related_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRelatedItems"
        o.http_method = "POST"
        o.http_request_uri = "/updateRelatedItems"
        o.input = Shapes::ShapeRef.new(shape: UpdateRelatedItemsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRelatedItemsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_replication_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReplicationSet"
        o.http_method = "POST"
        o.http_request_uri = "/updateReplicationSet"
        o.input = Shapes::ShapeRef.new(shape: UpdateReplicationSetInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateReplicationSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_response_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResponsePlan"
        o.http_method = "POST"
        o.http_request_uri = "/updateResponsePlan"
        o.input = Shapes::ShapeRef.new(shape: UpdateResponsePlanInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateResponsePlanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_timeline_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTimelineEvent"
        o.http_method = "POST"
        o.http_request_uri = "/updateTimelineEvent"
        o.input = Shapes::ShapeRef.new(shape: UpdateTimelineEventInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTimelineEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
