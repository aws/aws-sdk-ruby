# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Inspector
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedErrorCode = Shapes::StringShape.new(name: 'AccessDeniedErrorCode')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddAttributesToFindingsRequest = Shapes::StructureShape.new(name: 'AddAttributesToFindingsRequest')
    AddAttributesToFindingsResponse = Shapes::StructureShape.new(name: 'AddAttributesToFindingsResponse')
    AddRemoveAttributesFindingArnList = Shapes::ListShape.new(name: 'AddRemoveAttributesFindingArnList')
    AgentAlreadyRunningAssessment = Shapes::StructureShape.new(name: 'AgentAlreadyRunningAssessment')
    AgentAlreadyRunningAssessmentList = Shapes::ListShape.new(name: 'AgentAlreadyRunningAssessmentList')
    AgentFilter = Shapes::StructureShape.new(name: 'AgentFilter')
    AgentHealth = Shapes::StringShape.new(name: 'AgentHealth')
    AgentHealthCode = Shapes::StringShape.new(name: 'AgentHealthCode')
    AgentHealthCodeList = Shapes::ListShape.new(name: 'AgentHealthCodeList')
    AgentHealthList = Shapes::ListShape.new(name: 'AgentHealthList')
    AgentId = Shapes::StringShape.new(name: 'AgentId')
    AgentIdList = Shapes::ListShape.new(name: 'AgentIdList')
    AgentPreview = Shapes::StructureShape.new(name: 'AgentPreview')
    AgentPreviewList = Shapes::ListShape.new(name: 'AgentPreviewList')
    AgentVersion = Shapes::StringShape.new(name: 'AgentVersion')
    AgentsAlreadyRunningAssessmentException = Shapes::StructureShape.new(name: 'AgentsAlreadyRunningAssessmentException')
    AmiId = Shapes::StringShape.new(name: 'AmiId')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnCount = Shapes::IntegerShape.new(name: 'ArnCount')
    AssessmentRulesPackageArnList = Shapes::ListShape.new(name: 'AssessmentRulesPackageArnList')
    AssessmentRun = Shapes::StructureShape.new(name: 'AssessmentRun')
    AssessmentRunAgent = Shapes::StructureShape.new(name: 'AssessmentRunAgent')
    AssessmentRunAgentList = Shapes::ListShape.new(name: 'AssessmentRunAgentList')
    AssessmentRunDuration = Shapes::IntegerShape.new(name: 'AssessmentRunDuration')
    AssessmentRunFilter = Shapes::StructureShape.new(name: 'AssessmentRunFilter')
    AssessmentRunFindingCounts = Shapes::MapShape.new(name: 'AssessmentRunFindingCounts')
    AssessmentRunInProgressArnList = Shapes::ListShape.new(name: 'AssessmentRunInProgressArnList')
    AssessmentRunInProgressException = Shapes::StructureShape.new(name: 'AssessmentRunInProgressException')
    AssessmentRunList = Shapes::ListShape.new(name: 'AssessmentRunList')
    AssessmentRunName = Shapes::StringShape.new(name: 'AssessmentRunName')
    AssessmentRunNotification = Shapes::StructureShape.new(name: 'AssessmentRunNotification')
    AssessmentRunNotificationList = Shapes::ListShape.new(name: 'AssessmentRunNotificationList')
    AssessmentRunNotificationSnsStatusCode = Shapes::StringShape.new(name: 'AssessmentRunNotificationSnsStatusCode')
    AssessmentRunState = Shapes::StringShape.new(name: 'AssessmentRunState')
    AssessmentRunStateChange = Shapes::StructureShape.new(name: 'AssessmentRunStateChange')
    AssessmentRunStateChangeList = Shapes::ListShape.new(name: 'AssessmentRunStateChangeList')
    AssessmentRunStateList = Shapes::ListShape.new(name: 'AssessmentRunStateList')
    AssessmentTarget = Shapes::StructureShape.new(name: 'AssessmentTarget')
    AssessmentTargetFilter = Shapes::StructureShape.new(name: 'AssessmentTargetFilter')
    AssessmentTargetList = Shapes::ListShape.new(name: 'AssessmentTargetList')
    AssessmentTargetName = Shapes::StringShape.new(name: 'AssessmentTargetName')
    AssessmentTemplate = Shapes::StructureShape.new(name: 'AssessmentTemplate')
    AssessmentTemplateFilter = Shapes::StructureShape.new(name: 'AssessmentTemplateFilter')
    AssessmentTemplateList = Shapes::ListShape.new(name: 'AssessmentTemplateList')
    AssessmentTemplateName = Shapes::StringShape.new(name: 'AssessmentTemplateName')
    AssessmentTemplateRulesPackageArnList = Shapes::ListShape.new(name: 'AssessmentTemplateRulesPackageArnList')
    AssetAttributes = Shapes::StructureShape.new(name: 'AssetAttributes')
    AssetType = Shapes::StringShape.new(name: 'AssetType')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeKey = Shapes::StringShape.new(name: 'AttributeKey')
    AttributeList = Shapes::ListShape.new(name: 'AttributeList')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    AutoScalingGroup = Shapes::StringShape.new(name: 'AutoScalingGroup')
    AutoScalingGroupList = Shapes::ListShape.new(name: 'AutoScalingGroupList')
    BatchDescribeArnList = Shapes::ListShape.new(name: 'BatchDescribeArnList')
    BatchDescribeExclusionsArnList = Shapes::ListShape.new(name: 'BatchDescribeExclusionsArnList')
    Bool = Shapes::BooleanShape.new(name: 'Bool')
    CreateAssessmentTargetRequest = Shapes::StructureShape.new(name: 'CreateAssessmentTargetRequest')
    CreateAssessmentTargetResponse = Shapes::StructureShape.new(name: 'CreateAssessmentTargetResponse')
    CreateAssessmentTemplateRequest = Shapes::StructureShape.new(name: 'CreateAssessmentTemplateRequest')
    CreateAssessmentTemplateResponse = Shapes::StructureShape.new(name: 'CreateAssessmentTemplateResponse')
    CreateExclusionsPreviewRequest = Shapes::StructureShape.new(name: 'CreateExclusionsPreviewRequest')
    CreateExclusionsPreviewResponse = Shapes::StructureShape.new(name: 'CreateExclusionsPreviewResponse')
    CreateResourceGroupRequest = Shapes::StructureShape.new(name: 'CreateResourceGroupRequest')
    CreateResourceGroupResponse = Shapes::StructureShape.new(name: 'CreateResourceGroupResponse')
    DeleteAssessmentRunRequest = Shapes::StructureShape.new(name: 'DeleteAssessmentRunRequest')
    DeleteAssessmentTargetRequest = Shapes::StructureShape.new(name: 'DeleteAssessmentTargetRequest')
    DeleteAssessmentTemplateRequest = Shapes::StructureShape.new(name: 'DeleteAssessmentTemplateRequest')
    DescribeAssessmentRunsRequest = Shapes::StructureShape.new(name: 'DescribeAssessmentRunsRequest')
    DescribeAssessmentRunsResponse = Shapes::StructureShape.new(name: 'DescribeAssessmentRunsResponse')
    DescribeAssessmentTargetsRequest = Shapes::StructureShape.new(name: 'DescribeAssessmentTargetsRequest')
    DescribeAssessmentTargetsResponse = Shapes::StructureShape.new(name: 'DescribeAssessmentTargetsResponse')
    DescribeAssessmentTemplatesRequest = Shapes::StructureShape.new(name: 'DescribeAssessmentTemplatesRequest')
    DescribeAssessmentTemplatesResponse = Shapes::StructureShape.new(name: 'DescribeAssessmentTemplatesResponse')
    DescribeCrossAccountAccessRoleResponse = Shapes::StructureShape.new(name: 'DescribeCrossAccountAccessRoleResponse')
    DescribeExclusionsRequest = Shapes::StructureShape.new(name: 'DescribeExclusionsRequest')
    DescribeExclusionsResponse = Shapes::StructureShape.new(name: 'DescribeExclusionsResponse')
    DescribeFindingsRequest = Shapes::StructureShape.new(name: 'DescribeFindingsRequest')
    DescribeFindingsResponse = Shapes::StructureShape.new(name: 'DescribeFindingsResponse')
    DescribeResourceGroupsRequest = Shapes::StructureShape.new(name: 'DescribeResourceGroupsRequest')
    DescribeResourceGroupsResponse = Shapes::StructureShape.new(name: 'DescribeResourceGroupsResponse')
    DescribeRulesPackagesRequest = Shapes::StructureShape.new(name: 'DescribeRulesPackagesRequest')
    DescribeRulesPackagesResponse = Shapes::StructureShape.new(name: 'DescribeRulesPackagesResponse')
    DurationRange = Shapes::StructureShape.new(name: 'DurationRange')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventSubscription = Shapes::StructureShape.new(name: 'EventSubscription')
    EventSubscriptionList = Shapes::ListShape.new(name: 'EventSubscriptionList')
    Exclusion = Shapes::StructureShape.new(name: 'Exclusion')
    ExclusionMap = Shapes::MapShape.new(name: 'ExclusionMap')
    ExclusionPreview = Shapes::StructureShape.new(name: 'ExclusionPreview')
    ExclusionPreviewList = Shapes::ListShape.new(name: 'ExclusionPreviewList')
    FailedItemDetails = Shapes::StructureShape.new(name: 'FailedItemDetails')
    FailedItemErrorCode = Shapes::StringShape.new(name: 'FailedItemErrorCode')
    FailedItems = Shapes::MapShape.new(name: 'FailedItems')
    FilterRulesPackageArnList = Shapes::ListShape.new(name: 'FilterRulesPackageArnList')
    Finding = Shapes::StructureShape.new(name: 'Finding')
    FindingCount = Shapes::IntegerShape.new(name: 'FindingCount')
    FindingFilter = Shapes::StructureShape.new(name: 'FindingFilter')
    FindingId = Shapes::StringShape.new(name: 'FindingId')
    FindingList = Shapes::ListShape.new(name: 'FindingList')
    GetAssessmentReportRequest = Shapes::StructureShape.new(name: 'GetAssessmentReportRequest')
    GetAssessmentReportResponse = Shapes::StructureShape.new(name: 'GetAssessmentReportResponse')
    GetExclusionsPreviewRequest = Shapes::StructureShape.new(name: 'GetExclusionsPreviewRequest')
    GetExclusionsPreviewResponse = Shapes::StructureShape.new(name: 'GetExclusionsPreviewResponse')
    GetTelemetryMetadataRequest = Shapes::StructureShape.new(name: 'GetTelemetryMetadataRequest')
    GetTelemetryMetadataResponse = Shapes::StructureShape.new(name: 'GetTelemetryMetadataResponse')
    Hostname = Shapes::StringShape.new(name: 'Hostname')
    InspectorEvent = Shapes::StringShape.new(name: 'InspectorEvent')
    InspectorServiceAttributes = Shapes::StructureShape.new(name: 'InspectorServiceAttributes')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidCrossAccountRoleErrorCode = Shapes::StringShape.new(name: 'InvalidCrossAccountRoleErrorCode')
    InvalidCrossAccountRoleException = Shapes::StructureShape.new(name: 'InvalidCrossAccountRoleException')
    InvalidInputErrorCode = Shapes::StringShape.new(name: 'InvalidInputErrorCode')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    IocConfidence = Shapes::IntegerShape.new(name: 'IocConfidence')
    Ipv4Address = Shapes::StringShape.new(name: 'Ipv4Address')
    Ipv4AddressList = Shapes::ListShape.new(name: 'Ipv4AddressList')
    KernelVersion = Shapes::StringShape.new(name: 'KernelVersion')
    LimitExceededErrorCode = Shapes::StringShape.new(name: 'LimitExceededErrorCode')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAssessmentRunAgentsRequest = Shapes::StructureShape.new(name: 'ListAssessmentRunAgentsRequest')
    ListAssessmentRunAgentsResponse = Shapes::StructureShape.new(name: 'ListAssessmentRunAgentsResponse')
    ListAssessmentRunsRequest = Shapes::StructureShape.new(name: 'ListAssessmentRunsRequest')
    ListAssessmentRunsResponse = Shapes::StructureShape.new(name: 'ListAssessmentRunsResponse')
    ListAssessmentTargetsRequest = Shapes::StructureShape.new(name: 'ListAssessmentTargetsRequest')
    ListAssessmentTargetsResponse = Shapes::StructureShape.new(name: 'ListAssessmentTargetsResponse')
    ListAssessmentTemplatesRequest = Shapes::StructureShape.new(name: 'ListAssessmentTemplatesRequest')
    ListAssessmentTemplatesResponse = Shapes::StructureShape.new(name: 'ListAssessmentTemplatesResponse')
    ListEventSubscriptionsMaxResults = Shapes::IntegerShape.new(name: 'ListEventSubscriptionsMaxResults')
    ListEventSubscriptionsRequest = Shapes::StructureShape.new(name: 'ListEventSubscriptionsRequest')
    ListEventSubscriptionsResponse = Shapes::StructureShape.new(name: 'ListEventSubscriptionsResponse')
    ListExclusionsRequest = Shapes::StructureShape.new(name: 'ListExclusionsRequest')
    ListExclusionsResponse = Shapes::StructureShape.new(name: 'ListExclusionsResponse')
    ListFindingsRequest = Shapes::StructureShape.new(name: 'ListFindingsRequest')
    ListFindingsResponse = Shapes::StructureShape.new(name: 'ListFindingsResponse')
    ListMaxResults = Shapes::IntegerShape.new(name: 'ListMaxResults')
    ListParentArnList = Shapes::ListShape.new(name: 'ListParentArnList')
    ListReturnedArnList = Shapes::ListShape.new(name: 'ListReturnedArnList')
    ListRulesPackagesRequest = Shapes::StructureShape.new(name: 'ListRulesPackagesRequest')
    ListRulesPackagesResponse = Shapes::StructureShape.new(name: 'ListRulesPackagesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Locale = Shapes::StringShape.new(name: 'Locale')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Message = Shapes::StringShape.new(name: 'Message')
    MessageType = Shapes::StringShape.new(name: 'MessageType')
    NamePattern = Shapes::StringShape.new(name: 'NamePattern')
    NoSuchEntityErrorCode = Shapes::StringShape.new(name: 'NoSuchEntityErrorCode')
    NoSuchEntityException = Shapes::StructureShape.new(name: 'NoSuchEntityException')
    NumericSeverity = Shapes::FloatShape.new(name: 'NumericSeverity')
    NumericVersion = Shapes::IntegerShape.new(name: 'NumericVersion')
    OperatingSystem = Shapes::StringShape.new(name: 'OperatingSystem')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PreviewAgentsMaxResults = Shapes::IntegerShape.new(name: 'PreviewAgentsMaxResults')
    PreviewAgentsRequest = Shapes::StructureShape.new(name: 'PreviewAgentsRequest')
    PreviewAgentsResponse = Shapes::StructureShape.new(name: 'PreviewAgentsResponse')
    PreviewGenerationInProgressException = Shapes::StructureShape.new(name: 'PreviewGenerationInProgressException')
    PreviewStatus = Shapes::StringShape.new(name: 'PreviewStatus')
    ProviderName = Shapes::StringShape.new(name: 'ProviderName')
    RegisterCrossAccountAccessRoleRequest = Shapes::StructureShape.new(name: 'RegisterCrossAccountAccessRoleRequest')
    RemoveAttributesFromFindingsRequest = Shapes::StructureShape.new(name: 'RemoveAttributesFromFindingsRequest')
    RemoveAttributesFromFindingsResponse = Shapes::StructureShape.new(name: 'RemoveAttributesFromFindingsResponse')
    ReportFileFormat = Shapes::StringShape.new(name: 'ReportFileFormat')
    ReportStatus = Shapes::StringShape.new(name: 'ReportStatus')
    ReportType = Shapes::StringShape.new(name: 'ReportType')
    ResourceGroup = Shapes::StructureShape.new(name: 'ResourceGroup')
    ResourceGroupList = Shapes::ListShape.new(name: 'ResourceGroupList')
    ResourceGroupTag = Shapes::StructureShape.new(name: 'ResourceGroupTag')
    ResourceGroupTags = Shapes::ListShape.new(name: 'ResourceGroupTags')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    RuleNameList = Shapes::ListShape.new(name: 'RuleNameList')
    RulesPackage = Shapes::StructureShape.new(name: 'RulesPackage')
    RulesPackageList = Shapes::ListShape.new(name: 'RulesPackageList')
    RulesPackageName = Shapes::StringShape.new(name: 'RulesPackageName')
    Scope = Shapes::StructureShape.new(name: 'Scope')
    ScopeList = Shapes::ListShape.new(name: 'ScopeList')
    ScopeType = Shapes::StringShape.new(name: 'ScopeType')
    ScopeValue = Shapes::StringShape.new(name: 'ScopeValue')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceTemporarilyUnavailableException = Shapes::StructureShape.new(name: 'ServiceTemporarilyUnavailableException')
    SetTagsForResourceRequest = Shapes::StructureShape.new(name: 'SetTagsForResourceRequest')
    Severity = Shapes::StringShape.new(name: 'Severity')
    SeverityList = Shapes::ListShape.new(name: 'SeverityList')
    StartAssessmentRunRequest = Shapes::StructureShape.new(name: 'StartAssessmentRunRequest')
    StartAssessmentRunResponse = Shapes::StructureShape.new(name: 'StartAssessmentRunResponse')
    StopAction = Shapes::StringShape.new(name: 'StopAction')
    StopAssessmentRunRequest = Shapes::StructureShape.new(name: 'StopAssessmentRunRequest')
    SubscribeToEventRequest = Shapes::StructureShape.new(name: 'SubscribeToEventRequest')
    Subscription = Shapes::StructureShape.new(name: 'Subscription')
    SubscriptionList = Shapes::ListShape.new(name: 'SubscriptionList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TelemetryMetadata = Shapes::StructureShape.new(name: 'TelemetryMetadata')
    TelemetryMetadataList = Shapes::ListShape.new(name: 'TelemetryMetadataList')
    Text = Shapes::StringShape.new(name: 'Text')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampRange = Shapes::StructureShape.new(name: 'TimestampRange')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UnsubscribeFromEventRequest = Shapes::StructureShape.new(name: 'UnsubscribeFromEventRequest')
    UnsupportedFeatureException = Shapes::StructureShape.new(name: 'UnsupportedFeatureException')
    UpdateAssessmentTargetRequest = Shapes::StructureShape.new(name: 'UpdateAssessmentTargetRequest')
    Url = Shapes::StringShape.new(name: 'Url')
    UserAttributeKeyList = Shapes::ListShape.new(name: 'UserAttributeKeyList')
    UserAttributeList = Shapes::ListShape.new(name: 'UserAttributeList')
    Version = Shapes::StringShape.new(name: 'Version')

    AddAttributesToFindingsRequest.add_member(:finding_arns, Shapes::ShapeRef.new(shape: AddRemoveAttributesFindingArnList, required: true, location_name: "findingArns"))
    AddAttributesToFindingsRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: UserAttributeList, required: true, location_name: "attributes"))
    AddAttributesToFindingsRequest.struct_class = Types::AddAttributesToFindingsRequest

    AddAttributesToFindingsResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedItems, required: true, location_name: "failedItems"))
    AddAttributesToFindingsResponse.struct_class = Types::AddAttributesToFindingsResponse

    AddRemoveAttributesFindingArnList.member = Shapes::ShapeRef.new(shape: Arn)

    AgentAlreadyRunningAssessment.add_member(:agent_id, Shapes::ShapeRef.new(shape: AgentId, required: true, location_name: "agentId"))
    AgentAlreadyRunningAssessment.add_member(:assessment_run_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentRunArn"))
    AgentAlreadyRunningAssessment.struct_class = Types::AgentAlreadyRunningAssessment

    AgentAlreadyRunningAssessmentList.member = Shapes::ShapeRef.new(shape: AgentAlreadyRunningAssessment)

    AgentFilter.add_member(:agent_healths, Shapes::ShapeRef.new(shape: AgentHealthList, required: true, location_name: "agentHealths"))
    AgentFilter.add_member(:agent_health_codes, Shapes::ShapeRef.new(shape: AgentHealthCodeList, required: true, location_name: "agentHealthCodes"))
    AgentFilter.struct_class = Types::AgentFilter

    AgentHealthCodeList.member = Shapes::ShapeRef.new(shape: AgentHealthCode)

    AgentHealthList.member = Shapes::ShapeRef.new(shape: AgentHealth)

    AgentIdList.member = Shapes::ShapeRef.new(shape: AgentId)

    AgentPreview.add_member(:hostname, Shapes::ShapeRef.new(shape: Hostname, location_name: "hostname"))
    AgentPreview.add_member(:agent_id, Shapes::ShapeRef.new(shape: AgentId, required: true, location_name: "agentId"))
    AgentPreview.add_member(:auto_scaling_group, Shapes::ShapeRef.new(shape: AutoScalingGroup, location_name: "autoScalingGroup"))
    AgentPreview.add_member(:agent_health, Shapes::ShapeRef.new(shape: AgentHealth, location_name: "agentHealth"))
    AgentPreview.add_member(:agent_version, Shapes::ShapeRef.new(shape: AgentVersion, location_name: "agentVersion"))
    AgentPreview.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "operatingSystem"))
    AgentPreview.add_member(:kernel_version, Shapes::ShapeRef.new(shape: KernelVersion, location_name: "kernelVersion"))
    AgentPreview.add_member(:ipv4_address, Shapes::ShapeRef.new(shape: Ipv4Address, location_name: "ipv4Address"))
    AgentPreview.struct_class = Types::AgentPreview

    AgentPreviewList.member = Shapes::ShapeRef.new(shape: AgentPreview)

    AssessmentRulesPackageArnList.member = Shapes::ShapeRef.new(shape: Arn)

    AssessmentRun.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    AssessmentRun.add_member(:name, Shapes::ShapeRef.new(shape: AssessmentRunName, required: true, location_name: "name"))
    AssessmentRun.add_member(:assessment_template_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentTemplateArn"))
    AssessmentRun.add_member(:state, Shapes::ShapeRef.new(shape: AssessmentRunState, required: true, location_name: "state"))
    AssessmentRun.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: AssessmentRunDuration, required: true, location_name: "durationInSeconds"))
    AssessmentRun.add_member(:rules_package_arns, Shapes::ShapeRef.new(shape: AssessmentRulesPackageArnList, required: true, location_name: "rulesPackageArns"))
    AssessmentRun.add_member(:user_attributes_for_findings, Shapes::ShapeRef.new(shape: UserAttributeList, required: true, location_name: "userAttributesForFindings"))
    AssessmentRun.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AssessmentRun.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    AssessmentRun.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    AssessmentRun.add_member(:state_changed_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "stateChangedAt"))
    AssessmentRun.add_member(:data_collected, Shapes::ShapeRef.new(shape: Bool, required: true, location_name: "dataCollected"))
    AssessmentRun.add_member(:state_changes, Shapes::ShapeRef.new(shape: AssessmentRunStateChangeList, required: true, location_name: "stateChanges"))
    AssessmentRun.add_member(:notifications, Shapes::ShapeRef.new(shape: AssessmentRunNotificationList, required: true, location_name: "notifications"))
    AssessmentRun.add_member(:finding_counts, Shapes::ShapeRef.new(shape: AssessmentRunFindingCounts, required: true, location_name: "findingCounts"))
    AssessmentRun.struct_class = Types::AssessmentRun

    AssessmentRunAgent.add_member(:agent_id, Shapes::ShapeRef.new(shape: AgentId, required: true, location_name: "agentId"))
    AssessmentRunAgent.add_member(:assessment_run_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentRunArn"))
    AssessmentRunAgent.add_member(:agent_health, Shapes::ShapeRef.new(shape: AgentHealth, required: true, location_name: "agentHealth"))
    AssessmentRunAgent.add_member(:agent_health_code, Shapes::ShapeRef.new(shape: AgentHealthCode, required: true, location_name: "agentHealthCode"))
    AssessmentRunAgent.add_member(:agent_health_details, Shapes::ShapeRef.new(shape: Message, location_name: "agentHealthDetails"))
    AssessmentRunAgent.add_member(:auto_scaling_group, Shapes::ShapeRef.new(shape: AutoScalingGroup, location_name: "autoScalingGroup"))
    AssessmentRunAgent.add_member(:telemetry_metadata, Shapes::ShapeRef.new(shape: TelemetryMetadataList, required: true, location_name: "telemetryMetadata"))
    AssessmentRunAgent.struct_class = Types::AssessmentRunAgent

    AssessmentRunAgentList.member = Shapes::ShapeRef.new(shape: AssessmentRunAgent)

    AssessmentRunFilter.add_member(:name_pattern, Shapes::ShapeRef.new(shape: NamePattern, location_name: "namePattern"))
    AssessmentRunFilter.add_member(:states, Shapes::ShapeRef.new(shape: AssessmentRunStateList, location_name: "states"))
    AssessmentRunFilter.add_member(:duration_range, Shapes::ShapeRef.new(shape: DurationRange, location_name: "durationRange"))
    AssessmentRunFilter.add_member(:rules_package_arns, Shapes::ShapeRef.new(shape: FilterRulesPackageArnList, location_name: "rulesPackageArns"))
    AssessmentRunFilter.add_member(:start_time_range, Shapes::ShapeRef.new(shape: TimestampRange, location_name: "startTimeRange"))
    AssessmentRunFilter.add_member(:completion_time_range, Shapes::ShapeRef.new(shape: TimestampRange, location_name: "completionTimeRange"))
    AssessmentRunFilter.add_member(:state_change_time_range, Shapes::ShapeRef.new(shape: TimestampRange, location_name: "stateChangeTimeRange"))
    AssessmentRunFilter.struct_class = Types::AssessmentRunFilter

    AssessmentRunFindingCounts.key = Shapes::ShapeRef.new(shape: Severity)
    AssessmentRunFindingCounts.value = Shapes::ShapeRef.new(shape: FindingCount)

    AssessmentRunInProgressArnList.member = Shapes::ShapeRef.new(shape: Arn)

    AssessmentRunList.member = Shapes::ShapeRef.new(shape: AssessmentRun)

    AssessmentRunNotification.add_member(:date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "date"))
    AssessmentRunNotification.add_member(:event, Shapes::ShapeRef.new(shape: InspectorEvent, required: true, location_name: "event"))
    AssessmentRunNotification.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    AssessmentRunNotification.add_member(:error, Shapes::ShapeRef.new(shape: Bool, required: true, location_name: "error"))
    AssessmentRunNotification.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "snsTopicArn"))
    AssessmentRunNotification.add_member(:sns_publish_status_code, Shapes::ShapeRef.new(shape: AssessmentRunNotificationSnsStatusCode, location_name: "snsPublishStatusCode"))
    AssessmentRunNotification.struct_class = Types::AssessmentRunNotification

    AssessmentRunNotificationList.member = Shapes::ShapeRef.new(shape: AssessmentRunNotification)

    AssessmentRunStateChange.add_member(:state_changed_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "stateChangedAt"))
    AssessmentRunStateChange.add_member(:state, Shapes::ShapeRef.new(shape: AssessmentRunState, required: true, location_name: "state"))
    AssessmentRunStateChange.struct_class = Types::AssessmentRunStateChange

    AssessmentRunStateChangeList.member = Shapes::ShapeRef.new(shape: AssessmentRunStateChange)

    AssessmentRunStateList.member = Shapes::ShapeRef.new(shape: AssessmentRunState)

    AssessmentTarget.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    AssessmentTarget.add_member(:name, Shapes::ShapeRef.new(shape: AssessmentTargetName, required: true, location_name: "name"))
    AssessmentTarget.add_member(:resource_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceGroupArn"))
    AssessmentTarget.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AssessmentTarget.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    AssessmentTarget.struct_class = Types::AssessmentTarget

    AssessmentTargetFilter.add_member(:assessment_target_name_pattern, Shapes::ShapeRef.new(shape: NamePattern, location_name: "assessmentTargetNamePattern"))
    AssessmentTargetFilter.struct_class = Types::AssessmentTargetFilter

    AssessmentTargetList.member = Shapes::ShapeRef.new(shape: AssessmentTarget)

    AssessmentTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    AssessmentTemplate.add_member(:name, Shapes::ShapeRef.new(shape: AssessmentTemplateName, required: true, location_name: "name"))
    AssessmentTemplate.add_member(:assessment_target_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentTargetArn"))
    AssessmentTemplate.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: AssessmentRunDuration, required: true, location_name: "durationInSeconds"))
    AssessmentTemplate.add_member(:rules_package_arns, Shapes::ShapeRef.new(shape: AssessmentTemplateRulesPackageArnList, required: true, location_name: "rulesPackageArns"))
    AssessmentTemplate.add_member(:user_attributes_for_findings, Shapes::ShapeRef.new(shape: UserAttributeList, required: true, location_name: "userAttributesForFindings"))
    AssessmentTemplate.add_member(:last_assessment_run_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "lastAssessmentRunArn"))
    AssessmentTemplate.add_member(:assessment_run_count, Shapes::ShapeRef.new(shape: ArnCount, required: true, location_name: "assessmentRunCount"))
    AssessmentTemplate.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AssessmentTemplate.struct_class = Types::AssessmentTemplate

    AssessmentTemplateFilter.add_member(:name_pattern, Shapes::ShapeRef.new(shape: NamePattern, location_name: "namePattern"))
    AssessmentTemplateFilter.add_member(:duration_range, Shapes::ShapeRef.new(shape: DurationRange, location_name: "durationRange"))
    AssessmentTemplateFilter.add_member(:rules_package_arns, Shapes::ShapeRef.new(shape: FilterRulesPackageArnList, location_name: "rulesPackageArns"))
    AssessmentTemplateFilter.struct_class = Types::AssessmentTemplateFilter

    AssessmentTemplateList.member = Shapes::ShapeRef.new(shape: AssessmentTemplate)

    AssessmentTemplateRulesPackageArnList.member = Shapes::ShapeRef.new(shape: Arn)

    AssetAttributes.add_member(:schema_version, Shapes::ShapeRef.new(shape: NumericVersion, required: true, location_name: "schemaVersion"))
    AssetAttributes.add_member(:agent_id, Shapes::ShapeRef.new(shape: AgentId, location_name: "agentId"))
    AssetAttributes.add_member(:auto_scaling_group, Shapes::ShapeRef.new(shape: AutoScalingGroup, location_name: "autoScalingGroup"))
    AssetAttributes.add_member(:ami_id, Shapes::ShapeRef.new(shape: AmiId, location_name: "amiId"))
    AssetAttributes.add_member(:hostname, Shapes::ShapeRef.new(shape: Hostname, location_name: "hostname"))
    AssetAttributes.add_member(:ipv4_addresses, Shapes::ShapeRef.new(shape: Ipv4AddressList, location_name: "ipv4Addresses"))
    AssetAttributes.struct_class = Types::AssetAttributes

    Attribute.add_member(:key, Shapes::ShapeRef.new(shape: AttributeKey, required: true, location_name: "key"))
    Attribute.add_member(:value, Shapes::ShapeRef.new(shape: AttributeValue, location_name: "value"))
    Attribute.struct_class = Types::Attribute

    AttributeList.member = Shapes::ShapeRef.new(shape: Attribute)

    AutoScalingGroupList.member = Shapes::ShapeRef.new(shape: AutoScalingGroup)

    BatchDescribeArnList.member = Shapes::ShapeRef.new(shape: Arn)

    BatchDescribeExclusionsArnList.member = Shapes::ShapeRef.new(shape: Arn)

    CreateAssessmentTargetRequest.add_member(:assessment_target_name, Shapes::ShapeRef.new(shape: AssessmentTargetName, required: true, location_name: "assessmentTargetName"))
    CreateAssessmentTargetRequest.add_member(:resource_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceGroupArn"))
    CreateAssessmentTargetRequest.struct_class = Types::CreateAssessmentTargetRequest

    CreateAssessmentTargetResponse.add_member(:assessment_target_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentTargetArn"))
    CreateAssessmentTargetResponse.struct_class = Types::CreateAssessmentTargetResponse

    CreateAssessmentTemplateRequest.add_member(:assessment_target_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentTargetArn"))
    CreateAssessmentTemplateRequest.add_member(:assessment_template_name, Shapes::ShapeRef.new(shape: AssessmentTemplateName, required: true, location_name: "assessmentTemplateName"))
    CreateAssessmentTemplateRequest.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: AssessmentRunDuration, required: true, location_name: "durationInSeconds"))
    CreateAssessmentTemplateRequest.add_member(:rules_package_arns, Shapes::ShapeRef.new(shape: AssessmentTemplateRulesPackageArnList, required: true, location_name: "rulesPackageArns"))
    CreateAssessmentTemplateRequest.add_member(:user_attributes_for_findings, Shapes::ShapeRef.new(shape: UserAttributeList, location_name: "userAttributesForFindings"))
    CreateAssessmentTemplateRequest.struct_class = Types::CreateAssessmentTemplateRequest

    CreateAssessmentTemplateResponse.add_member(:assessment_template_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentTemplateArn"))
    CreateAssessmentTemplateResponse.struct_class = Types::CreateAssessmentTemplateResponse

    CreateExclusionsPreviewRequest.add_member(:assessment_template_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentTemplateArn"))
    CreateExclusionsPreviewRequest.struct_class = Types::CreateExclusionsPreviewRequest

    CreateExclusionsPreviewResponse.add_member(:preview_token, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "previewToken"))
    CreateExclusionsPreviewResponse.struct_class = Types::CreateExclusionsPreviewResponse

    CreateResourceGroupRequest.add_member(:resource_group_tags, Shapes::ShapeRef.new(shape: ResourceGroupTags, required: true, location_name: "resourceGroupTags"))
    CreateResourceGroupRequest.struct_class = Types::CreateResourceGroupRequest

    CreateResourceGroupResponse.add_member(:resource_group_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceGroupArn"))
    CreateResourceGroupResponse.struct_class = Types::CreateResourceGroupResponse

    DeleteAssessmentRunRequest.add_member(:assessment_run_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentRunArn"))
    DeleteAssessmentRunRequest.struct_class = Types::DeleteAssessmentRunRequest

    DeleteAssessmentTargetRequest.add_member(:assessment_target_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentTargetArn"))
    DeleteAssessmentTargetRequest.struct_class = Types::DeleteAssessmentTargetRequest

    DeleteAssessmentTemplateRequest.add_member(:assessment_template_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentTemplateArn"))
    DeleteAssessmentTemplateRequest.struct_class = Types::DeleteAssessmentTemplateRequest

    DescribeAssessmentRunsRequest.add_member(:assessment_run_arns, Shapes::ShapeRef.new(shape: BatchDescribeArnList, required: true, location_name: "assessmentRunArns"))
    DescribeAssessmentRunsRequest.struct_class = Types::DescribeAssessmentRunsRequest

    DescribeAssessmentRunsResponse.add_member(:assessment_runs, Shapes::ShapeRef.new(shape: AssessmentRunList, required: true, location_name: "assessmentRuns"))
    DescribeAssessmentRunsResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedItems, required: true, location_name: "failedItems"))
    DescribeAssessmentRunsResponse.struct_class = Types::DescribeAssessmentRunsResponse

    DescribeAssessmentTargetsRequest.add_member(:assessment_target_arns, Shapes::ShapeRef.new(shape: BatchDescribeArnList, required: true, location_name: "assessmentTargetArns"))
    DescribeAssessmentTargetsRequest.struct_class = Types::DescribeAssessmentTargetsRequest

    DescribeAssessmentTargetsResponse.add_member(:assessment_targets, Shapes::ShapeRef.new(shape: AssessmentTargetList, required: true, location_name: "assessmentTargets"))
    DescribeAssessmentTargetsResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedItems, required: true, location_name: "failedItems"))
    DescribeAssessmentTargetsResponse.struct_class = Types::DescribeAssessmentTargetsResponse

    DescribeAssessmentTemplatesRequest.add_member(:assessment_template_arns, Shapes::ShapeRef.new(shape: BatchDescribeArnList, required: true, location_name: "assessmentTemplateArns"))
    DescribeAssessmentTemplatesRequest.struct_class = Types::DescribeAssessmentTemplatesRequest

    DescribeAssessmentTemplatesResponse.add_member(:assessment_templates, Shapes::ShapeRef.new(shape: AssessmentTemplateList, required: true, location_name: "assessmentTemplates"))
    DescribeAssessmentTemplatesResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedItems, required: true, location_name: "failedItems"))
    DescribeAssessmentTemplatesResponse.struct_class = Types::DescribeAssessmentTemplatesResponse

    DescribeCrossAccountAccessRoleResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    DescribeCrossAccountAccessRoleResponse.add_member(:valid, Shapes::ShapeRef.new(shape: Bool, required: true, location_name: "valid"))
    DescribeCrossAccountAccessRoleResponse.add_member(:registered_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "registeredAt"))
    DescribeCrossAccountAccessRoleResponse.struct_class = Types::DescribeCrossAccountAccessRoleResponse

    DescribeExclusionsRequest.add_member(:exclusion_arns, Shapes::ShapeRef.new(shape: BatchDescribeExclusionsArnList, required: true, location_name: "exclusionArns"))
    DescribeExclusionsRequest.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, location_name: "locale"))
    DescribeExclusionsRequest.struct_class = Types::DescribeExclusionsRequest

    DescribeExclusionsResponse.add_member(:exclusions, Shapes::ShapeRef.new(shape: ExclusionMap, required: true, location_name: "exclusions"))
    DescribeExclusionsResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedItems, required: true, location_name: "failedItems"))
    DescribeExclusionsResponse.struct_class = Types::DescribeExclusionsResponse

    DescribeFindingsRequest.add_member(:finding_arns, Shapes::ShapeRef.new(shape: BatchDescribeArnList, required: true, location_name: "findingArns"))
    DescribeFindingsRequest.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, location_name: "locale"))
    DescribeFindingsRequest.struct_class = Types::DescribeFindingsRequest

    DescribeFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: FindingList, required: true, location_name: "findings"))
    DescribeFindingsResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedItems, required: true, location_name: "failedItems"))
    DescribeFindingsResponse.struct_class = Types::DescribeFindingsResponse

    DescribeResourceGroupsRequest.add_member(:resource_group_arns, Shapes::ShapeRef.new(shape: BatchDescribeArnList, required: true, location_name: "resourceGroupArns"))
    DescribeResourceGroupsRequest.struct_class = Types::DescribeResourceGroupsRequest

    DescribeResourceGroupsResponse.add_member(:resource_groups, Shapes::ShapeRef.new(shape: ResourceGroupList, required: true, location_name: "resourceGroups"))
    DescribeResourceGroupsResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedItems, required: true, location_name: "failedItems"))
    DescribeResourceGroupsResponse.struct_class = Types::DescribeResourceGroupsResponse

    DescribeRulesPackagesRequest.add_member(:rules_package_arns, Shapes::ShapeRef.new(shape: BatchDescribeArnList, required: true, location_name: "rulesPackageArns"))
    DescribeRulesPackagesRequest.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, location_name: "locale"))
    DescribeRulesPackagesRequest.struct_class = Types::DescribeRulesPackagesRequest

    DescribeRulesPackagesResponse.add_member(:rules_packages, Shapes::ShapeRef.new(shape: RulesPackageList, required: true, location_name: "rulesPackages"))
    DescribeRulesPackagesResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedItems, required: true, location_name: "failedItems"))
    DescribeRulesPackagesResponse.struct_class = Types::DescribeRulesPackagesResponse

    DurationRange.add_member(:min_seconds, Shapes::ShapeRef.new(shape: AssessmentRunDuration, location_name: "minSeconds"))
    DurationRange.add_member(:max_seconds, Shapes::ShapeRef.new(shape: AssessmentRunDuration, location_name: "maxSeconds"))
    DurationRange.struct_class = Types::DurationRange

    EventSubscription.add_member(:event, Shapes::ShapeRef.new(shape: InspectorEvent, required: true, location_name: "event"))
    EventSubscription.add_member(:subscribed_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "subscribedAt"))
    EventSubscription.struct_class = Types::EventSubscription

    EventSubscriptionList.member = Shapes::ShapeRef.new(shape: EventSubscription)

    Exclusion.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    Exclusion.add_member(:title, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "title"))
    Exclusion.add_member(:description, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "description"))
    Exclusion.add_member(:recommendation, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "recommendation"))
    Exclusion.add_member(:scopes, Shapes::ShapeRef.new(shape: ScopeList, required: true, location_name: "scopes"))
    Exclusion.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeList, location_name: "attributes"))
    Exclusion.struct_class = Types::Exclusion

    ExclusionMap.key = Shapes::ShapeRef.new(shape: Arn)
    ExclusionMap.value = Shapes::ShapeRef.new(shape: Exclusion)

    ExclusionPreview.add_member(:title, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "title"))
    ExclusionPreview.add_member(:description, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "description"))
    ExclusionPreview.add_member(:recommendation, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "recommendation"))
    ExclusionPreview.add_member(:scopes, Shapes::ShapeRef.new(shape: ScopeList, required: true, location_name: "scopes"))
    ExclusionPreview.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeList, location_name: "attributes"))
    ExclusionPreview.struct_class = Types::ExclusionPreview

    ExclusionPreviewList.member = Shapes::ShapeRef.new(shape: ExclusionPreview)

    FailedItemDetails.add_member(:failure_code, Shapes::ShapeRef.new(shape: FailedItemErrorCode, required: true, location_name: "failureCode"))
    FailedItemDetails.add_member(:retryable, Shapes::ShapeRef.new(shape: Bool, required: true, location_name: "retryable"))
    FailedItemDetails.struct_class = Types::FailedItemDetails

    FailedItems.key = Shapes::ShapeRef.new(shape: Arn)
    FailedItems.value = Shapes::ShapeRef.new(shape: FailedItemDetails)

    FilterRulesPackageArnList.member = Shapes::ShapeRef.new(shape: Arn)

    Finding.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    Finding.add_member(:schema_version, Shapes::ShapeRef.new(shape: NumericVersion, location_name: "schemaVersion"))
    Finding.add_member(:service, Shapes::ShapeRef.new(shape: ServiceName, location_name: "service"))
    Finding.add_member(:service_attributes, Shapes::ShapeRef.new(shape: InspectorServiceAttributes, location_name: "serviceAttributes"))
    Finding.add_member(:asset_type, Shapes::ShapeRef.new(shape: AssetType, location_name: "assetType"))
    Finding.add_member(:asset_attributes, Shapes::ShapeRef.new(shape: AssetAttributes, location_name: "assetAttributes"))
    Finding.add_member(:id, Shapes::ShapeRef.new(shape: FindingId, location_name: "id"))
    Finding.add_member(:title, Shapes::ShapeRef.new(shape: Text, location_name: "title"))
    Finding.add_member(:description, Shapes::ShapeRef.new(shape: Text, location_name: "description"))
    Finding.add_member(:recommendation, Shapes::ShapeRef.new(shape: Text, location_name: "recommendation"))
    Finding.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    Finding.add_member(:numeric_severity, Shapes::ShapeRef.new(shape: NumericSeverity, location_name: "numericSeverity"))
    Finding.add_member(:confidence, Shapes::ShapeRef.new(shape: IocConfidence, location_name: "confidence"))
    Finding.add_member(:indicator_of_compromise, Shapes::ShapeRef.new(shape: Bool, location_name: "indicatorOfCompromise"))
    Finding.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeList, required: true, location_name: "attributes"))
    Finding.add_member(:user_attributes, Shapes::ShapeRef.new(shape: UserAttributeList, required: true, location_name: "userAttributes"))
    Finding.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Finding.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    Finding.struct_class = Types::Finding

    FindingFilter.add_member(:agent_ids, Shapes::ShapeRef.new(shape: AgentIdList, location_name: "agentIds"))
    FindingFilter.add_member(:auto_scaling_groups, Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: "autoScalingGroups"))
    FindingFilter.add_member(:rule_names, Shapes::ShapeRef.new(shape: RuleNameList, location_name: "ruleNames"))
    FindingFilter.add_member(:severities, Shapes::ShapeRef.new(shape: SeverityList, location_name: "severities"))
    FindingFilter.add_member(:rules_package_arns, Shapes::ShapeRef.new(shape: FilterRulesPackageArnList, location_name: "rulesPackageArns"))
    FindingFilter.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeList, location_name: "attributes"))
    FindingFilter.add_member(:user_attributes, Shapes::ShapeRef.new(shape: AttributeList, location_name: "userAttributes"))
    FindingFilter.add_member(:creation_time_range, Shapes::ShapeRef.new(shape: TimestampRange, location_name: "creationTimeRange"))
    FindingFilter.struct_class = Types::FindingFilter

    FindingList.member = Shapes::ShapeRef.new(shape: Finding)

    GetAssessmentReportRequest.add_member(:assessment_run_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentRunArn"))
    GetAssessmentReportRequest.add_member(:report_file_format, Shapes::ShapeRef.new(shape: ReportFileFormat, required: true, location_name: "reportFileFormat"))
    GetAssessmentReportRequest.add_member(:report_type, Shapes::ShapeRef.new(shape: ReportType, required: true, location_name: "reportType"))
    GetAssessmentReportRequest.struct_class = Types::GetAssessmentReportRequest

    GetAssessmentReportResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReportStatus, required: true, location_name: "status"))
    GetAssessmentReportResponse.add_member(:url, Shapes::ShapeRef.new(shape: Url, location_name: "url"))
    GetAssessmentReportResponse.struct_class = Types::GetAssessmentReportResponse

    GetExclusionsPreviewRequest.add_member(:assessment_template_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentTemplateArn"))
    GetExclusionsPreviewRequest.add_member(:preview_token, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "previewToken"))
    GetExclusionsPreviewRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    GetExclusionsPreviewRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMaxResults, location_name: "maxResults"))
    GetExclusionsPreviewRequest.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, location_name: "locale"))
    GetExclusionsPreviewRequest.struct_class = Types::GetExclusionsPreviewRequest

    GetExclusionsPreviewResponse.add_member(:preview_status, Shapes::ShapeRef.new(shape: PreviewStatus, required: true, location_name: "previewStatus"))
    GetExclusionsPreviewResponse.add_member(:exclusion_previews, Shapes::ShapeRef.new(shape: ExclusionPreviewList, location_name: "exclusionPreviews"))
    GetExclusionsPreviewResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    GetExclusionsPreviewResponse.struct_class = Types::GetExclusionsPreviewResponse

    GetTelemetryMetadataRequest.add_member(:assessment_run_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentRunArn"))
    GetTelemetryMetadataRequest.struct_class = Types::GetTelemetryMetadataRequest

    GetTelemetryMetadataResponse.add_member(:telemetry_metadata, Shapes::ShapeRef.new(shape: TelemetryMetadataList, required: true, location_name: "telemetryMetadata"))
    GetTelemetryMetadataResponse.struct_class = Types::GetTelemetryMetadataResponse

    InspectorServiceAttributes.add_member(:schema_version, Shapes::ShapeRef.new(shape: NumericVersion, required: true, location_name: "schemaVersion"))
    InspectorServiceAttributes.add_member(:assessment_run_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "assessmentRunArn"))
    InspectorServiceAttributes.add_member(:rules_package_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "rulesPackageArn"))
    InspectorServiceAttributes.struct_class = Types::InspectorServiceAttributes

    Ipv4AddressList.member = Shapes::ShapeRef.new(shape: Ipv4Address)

    ListAssessmentRunAgentsRequest.add_member(:assessment_run_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentRunArn"))
    ListAssessmentRunAgentsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: AgentFilter, location_name: "filter"))
    ListAssessmentRunAgentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAssessmentRunAgentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMaxResults, location_name: "maxResults"))
    ListAssessmentRunAgentsRequest.struct_class = Types::ListAssessmentRunAgentsRequest

    ListAssessmentRunAgentsResponse.add_member(:assessment_run_agents, Shapes::ShapeRef.new(shape: AssessmentRunAgentList, required: true, location_name: "assessmentRunAgents"))
    ListAssessmentRunAgentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAssessmentRunAgentsResponse.struct_class = Types::ListAssessmentRunAgentsResponse

    ListAssessmentRunsRequest.add_member(:assessment_template_arns, Shapes::ShapeRef.new(shape: ListParentArnList, location_name: "assessmentTemplateArns"))
    ListAssessmentRunsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: AssessmentRunFilter, location_name: "filter"))
    ListAssessmentRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAssessmentRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMaxResults, location_name: "maxResults"))
    ListAssessmentRunsRequest.struct_class = Types::ListAssessmentRunsRequest

    ListAssessmentRunsResponse.add_member(:assessment_run_arns, Shapes::ShapeRef.new(shape: ListReturnedArnList, required: true, location_name: "assessmentRunArns"))
    ListAssessmentRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAssessmentRunsResponse.struct_class = Types::ListAssessmentRunsResponse

    ListAssessmentTargetsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: AssessmentTargetFilter, location_name: "filter"))
    ListAssessmentTargetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAssessmentTargetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMaxResults, location_name: "maxResults"))
    ListAssessmentTargetsRequest.struct_class = Types::ListAssessmentTargetsRequest

    ListAssessmentTargetsResponse.add_member(:assessment_target_arns, Shapes::ShapeRef.new(shape: ListReturnedArnList, required: true, location_name: "assessmentTargetArns"))
    ListAssessmentTargetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAssessmentTargetsResponse.struct_class = Types::ListAssessmentTargetsResponse

    ListAssessmentTemplatesRequest.add_member(:assessment_target_arns, Shapes::ShapeRef.new(shape: ListParentArnList, location_name: "assessmentTargetArns"))
    ListAssessmentTemplatesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: AssessmentTemplateFilter, location_name: "filter"))
    ListAssessmentTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAssessmentTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMaxResults, location_name: "maxResults"))
    ListAssessmentTemplatesRequest.struct_class = Types::ListAssessmentTemplatesRequest

    ListAssessmentTemplatesResponse.add_member(:assessment_template_arns, Shapes::ShapeRef.new(shape: ListReturnedArnList, required: true, location_name: "assessmentTemplateArns"))
    ListAssessmentTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAssessmentTemplatesResponse.struct_class = Types::ListAssessmentTemplatesResponse

    ListEventSubscriptionsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn"))
    ListEventSubscriptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEventSubscriptionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEventSubscriptionsMaxResults, location_name: "maxResults"))
    ListEventSubscriptionsRequest.struct_class = Types::ListEventSubscriptionsRequest

    ListEventSubscriptionsResponse.add_member(:subscriptions, Shapes::ShapeRef.new(shape: SubscriptionList, required: true, location_name: "subscriptions"))
    ListEventSubscriptionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEventSubscriptionsResponse.struct_class = Types::ListEventSubscriptionsResponse

    ListExclusionsRequest.add_member(:assessment_run_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentRunArn"))
    ListExclusionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListExclusionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMaxResults, location_name: "maxResults"))
    ListExclusionsRequest.struct_class = Types::ListExclusionsRequest

    ListExclusionsResponse.add_member(:exclusion_arns, Shapes::ShapeRef.new(shape: ListReturnedArnList, required: true, location_name: "exclusionArns"))
    ListExclusionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListExclusionsResponse.struct_class = Types::ListExclusionsResponse

    ListFindingsRequest.add_member(:assessment_run_arns, Shapes::ShapeRef.new(shape: ListParentArnList, location_name: "assessmentRunArns"))
    ListFindingsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: FindingFilter, location_name: "filter"))
    ListFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMaxResults, location_name: "maxResults"))
    ListFindingsRequest.struct_class = Types::ListFindingsRequest

    ListFindingsResponse.add_member(:finding_arns, Shapes::ShapeRef.new(shape: ListReturnedArnList, required: true, location_name: "findingArns"))
    ListFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListFindingsResponse.struct_class = Types::ListFindingsResponse

    ListParentArnList.member = Shapes::ShapeRef.new(shape: Arn)

    ListReturnedArnList.member = Shapes::ShapeRef.new(shape: Arn)

    ListRulesPackagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRulesPackagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMaxResults, location_name: "maxResults"))
    ListRulesPackagesRequest.struct_class = Types::ListRulesPackagesRequest

    ListRulesPackagesResponse.add_member(:rules_package_arns, Shapes::ShapeRef.new(shape: ListReturnedArnList, required: true, location_name: "rulesPackageArns"))
    ListRulesPackagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRulesPackagesResponse.struct_class = Types::ListRulesPackagesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    PreviewAgentsRequest.add_member(:preview_agents_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "previewAgentsArn"))
    PreviewAgentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    PreviewAgentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PreviewAgentsMaxResults, location_name: "maxResults"))
    PreviewAgentsRequest.struct_class = Types::PreviewAgentsRequest

    PreviewAgentsResponse.add_member(:agent_previews, Shapes::ShapeRef.new(shape: AgentPreviewList, required: true, location_name: "agentPreviews"))
    PreviewAgentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    PreviewAgentsResponse.struct_class = Types::PreviewAgentsResponse

    RegisterCrossAccountAccessRoleRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    RegisterCrossAccountAccessRoleRequest.struct_class = Types::RegisterCrossAccountAccessRoleRequest

    RemoveAttributesFromFindingsRequest.add_member(:finding_arns, Shapes::ShapeRef.new(shape: AddRemoveAttributesFindingArnList, required: true, location_name: "findingArns"))
    RemoveAttributesFromFindingsRequest.add_member(:attribute_keys, Shapes::ShapeRef.new(shape: UserAttributeKeyList, required: true, location_name: "attributeKeys"))
    RemoveAttributesFromFindingsRequest.struct_class = Types::RemoveAttributesFromFindingsRequest

    RemoveAttributesFromFindingsResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedItems, required: true, location_name: "failedItems"))
    RemoveAttributesFromFindingsResponse.struct_class = Types::RemoveAttributesFromFindingsResponse

    ResourceGroup.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    ResourceGroup.add_member(:tags, Shapes::ShapeRef.new(shape: ResourceGroupTags, required: true, location_name: "tags"))
    ResourceGroup.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ResourceGroup.struct_class = Types::ResourceGroup

    ResourceGroupList.member = Shapes::ShapeRef.new(shape: ResourceGroup)

    ResourceGroupTag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    ResourceGroupTag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    ResourceGroupTag.struct_class = Types::ResourceGroupTag

    ResourceGroupTags.member = Shapes::ShapeRef.new(shape: ResourceGroupTag)

    RuleNameList.member = Shapes::ShapeRef.new(shape: RuleName)

    RulesPackage.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    RulesPackage.add_member(:name, Shapes::ShapeRef.new(shape: RulesPackageName, required: true, location_name: "name"))
    RulesPackage.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    RulesPackage.add_member(:provider, Shapes::ShapeRef.new(shape: ProviderName, required: true, location_name: "provider"))
    RulesPackage.add_member(:description, Shapes::ShapeRef.new(shape: Text, location_name: "description"))
    RulesPackage.struct_class = Types::RulesPackage

    RulesPackageList.member = Shapes::ShapeRef.new(shape: RulesPackage)

    Scope.add_member(:key, Shapes::ShapeRef.new(shape: ScopeType, location_name: "key"))
    Scope.add_member(:value, Shapes::ShapeRef.new(shape: ScopeValue, location_name: "value"))
    Scope.struct_class = Types::Scope

    ScopeList.member = Shapes::ShapeRef.new(shape: Scope)

    SetTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    SetTagsForResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    SetTagsForResourceRequest.struct_class = Types::SetTagsForResourceRequest

    SeverityList.member = Shapes::ShapeRef.new(shape: Severity)

    StartAssessmentRunRequest.add_member(:assessment_template_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentTemplateArn"))
    StartAssessmentRunRequest.add_member(:assessment_run_name, Shapes::ShapeRef.new(shape: AssessmentRunName, location_name: "assessmentRunName"))
    StartAssessmentRunRequest.struct_class = Types::StartAssessmentRunRequest

    StartAssessmentRunResponse.add_member(:assessment_run_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentRunArn"))
    StartAssessmentRunResponse.struct_class = Types::StartAssessmentRunResponse

    StopAssessmentRunRequest.add_member(:assessment_run_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentRunArn"))
    StopAssessmentRunRequest.add_member(:stop_action, Shapes::ShapeRef.new(shape: StopAction, location_name: "stopAction"))
    StopAssessmentRunRequest.struct_class = Types::StopAssessmentRunRequest

    SubscribeToEventRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    SubscribeToEventRequest.add_member(:event, Shapes::ShapeRef.new(shape: InspectorEvent, required: true, location_name: "event"))
    SubscribeToEventRequest.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "topicArn"))
    SubscribeToEventRequest.struct_class = Types::SubscribeToEventRequest

    Subscription.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    Subscription.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "topicArn"))
    Subscription.add_member(:event_subscriptions, Shapes::ShapeRef.new(shape: EventSubscriptionList, required: true, location_name: "eventSubscriptions"))
    Subscription.struct_class = Types::Subscription

    SubscriptionList.member = Shapes::ShapeRef.new(shape: Subscription)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TelemetryMetadata.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, required: true, location_name: "messageType"))
    TelemetryMetadata.add_member(:count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "count"))
    TelemetryMetadata.add_member(:data_size, Shapes::ShapeRef.new(shape: Long, location_name: "dataSize"))
    TelemetryMetadata.struct_class = Types::TelemetryMetadata

    TelemetryMetadataList.member = Shapes::ShapeRef.new(shape: TelemetryMetadata)

    TimestampRange.add_member(:begin_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "beginDate"))
    TimestampRange.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endDate"))
    TimestampRange.struct_class = Types::TimestampRange

    UnsubscribeFromEventRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    UnsubscribeFromEventRequest.add_member(:event, Shapes::ShapeRef.new(shape: InspectorEvent, required: true, location_name: "event"))
    UnsubscribeFromEventRequest.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "topicArn"))
    UnsubscribeFromEventRequest.struct_class = Types::UnsubscribeFromEventRequest

    UpdateAssessmentTargetRequest.add_member(:assessment_target_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentTargetArn"))
    UpdateAssessmentTargetRequest.add_member(:assessment_target_name, Shapes::ShapeRef.new(shape: AssessmentTargetName, required: true, location_name: "assessmentTargetName"))
    UpdateAssessmentTargetRequest.add_member(:resource_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceGroupArn"))
    UpdateAssessmentTargetRequest.struct_class = Types::UpdateAssessmentTargetRequest

    UserAttributeKeyList.member = Shapes::ShapeRef.new(shape: AttributeKey)

    UserAttributeList.member = Shapes::ShapeRef.new(shape: Attribute)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-02-16"

      api.metadata = {
        "apiVersion" => "2016-02-16",
        "endpointPrefix" => "inspector",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Inspector",
        "serviceId" => "Inspector",
        "signatureVersion" => "v4",
        "targetPrefix" => "InspectorService",
        "uid" => "inspector-2016-02-16",
      }

      api.add_operation(:add_attributes_to_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddAttributesToFindings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddAttributesToFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddAttributesToFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:create_assessment_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssessmentTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAssessmentTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssessmentTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:create_assessment_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssessmentTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAssessmentTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssessmentTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:create_exclusions_preview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExclusionsPreview"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateExclusionsPreviewRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateExclusionsPreviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PreviewGenerationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:create_resource_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourceGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:delete_assessment_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssessmentRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssessmentRunRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AssessmentRunInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:delete_assessment_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssessmentTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssessmentTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AssessmentRunInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:delete_assessment_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssessmentTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssessmentTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AssessmentRunInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:describe_assessment_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssessmentRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAssessmentRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssessmentRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:describe_assessment_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssessmentTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAssessmentTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssessmentTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:describe_assessment_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssessmentTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAssessmentTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssessmentTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:describe_cross_account_access_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCrossAccountAccessRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeCrossAccountAccessRoleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_exclusions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExclusions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeExclusionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeExclusionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:describe_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFindings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:describe_resource_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResourceGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourceGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourceGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:describe_rules_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRulesPackages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRulesPackagesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRulesPackagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:get_assessment_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssessmentReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAssessmentReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssessmentReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: AssessmentRunInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:get_exclusions_preview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExclusionsPreview"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetExclusionsPreviewRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExclusionsPreviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_telemetry_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTelemetryMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
      end)

      api.add_operation(:list_assessment_run_agents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssessmentRunAgents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssessmentRunAgentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssessmentRunAgentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_assessment_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssessmentRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssessmentRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssessmentRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_assessment_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssessmentTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssessmentTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssessmentTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_assessment_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssessmentTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssessmentTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssessmentTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_event_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventSubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEventSubscriptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventSubscriptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_exclusions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExclusions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListExclusionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExclusionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFindings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rules_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRulesPackages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRulesPackagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRulesPackagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
      end)

      api.add_operation(:preview_agents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PreviewAgents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PreviewAgentsRequest)
        o.output = Shapes::ShapeRef.new(shape: PreviewAgentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:register_cross_account_access_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterCrossAccountAccessRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterCrossAccountAccessRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:remove_attributes_from_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveAttributesFromFindings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveAttributesFromFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveAttributesFromFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:set_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:start_assessment_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAssessmentRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartAssessmentRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAssessmentRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleException)
        o.errors << Shapes::ShapeRef.new(shape: AgentsAlreadyRunningAssessmentException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:stop_assessment_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopAssessmentRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopAssessmentRunRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:subscribe_to_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubscribeToEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SubscribeToEventRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:unsubscribe_from_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnsubscribeFromEvent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UnsubscribeFromEventRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)

      api.add_operation(:update_assessment_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssessmentTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssessmentTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
      end)
    end

  end
end
