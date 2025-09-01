# frozen_string_literal: true

# This is generated code!

module Aws::Inspector
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#AccessDeniedErrorCode', name: 'AccessDeniedErrorCode')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddAttributesToFindingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AddAttributesToFindingsRequest', name: 'AddAttributesToFindingsRequest')
    AddAttributesToFindingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AddAttributesToFindingsResponse', name: 'AddAttributesToFindingsResponse')
    AddRemoveAttributesFindingArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AddRemoveAttributesFindingArnList', name: 'AddRemoveAttributesFindingArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AgentAlreadyRunningAssessment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AgentAlreadyRunningAssessment', name: 'AgentAlreadyRunningAssessment')
    AgentAlreadyRunningAssessmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AgentAlreadyRunningAssessmentList', name: 'AgentAlreadyRunningAssessmentList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AgentFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AgentFilter', name: 'AgentFilter')
    AgentHealth = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#AgentHealth', name: 'AgentHealth')
    AgentHealthCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#AgentHealthCode', name: 'AgentHealthCode')
    AgentHealthCodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AgentHealthCodeList', name: 'AgentHealthCodeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AgentHealthList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AgentHealthList', name: 'AgentHealthList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AgentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AgentId', name: 'AgentId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AgentIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AgentIdList', name: 'AgentIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 99}})
    AgentPreview = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AgentPreview', name: 'AgentPreview')
    AgentPreviewList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AgentPreviewList', name: 'AgentPreviewList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AgentVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AgentVersion', name: 'AgentVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AgentsAlreadyRunningAssessmentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AgentsAlreadyRunningAssessmentException', name: 'AgentsAlreadyRunningAssessmentException', traits: {"smithy.api#error" => "client"})
    AmiId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AmiId', name: 'AmiId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ArnCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#ArnCount', name: 'ArnCount')
    AssessmentRulesPackageArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRulesPackageArnList', name: 'AssessmentRulesPackageArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AssessmentRun = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentRun', name: 'AssessmentRun')
    AssessmentRunAgent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentRunAgent', name: 'AssessmentRunAgent')
    AssessmentRunAgentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRunAgentList', name: 'AssessmentRunAgentList', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    AssessmentRunDuration = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#AssessmentRunDuration', name: 'AssessmentRunDuration', traits: {"smithy.api#range" => {"min" => 180, "max" => 86400}})
    AssessmentRunFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentRunFilter', name: 'AssessmentRunFilter')
    AssessmentRunFindingCounts = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.inspector#AssessmentRunFindingCounts', name: 'AssessmentRunFindingCounts')
    AssessmentRunInProgressArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRunInProgressArnList', name: 'AssessmentRunInProgressArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AssessmentRunInProgressException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentRunInProgressException', name: 'AssessmentRunInProgressException', traits: {"smithy.api#error" => "client"})
    AssessmentRunList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRunList', name: 'AssessmentRunList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AssessmentRunName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AssessmentRunName', name: 'AssessmentRunName', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    AssessmentRunNotification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentRunNotification', name: 'AssessmentRunNotification')
    AssessmentRunNotificationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRunNotificationList', name: 'AssessmentRunNotificationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AssessmentRunNotificationSnsStatusCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#AssessmentRunNotificationSnsStatusCode', name: 'AssessmentRunNotificationSnsStatusCode')
    AssessmentRunState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#AssessmentRunState', name: 'AssessmentRunState')
    AssessmentRunStateChange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentRunStateChange', name: 'AssessmentRunStateChange')
    AssessmentRunStateChangeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRunStateChangeList', name: 'AssessmentRunStateChangeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AssessmentRunStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRunStateList', name: 'AssessmentRunStateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AssessmentTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentTarget', name: 'AssessmentTarget')
    AssessmentTargetFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentTargetFilter', name: 'AssessmentTargetFilter')
    AssessmentTargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentTargetList', name: 'AssessmentTargetList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AssessmentTargetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AssessmentTargetName', name: 'AssessmentTargetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    AssessmentTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentTemplate', name: 'AssessmentTemplate')
    AssessmentTemplateFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentTemplateFilter', name: 'AssessmentTemplateFilter')
    AssessmentTemplateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentTemplateList', name: 'AssessmentTemplateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AssessmentTemplateName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AssessmentTemplateName', name: 'AssessmentTemplateName', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    AssessmentTemplateRulesPackageArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentTemplateRulesPackageArnList', name: 'AssessmentTemplateRulesPackageArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AssetAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssetAttributes', name: 'AssetAttributes')
    AssetType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#AssetType', name: 'AssetType')
    Attribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#Attribute', name: 'Attribute')
    AttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AttributeKey', name: 'AttributeKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AttributeList', name: 'AttributeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AttributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AutoScalingGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AutoScalingGroup', name: 'AutoScalingGroup', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AutoScalingGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AutoScalingGroupList', name: 'AutoScalingGroupList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    BatchDescribeArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#BatchDescribeArnList', name: 'BatchDescribeArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BatchDescribeExclusionsArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#BatchDescribeExclusionsArnList', name: 'BatchDescribeExclusionsArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Bool = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.inspector#Bool', name: 'Bool')
    CreateAssessmentTargetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateAssessmentTargetRequest', name: 'CreateAssessmentTargetRequest')
    CreateAssessmentTargetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateAssessmentTargetResponse', name: 'CreateAssessmentTargetResponse')
    CreateAssessmentTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateAssessmentTemplateRequest', name: 'CreateAssessmentTemplateRequest')
    CreateAssessmentTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateAssessmentTemplateResponse', name: 'CreateAssessmentTemplateResponse')
    CreateExclusionsPreviewRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateExclusionsPreviewRequest', name: 'CreateExclusionsPreviewRequest')
    CreateExclusionsPreviewResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateExclusionsPreviewResponse', name: 'CreateExclusionsPreviewResponse')
    CreateResourceGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateResourceGroupRequest', name: 'CreateResourceGroupRequest')
    CreateResourceGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateResourceGroupResponse', name: 'CreateResourceGroupResponse')
    DeleteAssessmentRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DeleteAssessmentRunRequest', name: 'DeleteAssessmentRunRequest')
    DeleteAssessmentTargetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DeleteAssessmentTargetRequest', name: 'DeleteAssessmentTargetRequest')
    DeleteAssessmentTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DeleteAssessmentTemplateRequest', name: 'DeleteAssessmentTemplateRequest')
    DescribeAssessmentRunsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeAssessmentRunsRequest', name: 'DescribeAssessmentRunsRequest')
    DescribeAssessmentRunsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeAssessmentRunsResponse', name: 'DescribeAssessmentRunsResponse')
    DescribeAssessmentTargetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeAssessmentTargetsRequest', name: 'DescribeAssessmentTargetsRequest')
    DescribeAssessmentTargetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeAssessmentTargetsResponse', name: 'DescribeAssessmentTargetsResponse')
    DescribeAssessmentTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeAssessmentTemplatesRequest', name: 'DescribeAssessmentTemplatesRequest')
    DescribeAssessmentTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeAssessmentTemplatesResponse', name: 'DescribeAssessmentTemplatesResponse')
    DescribeCrossAccountAccessRoleResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeCrossAccountAccessRoleResponse', name: 'DescribeCrossAccountAccessRoleResponse')
    DescribeExclusionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeExclusionsRequest', name: 'DescribeExclusionsRequest')
    DescribeExclusionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeExclusionsResponse', name: 'DescribeExclusionsResponse')
    DescribeFindingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeFindingsRequest', name: 'DescribeFindingsRequest')
    DescribeFindingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeFindingsResponse', name: 'DescribeFindingsResponse')
    DescribeResourceGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeResourceGroupsRequest', name: 'DescribeResourceGroupsRequest')
    DescribeResourceGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeResourceGroupsResponse', name: 'DescribeResourceGroupsResponse')
    DescribeRulesPackagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeRulesPackagesRequest', name: 'DescribeRulesPackagesRequest')
    DescribeRulesPackagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeRulesPackagesResponse', name: 'DescribeRulesPackagesResponse')
    DurationRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DurationRange', name: 'DurationRange')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    EventSubscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#EventSubscription', name: 'EventSubscription')
    EventSubscriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#EventSubscriptionList', name: 'EventSubscriptionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Exclusion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#Exclusion', name: 'Exclusion')
    ExclusionMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.inspector#ExclusionMap', name: 'ExclusionMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ExclusionPreview = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ExclusionPreview', name: 'ExclusionPreview')
    ExclusionPreviewList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#ExclusionPreviewList', name: 'ExclusionPreviewList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FailedItemDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#FailedItemDetails', name: 'FailedItemDetails')
    FailedItemErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#FailedItemErrorCode', name: 'FailedItemErrorCode')
    FailedItems = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.inspector#FailedItems', name: 'FailedItems')
    FilterRulesPackageArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#FilterRulesPackageArnList', name: 'FilterRulesPackageArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Finding = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#Finding', name: 'Finding')
    FindingCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#FindingCount', name: 'FindingCount')
    FindingFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#FindingFilter', name: 'FindingFilter')
    FindingId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#FindingId', name: 'FindingId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    FindingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#FindingList', name: 'FindingList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GetAssessmentReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#GetAssessmentReportRequest', name: 'GetAssessmentReportRequest')
    GetAssessmentReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#GetAssessmentReportResponse', name: 'GetAssessmentReportResponse')
    GetExclusionsPreviewRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#GetExclusionsPreviewRequest', name: 'GetExclusionsPreviewRequest')
    GetExclusionsPreviewResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#GetExclusionsPreviewResponse', name: 'GetExclusionsPreviewResponse')
    GetTelemetryMetadataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#GetTelemetryMetadataRequest', name: 'GetTelemetryMetadataRequest')
    GetTelemetryMetadataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#GetTelemetryMetadataResponse', name: 'GetTelemetryMetadataResponse')
    Hostname = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Hostname', name: 'Hostname', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    InspectorEvent = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#InspectorEvent', name: 'InspectorEvent')
    InspectorServiceAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#InspectorServiceAttributes', name: 'InspectorServiceAttributes')
    InternalException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#InternalException', name: 'InternalException', traits: {"smithy.api#error" => "server"})
    InvalidCrossAccountRoleErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#InvalidCrossAccountRoleErrorCode', name: 'InvalidCrossAccountRoleErrorCode')
    InvalidCrossAccountRoleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#InvalidCrossAccountRoleException', name: 'InvalidCrossAccountRoleException', traits: {"smithy.api#error" => "client"})
    InvalidInputErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#InvalidInputErrorCode', name: 'InvalidInputErrorCode')
    InvalidInputException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client"})
    IocConfidence = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#IocConfidence', name: 'IocConfidence', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10}})
    Ipv4Address = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Ipv4Address', name: 'Ipv4Address', traits: {"smithy.api#length" => {"min" => 7, "max" => 15}})
    Ipv4AddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#Ipv4AddressList', name: 'Ipv4AddressList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Ipv6Addresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#Ipv6Addresses', name: 'Ipv6Addresses')
    KernelVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#KernelVersion', name: 'KernelVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    LimitExceededErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#LimitExceededErrorCode', name: 'LimitExceededErrorCode')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListAssessmentRunAgentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentRunAgentsRequest', name: 'ListAssessmentRunAgentsRequest')
    ListAssessmentRunAgentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentRunAgentsResponse', name: 'ListAssessmentRunAgentsResponse')
    ListAssessmentRunsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentRunsRequest', name: 'ListAssessmentRunsRequest')
    ListAssessmentRunsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentRunsResponse', name: 'ListAssessmentRunsResponse')
    ListAssessmentTargetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentTargetsRequest', name: 'ListAssessmentTargetsRequest')
    ListAssessmentTargetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentTargetsResponse', name: 'ListAssessmentTargetsResponse')
    ListAssessmentTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentTemplatesRequest', name: 'ListAssessmentTemplatesRequest')
    ListAssessmentTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentTemplatesResponse', name: 'ListAssessmentTemplatesResponse')
    ListEventSubscriptionsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#ListEventSubscriptionsMaxResults', name: 'ListEventSubscriptionsMaxResults')
    ListEventSubscriptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListEventSubscriptionsRequest', name: 'ListEventSubscriptionsRequest')
    ListEventSubscriptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListEventSubscriptionsResponse', name: 'ListEventSubscriptionsResponse')
    ListExclusionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListExclusionsRequest', name: 'ListExclusionsRequest')
    ListExclusionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListExclusionsResponse', name: 'ListExclusionsResponse')
    ListFindingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListFindingsRequest', name: 'ListFindingsRequest')
    ListFindingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListFindingsResponse', name: 'ListFindingsResponse')
    ListMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#ListMaxResults', name: 'ListMaxResults')
    ListParentArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#ListParentArnList', name: 'ListParentArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ListReturnedArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#ListReturnedArnList', name: 'ListReturnedArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ListRulesPackagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListRulesPackagesRequest', name: 'ListRulesPackagesRequest')
    ListRulesPackagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListRulesPackagesResponse', name: 'ListRulesPackagesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Locale = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#Locale', name: 'Locale')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#Long', name: 'Long')
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    MessageType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#MessageType', name: 'MessageType', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    NamePattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#NamePattern', name: 'NamePattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    NetworkInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#NetworkInterface', name: 'NetworkInterface')
    NetworkInterfaces = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#NetworkInterfaces', name: 'NetworkInterfaces')
    NoSuchEntityErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#NoSuchEntityErrorCode', name: 'NoSuchEntityErrorCode')
    NoSuchEntityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#NoSuchEntityException', name: 'NoSuchEntityException', traits: {"smithy.api#error" => "client"})
    NumericSeverity = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.inspector#NumericSeverity', name: 'NumericSeverity', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0, "max" => 10.0}})
    NumericVersion = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#NumericVersion', name: 'NumericVersion', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    OperatingSystem = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#OperatingSystem', name: 'OperatingSystem', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    PreviewAgentsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#PreviewAgentsMaxResults', name: 'PreviewAgentsMaxResults')
    PreviewAgentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#PreviewAgentsRequest', name: 'PreviewAgentsRequest')
    PreviewAgentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#PreviewAgentsResponse', name: 'PreviewAgentsResponse')
    PreviewGenerationInProgressException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#PreviewGenerationInProgressException', name: 'PreviewGenerationInProgressException', traits: {"smithy.api#error" => "client"})
    PreviewStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#PreviewStatus', name: 'PreviewStatus')
    PrivateIp = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#PrivateIp', name: 'PrivateIp')
    PrivateIpAddresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#PrivateIpAddresses', name: 'PrivateIpAddresses')
    ProviderName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#ProviderName', name: 'ProviderName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RegisterCrossAccountAccessRoleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#RegisterCrossAccountAccessRoleRequest', name: 'RegisterCrossAccountAccessRoleRequest')
    RemoveAttributesFromFindingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#RemoveAttributesFromFindingsRequest', name: 'RemoveAttributesFromFindingsRequest')
    RemoveAttributesFromFindingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#RemoveAttributesFromFindingsResponse', name: 'RemoveAttributesFromFindingsResponse')
    ReportFileFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#ReportFileFormat', name: 'ReportFileFormat')
    ReportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#ReportStatus', name: 'ReportStatus')
    ReportType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#ReportType', name: 'ReportType')
    ResourceGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ResourceGroup', name: 'ResourceGroup')
    ResourceGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#ResourceGroupList', name: 'ResourceGroupList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ResourceGroupTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ResourceGroupTag', name: 'ResourceGroupTag')
    ResourceGroupTags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#ResourceGroupTags', name: 'ResourceGroupTags', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RuleNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#RuleNameList', name: 'RuleNameList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    RulesPackage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#RulesPackage', name: 'RulesPackage')
    RulesPackageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#RulesPackageList', name: 'RulesPackageList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RulesPackageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#RulesPackageName', name: 'RulesPackageName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Scope = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#Scope', name: 'Scope')
    ScopeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#ScopeList', name: 'ScopeList', traits: {"smithy.api#length" => {"min" => 1}})
    ScopeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#ScopeType', name: 'ScopeType')
    ScopeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#ScopeValue', name: 'ScopeValue')
    SecurityGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#SecurityGroup', name: 'SecurityGroup')
    SecurityGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#SecurityGroups', name: 'SecurityGroups')
    ServiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#ServiceName', name: 'ServiceName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    ServiceTemporarilyUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ServiceTemporarilyUnavailableException', name: 'ServiceTemporarilyUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SetTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#SetTagsForResourceRequest', name: 'SetTagsForResourceRequest')
    Severity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#Severity', name: 'Severity')
    SeverityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#SeverityList', name: 'SeverityList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    StartAssessmentRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#StartAssessmentRunRequest', name: 'StartAssessmentRunRequest')
    StartAssessmentRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#StartAssessmentRunResponse', name: 'StartAssessmentRunResponse')
    StopAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#StopAction', name: 'StopAction')
    StopAssessmentRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#StopAssessmentRunRequest', name: 'StopAssessmentRunRequest')
    SubscribeToEventRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#SubscribeToEventRequest', name: 'SubscribeToEventRequest')
    Subscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#Subscription', name: 'Subscription')
    SubscriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#SubscriptionList', name: 'SubscriptionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#Tags', name: 'Tags')
    TelemetryMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#TelemetryMetadata', name: 'TelemetryMetadata')
    TelemetryMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#TelemetryMetadataList', name: 'TelemetryMetadataList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5000}})
    Text = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Text', name: 'Text', traits: {"smithy.api#length" => {"min" => 0, "max" => 20000}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.inspector#Timestamp', name: 'Timestamp')
    TimestampRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#TimestampRange', name: 'TimestampRange')
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#UUID', name: 'UUID', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    UnsubscribeFromEventRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#UnsubscribeFromEventRequest', name: 'UnsubscribeFromEventRequest')
    UnsupportedFeatureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#UnsupportedFeatureException', name: 'UnsupportedFeatureException', traits: {"smithy.api#error" => "client"})
    UpdateAssessmentTargetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#UpdateAssessmentTargetRequest', name: 'UpdateAssessmentTargetRequest')
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    UserAttributeKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#UserAttributeKeyList', name: 'UserAttributeKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    UserAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#UserAttributeList', name: 'UserAttributeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})

    AccessDeniedErrorCode.add_member(:access_denied_to_assessment_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_ASSESSMENT_TARGET', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_ASSESSMENT_TARGET"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_assessment_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_assessment_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_ASSESSMENT_RUN', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_ASSESSMENT_RUN"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_finding, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_FINDING', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_FINDING"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_resource_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_RESOURCE_GROUP', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_RESOURCE_GROUP"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_rules_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_RULES_PACKAGE', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_RULES_PACKAGE"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_sns_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_SNS_TOPIC', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_SNS_TOPIC"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_IAM_ROLE', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_IAM_ROLE"}))
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Details of the exception error.</p>", "smithy.api#required" => {}}))
    AccessDeniedException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>Code that indicates the type of error that is generated.</p>", "smithy.api#required" => {}}))
    AccessDeniedException.add_member(:can_retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#documentation" => "<p>You can immediately retry your request.</p>", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AddAttributesToFindingsRequest.add_member(:finding_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: AddRemoveAttributesFindingArnList, location_name: 'findingArns', traits: {"smithy.api#documentation" => "<p>The ARNs that specify the findings that you want to assign attributes to.</p>", "smithy.api#required" => {}}))
    AddAttributesToFindingsRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeList, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The array of attributes that you want to assign to specified findings.</p>", "smithy.api#required" => {}}))
    AddAttributesToFindingsRequest.type = Types::AddAttributesToFindingsRequest
    AddAttributesToFindingsResponse.add_member(:failed_items, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#documentation" => "<p>Attribute details that cannot be described. An error code is provided for each failed\n         item.</p>", "smithy.api#required" => {}}))
    AddAttributesToFindingsResponse.type = Types::AddAttributesToFindingsResponse
    AddRemoveAttributesFindingArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AgentAlreadyRunningAssessment.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>ID of the agent that is running on an EC2 instance that is already participating in\n         another started assessment run.</p>", "smithy.api#required" => {}}))
    AgentAlreadyRunningAssessment.add_member(:assessment_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment run that has already been started.</p>", "smithy.api#required" => {}}))
    AgentAlreadyRunningAssessment.type = Types::AgentAlreadyRunningAssessment
    AgentAlreadyRunningAssessmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAlreadyRunningAssessment)
    AgentFilter.add_member(:agent_healths, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealthList, location_name: 'agentHealths', traits: {"smithy.api#documentation" => "<p>The current health state of the agent. Values can be set to <b>HEALTHY</b> or <b>UNHEALTHY</b>.</p>", "smithy.api#required" => {}}))
    AgentFilter.add_member(:agent_health_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealthCodeList, location_name: 'agentHealthCodes', traits: {"smithy.api#documentation" => "<p>The detailed health state of the agent. Values can be set to <b>IDLE</b>, <b>RUNNING</b>, <b>SHUTDOWN</b>, <b>UNHEALTHY</b>, <b>THROTTLED</b>, and <b>UNKNOWN</b>. </p>", "smithy.api#required" => {}}))
    AgentFilter.type = Types::AgentFilter
    AgentHealth.add_member(:healthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    AgentHealth.add_member(:unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    AgentHealth.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    AgentHealthCode.add_member(:idle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDLE', traits: {"smithy.api#enumValue" => "IDLE"}))
    AgentHealthCode.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    AgentHealthCode.add_member(:shutdown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHUTDOWN', traits: {"smithy.api#enumValue" => "SHUTDOWN"}))
    AgentHealthCode.add_member(:unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    AgentHealthCode.add_member(:throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THROTTLED', traits: {"smithy.api#enumValue" => "THROTTLED"}))
    AgentHealthCode.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    AgentHealthCodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealthCode)
    AgentHealthList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealth)
    AgentIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId)
    AgentPreview.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: Hostname, location_name: 'hostname', traits: {"smithy.api#documentation" => "<p>The hostname of the EC2 instance on which the Amazon Inspector Agent is\n         installed.</p>"}))
    AgentPreview.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The ID of the EC2 instance where the agent is installed.</p>", "smithy.api#required" => {}}))
    AgentPreview.add_member(:auto_scaling_group, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroup, location_name: 'autoScalingGroup', traits: {"smithy.api#documentation" => "<p>The Auto Scaling group for the EC2 instance where the agent is installed.</p>"}))
    AgentPreview.add_member(:agent_health, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealth, location_name: 'agentHealth', traits: {"smithy.api#documentation" => "<p>The health status of the Amazon Inspector Agent.</p>"}))
    AgentPreview.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the Amazon Inspector Agent.</p>"}))
    AgentPreview.add_member(:operating_system, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystem, location_name: 'operatingSystem', traits: {"smithy.api#documentation" => "<p>The operating system running on the EC2 instance on which the Amazon Inspector Agent\n         is installed.</p>"}))
    AgentPreview.add_member(:kernel_version, Smithy::Schema::Shapes::ShapeRef.new(shape: KernelVersion, location_name: 'kernelVersion', traits: {"smithy.api#documentation" => "<p>The kernel version of the operating system running on the EC2 instance on which the\n         Amazon Inspector Agent is installed.</p>"}))
    AgentPreview.add_member(:ipv4_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4Address, location_name: 'ipv4Address', traits: {"smithy.api#documentation" => "<p>The IP address of the EC2 instance on which the Amazon Inspector Agent is\n         installed.</p>"}))
    AgentPreview.type = Types::AgentPreview
    AgentPreviewList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentPreview)
    AgentsAlreadyRunningAssessmentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Details of the exception error.</p>", "smithy.api#required" => {}}))
    AgentsAlreadyRunningAssessmentException.add_member(:agents, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAlreadyRunningAssessmentList, location_name: 'agents', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    AgentsAlreadyRunningAssessmentException.add_member(:agents_truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'agentsTruncated', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    AgentsAlreadyRunningAssessmentException.add_member(:can_retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#documentation" => "<p>You can immediately retry your request.</p>", "smithy.api#required" => {}}))
    AgentsAlreadyRunningAssessmentException.type = Types::AgentsAlreadyRunningAssessmentException
    AssessmentRulesPackageArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AssessmentRun.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment run.</p>", "smithy.api#required" => {}}))
    AssessmentRun.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The auto-generated name for the assessment run.</p>", "smithy.api#required" => {}}))
    AssessmentRun.add_member(:assessment_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment template that is associated with the assessment\n         run.</p>", "smithy.api#required" => {}}))
    AssessmentRun.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the assessment run.</p>", "smithy.api#required" => {}}))
    AssessmentRun.add_member(:duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunDuration, location_name: 'durationInSeconds', traits: {"smithy.api#documentation" => "<p>The duration of the assessment run.</p>", "smithy.api#required" => {}}))
    AssessmentRun.add_member(:rules_package_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRulesPackageArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#documentation" => "<p>The rules packages selected for the assessment run.</p>", "smithy.api#required" => {}}))
    AssessmentRun.add_member(:user_attributes_for_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeList, location_name: 'userAttributesForFindings', traits: {"smithy.api#documentation" => "<p>The user-defined attributes that are assigned to every generated finding.</p>", "smithy.api#required" => {}}))
    AssessmentRun.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when <a>StartAssessmentRun</a> was called.</p>", "smithy.api#required" => {}}))
    AssessmentRun.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The time when <a>StartAssessmentRun</a> was called.</p>"}))
    AssessmentRun.add_member(:completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completedAt', traits: {"smithy.api#documentation" => "<p>The assessment run completion time that corresponds to the rules packages evaluation\n         completion time or failure.</p>"}))
    AssessmentRun.add_member(:state_changed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'stateChangedAt', traits: {"smithy.api#documentation" => "<p>The last time when the assessment run's state changed.</p>", "smithy.api#required" => {}}))
    AssessmentRun.add_member(:data_collected, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'dataCollected', traits: {"smithy.api#documentation" => "<p>A Boolean value (true or false) that specifies whether the process of collecting data\n         from the agents is completed.</p>", "smithy.api#required" => {}}))
    AssessmentRun.add_member(:state_changes, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunStateChangeList, location_name: 'stateChanges', traits: {"smithy.api#documentation" => "<p>A list of the assessment run state changes.</p>", "smithy.api#required" => {}}))
    AssessmentRun.add_member(:notifications, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunNotificationList, location_name: 'notifications', traits: {"smithy.api#documentation" => "<p>A list of notifications for the event subscriptions. A notification about a\n         particular generated finding is added to this list only once.</p>", "smithy.api#required" => {}}))
    AssessmentRun.add_member(:finding_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunFindingCounts, location_name: 'findingCounts', traits: {"smithy.api#documentation" => "<p>Provides a total count of generated findings per severity.</p>", "smithy.api#required" => {}}))
    AssessmentRun.type = Types::AssessmentRun
    AssessmentRunAgent.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The AWS account of the EC2 instance where the agent is installed.</p>", "smithy.api#required" => {}}))
    AssessmentRunAgent.add_member(:assessment_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment run that is associated with the agent.</p>", "smithy.api#required" => {}}))
    AssessmentRunAgent.add_member(:agent_health, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealth, location_name: 'agentHealth', traits: {"smithy.api#documentation" => "<p>The current health state of the agent.</p>", "smithy.api#required" => {}}))
    AssessmentRunAgent.add_member(:agent_health_code, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealthCode, location_name: 'agentHealthCode', traits: {"smithy.api#documentation" => "<p>The detailed health state of the agent.</p>", "smithy.api#required" => {}}))
    AssessmentRunAgent.add_member(:agent_health_details, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'agentHealthDetails', traits: {"smithy.api#documentation" => "<p>The description for the agent health code.</p>"}))
    AssessmentRunAgent.add_member(:auto_scaling_group, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroup, location_name: 'autoScalingGroup', traits: {"smithy.api#documentation" => "<p>The Auto Scaling group of the EC2 instance that is specified by the agent\n         ID.</p>"}))
    AssessmentRunAgent.add_member(:telemetry_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryMetadataList, location_name: 'telemetryMetadata', traits: {"smithy.api#documentation" => "<p>The Amazon Inspector application data metrics that are collected by the\n         agent.</p>", "smithy.api#required" => {}}))
    AssessmentRunAgent.type = Types::AssessmentRunAgent
    AssessmentRunAgentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunAgent)
    AssessmentRunFilter.add_member(:name_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: NamePattern, location_name: 'namePattern', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, an explicit value or a string containing a wildcard\n         that is specified for this data type property must match the value of the <b>assessmentRunName</b> property of the <a>AssessmentRun</a>\n         data type.</p>"}))
    AssessmentRunFilter.add_member(:states, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunStateList, location_name: 'states', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, one of the values specified for this data type\n         property must be the exact match of the value of the <b>assessmentRunState</b> property of the <a>AssessmentRun</a> data\n         type.</p>"}))
    AssessmentRunFilter.add_member(:duration_range, Smithy::Schema::Shapes::ShapeRef.new(shape: DurationRange, location_name: 'durationRange', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, the value that is specified for this data type\n         property must inclusively match any value between the specified minimum and maximum values\n         of the <b>durationInSeconds</b> property of the <a>AssessmentRun</a> data type.</p>"}))
    AssessmentRunFilter.add_member(:rules_package_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterRulesPackageArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, the value that is specified for this data type\n         property must be contained in the list of values of the <b>rulesPackages</b> property of the <a>AssessmentRun</a> data\n         type.</p>"}))
    AssessmentRunFilter.add_member(:start_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampRange, location_name: 'startTimeRange', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, the value that is specified for this data type\n         property must inclusively match any value between the specified minimum and maximum values\n         of the <b>startTime</b> property of the <a>AssessmentRun</a> data type.</p>"}))
    AssessmentRunFilter.add_member(:completion_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampRange, location_name: 'completionTimeRange', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, the value that is specified for this data type\n         property must inclusively match any value between the specified minimum and maximum values\n         of the <b>completedAt</b> property of the <a>AssessmentRun</a> data type.</p>"}))
    AssessmentRunFilter.add_member(:state_change_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampRange, location_name: 'stateChangeTimeRange', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, the value that is specified for this data type\n         property must match the <b>stateChangedAt</b> property of the\n            <a>AssessmentRun</a> data type.</p>"}))
    AssessmentRunFilter.type = Types::AssessmentRunFilter
    AssessmentRunFindingCounts.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Severity)
    AssessmentRunFindingCounts.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCount)
    AssessmentRunInProgressArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AssessmentRunInProgressException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Details of the exception error.</p>", "smithy.api#required" => {}}))
    AssessmentRunInProgressException.add_member(:assessment_run_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunInProgressArnList, location_name: 'assessmentRunArns', traits: {"smithy.api#documentation" => "<p>The ARNs of the assessment runs that are currently in progress.</p>", "smithy.api#required" => {}}))
    AssessmentRunInProgressException.add_member(:assessment_run_arns_truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'assessmentRunArnsTruncated', traits: {"smithy.api#documentation" => "<p>Boolean value that indicates whether the ARN list of the assessment runs is\n         truncated.</p>", "smithy.api#required" => {}}))
    AssessmentRunInProgressException.add_member(:can_retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#documentation" => "<p>You can immediately retry your request.</p>", "smithy.api#required" => {}}))
    AssessmentRunInProgressException.type = Types::AssessmentRunInProgressException
    AssessmentRunList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRun)
    AssessmentRunNotification.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'date', traits: {"smithy.api#documentation" => "<p>The date of the notification.</p>", "smithy.api#required" => {}}))
    AssessmentRunNotification.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: InspectorEvent, location_name: 'event', traits: {"smithy.api#documentation" => "<p>The event for which a notification is sent.</p>", "smithy.api#required" => {}}))
    AssessmentRunNotification.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message included in the notification.</p>"}))
    AssessmentRunNotification.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The Boolean value that specifies whether the notification represents an\n         error.</p>", "smithy.api#required" => {}}))
    AssessmentRunNotification.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'snsTopicArn', traits: {"smithy.api#documentation" => "<p>The SNS topic to which the SNS notification is sent.</p>"}))
    AssessmentRunNotification.add_member(:sns_publish_status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunNotificationSnsStatusCode, location_name: 'snsPublishStatusCode', traits: {"smithy.api#documentation" => "<p>The status code of the SNS notification.</p>"}))
    AssessmentRunNotification.type = Types::AssessmentRunNotification
    AssessmentRunNotificationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunNotification)
    AssessmentRunNotificationSnsStatusCode.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AssessmentRunNotificationSnsStatusCode.add_member(:topic_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOPIC_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "TOPIC_DOES_NOT_EXIST"}))
    AssessmentRunNotificationSnsStatusCode.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    AssessmentRunNotificationSnsStatusCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    AssessmentRunState.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    AssessmentRunState.add_member(:start_data_collection_pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_DATA_COLLECTION_PENDING', traits: {"smithy.api#enumValue" => "START_DATA_COLLECTION_PENDING"}))
    AssessmentRunState.add_member(:start_data_collection_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_DATA_COLLECTION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "START_DATA_COLLECTION_IN_PROGRESS"}))
    AssessmentRunState.add_member(:collecting_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLLECTING_DATA', traits: {"smithy.api#enumValue" => "COLLECTING_DATA"}))
    AssessmentRunState.add_member(:stop_data_collection_pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_DATA_COLLECTION_PENDING', traits: {"smithy.api#enumValue" => "STOP_DATA_COLLECTION_PENDING"}))
    AssessmentRunState.add_member(:data_collected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_COLLECTED', traits: {"smithy.api#enumValue" => "DATA_COLLECTED"}))
    AssessmentRunState.add_member(:start_evaluating_rules_pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_EVALUATING_RULES_PENDING', traits: {"smithy.api#enumValue" => "START_EVALUATING_RULES_PENDING"}))
    AssessmentRunState.add_member(:evaluating_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVALUATING_RULES', traits: {"smithy.api#enumValue" => "EVALUATING_RULES"}))
    AssessmentRunState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AssessmentRunState.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    AssessmentRunState.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    AssessmentRunState.add_member(:completed_with_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED_WITH_ERRORS', traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ERRORS"}))
    AssessmentRunState.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    AssessmentRunStateChange.add_member(:state_changed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'stateChangedAt', traits: {"smithy.api#documentation" => "<p>The last time the assessment run state changed.</p>", "smithy.api#required" => {}}))
    AssessmentRunStateChange.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The assessment run state.</p>", "smithy.api#required" => {}}))
    AssessmentRunStateChange.type = Types::AssessmentRunStateChange
    AssessmentRunStateChangeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunStateChange)
    AssessmentRunStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunState)
    AssessmentTarget.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the Amazon Inspector assessment target.</p>", "smithy.api#required" => {}}))
    AssessmentTarget.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Inspector assessment target.</p>", "smithy.api#required" => {}}))
    AssessmentTarget.add_member(:resource_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the resource group that is associated with the assessment\n         target.</p>"}))
    AssessmentTarget.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the assessment target is created.</p>", "smithy.api#required" => {}}))
    AssessmentTarget.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which <a>UpdateAssessmentTarget</a> is called.</p>", "smithy.api#required" => {}}))
    AssessmentTarget.type = Types::AssessmentTarget
    AssessmentTargetFilter.add_member(:assessment_target_name_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: NamePattern, location_name: 'assessmentTargetNamePattern', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, an explicit value or a string that contains a\n         wildcard that is specified for this data type property must match the value of the\n            <b>assessmentTargetName</b> property of the <a>AssessmentTarget</a> data type.</p>"}))
    AssessmentTargetFilter.type = Types::AssessmentTargetFilter
    AssessmentTargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTarget)
    AssessmentTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment template.</p>", "smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplateName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the assessment template.</p>", "smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:assessment_target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTargetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment target that corresponds to this assessment\n         template.</p>", "smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunDuration, location_name: 'durationInSeconds', traits: {"smithy.api#documentation" => "<p>The duration in seconds specified for this assessment template. The default value is\n         3600 seconds (one hour). The maximum value is 86400 seconds (one day).</p>", "smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:rules_package_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplateRulesPackageArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#documentation" => "<p>The rules packages that are specified for this assessment template.</p>", "smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:user_attributes_for_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeList, location_name: 'userAttributesForFindings', traits: {"smithy.api#documentation" => "<p>The user-defined attributes that are assigned to every generated finding from the\n         assessment run that uses this assessment template.</p>", "smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:last_assessment_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'lastAssessmentRunArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the most recent assessment run associated with this\n         assessment template. This value exists only when the value of assessmentRunCount is\n         greaterpa than zero.</p>"}))
    AssessmentTemplate.add_member(:assessment_run_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnCount, location_name: 'assessmentRunCount', traits: {"smithy.api#documentation" => "<p>The number of existing assessment runs associated with this assessment template. This\n         value can be zero or a positive integer.</p>", "smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the assessment template is created.</p>", "smithy.api#required" => {}}))
    AssessmentTemplate.type = Types::AssessmentTemplate
    AssessmentTemplateFilter.add_member(:name_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: NamePattern, location_name: 'namePattern', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, an explicit value or a string that contains a\n         wildcard that is specified for this data type property must match the value of the\n            <b>assessmentTemplateName</b> property of the <a>AssessmentTemplate</a> data type.</p>"}))
    AssessmentTemplateFilter.add_member(:duration_range, Smithy::Schema::Shapes::ShapeRef.new(shape: DurationRange, location_name: 'durationRange', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, the value specified for this data type property must\n         inclusively match any value between the specified minimum and maximum values of the\n            <b>durationInSeconds</b> property of the <a>AssessmentTemplate</a> data type.</p>"}))
    AssessmentTemplateFilter.add_member(:rules_package_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterRulesPackageArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, the values that are specified for this data type\n         property must be contained in the list of values of the <b>rulesPackageArns</b> property of the <a>AssessmentTemplate</a> data\n         type.</p>"}))
    AssessmentTemplateFilter.type = Types::AssessmentTemplateFilter
    AssessmentTemplateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplate)
    AssessmentTemplateRulesPackageArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AssetAttributes.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericVersion, location_name: 'schemaVersion', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The schema version of this data type.</p>", "smithy.api#required" => {}}))
    AssetAttributes.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The ID of the agent that is installed on the EC2 instance where the finding is\n         generated.</p>"}))
    AssetAttributes.add_member(:auto_scaling_group, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroup, location_name: 'autoScalingGroup', traits: {"smithy.api#documentation" => "<p>The Auto Scaling group of the EC2 instance where the finding is generated.</p>"}))
    AssetAttributes.add_member(:ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'amiId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Machine Image (AMI) that is installed on the EC2 instance where\n         the finding is generated.</p>"}))
    AssetAttributes.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: Hostname, location_name: 'hostname', traits: {"smithy.api#documentation" => "<p>The hostname of the EC2 instance where the finding is generated.</p>"}))
    AssetAttributes.add_member(:ipv4_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4AddressList, location_name: 'ipv4Addresses', traits: {"smithy.api#documentation" => "<p>The list of IP v4 addresses of the EC2 instance where the finding is\n         generated.</p>"}))
    AssetAttributes.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags related to the EC2 instance where the finding is generated.</p>"}))
    AssetAttributes.add_member(:network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: 'networkInterfaces', traits: {"smithy.api#documentation" => "<p>An array of the network interfaces interacting with the EC2 instance where the\n         finding is generated.</p>"}))
    AssetAttributes.type = Types::AssetAttributes
    AssetType.add_member(:ec2_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_INSTANCE', traits: {"smithy.api#enumValue" => "ec2-instance"}))
    Attribute.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The attribute key.</p>", "smithy.api#required" => {}}))
    Attribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value assigned to the attribute key.</p>"}))
    Attribute.type = Types::Attribute
    AttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)
    AutoScalingGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroup)
    BatchDescribeArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    BatchDescribeExclusionsArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    CreateAssessmentTargetRequest.add_member(:assessment_target_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargetName, location_name: 'assessmentTargetName', traits: {"smithy.api#documentation" => "<p>The user-defined name that identifies the assessment target that you want to create.\n         The name must be unique within the AWS account.</p>", "smithy.api#required" => {}}))
    CreateAssessmentTargetRequest.add_member(:resource_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the resource group that is used to create the assessment\n         target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account\n         and region are included in the assessment target.</p>"}))
    CreateAssessmentTargetRequest.type = Types::CreateAssessmentTargetRequest
    CreateAssessmentTargetResponse.add_member(:assessment_target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTargetArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment target that is created.</p>", "smithy.api#required" => {}}))
    CreateAssessmentTargetResponse.type = Types::CreateAssessmentTargetResponse
    CreateAssessmentTemplateRequest.add_member(:assessment_target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTargetArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment target for which you want to create the\n         assessment template.</p>", "smithy.api#required" => {}}))
    CreateAssessmentTemplateRequest.add_member(:assessment_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplateName, location_name: 'assessmentTemplateName', traits: {"smithy.api#documentation" => "<p>The user-defined name that identifies the assessment template that you want to\n         create. You can create several assessment templates for an assessment target. The names of\n         the assessment templates that correspond to a particular assessment target must be\n         unique.</p>", "smithy.api#required" => {}}))
    CreateAssessmentTemplateRequest.add_member(:duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunDuration, location_name: 'durationInSeconds', traits: {"smithy.api#documentation" => "<p>The duration of the assessment run in seconds.</p>", "smithy.api#required" => {}}))
    CreateAssessmentTemplateRequest.add_member(:rules_package_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplateRulesPackageArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#documentation" => "<p>The ARNs that specify the rules packages that you want to attach to the assessment\n         template.</p>", "smithy.api#required" => {}}))
    CreateAssessmentTemplateRequest.add_member(:user_attributes_for_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeList, location_name: 'userAttributesForFindings', traits: {"smithy.api#documentation" => "<p>The user-defined attributes that are assigned to every finding that is generated by\n         the assessment run that uses this assessment template. An attribute is a key and value pair\n         (an <a>Attribute</a> object). Within an assessment template, each key must be\n         unique.</p>"}))
    CreateAssessmentTemplateRequest.type = Types::CreateAssessmentTemplateRequest
    CreateAssessmentTemplateResponse.add_member(:assessment_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment template that is created.</p>", "smithy.api#required" => {}}))
    CreateAssessmentTemplateResponse.type = Types::CreateAssessmentTemplateResponse
    CreateExclusionsPreviewRequest.add_member(:assessment_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment template for which you want to create an\n         exclusions preview.</p>", "smithy.api#required" => {}}))
    CreateExclusionsPreviewRequest.type = Types::CreateExclusionsPreviewRequest
    CreateExclusionsPreviewResponse.add_member(:preview_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'previewToken', traits: {"smithy.api#documentation" => "<p>Specifies the unique identifier of the requested exclusions preview. You can use the\n         unique identifier to retrieve the exclusions preview when running the GetExclusionsPreview\n         API.</p>", "smithy.api#required" => {}}))
    CreateExclusionsPreviewResponse.type = Types::CreateExclusionsPreviewResponse
    CreateResourceGroupRequest.add_member(:resource_group_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupTags, location_name: 'resourceGroupTags', traits: {"smithy.api#documentation" => "<p>A collection of keys and an array of possible values,\n         '[{\"key\":\"key1\",\"values\":[\"Value1\",\"Value2\"]},{\"key\":\"Key2\",\"values\":[\"Value3\"]}]'.</p>\n         <p>For example,'[{\"key\":\"Name\",\"values\":[\"TestEC2Instance\"]}]'.</p>", "smithy.api#required" => {}}))
    CreateResourceGroupRequest.type = Types::CreateResourceGroupRequest
    CreateResourceGroupResponse.add_member(:resource_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the resource group that is created.</p>", "smithy.api#required" => {}}))
    CreateResourceGroupResponse.type = Types::CreateResourceGroupResponse
    DeleteAssessmentRunRequest.add_member(:assessment_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment run that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteAssessmentRunRequest.type = Types::DeleteAssessmentRunRequest
    DeleteAssessmentTargetRequest.add_member(:assessment_target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTargetArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment target that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteAssessmentTargetRequest.type = Types::DeleteAssessmentTargetRequest
    DeleteAssessmentTemplateRequest.add_member(:assessment_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment template that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteAssessmentTemplateRequest.type = Types::DeleteAssessmentTemplateRequest
    DescribeAssessmentRunsRequest.add_member(:assessment_run_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeArnList, location_name: 'assessmentRunArns', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment run that you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeAssessmentRunsRequest.type = Types::DescribeAssessmentRunsRequest
    DescribeAssessmentRunsResponse.add_member(:assessment_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunList, location_name: 'assessmentRuns', traits: {"smithy.api#documentation" => "<p>Information about the assessment run.</p>", "smithy.api#required" => {}}))
    DescribeAssessmentRunsResponse.add_member(:failed_items, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#documentation" => "<p>Assessment run details that cannot be described. An error code is provided for each\n         failed item.</p>", "smithy.api#required" => {}}))
    DescribeAssessmentRunsResponse.type = Types::DescribeAssessmentRunsResponse
    DescribeAssessmentTargetsRequest.add_member(:assessment_target_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeArnList, location_name: 'assessmentTargetArns', traits: {"smithy.api#documentation" => "<p>The ARNs that specifies the assessment targets that you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeAssessmentTargetsRequest.type = Types::DescribeAssessmentTargetsRequest
    DescribeAssessmentTargetsResponse.add_member(:assessment_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargetList, location_name: 'assessmentTargets', traits: {"smithy.api#documentation" => "<p>Information about the assessment targets.</p>", "smithy.api#required" => {}}))
    DescribeAssessmentTargetsResponse.add_member(:failed_items, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#documentation" => "<p>Assessment target details that cannot be described. An error code is provided for\n         each failed item.</p>", "smithy.api#required" => {}}))
    DescribeAssessmentTargetsResponse.type = Types::DescribeAssessmentTargetsResponse
    DescribeAssessmentTemplatesRequest.add_member(:assessment_template_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeArnList, location_name: 'assessmentTemplateArns', traits: {"smithy.api#required" => {}}))
    DescribeAssessmentTemplatesRequest.type = Types::DescribeAssessmentTemplatesRequest
    DescribeAssessmentTemplatesResponse.add_member(:assessment_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplateList, location_name: 'assessmentTemplates', traits: {"smithy.api#documentation" => "<p>Information about the assessment templates.</p>", "smithy.api#required" => {}}))
    DescribeAssessmentTemplatesResponse.add_member(:failed_items, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#documentation" => "<p>Assessment template details that cannot be described. An error code is provided for\n         each failed item.</p>", "smithy.api#required" => {}}))
    DescribeAssessmentTemplatesResponse.type = Types::DescribeAssessmentTemplatesResponse
    DescribeCrossAccountAccessRoleResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the IAM role that Amazon Inspector uses to access your AWS\n         account.</p>", "smithy.api#required" => {}}))
    DescribeCrossAccountAccessRoleResponse.add_member(:valid, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'valid', traits: {"smithy.api#documentation" => "<p>A Boolean value that specifies whether the IAM role has the necessary policies\n         attached to enable Amazon Inspector to access your AWS account.</p>", "smithy.api#required" => {}}))
    DescribeCrossAccountAccessRoleResponse.add_member(:registered_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'registeredAt', traits: {"smithy.api#documentation" => "<p>The date when the cross-account access role was registered.</p>", "smithy.api#required" => {}}))
    DescribeCrossAccountAccessRoleResponse.type = Types::DescribeCrossAccountAccessRoleResponse
    DescribeExclusionsRequest.add_member(:exclusion_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeExclusionsArnList, location_name: 'exclusionArns', traits: {"smithy.api#documentation" => "<p>The list of ARNs that specify the exclusions that you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeExclusionsRequest.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale', traits: {"smithy.api#documentation" => "<p>The locale into which you want to translate the exclusion's title, description, and\n         recommendation.</p>"}))
    DescribeExclusionsRequest.type = Types::DescribeExclusionsRequest
    DescribeExclusionsResponse.add_member(:exclusions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExclusionMap, location_name: 'exclusions', traits: {"smithy.api#documentation" => "<p>Information about the exclusions.</p>", "smithy.api#required" => {}}))
    DescribeExclusionsResponse.add_member(:failed_items, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#documentation" => "<p>Exclusion details that cannot be described. An error code is provided for each failed\n         item.</p>", "smithy.api#required" => {}}))
    DescribeExclusionsResponse.type = Types::DescribeExclusionsResponse
    DescribeFindingsRequest.add_member(:finding_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeArnList, location_name: 'findingArns', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the finding that you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeFindingsRequest.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale', traits: {"smithy.api#documentation" => "<p>The locale into which you want to translate a finding description, recommendation,\n         and the short description that identifies the finding.</p>"}))
    DescribeFindingsRequest.type = Types::DescribeFindingsRequest
    DescribeFindingsResponse.add_member(:findings, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingList, location_name: 'findings', traits: {"smithy.api#documentation" => "<p>Information about the finding.</p>", "smithy.api#required" => {}}))
    DescribeFindingsResponse.add_member(:failed_items, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#documentation" => "<p>Finding details that cannot be described. An error code is provided for each failed\n         item.</p>", "smithy.api#required" => {}}))
    DescribeFindingsResponse.type = Types::DescribeFindingsResponse
    DescribeResourceGroupsRequest.add_member(:resource_group_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeArnList, location_name: 'resourceGroupArns', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the resource group that you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeResourceGroupsRequest.type = Types::DescribeResourceGroupsRequest
    DescribeResourceGroupsResponse.add_member(:resource_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupList, location_name: 'resourceGroups', traits: {"smithy.api#documentation" => "<p>Information about a resource group.</p>", "smithy.api#required" => {}}))
    DescribeResourceGroupsResponse.add_member(:failed_items, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#documentation" => "<p>Resource group details that cannot be described. An error code is provided for each\n         failed item.</p>", "smithy.api#required" => {}}))
    DescribeResourceGroupsResponse.type = Types::DescribeResourceGroupsResponse
    DescribeRulesPackagesRequest.add_member(:rules_package_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the rules package that you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeRulesPackagesRequest.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale', traits: {"smithy.api#documentation" => "<p>The locale that you want to translate a rules package description into.</p>"}))
    DescribeRulesPackagesRequest.type = Types::DescribeRulesPackagesRequest
    DescribeRulesPackagesResponse.add_member(:rules_packages, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesPackageList, location_name: 'rulesPackages', traits: {"smithy.api#documentation" => "<p>Information about the rules package.</p>", "smithy.api#required" => {}}))
    DescribeRulesPackagesResponse.add_member(:failed_items, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#documentation" => "<p>Rules package details that cannot be described. An error code is provided for each\n         failed item.</p>", "smithy.api#required" => {}}))
    DescribeRulesPackagesResponse.type = Types::DescribeRulesPackagesResponse
    DurationRange.add_member(:min_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunDuration, location_name: 'minSeconds', traits: {"smithy.api#documentation" => "<p>The minimum value of the duration range. Must be greater than zero.</p>"}))
    DurationRange.add_member(:max_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunDuration, location_name: 'maxSeconds', traits: {"smithy.api#documentation" => "<p>The maximum value of the duration range. Must be less than or equal to 604800 seconds\n         (1 week).</p>"}))
    DurationRange.type = Types::DurationRange
    EventSubscription.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: InspectorEvent, location_name: 'event', traits: {"smithy.api#documentation" => "<p>The event for which Amazon Simple Notification Service (SNS) notifications are\n         sent.</p>", "smithy.api#required" => {}}))
    EventSubscription.add_member(:subscribed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'subscribedAt', traits: {"smithy.api#documentation" => "<p>The time at which <a>SubscribeToEvent</a> is called.</p>", "smithy.api#required" => {}}))
    EventSubscription.type = Types::EventSubscription
    EventSubscriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription)
    Exclusion.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the exclusion.</p>", "smithy.api#required" => {}}))
    Exclusion.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The name of the exclusion.</p>", "smithy.api#required" => {}}))
    Exclusion.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the exclusion.</p>", "smithy.api#required" => {}}))
    Exclusion.add_member(:recommendation, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'recommendation', traits: {"smithy.api#documentation" => "<p>The recommendation for the exclusion.</p>", "smithy.api#required" => {}}))
    Exclusion.add_member(:scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeList, location_name: 'scopes', traits: {"smithy.api#documentation" => "<p>The AWS resources for which the exclusion pertains.</p>", "smithy.api#required" => {}}))
    Exclusion.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The system-defined attributes for the exclusion.</p>"}))
    Exclusion.type = Types::Exclusion
    ExclusionMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    ExclusionMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Exclusion)
    ExclusionPreview.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The name of the exclusion preview.</p>", "smithy.api#required" => {}}))
    ExclusionPreview.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the exclusion preview.</p>", "smithy.api#required" => {}}))
    ExclusionPreview.add_member(:recommendation, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'recommendation', traits: {"smithy.api#documentation" => "<p>The recommendation for the exclusion preview.</p>", "smithy.api#required" => {}}))
    ExclusionPreview.add_member(:scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeList, location_name: 'scopes', traits: {"smithy.api#documentation" => "<p>The AWS resources for which the exclusion preview pertains.</p>", "smithy.api#required" => {}}))
    ExclusionPreview.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The system-defined attributes for the exclusion preview.</p>"}))
    ExclusionPreview.type = Types::ExclusionPreview
    ExclusionPreviewList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExclusionPreview)
    FailedItemDetails.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItemErrorCode, location_name: 'failureCode', traits: {"smithy.api#documentation" => "<p>The status code of a failed item.</p>", "smithy.api#required" => {}}))
    FailedItemDetails.add_member(:retryable, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'retryable', traits: {"smithy.api#documentation" => "<p>Indicates whether you can immediately retry a request for this item for a specified\n         resource.</p>", "smithy.api#required" => {}}))
    FailedItemDetails.type = Types::FailedItemDetails
    FailedItemErrorCode.add_member(:invalid_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ARN', traits: {"smithy.api#enumValue" => "INVALID_ARN"}))
    FailedItemErrorCode.add_member(:duplicate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE_ARN', traits: {"smithy.api#enumValue" => "DUPLICATE_ARN"}))
    FailedItemErrorCode.add_member(:item_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ITEM_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "ITEM_DOES_NOT_EXIST"}))
    FailedItemErrorCode.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    FailedItemErrorCode.add_member(:limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED"}))
    FailedItemErrorCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    FailedItems.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    FailedItems.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItemDetails)
    FilterRulesPackageArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    Finding.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the finding.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericVersion, location_name: 'schemaVersion', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The schema version of this data type.</p>"}))
    Finding.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'service', traits: {"smithy.api#documentation" => "<p>The data element is set to \"Inspector\".</p>"}))
    Finding.add_member(:service_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: InspectorServiceAttributes, location_name: 'serviceAttributes', traits: {"smithy.api#documentation" => "<p>This data type is used in the <a>Finding</a> data type.</p>"}))
    Finding.add_member(:asset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetType, location_name: 'assetType', traits: {"smithy.api#documentation" => "<p>The type of the host from which the finding is generated.</p>"}))
    Finding.add_member(:asset_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetAttributes, location_name: 'assetAttributes', traits: {"smithy.api#documentation" => "<p>A collection of attributes of the host from which the finding is generated.</p>"}))
    Finding.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the finding.</p>"}))
    Finding.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The name of the finding.</p>"}))
    Finding.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the finding.</p>"}))
    Finding.add_member(:recommendation, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'recommendation', traits: {"smithy.api#documentation" => "<p>The recommendation for the finding.</p>"}))
    Finding.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>The finding severity. Values can be set to High, Medium, Low, and\n         Informational.</p>"}))
    Finding.add_member(:numeric_severity, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericSeverity, location_name: 'numericSeverity', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The numeric value of the finding severity.</p>"}))
    Finding.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: IocConfidence, location_name: 'confidence', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>This data element is currently not used.</p>"}))
    Finding.add_member(:indicator_of_compromise, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'indicatorOfCompromise', traits: {"smithy.api#documentation" => "<p>This data element is currently not used.</p>"}))
    Finding.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The system-defined attributes for the finding.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:user_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeList, location_name: 'userAttributes', traits: {"smithy.api#documentation" => "<p>The user-defined attributes that are assigned to the finding.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the finding was generated.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time when <a>AddAttributesToFindings</a> is called.</p>", "smithy.api#required" => {}}))
    Finding.type = Types::Finding
    FindingFilter.add_member(:agent_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentIdList, location_name: 'agentIds', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, one of the values that is specified for this data\n         type property must be the exact match of the value of the <b>agentId</b> property of the <a>Finding</a> data type.</p>"}))
    FindingFilter.add_member(:auto_scaling_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: 'autoScalingGroups', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, one of the values that is specified for this data\n         type property must be the exact match of the value of the <b>autoScalingGroup</b> property of the <a>Finding</a> data\n         type.</p>"}))
    FindingFilter.add_member(:rule_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNameList, location_name: 'ruleNames', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, one of the values that is specified for this data\n         type property must be the exact match of the value of the <b>ruleName</b> property of the <a>Finding</a> data type.</p>"}))
    FindingFilter.add_member(:severities, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityList, location_name: 'severities', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, one of the values that is specified for this data\n         type property must be the exact match of the value of the <b>severity</b> property of the <a>Finding</a> data type.</p>"}))
    FindingFilter.add_member(:rules_package_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterRulesPackageArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, one of the values that is specified for this data\n         type property must be the exact match of the value of the <b>rulesPackageArn</b> property of the <a>Finding</a> data\n         type.</p>"}))
    FindingFilter.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, the list of values that are specified for this data\n         type property must be contained in the list of values of the <b>attributes</b> property of the <a>Finding</a> data type.</p>"}))
    FindingFilter.add_member(:user_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'userAttributes', traits: {"smithy.api#documentation" => "<p>For a record to match a filter, the value that is specified for this data type\n         property must be contained in the list of values of the <b>userAttributes</b> property of the <a>Finding</a> data\n         type.</p>"}))
    FindingFilter.add_member(:creation_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampRange, location_name: 'creationTimeRange', traits: {"smithy.api#documentation" => "<p>The time range during which the finding is generated.</p>"}))
    FindingFilter.type = Types::FindingFilter
    FindingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Finding)
    GetAssessmentReportRequest.add_member(:assessment_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment run for which you want to generate a\n         report.</p>", "smithy.api#required" => {}}))
    GetAssessmentReportRequest.add_member(:report_file_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFileFormat, location_name: 'reportFileFormat', traits: {"smithy.api#documentation" => "<p>Specifies the file format (html or pdf) of the assessment report that you want to\n         generate.</p>", "smithy.api#required" => {}}))
    GetAssessmentReportRequest.add_member(:report_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportType, location_name: 'reportType', traits: {"smithy.api#documentation" => "<p>Specifies the type of the assessment report that you want to generate. There are two\n         types of assessment reports: a finding report and a full report. For more information, see\n            <a href=\"https://docs.aws.amazon.com/inspector/latest/userguide/inspector_reports.html\">Assessment Reports</a>. </p>", "smithy.api#required" => {}}))
    GetAssessmentReportRequest.type = Types::GetAssessmentReportRequest
    GetAssessmentReportResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Specifies the status of the request to generate an assessment report. </p>", "smithy.api#required" => {}}))
    GetAssessmentReportResponse.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url', traits: {"smithy.api#documentation" => "<p>Specifies the URL where you can find the generated assessment report. This parameter\n         is only returned if the report is successfully generated.</p>"}))
    GetAssessmentReportResponse.type = Types::GetAssessmentReportResponse
    GetExclusionsPreviewRequest.add_member(:assessment_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment template for which the exclusions preview was\n         requested.</p>", "smithy.api#required" => {}}))
    GetExclusionsPreviewRequest.add_member(:preview_token, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'previewToken', traits: {"smithy.api#documentation" => "<p>The unique identifier associated of the exclusions preview.</p>", "smithy.api#required" => {}}))
    GetExclusionsPreviewRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>You can use this parameter when paginating results. Set the value of this parameter\n         to null on your first call to the GetExclusionsPreviewRequest action. Subsequent calls to\n         the action fill nextToken in the request with the value of nextToken from the previous\n         response to continue listing data.</p>"}))
    GetExclusionsPreviewRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>You can use this parameter to indicate the maximum number of items you want in the\n         response. The default value is 100. The maximum value is 500.</p>"}))
    GetExclusionsPreviewRequest.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale', traits: {"smithy.api#documentation" => "<p>The locale into which you want to translate the exclusion's title, description, and\n         recommendation.</p>"}))
    GetExclusionsPreviewRequest.type = Types::GetExclusionsPreviewRequest
    GetExclusionsPreviewResponse.add_member(:preview_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewStatus, location_name: 'previewStatus', traits: {"smithy.api#documentation" => "<p>Specifies the status of the request to generate an exclusions preview.</p>", "smithy.api#required" => {}}))
    GetExclusionsPreviewResponse.add_member(:exclusion_previews, Smithy::Schema::Shapes::ShapeRef.new(shape: ExclusionPreviewList, location_name: 'exclusionPreviews', traits: {"smithy.api#documentation" => "<p>Information about the exclusions included in the preview.</p>"}))
    GetExclusionsPreviewResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>When a response is generated, if there is more data to be listed, this parameters is\n         present in the response and contains the value to use for the nextToken parameter in a\n         subsequent pagination request. If there is no more data to be listed, this parameter is set\n         to null.</p>"}))
    GetExclusionsPreviewResponse.type = Types::GetExclusionsPreviewResponse
    GetTelemetryMetadataRequest.add_member(:assessment_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment run that has the telemetry data that you want\n         to obtain.</p>", "smithy.api#required" => {}}))
    GetTelemetryMetadataRequest.type = Types::GetTelemetryMetadataRequest
    GetTelemetryMetadataResponse.add_member(:telemetry_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryMetadataList, location_name: 'telemetryMetadata', traits: {"smithy.api#documentation" => "<p>Telemetry details.</p>", "smithy.api#required" => {}}))
    GetTelemetryMetadataResponse.type = Types::GetTelemetryMetadataResponse
    InspectorEvent.add_member(:assessment_run_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_RUN_STARTED', traits: {"smithy.api#enumValue" => "ASSESSMENT_RUN_STARTED"}))
    InspectorEvent.add_member(:assessment_run_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_RUN_COMPLETED', traits: {"smithy.api#enumValue" => "ASSESSMENT_RUN_COMPLETED"}))
    InspectorEvent.add_member(:assessment_run_state_changed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_RUN_STATE_CHANGED', traits: {"smithy.api#enumValue" => "ASSESSMENT_RUN_STATE_CHANGED"}))
    InspectorEvent.add_member(:finding_reported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINDING_REPORTED', traits: {"smithy.api#enumValue" => "FINDING_REPORTED"}))
    InspectorEvent.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    InspectorServiceAttributes.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericVersion, location_name: 'schemaVersion', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The schema version of this data type.</p>", "smithy.api#required" => {}}))
    InspectorServiceAttributes.add_member(:assessment_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment run during which the finding is generated.</p>"}))
    InspectorServiceAttributes.add_member(:rules_package_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'rulesPackageArn', traits: {"smithy.api#documentation" => "<p>The ARN of the rules package that is used to generate the finding.</p>"}))
    InspectorServiceAttributes.type = Types::InspectorServiceAttributes
    InternalException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Details of the exception error.</p>", "smithy.api#required" => {}}))
    InternalException.add_member(:can_retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#documentation" => "<p>You can immediately retry your request.</p>", "smithy.api#required" => {}}))
    InternalException.type = Types::InternalException
    InvalidCrossAccountRoleErrorCode.add_member(:role_does_not_exist_or_invalid_trust_relationship, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP', traits: {"smithy.api#enumValue" => "ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP"}))
    InvalidCrossAccountRoleErrorCode.add_member(:role_does_not_have_correct_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLE_DOES_NOT_HAVE_CORRECT_POLICY', traits: {"smithy.api#enumValue" => "ROLE_DOES_NOT_HAVE_CORRECT_POLICY"}))
    InvalidCrossAccountRoleException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Details of the exception error.</p>", "smithy.api#required" => {}}))
    InvalidCrossAccountRoleException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>Code that indicates the type of error that is generated.</p>", "smithy.api#required" => {}}))
    InvalidCrossAccountRoleException.add_member(:can_retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#documentation" => "<p>You can immediately retry your request.</p>", "smithy.api#required" => {}}))
    InvalidCrossAccountRoleException.type = Types::InvalidCrossAccountRoleException
    InvalidInputErrorCode.add_member(:invalid_assessment_target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TARGET_ARN', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TARGET_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TEMPLATE_ARN', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TEMPLATE_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_RUN_ARN', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_RUN_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_finding_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_FINDING_ARN', traits: {"smithy.api#enumValue" => "INVALID_FINDING_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_resource_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RESOURCE_GROUP_ARN', traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_GROUP_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_rules_package_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RULES_PACKAGE_ARN', traits: {"smithy.api#enumValue" => "INVALID_RULES_PACKAGE_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RESOURCE_ARN', traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SNS_TOPIC_ARN', traits: {"smithy.api#enumValue" => "INVALID_SNS_TOPIC_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_IAM_ROLE_ARN', traits: {"smithy.api#enumValue" => "INVALID_IAM_ROLE_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_target_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TARGET_NAME', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TARGET_NAME"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_target_name_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TARGET_NAME_PATTERN', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TARGET_NAME_PATTERN"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TEMPLATE_NAME', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TEMPLATE_NAME"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_template_name_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_template_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TEMPLATE_DURATION', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TEMPLATE_DURATION"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_template_duration_range, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_run_duration_range, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_RUN_DURATION_RANGE', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_RUN_DURATION_RANGE"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_run_start_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_RUN_START_TIME_RANGE', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_RUN_START_TIME_RANGE"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_run_completion_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_run_state_change_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_run_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_RUN_STATE', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_RUN_STATE"}))
    InvalidInputErrorCode.add_member(:invalid_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TAG', traits: {"smithy.api#enumValue" => "INVALID_TAG"}))
    InvalidInputErrorCode.add_member(:invalid_tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TAG_KEY', traits: {"smithy.api#enumValue" => "INVALID_TAG_KEY"}))
    InvalidInputErrorCode.add_member(:invalid_tag_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TAG_VALUE', traits: {"smithy.api#enumValue" => "INVALID_TAG_VALUE"}))
    InvalidInputErrorCode.add_member(:invalid_resource_group_tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RESOURCE_GROUP_TAG_KEY', traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_GROUP_TAG_KEY"}))
    InvalidInputErrorCode.add_member(:invalid_resource_group_tag_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RESOURCE_GROUP_TAG_VALUE', traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_GROUP_TAG_VALUE"}))
    InvalidInputErrorCode.add_member(:invalid_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ATTRIBUTE', traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE"}))
    InvalidInputErrorCode.add_member(:invalid_user_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_USER_ATTRIBUTE', traits: {"smithy.api#enumValue" => "INVALID_USER_ATTRIBUTE"}))
    InvalidInputErrorCode.add_member(:invalid_user_attribute_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_USER_ATTRIBUTE_KEY', traits: {"smithy.api#enumValue" => "INVALID_USER_ATTRIBUTE_KEY"}))
    InvalidInputErrorCode.add_member(:invalid_user_attribute_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_USER_ATTRIBUTE_VALUE', traits: {"smithy.api#enumValue" => "INVALID_USER_ATTRIBUTE_VALUE"}))
    InvalidInputErrorCode.add_member(:invalid_pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PAGINATION_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_PAGINATION_TOKEN"}))
    InvalidInputErrorCode.add_member(:invalid_max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_MAX_RESULTS', traits: {"smithy.api#enumValue" => "INVALID_MAX_RESULTS"}))
    InvalidInputErrorCode.add_member(:invalid_agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_AGENT_ID', traits: {"smithy.api#enumValue" => "INVALID_AGENT_ID"}))
    InvalidInputErrorCode.add_member(:invalid_auto_scaling_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_AUTO_SCALING_GROUP', traits: {"smithy.api#enumValue" => "INVALID_AUTO_SCALING_GROUP"}))
    InvalidInputErrorCode.add_member(:invalid_rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RULE_NAME', traits: {"smithy.api#enumValue" => "INVALID_RULE_NAME"}))
    InvalidInputErrorCode.add_member(:invalid_severity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SEVERITY', traits: {"smithy.api#enumValue" => "INVALID_SEVERITY"}))
    InvalidInputErrorCode.add_member(:invalid_locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_LOCALE', traits: {"smithy.api#enumValue" => "INVALID_LOCALE"}))
    InvalidInputErrorCode.add_member(:invalid_event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_EVENT', traits: {"smithy.api#enumValue" => "INVALID_EVENT"}))
    InvalidInputErrorCode.add_member(:assessment_target_name_already_taken, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_TARGET_NAME_ALREADY_TAKEN', traits: {"smithy.api#enumValue" => "ASSESSMENT_TARGET_NAME_ALREADY_TAKEN"}))
    InvalidInputErrorCode.add_member(:assessment_template_name_already_taken, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN', traits: {"smithy.api#enumValue" => "ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_assessment_target_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_assessment_template_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_assessment_run_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_finding_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_FINDING_ARNS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_FINDING_ARNS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_resource_group_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_rules_package_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_RULES_PACKAGE_ARNS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_RULES_PACKAGE_ARNS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_assessment_run_states, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_TAGS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_TAGS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_resource_group_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_ATTRIBUTES', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_ATTRIBUTES"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_user_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_USER_ATTRIBUTES', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_USER_ATTRIBUTES"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_agent_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_AGENT_IDS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_AGENT_IDS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_auto_scaling_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_AUTO_SCALING_GROUPS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_AUTO_SCALING_GROUPS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_rule_names, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_RULE_NAMES', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_RULE_NAMES"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_severities, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_SEVERITIES', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_SEVERITIES"}))
    InvalidInputException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Details of the exception error.</p>", "smithy.api#required" => {}}))
    InvalidInputException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>Code that indicates the type of error that is generated.</p>", "smithy.api#required" => {}}))
    InvalidInputException.add_member(:can_retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#documentation" => "<p>You can immediately retry your request.</p>", "smithy.api#required" => {}}))
    InvalidInputException.type = Types::InvalidInputException
    Ipv4AddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4Address)
    Ipv6Addresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Text)
    LimitExceededErrorCode.add_member(:assessment_target_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_TARGET_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ASSESSMENT_TARGET_LIMIT_EXCEEDED"}))
    LimitExceededErrorCode.add_member(:assessment_template_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED"}))
    LimitExceededErrorCode.add_member(:assessment_run_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_RUN_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ASSESSMENT_RUN_LIMIT_EXCEEDED"}))
    LimitExceededErrorCode.add_member(:resource_group_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_GROUP_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "RESOURCE_GROUP_LIMIT_EXCEEDED"}))
    LimitExceededErrorCode.add_member(:event_subscription_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT_SUBSCRIPTION_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "EVENT_SUBSCRIPTION_LIMIT_EXCEEDED"}))
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Details of the exception error.</p>", "smithy.api#required" => {}}))
    LimitExceededException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>Code that indicates the type of error that is generated.</p>", "smithy.api#required" => {}}))
    LimitExceededException.add_member(:can_retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#documentation" => "<p>You can immediately retry your request.</p>", "smithy.api#required" => {}}))
    LimitExceededException.type = Types::LimitExceededException
    ListAssessmentRunAgentsRequest.add_member(:assessment_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment run whose agents you want to list.</p>", "smithy.api#required" => {}}))
    ListAssessmentRunAgentsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>You can use this parameter to specify a subset of data to be included in the action's\n         response.</p>\n         <p>For a record to match a filter, all specified filter attributes must match. When\n         multiple values are specified for a filter attribute, any of the values can\n         match.</p>"}))
    ListAssessmentRunAgentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>You can use this parameter when paginating results. Set the value of this parameter\n         to null on your first call to the <b>ListAssessmentRunAgents</b>\n         action. Subsequent calls to the action fill <b>nextToken</b> in\n         the request with the value of <b>NextToken</b> from the previous\n         response to continue listing data.</p>"}))
    ListAssessmentRunAgentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>You can use this parameter to indicate the maximum number of items that you want in\n         the response. The default value is 10. The maximum value is 500.</p>"}))
    ListAssessmentRunAgentsRequest.type = Types::ListAssessmentRunAgentsRequest
    ListAssessmentRunAgentsResponse.add_member(:assessment_run_agents, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunAgentList, location_name: 'assessmentRunAgents', traits: {"smithy.api#documentation" => "<p>A list of ARNs that specifies the agents returned by the action.</p>", "smithy.api#required" => {}}))
    ListAssessmentRunAgentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> When a response is generated, if there is more data to be listed, this parameter is\n         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more\n         data to be listed, this parameter is set to null.</p>"}))
    ListAssessmentRunAgentsResponse.type = Types::ListAssessmentRunAgentsResponse
    ListAssessmentRunsRequest.add_member(:assessment_template_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListParentArnList, location_name: 'assessmentTemplateArns', traits: {"smithy.api#documentation" => "<p>The ARNs that specify the assessment templates whose assessment runs you want to\n         list.</p>"}))
    ListAssessmentRunsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>You can use this parameter to specify a subset of data to be included in the action's\n         response.</p>\n         <p>For a record to match a filter, all specified filter attributes must match. When\n         multiple values are specified for a filter attribute, any of the values can\n         match.</p>"}))
    ListAssessmentRunsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>You can use this parameter when paginating results. Set the value of this parameter\n         to null on your first call to the <b>ListAssessmentRuns</b>\n         action. Subsequent calls to the action fill <b>nextToken</b> in\n         the request with the value of <b>NextToken</b> from the previous\n         response to continue listing data.</p>"}))
    ListAssessmentRunsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>You can use this parameter to indicate the maximum number of items that you want in\n         the response. The default value is 10. The maximum value is 500.</p>"}))
    ListAssessmentRunsRequest.type = Types::ListAssessmentRunsRequest
    ListAssessmentRunsResponse.add_member(:assessment_run_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListReturnedArnList, location_name: 'assessmentRunArns', traits: {"smithy.api#documentation" => "<p>A list of ARNs that specifies the assessment runs that are returned by the\n         action.</p>", "smithy.api#required" => {}}))
    ListAssessmentRunsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> When a response is generated, if there is more data to be listed, this parameter is\n         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more\n         data to be listed, this parameter is set to null.</p>"}))
    ListAssessmentRunsResponse.type = Types::ListAssessmentRunsResponse
    ListAssessmentTargetsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargetFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>You can use this parameter to specify a subset of data to be included in the action's\n         response.</p>\n         <p>For a record to match a filter, all specified filter attributes must match. When\n         multiple values are specified for a filter attribute, any of the values can\n         match.</p>"}))
    ListAssessmentTargetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>You can use this parameter when paginating results. Set the value of this parameter\n         to null on your first call to the <b>ListAssessmentTargets</b>\n         action. Subsequent calls to the action fill <b>nextToken</b> in\n         the request with the value of <b>NextToken</b> from the previous\n         response to continue listing data.</p>"}))
    ListAssessmentTargetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>You can use this parameter to indicate the maximum number of items you want in the\n         response. The default value is 10. The maximum value is 500.</p>"}))
    ListAssessmentTargetsRequest.type = Types::ListAssessmentTargetsRequest
    ListAssessmentTargetsResponse.add_member(:assessment_target_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListReturnedArnList, location_name: 'assessmentTargetArns', traits: {"smithy.api#documentation" => "<p>A list of ARNs that specifies the assessment targets that are returned by the\n         action.</p>", "smithy.api#required" => {}}))
    ListAssessmentTargetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> When a response is generated, if there is more data to be listed, this parameter is\n         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more\n         data to be listed, this parameter is set to null.</p>"}))
    ListAssessmentTargetsResponse.type = Types::ListAssessmentTargetsResponse
    ListAssessmentTemplatesRequest.add_member(:assessment_target_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListParentArnList, location_name: 'assessmentTargetArns', traits: {"smithy.api#documentation" => "<p>A list of ARNs that specifies the assessment targets whose assessment templates you\n         want to list.</p>"}))
    ListAssessmentTemplatesRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplateFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>You can use this parameter to specify a subset of data to be included in the action's\n         response.</p>\n         <p>For a record to match a filter, all specified filter attributes must match. When\n         multiple values are specified for a filter attribute, any of the values can\n         match.</p>"}))
    ListAssessmentTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>You can use this parameter when paginating results. Set the value of this parameter\n         to null on your first call to the <b>ListAssessmentTemplates</b>\n         action. Subsequent calls to the action fill <b>nextToken</b> in\n         the request with the value of <b>NextToken</b> from the previous\n         response to continue listing data.</p>"}))
    ListAssessmentTemplatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>You can use this parameter to indicate the maximum number of items you want in the\n         response. The default value is 10. The maximum value is 500.</p>"}))
    ListAssessmentTemplatesRequest.type = Types::ListAssessmentTemplatesRequest
    ListAssessmentTemplatesResponse.add_member(:assessment_template_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListReturnedArnList, location_name: 'assessmentTemplateArns', traits: {"smithy.api#documentation" => "<p>A list of ARNs that specifies the assessment templates returned by the\n         action.</p>", "smithy.api#required" => {}}))
    ListAssessmentTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> When a response is generated, if there is more data to be listed, this parameter is\n         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more\n         data to be listed, this parameter is set to null.</p>"}))
    ListAssessmentTemplatesResponse.type = Types::ListAssessmentTemplatesResponse
    ListEventSubscriptionsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment template for which you want to list the existing event\n         subscriptions.</p>"}))
    ListEventSubscriptionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>You can use this parameter when paginating results. Set the value of this parameter\n         to null on your first call to the <b>ListEventSubscriptions</b>\n         action. Subsequent calls to the action fill <b>nextToken</b> in\n         the request with the value of <b>NextToken</b> from the previous\n         response to continue listing data.</p>"}))
    ListEventSubscriptionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventSubscriptionsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>You can use this parameter to indicate the maximum number of items you want in the\n         response. The default value is 10. The maximum value is 500.</p>"}))
    ListEventSubscriptionsRequest.type = Types::ListEventSubscriptionsRequest
    ListEventSubscriptionsResponse.add_member(:subscriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionList, location_name: 'subscriptions', traits: {"smithy.api#documentation" => "<p>Details of the returned event subscriptions.</p>", "smithy.api#required" => {}}))
    ListEventSubscriptionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> When a response is generated, if there is more data to be listed, this parameter is\n         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more\n         data to be listed, this parameter is set to null.</p>"}))
    ListEventSubscriptionsResponse.type = Types::ListEventSubscriptionsResponse
    ListExclusionsRequest.add_member(:assessment_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment run that generated the exclusions that you want to\n         list.</p>", "smithy.api#required" => {}}))
    ListExclusionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>You can use this parameter when paginating results. Set the value of this parameter\n         to null on your first call to the ListExclusionsRequest action. Subsequent calls to the\n         action fill nextToken in the request with the value of nextToken from the previous response\n         to continue listing data.</p>"}))
    ListExclusionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>You can use this parameter to indicate the maximum number of items you want in the\n         response. The default value is 100. The maximum value is 500.</p>"}))
    ListExclusionsRequest.type = Types::ListExclusionsRequest
    ListExclusionsResponse.add_member(:exclusion_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListReturnedArnList, location_name: 'exclusionArns', traits: {"smithy.api#documentation" => "<p>A list of exclusions' ARNs returned by the action.</p>", "smithy.api#required" => {}}))
    ListExclusionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>When a response is generated, if there is more data to be listed, this parameters is\n         present in the response and contains the value to use for the nextToken parameter in a\n         subsequent pagination request. If there is no more data to be listed, this parameter is set\n         to null.</p>"}))
    ListExclusionsResponse.type = Types::ListExclusionsResponse
    ListFindingsRequest.add_member(:assessment_run_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListParentArnList, location_name: 'assessmentRunArns', traits: {"smithy.api#documentation" => "<p>The ARNs of the assessment runs that generate the findings that you want to\n         list.</p>"}))
    ListFindingsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>You can use this parameter to specify a subset of data to be included in the action's\n         response.</p>\n         <p>For a record to match a filter, all specified filter attributes must match. When\n         multiple values are specified for a filter attribute, any of the values can\n         match.</p>"}))
    ListFindingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>You can use this parameter when paginating results. Set the value of this parameter\n         to null on your first call to the <b>ListFindings</b> action.\n         Subsequent calls to the action fill <b>nextToken</b> in the\n         request with the value of <b>NextToken</b> from the previous\n         response to continue listing data.</p>"}))
    ListFindingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>You can use this parameter to indicate the maximum number of items you want in the\n         response. The default value is 10. The maximum value is 500.</p>"}))
    ListFindingsRequest.type = Types::ListFindingsRequest
    ListFindingsResponse.add_member(:finding_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListReturnedArnList, location_name: 'findingArns', traits: {"smithy.api#documentation" => "<p>A list of ARNs that specifies the findings returned by the action.</p>", "smithy.api#required" => {}}))
    ListFindingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> When a response is generated, if there is more data to be listed, this parameter is\n         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more\n         data to be listed, this parameter is set to null.</p>"}))
    ListFindingsResponse.type = Types::ListFindingsResponse
    ListParentArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    ListReturnedArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    ListRulesPackagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>You can use this parameter when paginating results. Set the value of this parameter\n         to null on your first call to the <b>ListRulesPackages</b>\n         action. Subsequent calls to the action fill <b>nextToken</b> in\n         the request with the value of <b>NextToken</b> from the previous\n         response to continue listing data.</p>"}))
    ListRulesPackagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>You can use this parameter to indicate the maximum number of items you want in the\n         response. The default value is 10. The maximum value is 500.</p>"}))
    ListRulesPackagesRequest.type = Types::ListRulesPackagesRequest
    ListRulesPackagesResponse.add_member(:rules_package_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListReturnedArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#documentation" => "<p>The list of ARNs that specifies the rules packages returned by the action.</p>", "smithy.api#required" => {}}))
    ListRulesPackagesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> When a response is generated, if there is more data to be listed, this parameter is\n         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more\n         data to be listed, this parameter is set to null.</p>"}))
    ListRulesPackagesResponse.type = Types::ListRulesPackagesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN that specifies the assessment template whose tags you want to list.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A collection of key and value pairs.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Locale.add_member(:en_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_US', traits: {"smithy.api#enumValue" => "EN_US"}))
    NetworkInterface.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'networkInterfaceId', traits: {"smithy.api#documentation" => "<p>The ID of the network interface.</p>"}))
    NetworkInterface.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'subnetId', traits: {"smithy.api#documentation" => "<p>The ID of a subnet associated with the network interface.</p>"}))
    NetworkInterface.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p>The ID of a VPC associated with the network interface.</p>"}))
    NetworkInterface.add_member(:private_dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'privateDnsName', traits: {"smithy.api#documentation" => "<p>The name of a private DNS associated with the network interface.</p>"}))
    NetworkInterface.add_member(:private_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'privateIpAddress', traits: {"smithy.api#documentation" => "<p>The private IP address associated with the network interface.</p>"}))
    NetworkInterface.add_member(:private_ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateIpAddresses, location_name: 'privateIpAddresses', traits: {"smithy.api#documentation" => "<p>A list of the private IP addresses associated with the network interface. Includes\n         the privateDnsName and privateIpAddress.</p>"}))
    NetworkInterface.add_member(:public_dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'publicDnsName', traits: {"smithy.api#documentation" => "<p>The name of a public DNS associated with the network interface.</p>"}))
    NetworkInterface.add_member(:public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'publicIp', traits: {"smithy.api#documentation" => "<p>The public IP address from which the network interface is reachable.</p>"}))
    NetworkInterface.add_member(:ipv6_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Addresses, location_name: 'ipv6Addresses', traits: {"smithy.api#documentation" => "<p>The IP addresses associated with the network interface.</p>"}))
    NetworkInterface.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'securityGroups', traits: {"smithy.api#documentation" => "<p>A list of the security groups associated with the network interface. Includes the\n         groupId and groupName.</p>"}))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaces.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface)
    NoSuchEntityErrorCode.add_member(:assessment_target_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_TARGET_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "ASSESSMENT_TARGET_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:assessment_template_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_TEMPLATE_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "ASSESSMENT_TEMPLATE_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:assessment_run_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_RUN_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "ASSESSMENT_RUN_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:finding_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINDING_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "FINDING_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:resource_group_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_GROUP_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "RESOURCE_GROUP_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:rules_package_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RULES_PACKAGE_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "RULES_PACKAGE_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:sns_topic_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS_TOPIC_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "SNS_TOPIC_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:iam_role_does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_ROLE_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "IAM_ROLE_DOES_NOT_EXIST"}))
    NoSuchEntityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Details of the exception error.</p>", "smithy.api#required" => {}}))
    NoSuchEntityException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>Code that indicates the type of error that is generated.</p>", "smithy.api#required" => {}}))
    NoSuchEntityException.add_member(:can_retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#documentation" => "<p>You can immediately retry your request.</p>", "smithy.api#required" => {}}))
    NoSuchEntityException.type = Types::NoSuchEntityException
    PreviewAgentsRequest.add_member(:preview_agents_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'previewAgentsArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment target whose agents you want to preview.</p>", "smithy.api#required" => {}}))
    PreviewAgentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>You can use this parameter when paginating results. Set the value of this parameter\n         to null on your first call to the <b>PreviewAgents</b> action.\n         Subsequent calls to the action fill <b>nextToken</b> in the\n         request with the value of <b>NextToken</b> from the previous\n         response to continue listing data.</p>"}))
    PreviewAgentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewAgentsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>You can use this parameter to indicate the maximum number of items you want in the\n         response. The default value is 10. The maximum value is 500.</p>"}))
    PreviewAgentsRequest.type = Types::PreviewAgentsRequest
    PreviewAgentsResponse.add_member(:agent_previews, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentPreviewList, location_name: 'agentPreviews', traits: {"smithy.api#documentation" => "<p>The resulting list of agents.</p>", "smithy.api#required" => {}}))
    PreviewAgentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> When a response is generated, if there is more data to be listed, this parameter is\n         present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more\n         data to be listed, this parameter is set to null.</p>"}))
    PreviewAgentsResponse.type = Types::PreviewAgentsResponse
    PreviewGenerationInProgressException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    PreviewGenerationInProgressException.type = Types::PreviewGenerationInProgressException
    PreviewStatus.add_member(:work_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORK_IN_PROGRESS', traits: {"smithy.api#enumValue" => "WORK_IN_PROGRESS"}))
    PreviewStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    PrivateIp.add_member(:private_dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'privateDnsName', traits: {"smithy.api#documentation" => "<p>The DNS name of the private IP address.</p>"}))
    PrivateIp.add_member(:private_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'privateIpAddress', traits: {"smithy.api#documentation" => "<p>The full IP address of the network inteface.</p>"}))
    PrivateIp.type = Types::PrivateIp
    PrivateIpAddresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateIp)
    RegisterCrossAccountAccessRoleRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that grants Amazon Inspector access to AWS Services needed to\n         perform security assessments. </p>", "smithy.api#required" => {}}))
    RegisterCrossAccountAccessRoleRequest.type = Types::RegisterCrossAccountAccessRoleRequest
    RemoveAttributesFromFindingsRequest.add_member(:finding_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: AddRemoveAttributesFindingArnList, location_name: 'findingArns', traits: {"smithy.api#documentation" => "<p>The ARNs that specify the findings that you want to remove attributes from.</p>", "smithy.api#required" => {}}))
    RemoveAttributesFromFindingsRequest.add_member(:attribute_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeKeyList, location_name: 'attributeKeys', traits: {"smithy.api#documentation" => "<p>The array of attribute keys that you want to remove from specified\n         findings.</p>", "smithy.api#required" => {}}))
    RemoveAttributesFromFindingsRequest.type = Types::RemoveAttributesFromFindingsRequest
    RemoveAttributesFromFindingsResponse.add_member(:failed_items, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#documentation" => "<p>Attributes details that cannot be described. An error code is provided for each\n         failed item.</p>", "smithy.api#required" => {}}))
    RemoveAttributesFromFindingsResponse.type = Types::RemoveAttributesFromFindingsResponse
    ReportFileFormat.add_member(:html, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTML', traits: {"smithy.api#enumValue" => "HTML"}))
    ReportFileFormat.add_member(:pdf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PDF', traits: {"smithy.api#enumValue" => "PDF"}))
    ReportStatus.add_member(:work_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORK_IN_PROGRESS', traits: {"smithy.api#enumValue" => "WORK_IN_PROGRESS"}))
    ReportStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ReportStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReportType.add_member(:finding, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINDING', traits: {"smithy.api#enumValue" => "FINDING"}))
    ReportType.add_member(:full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL', traits: {"smithy.api#enumValue" => "FULL"}))
    ResourceGroup.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource group.</p>", "smithy.api#required" => {}}))
    ResourceGroup.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupTags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags (key and value pairs) of the resource group. This data type property is used\n         in the <a>CreateResourceGroup</a> action.</p>", "smithy.api#required" => {}}))
    ResourceGroup.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which resource group is created.</p>", "smithy.api#required" => {}}))
    ResourceGroup.type = Types::ResourceGroup
    ResourceGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroup)
    ResourceGroupTag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>A tag key.</p>", "smithy.api#required" => {}}))
    ResourceGroupTag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value assigned to a tag key.</p>"}))
    ResourceGroupTag.type = Types::ResourceGroupTag
    ResourceGroupTags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupTag)
    RuleNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName)
    RulesPackage.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the rules package.</p>", "smithy.api#required" => {}}))
    RulesPackage.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RulesPackageName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rules package.</p>", "smithy.api#required" => {}}))
    RulesPackage.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version ID of the rules package.</p>", "smithy.api#required" => {}}))
    RulesPackage.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The provider of the rules package.</p>", "smithy.api#required" => {}}))
    RulesPackage.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the rules package.</p>"}))
    RulesPackage.type = Types::RulesPackage
    RulesPackageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RulesPackage)
    Scope.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeType, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The type of the scope.</p>"}))
    Scope.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The resource identifier for the specified scope type.</p>"}))
    Scope.type = Types::Scope
    ScopeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Scope)
    ScopeType.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_ID', traits: {"smithy.api#enumValue" => "INSTANCE_ID"}))
    ScopeType.add_member(:rules_package_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RULES_PACKAGE_ARN', traits: {"smithy.api#enumValue" => "RULES_PACKAGE_ARN"}))
    SecurityGroup.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'groupName', traits: {"smithy.api#documentation" => "<p>The name of the security group.</p>"}))
    SecurityGroup.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'groupId', traits: {"smithy.api#documentation" => "<p>The ID of the security group.</p>"}))
    SecurityGroup.type = Types::SecurityGroup
    SecurityGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroup)
    ServiceTemporarilyUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Details of the exception error.</p>", "smithy.api#required" => {}}))
    ServiceTemporarilyUnavailableException.add_member(:can_retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#documentation" => "<p>You can wait and then retry your request.</p>", "smithy.api#required" => {}}))
    ServiceTemporarilyUnavailableException.type = Types::ServiceTemporarilyUnavailableException
    SetTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment template that you want to set tags to.</p>", "smithy.api#required" => {}}))
    SetTagsForResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A collection of key and value pairs that you want to set to the assessment\n         template.</p>"}))
    SetTagsForResourceRequest.type = Types::SetTagsForResourceRequest
    Severity.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "Low"}))
    Severity.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "Medium"}))
    Severity.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "High"}))
    Severity.add_member(:informational, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFORMATIONAL', traits: {"smithy.api#enumValue" => "Informational"}))
    Severity.add_member(:undefined, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDEFINED', traits: {"smithy.api#enumValue" => "Undefined"}))
    SeverityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Severity)
    StartAssessmentRunRequest.add_member(:assessment_template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTemplateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment template of the assessment run that you want to\n         start.</p>", "smithy.api#required" => {}}))
    StartAssessmentRunRequest.add_member(:assessment_run_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunName, location_name: 'assessmentRunName', traits: {"smithy.api#documentation" => "<p>You can specify the name for the assessment run. The name must be unique for the\n         assessment template whose ARN is used to start the assessment run.</p>"}))
    StartAssessmentRunRequest.type = Types::StartAssessmentRunRequest
    StartAssessmentRunResponse.add_member(:assessment_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment run that has been started.</p>", "smithy.api#required" => {}}))
    StartAssessmentRunResponse.type = Types::StartAssessmentRunResponse
    StopAction.add_member(:start_evaluation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_EVALUATION', traits: {"smithy.api#enumValue" => "START_EVALUATION"}))
    StopAction.add_member(:skip_evaluation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIP_EVALUATION', traits: {"smithy.api#enumValue" => "SKIP_EVALUATION"}))
    StopAssessmentRunRequest.add_member(:assessment_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment run that you want to stop.</p>", "smithy.api#required" => {}}))
    StopAssessmentRunRequest.add_member(:stop_action, Smithy::Schema::Shapes::ShapeRef.new(shape: StopAction, location_name: 'stopAction', traits: {"smithy.api#documentation" => "<p>An input option that can be set to either START_EVALUATION or SKIP_EVALUATION.\n         START_EVALUATION (the default value), stops the AWS agent from collecting data and begins\n         the results evaluation and the findings generation process. SKIP_EVALUATION cancels the\n         assessment run immediately, after which no findings are generated.</p>"}))
    StopAssessmentRunRequest.type = Types::StopAssessmentRunRequest
    SubscribeToEventRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment template that is used during the event for which you want\n         to receive SNS notifications.</p>", "smithy.api#required" => {}}))
    SubscribeToEventRequest.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: InspectorEvent, location_name: 'event', traits: {"smithy.api#documentation" => "<p>The event for which you want to receive SNS notifications.</p>", "smithy.api#required" => {}}))
    SubscribeToEventRequest.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'topicArn', traits: {"smithy.api#documentation" => "<p>The ARN of the SNS topic to which the SNS notifications are sent.</p>", "smithy.api#required" => {}}))
    SubscribeToEventRequest.type = Types::SubscribeToEventRequest
    Subscription.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment template that is used during the event for which the SNS\n         notification is sent.</p>", "smithy.api#required" => {}}))
    Subscription.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'topicArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Simple Notification Service (SNS) topic to which the SNS\n         notifications are sent.</p>", "smithy.api#required" => {}}))
    Subscription.add_member(:event_subscriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionList, location_name: 'eventSubscriptions', traits: {"smithy.api#documentation" => "<p>The list of existing event subscriptions.</p>", "smithy.api#required" => {}}))
    Subscription.type = Types::Subscription
    SubscriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Subscription)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>A tag key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>A value assigned to a tag key.</p>"}))
    Tag.type = Types::Tag
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TelemetryMetadata.add_member(:message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'messageType', traits: {"smithy.api#documentation" => "<p>A specific type of behavioral data that is collected by the agent.</p>", "smithy.api#required" => {}}))
    TelemetryMetadata.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The count of messages that the agent sends to the Amazon Inspector service.</p>", "smithy.api#required" => {}}))
    TelemetryMetadata.add_member(:data_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'dataSize', traits: {"smithy.api#documentation" => "<p>The data size of messages that the agent sends to the Amazon Inspector\n         service.</p>"}))
    TelemetryMetadata.type = Types::TelemetryMetadata
    TelemetryMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryMetadata)
    TimestampRange.add_member(:begin_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'beginDate', traits: {"smithy.api#documentation" => "<p>The minimum value of the timestamp range.</p>"}))
    TimestampRange.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endDate', traits: {"smithy.api#documentation" => "<p>The maximum value of the timestamp range.</p>"}))
    TimestampRange.type = Types::TimestampRange
    UnsubscribeFromEventRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment template that is used during the event for which you want\n         to stop receiving SNS notifications.</p>", "smithy.api#required" => {}}))
    UnsubscribeFromEventRequest.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: InspectorEvent, location_name: 'event', traits: {"smithy.api#documentation" => "<p>The event for which you want to stop receiving SNS notifications.</p>", "smithy.api#required" => {}}))
    UnsubscribeFromEventRequest.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'topicArn', traits: {"smithy.api#documentation" => "<p>The ARN of the SNS topic to which SNS notifications are sent.</p>", "smithy.api#required" => {}}))
    UnsubscribeFromEventRequest.type = Types::UnsubscribeFromEventRequest
    UnsupportedFeatureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    UnsupportedFeatureException.add_member(:can_retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#required" => {}}))
    UnsupportedFeatureException.type = Types::UnsupportedFeatureException
    UpdateAssessmentTargetRequest.add_member(:assessment_target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTargetArn', traits: {"smithy.api#documentation" => "<p>The ARN of the assessment target that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateAssessmentTargetRequest.add_member(:assessment_target_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargetName, location_name: 'assessmentTargetName', traits: {"smithy.api#documentation" => "<p>The name of the assessment target that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateAssessmentTargetRequest.add_member(:resource_group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceGroupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource group that is used to specify the new resource group to\n         associate with the assessment target.</p>"}))
    UpdateAssessmentTargetRequest.type = Types::UpdateAssessmentTargetRequest
    UserAttributeKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey)
    UserAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)

    InspectorService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.inspector#InspectorService"
      service.name = "InspectorService"
      service.version = "2016-02-16"
      service.traits = {"aws.api#service" => {"sdkId" => "Inspector", "arnNamespace" => "inspector", "cloudFormationName" => "Inspector", "cloudTrailEventSource" => "inspector.amazonaws.com", "endpointPrefix" => "inspector"}, "aws.auth#sigv4" => {"name" => "inspector"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Inspector"}
      service.add_operation(:add_attributes_to_findings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#AddAttributesToFindings"
        operation.name = "AddAttributesToFindings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddAttributesToFindingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddAttributesToFindingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_assessment_target, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#CreateAssessmentTarget"
        operation.name = "CreateAssessmentTarget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentTargetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentTargetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_assessment_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#CreateAssessmentTemplate"
        operation.name = "CreateAssessmentTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_exclusions_preview, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#CreateExclusionsPreview"
        operation.name = "CreateExclusionsPreview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExclusionsPreviewRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExclusionsPreviewResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewGenerationInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_resource_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#CreateResourceGroup"
        operation.name = "CreateResourceGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_assessment_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DeleteAssessmentRun"
        operation.name = "DeleteAssessmentRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_assessment_target, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DeleteAssessmentTarget"
        operation.name = "DeleteAssessmentTarget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentTargetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_assessment_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DeleteAssessmentTemplate"
        operation.name = "DeleteAssessmentTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:describe_assessment_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeAssessmentRuns"
        operation.name = "DescribeAssessmentRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssessmentRunsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssessmentRunsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:describe_assessment_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeAssessmentTargets"
        operation.name = "DescribeAssessmentTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssessmentTargetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssessmentTargetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:describe_assessment_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeAssessmentTemplates"
        operation.name = "DescribeAssessmentTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssessmentTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssessmentTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:describe_cross_account_access_role, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeCrossAccountAccessRole"
        operation.name = "DescribeCrossAccountAccessRole"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCrossAccountAccessRoleResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:describe_exclusions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeExclusions"
        operation.name = "DescribeExclusions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExclusionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExclusionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:describe_findings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeFindings"
        operation.name = "DescribeFindings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFindingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFindingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeResourceGroups"
        operation.name = "DescribeResourceGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourceGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourceGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:describe_rules_packages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeRulesPackages"
        operation.name = "DescribeRulesPackages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRulesPackagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRulesPackagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:get_assessment_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#GetAssessmentReport"
        operation.name = "GetAssessmentReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentReportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentReportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
        operation.traits = {}
      end)
      service.add_operation(:get_exclusions_preview, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#GetExclusionsPreview"
        operation.name = "GetExclusionsPreview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExclusionsPreviewRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExclusionsPreviewResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetExclusionsPreview.new
      end)
      service.add_operation(:get_telemetry_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#GetTelemetryMetadata"
        operation.name = "GetTelemetryMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTelemetryMetadataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTelemetryMetadataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
      end)
      service.add_operation(:list_assessment_run_agents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListAssessmentRunAgents"
        operation.name = "ListAssessmentRunAgents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentRunAgentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentRunAgentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAssessmentRunAgents.new
      end)
      service.add_operation(:list_assessment_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListAssessmentRuns"
        operation.name = "ListAssessmentRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentRunsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentRunsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAssessmentRuns.new
      end)
      service.add_operation(:list_assessment_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListAssessmentTargets"
        operation.name = "ListAssessmentTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentTargetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentTargetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAssessmentTargets.new
      end)
      service.add_operation(:list_assessment_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListAssessmentTemplates"
        operation.name = "ListAssessmentTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAssessmentTemplates.new
      end)
      service.add_operation(:list_event_subscriptions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListEventSubscriptions"
        operation.name = "ListEventSubscriptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventSubscriptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventSubscriptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEventSubscriptions.new
      end)
      service.add_operation(:list_exclusions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListExclusions"
        operation.name = "ListExclusions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExclusionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExclusionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListExclusions.new
      end)
      service.add_operation(:list_findings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListFindings"
        operation.name = "ListFindings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFindings.new
      end)
      service.add_operation(:list_rules_packages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListRulesPackages"
        operation.name = "ListRulesPackages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesPackagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesPackagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRulesPackages.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
      end)
      service.add_operation(:preview_agents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#PreviewAgents"
        operation.name = "PreviewAgents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewAgentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewAgentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::PreviewAgents.new
      end)
      service.add_operation(:register_cross_account_access_role, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#RegisterCrossAccountAccessRole"
        operation.name = "RegisterCrossAccountAccessRole"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterCrossAccountAccessRoleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:remove_attributes_from_findings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#RemoveAttributesFromFindings"
        operation.name = "RemoveAttributesFromFindings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAttributesFromFindingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAttributesFromFindingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:set_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#SetTagsForResource"
        operation.name = "SetTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:start_assessment_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#StartAssessmentRun"
        operation.name = "StartAssessmentRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAssessmentRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAssessmentRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AgentsAlreadyRunningAssessmentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:stop_assessment_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#StopAssessmentRun"
        operation.name = "StopAssessmentRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopAssessmentRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:subscribe_to_event, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#SubscribeToEvent"
        operation.name = "SubscribeToEvent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SubscribeToEventRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:unsubscribe_from_event, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#UnsubscribeFromEvent"
        operation.name = "UnsubscribeFromEvent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UnsubscribeFromEventRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:update_assessment_target, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#UpdateAssessmentTarget"
        operation.name = "UpdateAssessmentTarget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentTargetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
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
