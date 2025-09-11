# frozen_string_literal: true

# This is generated code!

module Aws::Inspector
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#AccessDeniedErrorCode', name: 'AccessDeniedErrorCode')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddAttributesToFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AddAttributesToFindingsRequest', name: 'AddAttributesToFindingsRequest')
    AddAttributesToFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AddAttributesToFindingsResponse', name: 'AddAttributesToFindingsResponse')
    AddRemoveAttributesFindingArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AddRemoveAttributesFindingArnList', name: 'AddRemoveAttributesFindingArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AgentAlreadyRunningAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AgentAlreadyRunningAssessment', name: 'AgentAlreadyRunningAssessment')
    AgentAlreadyRunningAssessmentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AgentAlreadyRunningAssessmentList', name: 'AgentAlreadyRunningAssessmentList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AgentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AgentFilter', name: 'AgentFilter')
    AgentHealth = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#AgentHealth', name: 'AgentHealth')
    AgentHealthCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#AgentHealthCode', name: 'AgentHealthCode')
    AgentHealthCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AgentHealthCodeList', name: 'AgentHealthCodeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AgentHealthList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AgentHealthList', name: 'AgentHealthList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AgentId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AgentId', name: 'AgentId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AgentIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AgentIdList', name: 'AgentIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 99}})
    AgentPreview = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AgentPreview', name: 'AgentPreview')
    AgentPreviewList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AgentPreviewList', name: 'AgentPreviewList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AgentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AgentVersion', name: 'AgentVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AgentsAlreadyRunningAssessmentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AgentsAlreadyRunningAssessmentException', name: 'AgentsAlreadyRunningAssessmentException', traits: {"smithy.api#error" => "client"})
    AmiId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AmiId', name: 'AmiId', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ArnCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#ArnCount', name: 'ArnCount')
    AssessmentRulesPackageArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRulesPackageArnList', name: 'AssessmentRulesPackageArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AssessmentRun = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentRun', name: 'AssessmentRun')
    AssessmentRunAgent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentRunAgent', name: 'AssessmentRunAgent')
    AssessmentRunAgentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRunAgentList', name: 'AssessmentRunAgentList', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    AssessmentRunDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#AssessmentRunDuration', name: 'AssessmentRunDuration', traits: {"smithy.api#range" => {"min" => 180, "max" => 86400}})
    AssessmentRunFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentRunFilter', name: 'AssessmentRunFilter')
    AssessmentRunFindingCounts = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.inspector#AssessmentRunFindingCounts', name: 'AssessmentRunFindingCounts')
    AssessmentRunInProgressArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRunInProgressArnList', name: 'AssessmentRunInProgressArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AssessmentRunInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentRunInProgressException', name: 'AssessmentRunInProgressException', traits: {"smithy.api#error" => "client"})
    AssessmentRunList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRunList', name: 'AssessmentRunList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AssessmentRunName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AssessmentRunName', name: 'AssessmentRunName', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    AssessmentRunNotification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentRunNotification', name: 'AssessmentRunNotification')
    AssessmentRunNotificationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRunNotificationList', name: 'AssessmentRunNotificationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AssessmentRunNotificationSnsStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#AssessmentRunNotificationSnsStatusCode', name: 'AssessmentRunNotificationSnsStatusCode')
    AssessmentRunState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#AssessmentRunState', name: 'AssessmentRunState')
    AssessmentRunStateChange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentRunStateChange', name: 'AssessmentRunStateChange')
    AssessmentRunStateChangeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRunStateChangeList', name: 'AssessmentRunStateChangeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AssessmentRunStateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentRunStateList', name: 'AssessmentRunStateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AssessmentTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentTarget', name: 'AssessmentTarget')
    AssessmentTargetFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentTargetFilter', name: 'AssessmentTargetFilter')
    AssessmentTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentTargetList', name: 'AssessmentTargetList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AssessmentTargetName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AssessmentTargetName', name: 'AssessmentTargetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    AssessmentTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentTemplate', name: 'AssessmentTemplate')
    AssessmentTemplateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssessmentTemplateFilter', name: 'AssessmentTemplateFilter')
    AssessmentTemplateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentTemplateList', name: 'AssessmentTemplateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AssessmentTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AssessmentTemplateName', name: 'AssessmentTemplateName', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    AssessmentTemplateRulesPackageArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AssessmentTemplateRulesPackageArnList', name: 'AssessmentTemplateRulesPackageArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AssetAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#AssetAttributes', name: 'AssetAttributes')
    AssetType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#AssetType', name: 'AssetType')
    Attribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#Attribute', name: 'Attribute')
    AttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AttributeKey', name: 'AttributeKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AttributeList', name: 'AttributeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AttributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AutoScalingGroup = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#AutoScalingGroup', name: 'AutoScalingGroup', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AutoScalingGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#AutoScalingGroupList', name: 'AutoScalingGroupList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    BatchDescribeArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#BatchDescribeArnList', name: 'BatchDescribeArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BatchDescribeExclusionsArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#BatchDescribeExclusionsArnList', name: 'BatchDescribeExclusionsArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Bool = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.inspector#Bool', name: 'Bool')
    CreateAssessmentTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateAssessmentTargetRequest', name: 'CreateAssessmentTargetRequest')
    CreateAssessmentTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateAssessmentTargetResponse', name: 'CreateAssessmentTargetResponse')
    CreateAssessmentTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateAssessmentTemplateRequest', name: 'CreateAssessmentTemplateRequest')
    CreateAssessmentTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateAssessmentTemplateResponse', name: 'CreateAssessmentTemplateResponse')
    CreateExclusionsPreviewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateExclusionsPreviewRequest', name: 'CreateExclusionsPreviewRequest')
    CreateExclusionsPreviewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateExclusionsPreviewResponse', name: 'CreateExclusionsPreviewResponse')
    CreateResourceGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateResourceGroupRequest', name: 'CreateResourceGroupRequest')
    CreateResourceGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#CreateResourceGroupResponse', name: 'CreateResourceGroupResponse')
    DeleteAssessmentRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DeleteAssessmentRunRequest', name: 'DeleteAssessmentRunRequest')
    DeleteAssessmentTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DeleteAssessmentTargetRequest', name: 'DeleteAssessmentTargetRequest')
    DeleteAssessmentTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DeleteAssessmentTemplateRequest', name: 'DeleteAssessmentTemplateRequest')
    DescribeAssessmentRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeAssessmentRunsRequest', name: 'DescribeAssessmentRunsRequest')
    DescribeAssessmentRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeAssessmentRunsResponse', name: 'DescribeAssessmentRunsResponse')
    DescribeAssessmentTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeAssessmentTargetsRequest', name: 'DescribeAssessmentTargetsRequest')
    DescribeAssessmentTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeAssessmentTargetsResponse', name: 'DescribeAssessmentTargetsResponse')
    DescribeAssessmentTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeAssessmentTemplatesRequest', name: 'DescribeAssessmentTemplatesRequest')
    DescribeAssessmentTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeAssessmentTemplatesResponse', name: 'DescribeAssessmentTemplatesResponse')
    DescribeCrossAccountAccessRoleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeCrossAccountAccessRoleResponse', name: 'DescribeCrossAccountAccessRoleResponse')
    DescribeExclusionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeExclusionsRequest', name: 'DescribeExclusionsRequest')
    DescribeExclusionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeExclusionsResponse', name: 'DescribeExclusionsResponse')
    DescribeFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeFindingsRequest', name: 'DescribeFindingsRequest')
    DescribeFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeFindingsResponse', name: 'DescribeFindingsResponse')
    DescribeResourceGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeResourceGroupsRequest', name: 'DescribeResourceGroupsRequest')
    DescribeResourceGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeResourceGroupsResponse', name: 'DescribeResourceGroupsResponse')
    DescribeRulesPackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeRulesPackagesRequest', name: 'DescribeRulesPackagesRequest')
    DescribeRulesPackagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DescribeRulesPackagesResponse', name: 'DescribeRulesPackagesResponse')
    DurationRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#DurationRange', name: 'DurationRange')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    EventSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#EventSubscription', name: 'EventSubscription')
    EventSubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#EventSubscriptionList', name: 'EventSubscriptionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Exclusion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#Exclusion', name: 'Exclusion')
    ExclusionMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.inspector#ExclusionMap', name: 'ExclusionMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ExclusionPreview = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ExclusionPreview', name: 'ExclusionPreview')
    ExclusionPreviewList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#ExclusionPreviewList', name: 'ExclusionPreviewList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FailedItemDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#FailedItemDetails', name: 'FailedItemDetails')
    FailedItemErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#FailedItemErrorCode', name: 'FailedItemErrorCode')
    FailedItems = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.inspector#FailedItems', name: 'FailedItems')
    FilterRulesPackageArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#FilterRulesPackageArnList', name: 'FilterRulesPackageArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Finding = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#Finding', name: 'Finding')
    FindingCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#FindingCount', name: 'FindingCount')
    FindingFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#FindingFilter', name: 'FindingFilter')
    FindingId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#FindingId', name: 'FindingId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    FindingList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#FindingList', name: 'FindingList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GetAssessmentReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#GetAssessmentReportRequest', name: 'GetAssessmentReportRequest')
    GetAssessmentReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#GetAssessmentReportResponse', name: 'GetAssessmentReportResponse')
    GetExclusionsPreviewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#GetExclusionsPreviewRequest', name: 'GetExclusionsPreviewRequest')
    GetExclusionsPreviewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#GetExclusionsPreviewResponse', name: 'GetExclusionsPreviewResponse')
    GetTelemetryMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#GetTelemetryMetadataRequest', name: 'GetTelemetryMetadataRequest')
    GetTelemetryMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#GetTelemetryMetadataResponse', name: 'GetTelemetryMetadataResponse')
    Hostname = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Hostname', name: 'Hostname', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    InspectorEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#InspectorEvent', name: 'InspectorEvent')
    InspectorServiceAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#InspectorServiceAttributes', name: 'InspectorServiceAttributes')
    InternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#InternalException', name: 'InternalException', traits: {"smithy.api#error" => "server"})
    InvalidCrossAccountRoleErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#InvalidCrossAccountRoleErrorCode', name: 'InvalidCrossAccountRoleErrorCode')
    InvalidCrossAccountRoleException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#InvalidCrossAccountRoleException', name: 'InvalidCrossAccountRoleException', traits: {"smithy.api#error" => "client"})
    InvalidInputErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#InvalidInputErrorCode', name: 'InvalidInputErrorCode')
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client"})
    IocConfidence = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#IocConfidence', name: 'IocConfidence', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10}})
    Ipv4Address = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Ipv4Address', name: 'Ipv4Address', traits: {"smithy.api#length" => {"min" => 7, "max" => 15}})
    Ipv4AddressList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#Ipv4AddressList', name: 'Ipv4AddressList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Ipv6Addresses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#Ipv6Addresses', name: 'Ipv6Addresses')
    KernelVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#KernelVersion', name: 'KernelVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    LimitExceededErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#LimitExceededErrorCode', name: 'LimitExceededErrorCode')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListAssessmentRunAgentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentRunAgentsRequest', name: 'ListAssessmentRunAgentsRequest')
    ListAssessmentRunAgentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentRunAgentsResponse', name: 'ListAssessmentRunAgentsResponse')
    ListAssessmentRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentRunsRequest', name: 'ListAssessmentRunsRequest')
    ListAssessmentRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentRunsResponse', name: 'ListAssessmentRunsResponse')
    ListAssessmentTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentTargetsRequest', name: 'ListAssessmentTargetsRequest')
    ListAssessmentTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentTargetsResponse', name: 'ListAssessmentTargetsResponse')
    ListAssessmentTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentTemplatesRequest', name: 'ListAssessmentTemplatesRequest')
    ListAssessmentTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListAssessmentTemplatesResponse', name: 'ListAssessmentTemplatesResponse')
    ListEventSubscriptionsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#ListEventSubscriptionsMaxResults', name: 'ListEventSubscriptionsMaxResults')
    ListEventSubscriptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListEventSubscriptionsRequest', name: 'ListEventSubscriptionsRequest')
    ListEventSubscriptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListEventSubscriptionsResponse', name: 'ListEventSubscriptionsResponse')
    ListExclusionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListExclusionsRequest', name: 'ListExclusionsRequest')
    ListExclusionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListExclusionsResponse', name: 'ListExclusionsResponse')
    ListFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListFindingsRequest', name: 'ListFindingsRequest')
    ListFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListFindingsResponse', name: 'ListFindingsResponse')
    ListMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#ListMaxResults', name: 'ListMaxResults')
    ListParentArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#ListParentArnList', name: 'ListParentArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ListReturnedArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#ListReturnedArnList', name: 'ListReturnedArnList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ListRulesPackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListRulesPackagesRequest', name: 'ListRulesPackagesRequest')
    ListRulesPackagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListRulesPackagesResponse', name: 'ListRulesPackagesResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Locale = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#Locale', name: 'Locale')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#Long', name: 'Long')
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    MessageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#MessageType', name: 'MessageType', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    NamePattern = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#NamePattern', name: 'NamePattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#NetworkInterface', name: 'NetworkInterface')
    NetworkInterfaces = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#NetworkInterfaces', name: 'NetworkInterfaces')
    NoSuchEntityErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#NoSuchEntityErrorCode', name: 'NoSuchEntityErrorCode')
    NoSuchEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#NoSuchEntityException', name: 'NoSuchEntityException', traits: {"smithy.api#error" => "client"})
    NumericSeverity = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.inspector#NumericSeverity', name: 'NumericSeverity', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0, "max" => 10.0}})
    NumericVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#NumericVersion', name: 'NumericVersion', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    OperatingSystem = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#OperatingSystem', name: 'OperatingSystem', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    PreviewAgentsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.inspector#PreviewAgentsMaxResults', name: 'PreviewAgentsMaxResults')
    PreviewAgentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#PreviewAgentsRequest', name: 'PreviewAgentsRequest')
    PreviewAgentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#PreviewAgentsResponse', name: 'PreviewAgentsResponse')
    PreviewGenerationInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#PreviewGenerationInProgressException', name: 'PreviewGenerationInProgressException', traits: {"smithy.api#error" => "client"})
    PreviewStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#PreviewStatus', name: 'PreviewStatus')
    PrivateIp = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#PrivateIp', name: 'PrivateIp')
    PrivateIpAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#PrivateIpAddresses', name: 'PrivateIpAddresses')
    ProviderName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#ProviderName', name: 'ProviderName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RegisterCrossAccountAccessRoleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#RegisterCrossAccountAccessRoleRequest', name: 'RegisterCrossAccountAccessRoleRequest')
    RemoveAttributesFromFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#RemoveAttributesFromFindingsRequest', name: 'RemoveAttributesFromFindingsRequest')
    RemoveAttributesFromFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#RemoveAttributesFromFindingsResponse', name: 'RemoveAttributesFromFindingsResponse')
    ReportFileFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#ReportFileFormat', name: 'ReportFileFormat')
    ReportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#ReportStatus', name: 'ReportStatus')
    ReportType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#ReportType', name: 'ReportType')
    ResourceGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ResourceGroup', name: 'ResourceGroup')
    ResourceGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#ResourceGroupList', name: 'ResourceGroupList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ResourceGroupTag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ResourceGroupTag', name: 'ResourceGroupTag')
    ResourceGroupTags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#ResourceGroupTags', name: 'ResourceGroupTags', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RuleNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#RuleNameList', name: 'RuleNameList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    RulesPackage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#RulesPackage', name: 'RulesPackage')
    RulesPackageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#RulesPackageList', name: 'RulesPackageList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RulesPackageName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#RulesPackageName', name: 'RulesPackageName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Scope = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#Scope', name: 'Scope')
    ScopeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#ScopeList', name: 'ScopeList', traits: {"smithy.api#length" => {"min" => 1}})
    ScopeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#ScopeType', name: 'ScopeType')
    ScopeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#ScopeValue', name: 'ScopeValue')
    SecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#SecurityGroup', name: 'SecurityGroup')
    SecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#SecurityGroups', name: 'SecurityGroups')
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#ServiceName', name: 'ServiceName', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    ServiceTemporarilyUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#ServiceTemporarilyUnavailableException', name: 'ServiceTemporarilyUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SetTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#SetTagsForResourceRequest', name: 'SetTagsForResourceRequest')
    Severity = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#Severity', name: 'Severity')
    SeverityList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#SeverityList', name: 'SeverityList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    StartAssessmentRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#StartAssessmentRunRequest', name: 'StartAssessmentRunRequest')
    StartAssessmentRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#StartAssessmentRunResponse', name: 'StartAssessmentRunResponse')
    StopAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.inspector#StopAction', name: 'StopAction')
    StopAssessmentRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#StopAssessmentRunRequest', name: 'StopAssessmentRunRequest')
    SubscribeToEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#SubscribeToEventRequest', name: 'SubscribeToEventRequest')
    Subscription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#Subscription', name: 'Subscription')
    SubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#SubscriptionList', name: 'SubscriptionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#Tags', name: 'Tags')
    TelemetryMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#TelemetryMetadata', name: 'TelemetryMetadata')
    TelemetryMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#TelemetryMetadataList', name: 'TelemetryMetadataList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5000}})
    Text = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Text', name: 'Text', traits: {"smithy.api#length" => {"min" => 0, "max" => 20000}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.inspector#Timestamp', name: 'Timestamp')
    TimestampRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#TimestampRange', name: 'TimestampRange')
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#UUID', name: 'UUID', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    UnsubscribeFromEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#UnsubscribeFromEventRequest', name: 'UnsubscribeFromEventRequest')
    UnsupportedFeatureException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#UnsupportedFeatureException', name: 'UnsupportedFeatureException', traits: {"smithy.api#error" => "client"})
    UpdateAssessmentTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.inspector#UpdateAssessmentTargetRequest', name: 'UpdateAssessmentTargetRequest')
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    UserAttributeKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#UserAttributeKeyList', name: 'UserAttributeKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    UserAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.inspector#UserAttributeList', name: 'UserAttributeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.inspector#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})

    AccessDeniedErrorCode.add_member(:access_denied_to_assessment_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_ASSESSMENT_TARGET', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_ASSESSMENT_TARGET"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_assessment_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_assessment_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_ASSESSMENT_RUN', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_ASSESSMENT_RUN"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_finding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_FINDING', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_FINDING"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_resource_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_RESOURCE_GROUP', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_RESOURCE_GROUP"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_rules_package, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_RULES_PACKAGE', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_RULES_PACKAGE"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_sns_topic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_SNS_TOPIC', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_SNS_TOPIC"}))
    AccessDeniedErrorCode.add_member(:access_denied_to_iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED_TO_IAM_ROLE', traits: {"smithy.api#enumValue" => "ACCESS_DENIED_TO_IAM_ROLE"}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedErrorCode, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:can_retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AddAttributesToFindingsRequest.add_member(:finding_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddRemoveAttributesFindingArnList, location_name: 'findingArns', traits: {"smithy.api#required" => {}}))
    AddAttributesToFindingsRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeList, location_name: 'attributes', traits: {"smithy.api#required" => {}}))
    AddAttributesToFindingsRequest.type = Types::AddAttributesToFindingsRequest
    AddAttributesToFindingsResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#required" => {}}))
    AddAttributesToFindingsResponse.type = Types::AddAttributesToFindingsResponse
    AddRemoveAttributesFindingArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AgentAlreadyRunningAssessment.add_member(:agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId, location_name: 'agentId', traits: {"smithy.api#required" => {}}))
    AgentAlreadyRunningAssessment.add_member(:assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#required" => {}}))
    AgentAlreadyRunningAssessment.type = Types::AgentAlreadyRunningAssessment
    AgentAlreadyRunningAssessmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAlreadyRunningAssessment)
    AgentFilter.add_member(:agent_healths, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealthList, location_name: 'agentHealths', traits: {"smithy.api#required" => {}}))
    AgentFilter.add_member(:agent_health_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealthCodeList, location_name: 'agentHealthCodes', traits: {"smithy.api#required" => {}}))
    AgentFilter.type = Types::AgentFilter
    AgentHealth.add_member(:healthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    AgentHealth.add_member(:unhealthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    AgentHealth.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    AgentHealthCode.add_member(:idle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDLE', traits: {"smithy.api#enumValue" => "IDLE"}))
    AgentHealthCode.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    AgentHealthCode.add_member(:shutdown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHUTDOWN', traits: {"smithy.api#enumValue" => "SHUTDOWN"}))
    AgentHealthCode.add_member(:unhealthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    AgentHealthCode.add_member(:throttled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THROTTLED', traits: {"smithy.api#enumValue" => "THROTTLED"}))
    AgentHealthCode.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    AgentHealthCodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealthCode)
    AgentHealthList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealth)
    AgentIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId)
    AgentPreview.add_member(:hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hostname, location_name: 'hostname'))
    AgentPreview.add_member(:agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId, location_name: 'agentId', traits: {"smithy.api#required" => {}}))
    AgentPreview.add_member(:auto_scaling_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroup, location_name: 'autoScalingGroup'))
    AgentPreview.add_member(:agent_health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealth, location_name: 'agentHealth'))
    AgentPreview.add_member(:agent_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersion, location_name: 'agentVersion'))
    AgentPreview.add_member(:operating_system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystem, location_name: 'operatingSystem'))
    AgentPreview.add_member(:kernel_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KernelVersion, location_name: 'kernelVersion'))
    AgentPreview.add_member(:ipv4_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4Address, location_name: 'ipv4Address'))
    AgentPreview.type = Types::AgentPreview
    AgentPreviewList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentPreview)
    AgentsAlreadyRunningAssessmentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AgentsAlreadyRunningAssessmentException.add_member(:agents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentAlreadyRunningAssessmentList, location_name: 'agents', traits: {"smithy.api#required" => {}}))
    AgentsAlreadyRunningAssessmentException.add_member(:agents_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'agentsTruncated', traits: {"smithy.api#required" => {}}))
    AgentsAlreadyRunningAssessmentException.add_member(:can_retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#required" => {}}))
    AgentsAlreadyRunningAssessmentException.type = Types::AgentsAlreadyRunningAssessmentException
    AssessmentRulesPackageArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AssessmentRun.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    AssessmentRun.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AssessmentRun.add_member(:assessment_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTemplateArn', traits: {"smithy.api#required" => {}}))
    AssessmentRun.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunState, location_name: 'state', traits: {"smithy.api#required" => {}}))
    AssessmentRun.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunDuration, location_name: 'durationInSeconds', traits: {"smithy.api#required" => {}}))
    AssessmentRun.add_member(:rules_package_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRulesPackageArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#required" => {}}))
    AssessmentRun.add_member(:user_attributes_for_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeList, location_name: 'userAttributesForFindings', traits: {"smithy.api#required" => {}}))
    AssessmentRun.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    AssessmentRun.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedAt'))
    AssessmentRun.add_member(:completed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completedAt'))
    AssessmentRun.add_member(:state_changed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'stateChangedAt', traits: {"smithy.api#required" => {}}))
    AssessmentRun.add_member(:data_collected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'dataCollected', traits: {"smithy.api#required" => {}}))
    AssessmentRun.add_member(:state_changes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunStateChangeList, location_name: 'stateChanges', traits: {"smithy.api#required" => {}}))
    AssessmentRun.add_member(:notifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunNotificationList, location_name: 'notifications', traits: {"smithy.api#required" => {}}))
    AssessmentRun.add_member(:finding_counts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunFindingCounts, location_name: 'findingCounts', traits: {"smithy.api#required" => {}}))
    AssessmentRun.type = Types::AssessmentRun
    AssessmentRunAgent.add_member(:agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId, location_name: 'agentId', traits: {"smithy.api#required" => {}}))
    AssessmentRunAgent.add_member(:assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#required" => {}}))
    AssessmentRunAgent.add_member(:agent_health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealth, location_name: 'agentHealth', traits: {"smithy.api#required" => {}}))
    AssessmentRunAgent.add_member(:agent_health_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentHealthCode, location_name: 'agentHealthCode', traits: {"smithy.api#required" => {}}))
    AssessmentRunAgent.add_member(:agent_health_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'agentHealthDetails'))
    AssessmentRunAgent.add_member(:auto_scaling_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroup, location_name: 'autoScalingGroup'))
    AssessmentRunAgent.add_member(:telemetry_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryMetadataList, location_name: 'telemetryMetadata', traits: {"smithy.api#required" => {}}))
    AssessmentRunAgent.type = Types::AssessmentRunAgent
    AssessmentRunAgentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunAgent)
    AssessmentRunFilter.add_member(:name_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamePattern, location_name: 'namePattern'))
    AssessmentRunFilter.add_member(:states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunStateList, location_name: 'states'))
    AssessmentRunFilter.add_member(:duration_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DurationRange, location_name: 'durationRange'))
    AssessmentRunFilter.add_member(:rules_package_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterRulesPackageArnList, location_name: 'rulesPackageArns'))
    AssessmentRunFilter.add_member(:start_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampRange, location_name: 'startTimeRange'))
    AssessmentRunFilter.add_member(:completion_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampRange, location_name: 'completionTimeRange'))
    AssessmentRunFilter.add_member(:state_change_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampRange, location_name: 'stateChangeTimeRange'))
    AssessmentRunFilter.type = Types::AssessmentRunFilter
    AssessmentRunFindingCounts.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity)
    AssessmentRunFindingCounts.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCount)
    AssessmentRunInProgressArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AssessmentRunInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AssessmentRunInProgressException.add_member(:assessment_run_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunInProgressArnList, location_name: 'assessmentRunArns', traits: {"smithy.api#required" => {}}))
    AssessmentRunInProgressException.add_member(:assessment_run_arns_truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'assessmentRunArnsTruncated', traits: {"smithy.api#required" => {}}))
    AssessmentRunInProgressException.add_member(:can_retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#required" => {}}))
    AssessmentRunInProgressException.type = Types::AssessmentRunInProgressException
    AssessmentRunList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRun)
    AssessmentRunNotification.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'date', traits: {"smithy.api#required" => {}}))
    AssessmentRunNotification.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InspectorEvent, location_name: 'event', traits: {"smithy.api#required" => {}}))
    AssessmentRunNotification.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    AssessmentRunNotification.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'error', traits: {"smithy.api#required" => {}}))
    AssessmentRunNotification.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'snsTopicArn'))
    AssessmentRunNotification.add_member(:sns_publish_status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunNotificationSnsStatusCode, location_name: 'snsPublishStatusCode'))
    AssessmentRunNotification.type = Types::AssessmentRunNotification
    AssessmentRunNotificationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunNotification)
    AssessmentRunNotificationSnsStatusCode.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AssessmentRunNotificationSnsStatusCode.add_member(:topic_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOPIC_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "TOPIC_DOES_NOT_EXIST"}))
    AssessmentRunNotificationSnsStatusCode.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    AssessmentRunNotificationSnsStatusCode.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    AssessmentRunState.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    AssessmentRunState.add_member(:start_data_collection_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_DATA_COLLECTION_PENDING', traits: {"smithy.api#enumValue" => "START_DATA_COLLECTION_PENDING"}))
    AssessmentRunState.add_member(:start_data_collection_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_DATA_COLLECTION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "START_DATA_COLLECTION_IN_PROGRESS"}))
    AssessmentRunState.add_member(:collecting_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLLECTING_DATA', traits: {"smithy.api#enumValue" => "COLLECTING_DATA"}))
    AssessmentRunState.add_member(:stop_data_collection_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_DATA_COLLECTION_PENDING', traits: {"smithy.api#enumValue" => "STOP_DATA_COLLECTION_PENDING"}))
    AssessmentRunState.add_member(:data_collected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_COLLECTED', traits: {"smithy.api#enumValue" => "DATA_COLLECTED"}))
    AssessmentRunState.add_member(:start_evaluating_rules_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_EVALUATING_RULES_PENDING', traits: {"smithy.api#enumValue" => "START_EVALUATING_RULES_PENDING"}))
    AssessmentRunState.add_member(:evaluating_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVALUATING_RULES', traits: {"smithy.api#enumValue" => "EVALUATING_RULES"}))
    AssessmentRunState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AssessmentRunState.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    AssessmentRunState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    AssessmentRunState.add_member(:completed_with_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED_WITH_ERRORS', traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ERRORS"}))
    AssessmentRunState.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    AssessmentRunStateChange.add_member(:state_changed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'stateChangedAt', traits: {"smithy.api#required" => {}}))
    AssessmentRunStateChange.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunState, location_name: 'state', traits: {"smithy.api#required" => {}}))
    AssessmentRunStateChange.type = Types::AssessmentRunStateChange
    AssessmentRunStateChangeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunStateChange)
    AssessmentRunStateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunState)
    AssessmentTarget.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    AssessmentTarget.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargetName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AssessmentTarget.add_member(:resource_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceGroupArn'))
    AssessmentTarget.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    AssessmentTarget.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    AssessmentTarget.type = Types::AssessmentTarget
    AssessmentTargetFilter.add_member(:assessment_target_name_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamePattern, location_name: 'assessmentTargetNamePattern'))
    AssessmentTargetFilter.type = Types::AssessmentTargetFilter
    AssessmentTargetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTarget)
    AssessmentTemplate.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplateName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:assessment_target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTargetArn', traits: {"smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunDuration, location_name: 'durationInSeconds', traits: {"smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:rules_package_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplateRulesPackageArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:user_attributes_for_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeList, location_name: 'userAttributesForFindings', traits: {"smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:last_assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'lastAssessmentRunArn'))
    AssessmentTemplate.add_member(:assessment_run_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnCount, location_name: 'assessmentRunCount', traits: {"smithy.api#required" => {}}))
    AssessmentTemplate.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    AssessmentTemplate.type = Types::AssessmentTemplate
    AssessmentTemplateFilter.add_member(:name_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamePattern, location_name: 'namePattern'))
    AssessmentTemplateFilter.add_member(:duration_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DurationRange, location_name: 'durationRange'))
    AssessmentTemplateFilter.add_member(:rules_package_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterRulesPackageArnList, location_name: 'rulesPackageArns'))
    AssessmentTemplateFilter.type = Types::AssessmentTemplateFilter
    AssessmentTemplateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplate)
    AssessmentTemplateRulesPackageArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AssetAttributes.add_member(:schema_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumericVersion, location_name: 'schemaVersion', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AssetAttributes.add_member(:agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId, location_name: 'agentId'))
    AssetAttributes.add_member(:auto_scaling_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroup, location_name: 'autoScalingGroup'))
    AssetAttributes.add_member(:ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'amiId'))
    AssetAttributes.add_member(:hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hostname, location_name: 'hostname'))
    AssetAttributes.add_member(:ipv4_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4AddressList, location_name: 'ipv4Addresses'))
    AssetAttributes.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    AssetAttributes.add_member(:network_interfaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: 'networkInterfaces'))
    AssetAttributes.type = Types::AssetAttributes
    AssetType.add_member(:ec2_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_INSTANCE', traits: {"smithy.api#enumValue" => "ec2-instance"}))
    Attribute.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    Attribute.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: 'value'))
    Attribute.type = Types::Attribute
    AttributeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)
    AutoScalingGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroup)
    BatchDescribeArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    BatchDescribeExclusionsArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    CreateAssessmentTargetRequest.add_member(:assessment_target_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargetName, location_name: 'assessmentTargetName', traits: {"smithy.api#required" => {}}))
    CreateAssessmentTargetRequest.add_member(:resource_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceGroupArn'))
    CreateAssessmentTargetRequest.type = Types::CreateAssessmentTargetRequest
    CreateAssessmentTargetResponse.add_member(:assessment_target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTargetArn', traits: {"smithy.api#required" => {}}))
    CreateAssessmentTargetResponse.type = Types::CreateAssessmentTargetResponse
    CreateAssessmentTemplateRequest.add_member(:assessment_target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTargetArn', traits: {"smithy.api#required" => {}}))
    CreateAssessmentTemplateRequest.add_member(:assessment_template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplateName, location_name: 'assessmentTemplateName', traits: {"smithy.api#required" => {}}))
    CreateAssessmentTemplateRequest.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunDuration, location_name: 'durationInSeconds', traits: {"smithy.api#required" => {}}))
    CreateAssessmentTemplateRequest.add_member(:rules_package_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplateRulesPackageArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#required" => {}}))
    CreateAssessmentTemplateRequest.add_member(:user_attributes_for_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeList, location_name: 'userAttributesForFindings'))
    CreateAssessmentTemplateRequest.type = Types::CreateAssessmentTemplateRequest
    CreateAssessmentTemplateResponse.add_member(:assessment_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTemplateArn', traits: {"smithy.api#required" => {}}))
    CreateAssessmentTemplateResponse.type = Types::CreateAssessmentTemplateResponse
    CreateExclusionsPreviewRequest.add_member(:assessment_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTemplateArn', traits: {"smithy.api#required" => {}}))
    CreateExclusionsPreviewRequest.type = Types::CreateExclusionsPreviewRequest
    CreateExclusionsPreviewResponse.add_member(:preview_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'previewToken', traits: {"smithy.api#required" => {}}))
    CreateExclusionsPreviewResponse.type = Types::CreateExclusionsPreviewResponse
    CreateResourceGroupRequest.add_member(:resource_group_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupTags, location_name: 'resourceGroupTags', traits: {"smithy.api#required" => {}}))
    CreateResourceGroupRequest.type = Types::CreateResourceGroupRequest
    CreateResourceGroupResponse.add_member(:resource_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceGroupArn', traits: {"smithy.api#required" => {}}))
    CreateResourceGroupResponse.type = Types::CreateResourceGroupResponse
    DeleteAssessmentRunRequest.add_member(:assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#required" => {}}))
    DeleteAssessmentRunRequest.type = Types::DeleteAssessmentRunRequest
    DeleteAssessmentTargetRequest.add_member(:assessment_target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTargetArn', traits: {"smithy.api#required" => {}}))
    DeleteAssessmentTargetRequest.type = Types::DeleteAssessmentTargetRequest
    DeleteAssessmentTemplateRequest.add_member(:assessment_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTemplateArn', traits: {"smithy.api#required" => {}}))
    DeleteAssessmentTemplateRequest.type = Types::DeleteAssessmentTemplateRequest
    DescribeAssessmentRunsRequest.add_member(:assessment_run_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeArnList, location_name: 'assessmentRunArns', traits: {"smithy.api#required" => {}}))
    DescribeAssessmentRunsRequest.type = Types::DescribeAssessmentRunsRequest
    DescribeAssessmentRunsResponse.add_member(:assessment_runs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunList, location_name: 'assessmentRuns', traits: {"smithy.api#required" => {}}))
    DescribeAssessmentRunsResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#required" => {}}))
    DescribeAssessmentRunsResponse.type = Types::DescribeAssessmentRunsResponse
    DescribeAssessmentTargetsRequest.add_member(:assessment_target_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeArnList, location_name: 'assessmentTargetArns', traits: {"smithy.api#required" => {}}))
    DescribeAssessmentTargetsRequest.type = Types::DescribeAssessmentTargetsRequest
    DescribeAssessmentTargetsResponse.add_member(:assessment_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargetList, location_name: 'assessmentTargets', traits: {"smithy.api#required" => {}}))
    DescribeAssessmentTargetsResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#required" => {}}))
    DescribeAssessmentTargetsResponse.type = Types::DescribeAssessmentTargetsResponse
    DescribeAssessmentTemplatesRequest.add_member(:assessment_template_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeArnList, location_name: 'assessmentTemplateArns', traits: {"smithy.api#required" => {}}))
    DescribeAssessmentTemplatesRequest.type = Types::DescribeAssessmentTemplatesRequest
    DescribeAssessmentTemplatesResponse.add_member(:assessment_templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplateList, location_name: 'assessmentTemplates', traits: {"smithy.api#required" => {}}))
    DescribeAssessmentTemplatesResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#required" => {}}))
    DescribeAssessmentTemplatesResponse.type = Types::DescribeAssessmentTemplatesResponse
    DescribeCrossAccountAccessRoleResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    DescribeCrossAccountAccessRoleResponse.add_member(:valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'valid', traits: {"smithy.api#required" => {}}))
    DescribeCrossAccountAccessRoleResponse.add_member(:registered_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'registeredAt', traits: {"smithy.api#required" => {}}))
    DescribeCrossAccountAccessRoleResponse.type = Types::DescribeCrossAccountAccessRoleResponse
    DescribeExclusionsRequest.add_member(:exclusion_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeExclusionsArnList, location_name: 'exclusionArns', traits: {"smithy.api#required" => {}}))
    DescribeExclusionsRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale'))
    DescribeExclusionsRequest.type = Types::DescribeExclusionsRequest
    DescribeExclusionsResponse.add_member(:exclusions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExclusionMap, location_name: 'exclusions', traits: {"smithy.api#required" => {}}))
    DescribeExclusionsResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#required" => {}}))
    DescribeExclusionsResponse.type = Types::DescribeExclusionsResponse
    DescribeFindingsRequest.add_member(:finding_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeArnList, location_name: 'findingArns', traits: {"smithy.api#required" => {}}))
    DescribeFindingsRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale'))
    DescribeFindingsRequest.type = Types::DescribeFindingsRequest
    DescribeFindingsResponse.add_member(:findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingList, location_name: 'findings', traits: {"smithy.api#required" => {}}))
    DescribeFindingsResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#required" => {}}))
    DescribeFindingsResponse.type = Types::DescribeFindingsResponse
    DescribeResourceGroupsRequest.add_member(:resource_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeArnList, location_name: 'resourceGroupArns', traits: {"smithy.api#required" => {}}))
    DescribeResourceGroupsRequest.type = Types::DescribeResourceGroupsRequest
    DescribeResourceGroupsResponse.add_member(:resource_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupList, location_name: 'resourceGroups', traits: {"smithy.api#required" => {}}))
    DescribeResourceGroupsResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#required" => {}}))
    DescribeResourceGroupsResponse.type = Types::DescribeResourceGroupsResponse
    DescribeRulesPackagesRequest.add_member(:rules_package_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#required" => {}}))
    DescribeRulesPackagesRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale'))
    DescribeRulesPackagesRequest.type = Types::DescribeRulesPackagesRequest
    DescribeRulesPackagesResponse.add_member(:rules_packages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RulesPackageList, location_name: 'rulesPackages', traits: {"smithy.api#required" => {}}))
    DescribeRulesPackagesResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#required" => {}}))
    DescribeRulesPackagesResponse.type = Types::DescribeRulesPackagesResponse
    DurationRange.add_member(:min_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunDuration, location_name: 'minSeconds'))
    DurationRange.add_member(:max_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunDuration, location_name: 'maxSeconds'))
    DurationRange.type = Types::DurationRange
    EventSubscription.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InspectorEvent, location_name: 'event', traits: {"smithy.api#required" => {}}))
    EventSubscription.add_member(:subscribed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'subscribedAt', traits: {"smithy.api#required" => {}}))
    EventSubscription.type = Types::EventSubscription
    EventSubscriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription)
    Exclusion.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Exclusion.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'title', traits: {"smithy.api#required" => {}}))
    Exclusion.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'description', traits: {"smithy.api#required" => {}}))
    Exclusion.add_member(:recommendation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'recommendation', traits: {"smithy.api#required" => {}}))
    Exclusion.add_member(:scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeList, location_name: 'scopes', traits: {"smithy.api#required" => {}}))
    Exclusion.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'attributes'))
    Exclusion.type = Types::Exclusion
    ExclusionMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    ExclusionMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Exclusion)
    ExclusionPreview.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'title', traits: {"smithy.api#required" => {}}))
    ExclusionPreview.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'description', traits: {"smithy.api#required" => {}}))
    ExclusionPreview.add_member(:recommendation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'recommendation', traits: {"smithy.api#required" => {}}))
    ExclusionPreview.add_member(:scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeList, location_name: 'scopes', traits: {"smithy.api#required" => {}}))
    ExclusionPreview.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'attributes'))
    ExclusionPreview.type = Types::ExclusionPreview
    ExclusionPreviewList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExclusionPreview)
    FailedItemDetails.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItemErrorCode, location_name: 'failureCode', traits: {"smithy.api#required" => {}}))
    FailedItemDetails.add_member(:retryable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'retryable', traits: {"smithy.api#required" => {}}))
    FailedItemDetails.type = Types::FailedItemDetails
    FailedItemErrorCode.add_member(:invalid_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ARN', traits: {"smithy.api#enumValue" => "INVALID_ARN"}))
    FailedItemErrorCode.add_member(:duplicate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE_ARN', traits: {"smithy.api#enumValue" => "DUPLICATE_ARN"}))
    FailedItemErrorCode.add_member(:item_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ITEM_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "ITEM_DOES_NOT_EXIST"}))
    FailedItemErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    FailedItemErrorCode.add_member(:limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED"}))
    FailedItemErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    FailedItems.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    FailedItems.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItemDetails)
    FilterRulesPackageArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    Finding.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Finding.add_member(:schema_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumericVersion, location_name: 'schemaVersion', traits: {"smithy.api#default" => 0}))
    Finding.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'service'))
    Finding.add_member(:service_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InspectorServiceAttributes, location_name: 'serviceAttributes'))
    Finding.add_member(:asset_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetType, location_name: 'assetType'))
    Finding.add_member(:asset_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssetAttributes, location_name: 'assetAttributes'))
    Finding.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id'))
    Finding.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'title'))
    Finding.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'description'))
    Finding.add_member(:recommendation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'recommendation'))
    Finding.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity'))
    Finding.add_member(:numeric_severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumericSeverity, location_name: 'numericSeverity', traits: {"smithy.api#default" => 0}))
    Finding.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IocConfidence, location_name: 'confidence', traits: {"smithy.api#default" => 0}))
    Finding.add_member(:indicator_of_compromise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'indicatorOfCompromise'))
    Finding.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'attributes', traits: {"smithy.api#required" => {}}))
    Finding.add_member(:user_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeList, location_name: 'userAttributes', traits: {"smithy.api#required" => {}}))
    Finding.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    Finding.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    Finding.type = Types::Finding
    FindingFilter.add_member(:agent_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentIdList, location_name: 'agentIds'))
    FindingFilter.add_member(:auto_scaling_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: 'autoScalingGroups'))
    FindingFilter.add_member(:rule_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleNameList, location_name: 'ruleNames'))
    FindingFilter.add_member(:severities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityList, location_name: 'severities'))
    FindingFilter.add_member(:rules_package_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterRulesPackageArnList, location_name: 'rulesPackageArns'))
    FindingFilter.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'attributes'))
    FindingFilter.add_member(:user_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'userAttributes'))
    FindingFilter.add_member(:creation_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampRange, location_name: 'creationTimeRange'))
    FindingFilter.type = Types::FindingFilter
    FindingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Finding)
    GetAssessmentReportRequest.add_member(:assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#required" => {}}))
    GetAssessmentReportRequest.add_member(:report_file_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFileFormat, location_name: 'reportFileFormat', traits: {"smithy.api#required" => {}}))
    GetAssessmentReportRequest.add_member(:report_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportType, location_name: 'reportType', traits: {"smithy.api#required" => {}}))
    GetAssessmentReportRequest.type = Types::GetAssessmentReportRequest
    GetAssessmentReportResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetAssessmentReportResponse.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'url'))
    GetAssessmentReportResponse.type = Types::GetAssessmentReportResponse
    GetExclusionsPreviewRequest.add_member(:assessment_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTemplateArn', traits: {"smithy.api#required" => {}}))
    GetExclusionsPreviewRequest.add_member(:preview_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'previewToken', traits: {"smithy.api#required" => {}}))
    GetExclusionsPreviewRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    GetExclusionsPreviewRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults'))
    GetExclusionsPreviewRequest.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale'))
    GetExclusionsPreviewRequest.type = Types::GetExclusionsPreviewRequest
    GetExclusionsPreviewResponse.add_member(:preview_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewStatus, location_name: 'previewStatus', traits: {"smithy.api#required" => {}}))
    GetExclusionsPreviewResponse.add_member(:exclusion_previews, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExclusionPreviewList, location_name: 'exclusionPreviews'))
    GetExclusionsPreviewResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    GetExclusionsPreviewResponse.type = Types::GetExclusionsPreviewResponse
    GetTelemetryMetadataRequest.add_member(:assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#required" => {}}))
    GetTelemetryMetadataRequest.type = Types::GetTelemetryMetadataRequest
    GetTelemetryMetadataResponse.add_member(:telemetry_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryMetadataList, location_name: 'telemetryMetadata', traits: {"smithy.api#required" => {}}))
    GetTelemetryMetadataResponse.type = Types::GetTelemetryMetadataResponse
    InspectorEvent.add_member(:assessment_run_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_RUN_STARTED', traits: {"smithy.api#enumValue" => "ASSESSMENT_RUN_STARTED"}))
    InspectorEvent.add_member(:assessment_run_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_RUN_COMPLETED', traits: {"smithy.api#enumValue" => "ASSESSMENT_RUN_COMPLETED"}))
    InspectorEvent.add_member(:assessment_run_state_changed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_RUN_STATE_CHANGED', traits: {"smithy.api#enumValue" => "ASSESSMENT_RUN_STATE_CHANGED"}))
    InspectorEvent.add_member(:finding_reported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINDING_REPORTED', traits: {"smithy.api#enumValue" => "FINDING_REPORTED"}))
    InspectorEvent.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    InspectorServiceAttributes.add_member(:schema_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumericVersion, location_name: 'schemaVersion', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    InspectorServiceAttributes.add_member(:assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn'))
    InspectorServiceAttributes.add_member(:rules_package_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'rulesPackageArn'))
    InspectorServiceAttributes.type = Types::InspectorServiceAttributes
    InternalException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalException.add_member(:can_retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#required" => {}}))
    InternalException.type = Types::InternalException
    InvalidCrossAccountRoleErrorCode.add_member(:role_does_not_exist_or_invalid_trust_relationship, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP', traits: {"smithy.api#enumValue" => "ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP"}))
    InvalidCrossAccountRoleErrorCode.add_member(:role_does_not_have_correct_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLE_DOES_NOT_HAVE_CORRECT_POLICY', traits: {"smithy.api#enumValue" => "ROLE_DOES_NOT_HAVE_CORRECT_POLICY"}))
    InvalidCrossAccountRoleException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidCrossAccountRoleException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleErrorCode, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    InvalidCrossAccountRoleException.add_member(:can_retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#required" => {}}))
    InvalidCrossAccountRoleException.type = Types::InvalidCrossAccountRoleException
    InvalidInputErrorCode.add_member(:invalid_assessment_target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TARGET_ARN', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TARGET_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TEMPLATE_ARN', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TEMPLATE_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_RUN_ARN', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_RUN_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_finding_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_FINDING_ARN', traits: {"smithy.api#enumValue" => "INVALID_FINDING_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_resource_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RESOURCE_GROUP_ARN', traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_GROUP_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_rules_package_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RULES_PACKAGE_ARN', traits: {"smithy.api#enumValue" => "INVALID_RULES_PACKAGE_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RESOURCE_ARN', traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SNS_TOPIC_ARN', traits: {"smithy.api#enumValue" => "INVALID_SNS_TOPIC_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_IAM_ROLE_ARN', traits: {"smithy.api#enumValue" => "INVALID_IAM_ROLE_ARN"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_target_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TARGET_NAME', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TARGET_NAME"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_target_name_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TARGET_NAME_PATTERN', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TARGET_NAME_PATTERN"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TEMPLATE_NAME', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TEMPLATE_NAME"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_template_name_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_template_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TEMPLATE_DURATION', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TEMPLATE_DURATION"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_template_duration_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_run_duration_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_RUN_DURATION_RANGE', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_RUN_DURATION_RANGE"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_run_start_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_RUN_START_TIME_RANGE', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_RUN_START_TIME_RANGE"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_run_completion_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_run_state_change_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE"}))
    InvalidInputErrorCode.add_member(:invalid_assessment_run_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ASSESSMENT_RUN_STATE', traits: {"smithy.api#enumValue" => "INVALID_ASSESSMENT_RUN_STATE"}))
    InvalidInputErrorCode.add_member(:invalid_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TAG', traits: {"smithy.api#enumValue" => "INVALID_TAG"}))
    InvalidInputErrorCode.add_member(:invalid_tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TAG_KEY', traits: {"smithy.api#enumValue" => "INVALID_TAG_KEY"}))
    InvalidInputErrorCode.add_member(:invalid_tag_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_TAG_VALUE', traits: {"smithy.api#enumValue" => "INVALID_TAG_VALUE"}))
    InvalidInputErrorCode.add_member(:invalid_resource_group_tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RESOURCE_GROUP_TAG_KEY', traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_GROUP_TAG_KEY"}))
    InvalidInputErrorCode.add_member(:invalid_resource_group_tag_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RESOURCE_GROUP_TAG_VALUE', traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_GROUP_TAG_VALUE"}))
    InvalidInputErrorCode.add_member(:invalid_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ATTRIBUTE', traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE"}))
    InvalidInputErrorCode.add_member(:invalid_user_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_USER_ATTRIBUTE', traits: {"smithy.api#enumValue" => "INVALID_USER_ATTRIBUTE"}))
    InvalidInputErrorCode.add_member(:invalid_user_attribute_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_USER_ATTRIBUTE_KEY', traits: {"smithy.api#enumValue" => "INVALID_USER_ATTRIBUTE_KEY"}))
    InvalidInputErrorCode.add_member(:invalid_user_attribute_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_USER_ATTRIBUTE_VALUE', traits: {"smithy.api#enumValue" => "INVALID_USER_ATTRIBUTE_VALUE"}))
    InvalidInputErrorCode.add_member(:invalid_pagination_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PAGINATION_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_PAGINATION_TOKEN"}))
    InvalidInputErrorCode.add_member(:invalid_max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_MAX_RESULTS', traits: {"smithy.api#enumValue" => "INVALID_MAX_RESULTS"}))
    InvalidInputErrorCode.add_member(:invalid_agent_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_AGENT_ID', traits: {"smithy.api#enumValue" => "INVALID_AGENT_ID"}))
    InvalidInputErrorCode.add_member(:invalid_auto_scaling_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_AUTO_SCALING_GROUP', traits: {"smithy.api#enumValue" => "INVALID_AUTO_SCALING_GROUP"}))
    InvalidInputErrorCode.add_member(:invalid_rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RULE_NAME', traits: {"smithy.api#enumValue" => "INVALID_RULE_NAME"}))
    InvalidInputErrorCode.add_member(:invalid_severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SEVERITY', traits: {"smithy.api#enumValue" => "INVALID_SEVERITY"}))
    InvalidInputErrorCode.add_member(:invalid_locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_LOCALE', traits: {"smithy.api#enumValue" => "INVALID_LOCALE"}))
    InvalidInputErrorCode.add_member(:invalid_event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_EVENT', traits: {"smithy.api#enumValue" => "INVALID_EVENT"}))
    InvalidInputErrorCode.add_member(:assessment_target_name_already_taken, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_TARGET_NAME_ALREADY_TAKEN', traits: {"smithy.api#enumValue" => "ASSESSMENT_TARGET_NAME_ALREADY_TAKEN"}))
    InvalidInputErrorCode.add_member(:assessment_template_name_already_taken, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN', traits: {"smithy.api#enumValue" => "ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_assessment_target_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_assessment_template_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_assessment_run_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_finding_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_FINDING_ARNS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_FINDING_ARNS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_resource_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_rules_package_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_RULES_PACKAGE_ARNS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_RULES_PACKAGE_ARNS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_assessment_run_states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_TAGS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_TAGS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_resource_group_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_ATTRIBUTES', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_ATTRIBUTES"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_user_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_USER_ATTRIBUTES', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_USER_ATTRIBUTES"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_agent_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_AGENT_IDS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_AGENT_IDS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_auto_scaling_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_AUTO_SCALING_GROUPS', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_AUTO_SCALING_GROUPS"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_rule_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_RULE_NAMES', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_RULE_NAMES"}))
    InvalidInputErrorCode.add_member(:invalid_number_of_severities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NUMBER_OF_SEVERITIES', traits: {"smithy.api#enumValue" => "INVALID_NUMBER_OF_SEVERITIES"}))
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidInputException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputErrorCode, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    InvalidInputException.add_member(:can_retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#required" => {}}))
    InvalidInputException.type = Types::InvalidInputException
    Ipv4AddressList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv4Address)
    Ipv6Addresses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text)
    LimitExceededErrorCode.add_member(:assessment_target_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_TARGET_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ASSESSMENT_TARGET_LIMIT_EXCEEDED"}))
    LimitExceededErrorCode.add_member(:assessment_template_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED"}))
    LimitExceededErrorCode.add_member(:assessment_run_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_RUN_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ASSESSMENT_RUN_LIMIT_EXCEEDED"}))
    LimitExceededErrorCode.add_member(:resource_group_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_GROUP_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "RESOURCE_GROUP_LIMIT_EXCEEDED"}))
    LimitExceededErrorCode.add_member(:event_subscription_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT_SUBSCRIPTION_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "EVENT_SUBSCRIPTION_LIMIT_EXCEEDED"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    LimitExceededException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededErrorCode, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    LimitExceededException.add_member(:can_retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#required" => {}}))
    LimitExceededException.type = Types::LimitExceededException
    ListAssessmentRunAgentsRequest.add_member(:assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#required" => {}}))
    ListAssessmentRunAgentsRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentFilter, location_name: 'filter'))
    ListAssessmentRunAgentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListAssessmentRunAgentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults'))
    ListAssessmentRunAgentsRequest.type = Types::ListAssessmentRunAgentsRequest
    ListAssessmentRunAgentsResponse.add_member(:assessment_run_agents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunAgentList, location_name: 'assessmentRunAgents', traits: {"smithy.api#required" => {}}))
    ListAssessmentRunAgentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListAssessmentRunAgentsResponse.type = Types::ListAssessmentRunAgentsResponse
    ListAssessmentRunsRequest.add_member(:assessment_template_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListParentArnList, location_name: 'assessmentTemplateArns'))
    ListAssessmentRunsRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunFilter, location_name: 'filter'))
    ListAssessmentRunsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListAssessmentRunsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults'))
    ListAssessmentRunsRequest.type = Types::ListAssessmentRunsRequest
    ListAssessmentRunsResponse.add_member(:assessment_run_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReturnedArnList, location_name: 'assessmentRunArns', traits: {"smithy.api#required" => {}}))
    ListAssessmentRunsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListAssessmentRunsResponse.type = Types::ListAssessmentRunsResponse
    ListAssessmentTargetsRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargetFilter, location_name: 'filter'))
    ListAssessmentTargetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListAssessmentTargetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults'))
    ListAssessmentTargetsRequest.type = Types::ListAssessmentTargetsRequest
    ListAssessmentTargetsResponse.add_member(:assessment_target_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReturnedArnList, location_name: 'assessmentTargetArns', traits: {"smithy.api#required" => {}}))
    ListAssessmentTargetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListAssessmentTargetsResponse.type = Types::ListAssessmentTargetsResponse
    ListAssessmentTemplatesRequest.add_member(:assessment_target_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListParentArnList, location_name: 'assessmentTargetArns'))
    ListAssessmentTemplatesRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTemplateFilter, location_name: 'filter'))
    ListAssessmentTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListAssessmentTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults'))
    ListAssessmentTemplatesRequest.type = Types::ListAssessmentTemplatesRequest
    ListAssessmentTemplatesResponse.add_member(:assessment_template_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReturnedArnList, location_name: 'assessmentTemplateArns', traits: {"smithy.api#required" => {}}))
    ListAssessmentTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListAssessmentTemplatesResponse.type = Types::ListAssessmentTemplatesResponse
    ListEventSubscriptionsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn'))
    ListEventSubscriptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListEventSubscriptionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventSubscriptionsMaxResults, location_name: 'maxResults'))
    ListEventSubscriptionsRequest.type = Types::ListEventSubscriptionsRequest
    ListEventSubscriptionsResponse.add_member(:subscriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionList, location_name: 'subscriptions', traits: {"smithy.api#required" => {}}))
    ListEventSubscriptionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListEventSubscriptionsResponse.type = Types::ListEventSubscriptionsResponse
    ListExclusionsRequest.add_member(:assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#required" => {}}))
    ListExclusionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListExclusionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults'))
    ListExclusionsRequest.type = Types::ListExclusionsRequest
    ListExclusionsResponse.add_member(:exclusion_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReturnedArnList, location_name: 'exclusionArns', traits: {"smithy.api#required" => {}}))
    ListExclusionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListExclusionsResponse.type = Types::ListExclusionsResponse
    ListFindingsRequest.add_member(:assessment_run_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListParentArnList, location_name: 'assessmentRunArns'))
    ListFindingsRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingFilter, location_name: 'filter'))
    ListFindingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListFindingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults'))
    ListFindingsRequest.type = Types::ListFindingsRequest
    ListFindingsResponse.add_member(:finding_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReturnedArnList, location_name: 'findingArns', traits: {"smithy.api#required" => {}}))
    ListFindingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListFindingsResponse.type = Types::ListFindingsResponse
    ListParentArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    ListReturnedArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    ListRulesPackagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListRulesPackagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMaxResults, location_name: 'maxResults'))
    ListRulesPackagesRequest.type = Types::ListRulesPackagesRequest
    ListRulesPackagesResponse.add_member(:rules_package_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReturnedArnList, location_name: 'rulesPackageArns', traits: {"smithy.api#required" => {}}))
    ListRulesPackagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListRulesPackagesResponse.type = Types::ListRulesPackagesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Locale.add_member(:en_us, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_US', traits: {"smithy.api#enumValue" => "EN_US"}))
    NetworkInterface.add_member(:network_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'networkInterfaceId'))
    NetworkInterface.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'subnetId'))
    NetworkInterface.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'vpcId'))
    NetworkInterface.add_member(:private_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'privateDnsName'))
    NetworkInterface.add_member(:private_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'privateIpAddress'))
    NetworkInterface.add_member(:private_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateIpAddresses, location_name: 'privateIpAddresses'))
    NetworkInterface.add_member(:public_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'publicDnsName'))
    NetworkInterface.add_member(:public_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'publicIp'))
    NetworkInterface.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Addresses, location_name: 'ipv6Addresses'))
    NetworkInterface.add_member(:security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'securityGroups'))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaces.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface)
    NoSuchEntityErrorCode.add_member(:assessment_target_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_TARGET_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "ASSESSMENT_TARGET_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:assessment_template_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_TEMPLATE_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "ASSESSMENT_TEMPLATE_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:assessment_run_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSESSMENT_RUN_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "ASSESSMENT_RUN_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:finding_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINDING_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "FINDING_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:resource_group_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_GROUP_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "RESOURCE_GROUP_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:rules_package_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RULES_PACKAGE_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "RULES_PACKAGE_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:sns_topic_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS_TOPIC_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "SNS_TOPIC_DOES_NOT_EXIST"}))
    NoSuchEntityErrorCode.add_member(:iam_role_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_ROLE_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "IAM_ROLE_DOES_NOT_EXIST"}))
    NoSuchEntityException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    NoSuchEntityException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityErrorCode, location_name: 'errorCode', traits: {"smithy.api#required" => {}}))
    NoSuchEntityException.add_member(:can_retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#required" => {}}))
    NoSuchEntityException.type = Types::NoSuchEntityException
    PreviewAgentsRequest.add_member(:preview_agents_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'previewAgentsArn', traits: {"smithy.api#required" => {}}))
    PreviewAgentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    PreviewAgentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewAgentsMaxResults, location_name: 'maxResults'))
    PreviewAgentsRequest.type = Types::PreviewAgentsRequest
    PreviewAgentsResponse.add_member(:agent_previews, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentPreviewList, location_name: 'agentPreviews', traits: {"smithy.api#required" => {}}))
    PreviewAgentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    PreviewAgentsResponse.type = Types::PreviewAgentsResponse
    PreviewGenerationInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    PreviewGenerationInProgressException.type = Types::PreviewGenerationInProgressException
    PreviewStatus.add_member(:work_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORK_IN_PROGRESS', traits: {"smithy.api#enumValue" => "WORK_IN_PROGRESS"}))
    PreviewStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    PrivateIp.add_member(:private_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'privateDnsName'))
    PrivateIp.add_member(:private_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'privateIpAddress'))
    PrivateIp.type = Types::PrivateIp
    PrivateIpAddresses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateIp)
    RegisterCrossAccountAccessRoleRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    RegisterCrossAccountAccessRoleRequest.type = Types::RegisterCrossAccountAccessRoleRequest
    RemoveAttributesFromFindingsRequest.add_member(:finding_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddRemoveAttributesFindingArnList, location_name: 'findingArns', traits: {"smithy.api#required" => {}}))
    RemoveAttributesFromFindingsRequest.add_member(:attribute_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeKeyList, location_name: 'attributeKeys', traits: {"smithy.api#required" => {}}))
    RemoveAttributesFromFindingsRequest.type = Types::RemoveAttributesFromFindingsRequest
    RemoveAttributesFromFindingsResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItems, location_name: 'failedItems', traits: {"smithy.api#required" => {}}))
    RemoveAttributesFromFindingsResponse.type = Types::RemoveAttributesFromFindingsResponse
    ReportFileFormat.add_member(:html, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTML', traits: {"smithy.api#enumValue" => "HTML"}))
    ReportFileFormat.add_member(:pdf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PDF', traits: {"smithy.api#enumValue" => "PDF"}))
    ReportStatus.add_member(:work_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORK_IN_PROGRESS', traits: {"smithy.api#enumValue" => "WORK_IN_PROGRESS"}))
    ReportStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ReportStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReportType.add_member(:finding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINDING', traits: {"smithy.api#enumValue" => "FINDING"}))
    ReportType.add_member(:full, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL', traits: {"smithy.api#enumValue" => "FULL"}))
    ResourceGroup.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ResourceGroup.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupTags, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    ResourceGroup.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ResourceGroup.type = Types::ResourceGroup
    ResourceGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroup)
    ResourceGroupTag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    ResourceGroupTag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value'))
    ResourceGroupTag.type = Types::ResourceGroupTag
    ResourceGroupTags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceGroupTag)
    RuleNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName)
    RulesPackage.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    RulesPackage.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RulesPackageName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    RulesPackage.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#required" => {}}))
    RulesPackage.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderName, location_name: 'provider', traits: {"smithy.api#required" => {}}))
    RulesPackage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'description'))
    RulesPackage.type = Types::RulesPackage
    RulesPackageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RulesPackage)
    Scope.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeType, location_name: 'key'))
    Scope.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeValue, location_name: 'value'))
    Scope.type = Types::Scope
    ScopeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scope)
    ScopeType.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_ID', traits: {"smithy.api#enumValue" => "INSTANCE_ID"}))
    ScopeType.add_member(:rules_package_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RULES_PACKAGE_ARN', traits: {"smithy.api#enumValue" => "RULES_PACKAGE_ARN"}))
    SecurityGroup.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'groupName'))
    SecurityGroup.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'groupId'))
    SecurityGroup.type = Types::SecurityGroup
    SecurityGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroup)
    ServiceTemporarilyUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceTemporarilyUnavailableException.add_member(:can_retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#required" => {}}))
    ServiceTemporarilyUnavailableException.type = Types::ServiceTemporarilyUnavailableException
    SetTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    SetTagsForResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    SetTagsForResourceRequest.type = Types::SetTagsForResourceRequest
    Severity.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "Low"}))
    Severity.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "Medium"}))
    Severity.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "High"}))
    Severity.add_member(:informational, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFORMATIONAL', traits: {"smithy.api#enumValue" => "Informational"}))
    Severity.add_member(:undefined, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDEFINED', traits: {"smithy.api#enumValue" => "Undefined"}))
    SeverityList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity)
    StartAssessmentRunRequest.add_member(:assessment_template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTemplateArn', traits: {"smithy.api#required" => {}}))
    StartAssessmentRunRequest.add_member(:assessment_run_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunName, location_name: 'assessmentRunName'))
    StartAssessmentRunRequest.type = Types::StartAssessmentRunRequest
    StartAssessmentRunResponse.add_member(:assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#required" => {}}))
    StartAssessmentRunResponse.type = Types::StartAssessmentRunResponse
    StopAction.add_member(:start_evaluation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_EVALUATION', traits: {"smithy.api#enumValue" => "START_EVALUATION"}))
    StopAction.add_member(:skip_evaluation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIP_EVALUATION', traits: {"smithy.api#enumValue" => "SKIP_EVALUATION"}))
    StopAssessmentRunRequest.add_member(:assessment_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentRunArn', traits: {"smithy.api#required" => {}}))
    StopAssessmentRunRequest.add_member(:stop_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopAction, location_name: 'stopAction'))
    StopAssessmentRunRequest.type = Types::StopAssessmentRunRequest
    SubscribeToEventRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    SubscribeToEventRequest.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InspectorEvent, location_name: 'event', traits: {"smithy.api#required" => {}}))
    SubscribeToEventRequest.add_member(:topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'topicArn', traits: {"smithy.api#required" => {}}))
    SubscribeToEventRequest.type = Types::SubscribeToEventRequest
    Subscription.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    Subscription.add_member(:topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'topicArn', traits: {"smithy.api#required" => {}}))
    Subscription.add_member(:event_subscriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionList, location_name: 'eventSubscriptions', traits: {"smithy.api#required" => {}}))
    Subscription.type = Types::Subscription
    SubscriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscription)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value'))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TelemetryMetadata.add_member(:message_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'messageType', traits: {"smithy.api#required" => {}}))
    TelemetryMetadata.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#required" => {}}))
    TelemetryMetadata.add_member(:data_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'dataSize'))
    TelemetryMetadata.type = Types::TelemetryMetadata
    TelemetryMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TelemetryMetadata)
    TimestampRange.add_member(:begin_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'beginDate'))
    TimestampRange.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endDate'))
    TimestampRange.type = Types::TimestampRange
    UnsubscribeFromEventRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    UnsubscribeFromEventRequest.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InspectorEvent, location_name: 'event', traits: {"smithy.api#required" => {}}))
    UnsubscribeFromEventRequest.add_member(:topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'topicArn', traits: {"smithy.api#required" => {}}))
    UnsubscribeFromEventRequest.type = Types::UnsubscribeFromEventRequest
    UnsupportedFeatureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    UnsupportedFeatureException.add_member(:can_retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'canRetry', traits: {"smithy.api#required" => {}}))
    UnsupportedFeatureException.type = Types::UnsupportedFeatureException
    UpdateAssessmentTargetRequest.add_member(:assessment_target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'assessmentTargetArn', traits: {"smithy.api#required" => {}}))
    UpdateAssessmentTargetRequest.add_member(:assessment_target_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargetName, location_name: 'assessmentTargetName', traits: {"smithy.api#required" => {}}))
    UpdateAssessmentTargetRequest.add_member(:resource_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceGroupArn'))
    UpdateAssessmentTargetRequest.type = Types::UpdateAssessmentTargetRequest
    UserAttributeKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeKey)
    UserAttributeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attribute)

    InspectorService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.inspector#InspectorService"
      service.name = "InspectorService"
      service.version = "2016-02-16"
      service.traits = {"aws.api#service" => {"sdkId" => "Inspector", "arnNamespace" => "inspector", "cloudFormationName" => "Inspector", "cloudTrailEventSource" => "inspector.amazonaws.com", "endpointPrefix" => "inspector"}, "aws.auth#sigv4" => {"name" => "inspector"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Inspector"}
      service.add_operation(:add_attributes_to_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#AddAttributesToFindings"
        operation.name = "AddAttributesToFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddAttributesToFindingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddAttributesToFindingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_assessment_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#CreateAssessmentTarget"
        operation.name = "CreateAssessmentTarget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentTargetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentTargetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_assessment_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#CreateAssessmentTemplate"
        operation.name = "CreateAssessmentTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAssessmentTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_exclusions_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#CreateExclusionsPreview"
        operation.name = "CreateExclusionsPreview"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExclusionsPreviewRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExclusionsPreviewResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewGenerationInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_resource_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#CreateResourceGroup"
        operation.name = "CreateResourceGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_assessment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DeleteAssessmentRun"
        operation.name = "DeleteAssessmentRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentRunRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_assessment_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DeleteAssessmentTarget"
        operation.name = "DeleteAssessmentTarget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentTargetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_assessment_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DeleteAssessmentTemplate"
        operation.name = "DeleteAssessmentTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssessmentTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:describe_assessment_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeAssessmentRuns"
        operation.name = "DescribeAssessmentRuns"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssessmentRunsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssessmentRunsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:describe_assessment_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeAssessmentTargets"
        operation.name = "DescribeAssessmentTargets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssessmentTargetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssessmentTargetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:describe_assessment_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeAssessmentTemplates"
        operation.name = "DescribeAssessmentTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssessmentTemplatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAssessmentTemplatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:describe_cross_account_access_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeCrossAccountAccessRole"
        operation.name = "DescribeCrossAccountAccessRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCrossAccountAccessRoleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:describe_exclusions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeExclusions"
        operation.name = "DescribeExclusions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExclusionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExclusionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:describe_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeFindings"
        operation.name = "DescribeFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFindingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFindingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:describe_resource_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeResourceGroups"
        operation.name = "DescribeResourceGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourceGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResourceGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:describe_rules_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#DescribeRulesPackages"
        operation.name = "DescribeRulesPackages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRulesPackagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRulesPackagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:get_assessment_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#GetAssessmentReport"
        operation.name = "GetAssessmentReport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentReportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentReportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentRunInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
        operation.traits = {}
      end)
      service.add_operation(:get_exclusions_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#GetExclusionsPreview"
        operation.name = "GetExclusionsPreview"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExclusionsPreviewRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetExclusionsPreviewResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetExclusionsPreview.new
      end)
      service.add_operation(:get_telemetry_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#GetTelemetryMetadata"
        operation.name = "GetTelemetryMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTelemetryMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTelemetryMetadataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
      end)
      service.add_operation(:list_assessment_run_agents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListAssessmentRunAgents"
        operation.name = "ListAssessmentRunAgents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentRunAgentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentRunAgentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAssessmentRunAgents.new
      end)
      service.add_operation(:list_assessment_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListAssessmentRuns"
        operation.name = "ListAssessmentRuns"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentRunsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentRunsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAssessmentRuns.new
      end)
      service.add_operation(:list_assessment_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListAssessmentTargets"
        operation.name = "ListAssessmentTargets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentTargetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentTargetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAssessmentTargets.new
      end)
      service.add_operation(:list_assessment_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListAssessmentTemplates"
        operation.name = "ListAssessmentTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentTemplatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssessmentTemplatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAssessmentTemplates.new
      end)
      service.add_operation(:list_event_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListEventSubscriptions"
        operation.name = "ListEventSubscriptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventSubscriptionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventSubscriptionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEventSubscriptions.new
      end)
      service.add_operation(:list_exclusions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListExclusions"
        operation.name = "ListExclusions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExclusionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExclusionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListExclusions.new
      end)
      service.add_operation(:list_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListFindings"
        operation.name = "ListFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFindings.new
      end)
      service.add_operation(:list_rules_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListRulesPackages"
        operation.name = "ListRulesPackages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesPackagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRulesPackagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRulesPackages.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
      end)
      service.add_operation(:preview_agents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#PreviewAgents"
        operation.name = "PreviewAgents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewAgentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreviewAgentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.traits = {}
        operation[:paginator] = Paginators::PreviewAgents.new
      end)
      service.add_operation(:register_cross_account_access_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#RegisterCrossAccountAccessRole"
        operation.name = "RegisterCrossAccountAccessRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterCrossAccountAccessRoleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:remove_attributes_from_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#RemoveAttributesFromFindings"
        operation.name = "RemoveAttributesFromFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAttributesFromFindingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAttributesFromFindingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:set_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#SetTagsForResource"
        operation.name = "SetTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:start_assessment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#StartAssessmentRun"
        operation.name = "StartAssessmentRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAssessmentRunRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAssessmentRunResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentsAlreadyRunningAssessmentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCrossAccountRoleException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:stop_assessment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#StopAssessmentRun"
        operation.name = "StopAssessmentRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopAssessmentRunRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:subscribe_to_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#SubscribeToEvent"
        operation.name = "SubscribeToEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscribeToEventRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:unsubscribe_from_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#UnsubscribeFromEvent"
        operation.name = "UnsubscribeFromEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsubscribeFromEventRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:update_assessment_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.inspector#UpdateAssessmentTarget"
        operation.name = "UpdateAssessmentTarget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssessmentTargetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceTemporarilyUnavailableException)
        operation.traits = {}
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
