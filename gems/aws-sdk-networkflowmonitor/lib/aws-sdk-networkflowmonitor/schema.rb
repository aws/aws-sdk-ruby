# frozen_string_literal: true

# This is generated code!

module Aws::NetworkFlowMonitor
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*$"})
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#AvailabilityZone", name: "AvailabilityZone")
    AwsRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#AwsRegion", name: "AwsRegion")
    Component = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#Component", name: "Component")
    ComponentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#ComponentType", name: "ComponentType")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#CreateMonitorInput", name: "CreateMonitorInput")
    CreateMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#CreateMonitorOutput", name: "CreateMonitorOutput")
    CreateScopeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#CreateScopeInput", name: "CreateScopeInput")
    CreateScopeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#CreateScopeOutput", name: "CreateScopeOutput")
    DeleteMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#DeleteMonitorInput", name: "DeleteMonitorInput")
    DeleteMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#DeleteMonitorOutput", name: "DeleteMonitorOutput")
    DeleteScopeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#DeleteScopeInput", name: "DeleteScopeInput")
    DeleteScopeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#DeleteScopeOutput", name: "DeleteScopeOutput")
    DestinationCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkflowmonitor#DestinationCategory", name: "DestinationCategory")
    GetMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetMonitorInput", name: "GetMonitorInput")
    GetMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetMonitorOutput", name: "GetMonitorOutput")
    GetQueryResultsMonitorTopContributorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetQueryResultsMonitorTopContributorsInput", name: "GetQueryResultsMonitorTopContributorsInput")
    GetQueryResultsMonitorTopContributorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetQueryResultsMonitorTopContributorsOutput", name: "GetQueryResultsMonitorTopContributorsOutput")
    GetQueryResultsWorkloadInsightsTopContributorsDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetQueryResultsWorkloadInsightsTopContributorsDataInput", name: "GetQueryResultsWorkloadInsightsTopContributorsDataInput")
    GetQueryResultsWorkloadInsightsTopContributorsDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetQueryResultsWorkloadInsightsTopContributorsDataOutput", name: "GetQueryResultsWorkloadInsightsTopContributorsDataOutput")
    GetQueryResultsWorkloadInsightsTopContributorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetQueryResultsWorkloadInsightsTopContributorsInput", name: "GetQueryResultsWorkloadInsightsTopContributorsInput")
    GetQueryResultsWorkloadInsightsTopContributorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetQueryResultsWorkloadInsightsTopContributorsOutput", name: "GetQueryResultsWorkloadInsightsTopContributorsOutput")
    GetQueryStatusMonitorTopContributorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetQueryStatusMonitorTopContributorsInput", name: "GetQueryStatusMonitorTopContributorsInput")
    GetQueryStatusMonitorTopContributorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetQueryStatusMonitorTopContributorsOutput", name: "GetQueryStatusMonitorTopContributorsOutput")
    GetQueryStatusWorkloadInsightsTopContributorsDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetQueryStatusWorkloadInsightsTopContributorsDataInput", name: "GetQueryStatusWorkloadInsightsTopContributorsDataInput")
    GetQueryStatusWorkloadInsightsTopContributorsDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetQueryStatusWorkloadInsightsTopContributorsDataOutput", name: "GetQueryStatusWorkloadInsightsTopContributorsDataOutput")
    GetQueryStatusWorkloadInsightsTopContributorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetQueryStatusWorkloadInsightsTopContributorsInput", name: "GetQueryStatusWorkloadInsightsTopContributorsInput")
    GetQueryStatusWorkloadInsightsTopContributorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetQueryStatusWorkloadInsightsTopContributorsOutput", name: "GetQueryStatusWorkloadInsightsTopContributorsOutput")
    GetScopeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetScopeInput", name: "GetScopeInput")
    GetScopeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#GetScopeOutput", name: "GetScopeOutput")
    InstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#InstanceArn", name: "InstanceArn")
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#InstanceId", name: "InstanceId", traits: {"smithy.api#pattern" => "^i-[a-zA-Z0-9]{8,32}$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    Iso8601Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networkflowmonitor#Iso8601Timestamp", name: "Iso8601Timestamp")
    KubernetesMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#KubernetesMetadata", name: "KubernetesMetadata")
    Limit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkflowmonitor#Limit", name: "Limit", traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    ListMonitorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#ListMonitorsInput", name: "ListMonitorsInput")
    ListMonitorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#ListMonitorsOutput", name: "ListMonitorsOutput")
    ListScopesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#ListScopesInput", name: "ListScopesInput")
    ListScopesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#ListScopesOutput", name: "ListScopesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#ListTagsForResourceInput", name: "ListTagsForResourceInput", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.networkflowmonitor#ScopeResource", "ids" => {"scopeId" => "resourceArn"}}, {"resource" => "com.amazonaws.networkflowmonitor#MonitorResource", "ids" => {"monitorName" => "resourceArn"}}]})
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networkflowmonitor#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    MetricUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkflowmonitor#MetricUnit", name: "MetricUnit")
    MonitorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#MonitorArn", name: "MonitorArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 512}, "smithy.api#pattern" => "^arn:.*$"})
    MonitorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkflowmonitor#MonitorList", name: "MonitorList")
    MonitorLocalResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#MonitorLocalResource", name: "MonitorLocalResource")
    MonitorLocalResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkflowmonitor#MonitorLocalResourceType", name: "MonitorLocalResourceType")
    MonitorLocalResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkflowmonitor#MonitorLocalResources", name: "MonitorLocalResources")
    MonitorMetric = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkflowmonitor#MonitorMetric", name: "MonitorMetric")
    MonitorRemoteResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#MonitorRemoteResource", name: "MonitorRemoteResource")
    MonitorRemoteResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkflowmonitor#MonitorRemoteResourceType", name: "MonitorRemoteResourceType")
    MonitorRemoteResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkflowmonitor#MonitorRemoteResources", name: "MonitorRemoteResources")
    MonitorStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkflowmonitor#MonitorStatus", name: "MonitorStatus")
    MonitorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#MonitorSummary", name: "MonitorSummary")
    MonitorTopContributorsRow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#MonitorTopContributorsRow", name: "MonitorTopContributorsRow")
    MonitorTopContributorsRowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkflowmonitor#MonitorTopContributorsRowList", name: "MonitorTopContributorsRowList")
    QueryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkflowmonitor#QueryStatus", name: "QueryStatus")
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ScopeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#ScopeId", name: "ScopeId")
    ScopeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkflowmonitor#ScopeStatus", name: "ScopeStatus")
    ScopeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#ScopeSummary", name: "ScopeSummary")
    ScopeSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkflowmonitor#ScopeSummaryList", name: "ScopeSummaryList")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartQueryMonitorTopContributorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#StartQueryMonitorTopContributorsInput", name: "StartQueryMonitorTopContributorsInput")
    StartQueryMonitorTopContributorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#StartQueryMonitorTopContributorsOutput", name: "StartQueryMonitorTopContributorsOutput")
    StartQueryWorkloadInsightsTopContributorsDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#StartQueryWorkloadInsightsTopContributorsDataInput", name: "StartQueryWorkloadInsightsTopContributorsDataInput")
    StartQueryWorkloadInsightsTopContributorsDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#StartQueryWorkloadInsightsTopContributorsDataOutput", name: "StartQueryWorkloadInsightsTopContributorsDataOutput")
    StartQueryWorkloadInsightsTopContributorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#StartQueryWorkloadInsightsTopContributorsInput", name: "StartQueryWorkloadInsightsTopContributorsInput")
    StartQueryWorkloadInsightsTopContributorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#StartQueryWorkloadInsightsTopContributorsOutput", name: "StartQueryWorkloadInsightsTopContributorsOutput")
    StopQueryMonitorTopContributorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#StopQueryMonitorTopContributorsInput", name: "StopQueryMonitorTopContributorsInput")
    StopQueryMonitorTopContributorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#StopQueryMonitorTopContributorsOutput", name: "StopQueryMonitorTopContributorsOutput")
    StopQueryWorkloadInsightsTopContributorsDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#StopQueryWorkloadInsightsTopContributorsDataInput", name: "StopQueryWorkloadInsightsTopContributorsDataInput")
    StopQueryWorkloadInsightsTopContributorsDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#StopQueryWorkloadInsightsTopContributorsDataOutput", name: "StopQueryWorkloadInsightsTopContributorsDataOutput")
    StopQueryWorkloadInsightsTopContributorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#StopQueryWorkloadInsightsTopContributorsInput", name: "StopQueryWorkloadInsightsTopContributorsInput")
    StopQueryWorkloadInsightsTopContributorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#StopQueryWorkloadInsightsTopContributorsOutput", name: "StopQueryWorkloadInsightsTopContributorsOutput")
    SubnetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#SubnetArn", name: "SubnetArn")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#SubnetId", name: "SubnetId", traits: {"smithy.api#pattern" => "^subnet-[a-zA-Z0-9]{8,32}$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkflowmonitor#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networkflowmonitor#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#TagResourceInput", name: "TagResourceInput", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.networkflowmonitor#ScopeResource", "ids" => {"scopeId" => "resourceArn"}}, {"resource" => "com.amazonaws.networkflowmonitor#MonitorResource", "ids" => {"monitorName" => "resourceArn"}}]})
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetId = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.networkflowmonitor#TargetId", name: "TargetId")
    TargetIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#TargetIdentifier", name: "TargetIdentifier")
    TargetResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#TargetResource", name: "TargetResource")
    TargetResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkflowmonitor#TargetResourceList", name: "TargetResourceList")
    TargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkflowmonitor#TargetType", name: "TargetType")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TraversedComponent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#TraversedComponent", name: "TraversedComponent")
    TraversedConstructsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkflowmonitor#TraversedConstructsList", name: "TraversedConstructsList")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#UntagResourceInput", name: "UntagResourceInput", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.networkflowmonitor#ScopeResource", "ids" => {"scopeId" => "resourceArn"}}, {"resource" => "com.amazonaws.networkflowmonitor#MonitorResource", "ids" => {"monitorName" => "resourceArn"}}]})
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateMonitorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#UpdateMonitorInput", name: "UpdateMonitorInput")
    UpdateMonitorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#UpdateMonitorOutput", name: "UpdateMonitorOutput")
    UpdateScopeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#UpdateScopeInput", name: "UpdateScopeInput")
    UpdateScopeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#UpdateScopeOutput", name: "UpdateScopeOutput")
    UuidString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#UuidString", name: "UuidString", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#VpcArn", name: "VpcArn")
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networkflowmonitor#VpcId", name: "VpcId", traits: {"smithy.api#pattern" => "^vpc-[a-zA-Z0-9]{8,32}$"})
    WorkloadInsightsMetric = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networkflowmonitor#WorkloadInsightsMetric", name: "WorkloadInsightsMetric")
    WorkloadInsightsTopContributorsDataPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#WorkloadInsightsTopContributorsDataPoint", name: "WorkloadInsightsTopContributorsDataPoint")
    WorkloadInsightsTopContributorsDataPoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkflowmonitor#WorkloadInsightsTopContributorsDataPoints", name: "WorkloadInsightsTopContributorsDataPoints")
    WorkloadInsightsTopContributorsRow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networkflowmonitor#WorkloadInsightsTopContributorsRow", name: "WorkloadInsightsTopContributorsRow")
    WorkloadInsightsTopContributorsRowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkflowmonitor#WorkloadInsightsTopContributorsRowList", name: "WorkloadInsightsTopContributorsRowList")
    WorkloadInsightsTopContributorsTimestampsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkflowmonitor#WorkloadInsightsTopContributorsTimestampsList", name: "WorkloadInsightsTopContributorsTimestampsList")
    WorkloadInsightsTopContributorsValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networkflowmonitor#WorkloadInsightsTopContributorsValuesList", name: "WorkloadInsightsTopContributorsValuesList")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ConflictException.type = Types::ConflictException
    CreateMonitorInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "monitorName", traits: {"smithy.api#required" => {}}))
    CreateMonitorInput.add_member(:local_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorLocalResources, location_name: "localResources", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    CreateMonitorInput.add_member(:remote_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorRemoteResources, location_name: "remoteResources"))
    CreateMonitorInput.add_member(:scope_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "scopeArn", traits: {"smithy.api#required" => {}}))
    CreateMonitorInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMonitorInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateMonitorInput.type = Types::CreateMonitorInput
    CreateMonitorOutput.add_member(:monitor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorArn, location_name: "monitorArn", traits: {"smithy.api#required" => {}}))
    CreateMonitorOutput.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "monitorName", traits: {"smithy.api#required" => {}}))
    CreateMonitorOutput.add_member(:monitor_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorStatus, location_name: "monitorStatus", traits: {"smithy.api#required" => {}}))
    CreateMonitorOutput.add_member(:local_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorLocalResources, location_name: "localResources", traits: {"smithy.api#required" => {}}))
    CreateMonitorOutput.add_member(:remote_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorRemoteResources, location_name: "remoteResources", traits: {"smithy.api#required" => {}}))
    CreateMonitorOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateMonitorOutput.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, location_name: "modifiedAt", traits: {"smithy.api#required" => {}}))
    CreateMonitorOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateMonitorOutput.type = Types::CreateMonitorOutput
    CreateScopeInput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceList, location_name: "targets", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    CreateScopeInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateScopeInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateScopeInput.type = Types::CreateScopeInput
    CreateScopeOutput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#required" => {}}))
    CreateScopeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    CreateScopeOutput.add_member(:scope_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "scopeArn", traits: {"smithy.api#required" => {}}))
    CreateScopeOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateScopeOutput.type = Types::CreateScopeOutput
    DeleteMonitorInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "monitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMonitorInput.type = Types::DeleteMonitorInput
    DeleteMonitorOutput.type = Types::DeleteMonitorOutput
    DeleteScopeInput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteScopeInput.type = Types::DeleteScopeInput
    DeleteScopeOutput.type = Types::DeleteScopeOutput
    DestinationCategory.add_member(:intra_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTRA_AZ", traits: {"smithy.api#enumValue" => "INTRA_AZ"}))
    DestinationCategory.add_member(:inter_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTER_AZ", traits: {"smithy.api#enumValue" => "INTER_AZ"}))
    DestinationCategory.add_member(:inter_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTER_VPC", traits: {"smithy.api#enumValue" => "INTER_VPC"}))
    DestinationCategory.add_member(:unclassified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNCLASSIFIED", traits: {"smithy.api#enumValue" => "UNCLASSIFIED"}))
    DestinationCategory.add_member(:amazon_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON_S3", traits: {"smithy.api#enumValue" => "AMAZON_S3"}))
    DestinationCategory.add_member(:amazon_dynamodb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON_DYNAMODB", traits: {"smithy.api#enumValue" => "AMAZON_DYNAMODB"}))
    DestinationCategory.add_member(:inter_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTER_REGION", traits: {"smithy.api#enumValue" => "INTER_REGION"}))
    GetMonitorInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "monitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMonitorInput.type = Types::GetMonitorInput
    GetMonitorOutput.add_member(:monitor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorArn, location_name: "monitorArn", traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "monitorName", traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:monitor_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorStatus, location_name: "monitorStatus", traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:local_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorLocalResources, location_name: "localResources", traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:remote_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorRemoteResources, location_name: "remoteResources", traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, location_name: "modifiedAt", traits: {"smithy.api#required" => {}}))
    GetMonitorOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    GetMonitorOutput.type = Types::GetMonitorOutput
    GetQueryResultsMonitorTopContributorsInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "monitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryResultsMonitorTopContributorsInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryResultsMonitorTopContributorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetQueryResultsMonitorTopContributorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetQueryResultsMonitorTopContributorsInput.type = Types::GetQueryResultsMonitorTopContributorsInput
    GetQueryResultsMonitorTopContributorsOutput.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, location_name: "unit"))
    GetQueryResultsMonitorTopContributorsOutput.add_member(:top_contributors, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorTopContributorsRowList, location_name: "topContributors"))
    GetQueryResultsMonitorTopContributorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    GetQueryResultsMonitorTopContributorsOutput.type = Types::GetQueryResultsMonitorTopContributorsOutput
    GetQueryResultsWorkloadInsightsTopContributorsDataInput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryResultsWorkloadInsightsTopContributorsDataInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryResultsWorkloadInsightsTopContributorsDataInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetQueryResultsWorkloadInsightsTopContributorsDataInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetQueryResultsWorkloadInsightsTopContributorsDataInput.type = Types::GetQueryResultsWorkloadInsightsTopContributorsDataInput
    GetQueryResultsWorkloadInsightsTopContributorsDataOutput.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, location_name: "unit", traits: {"smithy.api#required" => {}}))
    GetQueryResultsWorkloadInsightsTopContributorsDataOutput.add_member(:datapoints, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadInsightsTopContributorsDataPoints, location_name: "datapoints", traits: {"smithy.api#required" => {}}))
    GetQueryResultsWorkloadInsightsTopContributorsDataOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    GetQueryResultsWorkloadInsightsTopContributorsDataOutput.type = Types::GetQueryResultsWorkloadInsightsTopContributorsDataOutput
    GetQueryResultsWorkloadInsightsTopContributorsInput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryResultsWorkloadInsightsTopContributorsInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryResultsWorkloadInsightsTopContributorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetQueryResultsWorkloadInsightsTopContributorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetQueryResultsWorkloadInsightsTopContributorsInput.type = Types::GetQueryResultsWorkloadInsightsTopContributorsInput
    GetQueryResultsWorkloadInsightsTopContributorsOutput.add_member(:top_contributors, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadInsightsTopContributorsRowList, location_name: "topContributors"))
    GetQueryResultsWorkloadInsightsTopContributorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    GetQueryResultsWorkloadInsightsTopContributorsOutput.type = Types::GetQueryResultsWorkloadInsightsTopContributorsOutput
    GetQueryStatusMonitorTopContributorsInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "monitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryStatusMonitorTopContributorsInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryStatusMonitorTopContributorsInput.type = Types::GetQueryStatusMonitorTopContributorsInput
    GetQueryStatusMonitorTopContributorsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetQueryStatusMonitorTopContributorsOutput.type = Types::GetQueryStatusMonitorTopContributorsOutput
    GetQueryStatusWorkloadInsightsTopContributorsDataInput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryStatusWorkloadInsightsTopContributorsDataInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryStatusWorkloadInsightsTopContributorsDataInput.type = Types::GetQueryStatusWorkloadInsightsTopContributorsDataInput
    GetQueryStatusWorkloadInsightsTopContributorsDataOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetQueryStatusWorkloadInsightsTopContributorsDataOutput.type = Types::GetQueryStatusWorkloadInsightsTopContributorsDataOutput
    GetQueryStatusWorkloadInsightsTopContributorsInput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryStatusWorkloadInsightsTopContributorsInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetQueryStatusWorkloadInsightsTopContributorsInput.type = Types::GetQueryStatusWorkloadInsightsTopContributorsInput
    GetQueryStatusWorkloadInsightsTopContributorsOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetQueryStatusWorkloadInsightsTopContributorsOutput.type = Types::GetQueryStatusWorkloadInsightsTopContributorsOutput
    GetScopeInput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    GetScopeInput.type = Types::GetScopeInput
    GetScopeOutput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#required" => {}}))
    GetScopeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetScopeOutput.add_member(:scope_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "scopeArn", traits: {"smithy.api#required" => {}}))
    GetScopeOutput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceList, location_name: "targets", traits: {"smithy.api#required" => {}}))
    GetScopeOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    GetScopeOutput.type = Types::GetScopeOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    InternalServerException.type = Types::InternalServerException
    KubernetesMetadata.add_member(:local_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "localServiceName"))
    KubernetesMetadata.add_member(:local_pod_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "localPodName"))
    KubernetesMetadata.add_member(:local_pod_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "localPodNamespace"))
    KubernetesMetadata.add_member(:remote_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "remoteServiceName"))
    KubernetesMetadata.add_member(:remote_pod_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "remotePodName"))
    KubernetesMetadata.add_member(:remote_pod_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "remotePodNamespace"))
    KubernetesMetadata.type = Types::KubernetesMetadata
    ListMonitorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMonitorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMonitorsInput.add_member(:monitor_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorStatus, location_name: "monitorStatus", traits: {"smithy.api#httpQuery" => "monitorStatus"}))
    ListMonitorsInput.type = Types::ListMonitorsInput
    ListMonitorsOutput.add_member(:monitors, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorList, location_name: "monitors", traits: {"smithy.api#required" => {}}))
    ListMonitorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListMonitorsOutput.type = Types::ListMonitorsOutput
    ListScopesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListScopesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListScopesInput.type = Types::ListScopesInput
    ListScopesOutput.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeSummaryList, location_name: "scopes", traits: {"smithy.api#required" => {}}))
    ListScopesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListScopesOutput.type = Types::ListScopesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MetricUnit.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECONDS", traits: {"smithy.api#enumValue" => "Seconds"}))
    MetricUnit.add_member(:microseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MICROSECONDS", traits: {"smithy.api#enumValue" => "Microseconds"}))
    MetricUnit.add_member(:milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MILLISECONDS", traits: {"smithy.api#enumValue" => "Milliseconds"}))
    MetricUnit.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYTES", traits: {"smithy.api#enumValue" => "Bytes"}))
    MetricUnit.add_member(:kilobytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KILOBYTES", traits: {"smithy.api#enumValue" => "Kilobytes"}))
    MetricUnit.add_member(:megabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEGABYTES", traits: {"smithy.api#enumValue" => "Megabytes"}))
    MetricUnit.add_member(:gigabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GIGABYTES", traits: {"smithy.api#enumValue" => "Gigabytes"}))
    MetricUnit.add_member(:terabytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERABYTES", traits: {"smithy.api#enumValue" => "Terabytes"}))
    MetricUnit.add_member(:bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BITS", traits: {"smithy.api#enumValue" => "Bits"}))
    MetricUnit.add_member(:kilobits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KILOBITS", traits: {"smithy.api#enumValue" => "Kilobits"}))
    MetricUnit.add_member(:megabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEGABITS", traits: {"smithy.api#enumValue" => "Megabits"}))
    MetricUnit.add_member(:gigabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GIGABITS", traits: {"smithy.api#enumValue" => "Gigabits"}))
    MetricUnit.add_member(:terabits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERABITS", traits: {"smithy.api#enumValue" => "Terabits"}))
    MetricUnit.add_member(:percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERCENT", traits: {"smithy.api#enumValue" => "Percent"}))
    MetricUnit.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COUNT", traits: {"smithy.api#enumValue" => "Count"}))
    MetricUnit.add_member(:bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Bytes/Second"}))
    MetricUnit.add_member(:kilobytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KILOBYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Kilobytes/Second"}))
    MetricUnit.add_member(:megabytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEGABYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Megabytes/Second"}))
    MetricUnit.add_member(:gigabytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GIGABYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Gigabytes/Second"}))
    MetricUnit.add_member(:terabytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERABYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "Terabytes/Second"}))
    MetricUnit.add_member(:bits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Bits/Second"}))
    MetricUnit.add_member(:kilobits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KILOBITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Kilobits/Second"}))
    MetricUnit.add_member(:megabits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEGABITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Megabits/Second"}))
    MetricUnit.add_member(:gigabits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GIGABITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Gigabits/Second"}))
    MetricUnit.add_member(:terabits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERABITS_PER_SECOND", traits: {"smithy.api#enumValue" => "Terabits/Second"}))
    MetricUnit.add_member(:count_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COUNT_PER_SECOND", traits: {"smithy.api#enumValue" => "Count/Second"}))
    MetricUnit.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    MonitorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorSummary)
    MonitorLocalResource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorLocalResourceType, location_name: "type", traits: {"smithy.api#required" => {}}))
    MonitorLocalResource.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    MonitorLocalResource.type = Types::MonitorLocalResource
    MonitorLocalResourceType.add_member(:aws_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_VPC", traits: {"smithy.api#enumValue" => "AWS::EC2::VPC"}))
    MonitorLocalResourceType.add_member(:aws_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_AZ", traits: {"smithy.api#enumValue" => "AWS::AvailabilityZone"}))
    MonitorLocalResourceType.add_member(:aws_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SUBNET", traits: {"smithy.api#enumValue" => "AWS::EC2::Subnet"}))
    MonitorLocalResourceType.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_REGION", traits: {"smithy.api#enumValue" => "AWS::Region"}))
    MonitorLocalResources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorLocalResource)
    MonitorMetric.add_member(:round_trip_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROUND_TRIP_TIME", traits: {"smithy.api#enumValue" => "ROUND_TRIP_TIME"}))
    MonitorMetric.add_member(:timeouts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMEOUTS", traits: {"smithy.api#enumValue" => "TIMEOUTS"}))
    MonitorMetric.add_member(:retransmissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETRANSMISSIONS", traits: {"smithy.api#enumValue" => "RETRANSMISSIONS"}))
    MonitorMetric.add_member(:data_transferred, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATA_TRANSFERRED", traits: {"smithy.api#enumValue" => "DATA_TRANSFERRED"}))
    MonitorRemoteResource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorRemoteResourceType, location_name: "type", traits: {"smithy.api#required" => {}}))
    MonitorRemoteResource.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    MonitorRemoteResource.type = Types::MonitorRemoteResource
    MonitorRemoteResourceType.add_member(:aws_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_VPC", traits: {"smithy.api#enumValue" => "AWS::EC2::VPC"}))
    MonitorRemoteResourceType.add_member(:aws_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_AZ", traits: {"smithy.api#enumValue" => "AWS::AvailabilityZone"}))
    MonitorRemoteResourceType.add_member(:aws_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SUBNET", traits: {"smithy.api#enumValue" => "AWS::EC2::Subnet"}))
    MonitorRemoteResourceType.add_member(:aws_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SERVICE", traits: {"smithy.api#enumValue" => "AWS::AWSService"}))
    MonitorRemoteResourceType.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_REGION", traits: {"smithy.api#enumValue" => "AWS::Region"}))
    MonitorRemoteResources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorRemoteResource)
    MonitorStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    MonitorStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    MonitorStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    MonitorStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    MonitorStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    MonitorSummary.add_member(:monitor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorArn, location_name: "monitorArn", traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "monitorName", traits: {"smithy.api#required" => {}}))
    MonitorSummary.add_member(:monitor_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorStatus, location_name: "monitorStatus", traits: {"smithy.api#required" => {}}))
    MonitorSummary.type = Types::MonitorSummary
    MonitorTopContributorsRow.add_member(:local_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "localIp"))
    MonitorTopContributorsRow.add_member(:snat_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snatIp"))
    MonitorTopContributorsRow.add_member(:local_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, location_name: "localInstanceId"))
    MonitorTopContributorsRow.add_member(:local_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, location_name: "localVpcId"))
    MonitorTopContributorsRow.add_member(:local_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, location_name: "localRegion"))
    MonitorTopContributorsRow.add_member(:local_az, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, location_name: "localAz"))
    MonitorTopContributorsRow.add_member(:local_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, location_name: "localSubnetId"))
    MonitorTopContributorsRow.add_member(:target_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "targetPort"))
    MonitorTopContributorsRow.add_member(:destination_category, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCategory, location_name: "destinationCategory"))
    MonitorTopContributorsRow.add_member(:remote_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, location_name: "remoteVpcId"))
    MonitorTopContributorsRow.add_member(:remote_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, location_name: "remoteRegion"))
    MonitorTopContributorsRow.add_member(:remote_az, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, location_name: "remoteAz"))
    MonitorTopContributorsRow.add_member(:remote_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, location_name: "remoteSubnetId"))
    MonitorTopContributorsRow.add_member(:remote_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, location_name: "remoteInstanceId"))
    MonitorTopContributorsRow.add_member(:remote_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "remoteIp"))
    MonitorTopContributorsRow.add_member(:dnat_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dnatIp"))
    MonitorTopContributorsRow.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "value"))
    MonitorTopContributorsRow.add_member(:traversed_constructs, ::Smithy::Schema::Shapes::MemberShape.new(target: TraversedConstructsList, location_name: "traversedConstructs"))
    MonitorTopContributorsRow.add_member(:kubernetes_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesMetadata, location_name: "kubernetesMetadata"))
    MonitorTopContributorsRow.add_member(:local_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, location_name: "localInstanceArn"))
    MonitorTopContributorsRow.add_member(:local_subnet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArn, location_name: "localSubnetArn"))
    MonitorTopContributorsRow.add_member(:local_vpc_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcArn, location_name: "localVpcArn"))
    MonitorTopContributorsRow.add_member(:remote_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, location_name: "remoteInstanceArn"))
    MonitorTopContributorsRow.add_member(:remote_subnet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArn, location_name: "remoteSubnetArn"))
    MonitorTopContributorsRow.add_member(:remote_vpc_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcArn, location_name: "remoteVpcArn"))
    MonitorTopContributorsRow.type = Types::MonitorTopContributorsRow
    MonitorTopContributorsRowList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorTopContributorsRow)
    QueryStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    QueryStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    QueryStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    QueryStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    QueryStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ScopeStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ScopeStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ScopeStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ScopeStatus.add_member(:deactivating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEACTIVATING", traits: {"smithy.api#enumValue" => "DEACTIVATING"}))
    ScopeStatus.add_member(:deactivated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEACTIVATED", traits: {"smithy.api#enumValue" => "DEACTIVATED"}))
    ScopeSummary.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#required" => {}}))
    ScopeSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ScopeSummary.add_member(:scope_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "scopeArn", traits: {"smithy.api#required" => {}}))
    ScopeSummary.type = Types::ScopeSummary
    ScopeSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeSummary)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartQueryMonitorTopContributorsInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "monitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartQueryMonitorTopContributorsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "startTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartQueryMonitorTopContributorsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "endTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartQueryMonitorTopContributorsInput.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorMetric, location_name: "metricName", traits: {"smithy.api#required" => {}}))
    StartQueryMonitorTopContributorsInput.add_member(:destination_category, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCategory, location_name: "destinationCategory", traits: {"smithy.api#required" => {}}))
    StartQueryMonitorTopContributorsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "limit"))
    StartQueryMonitorTopContributorsInput.type = Types::StartQueryMonitorTopContributorsInput
    StartQueryMonitorTopContributorsOutput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#required" => {}}))
    StartQueryMonitorTopContributorsOutput.type = Types::StartQueryMonitorTopContributorsOutput
    StartQueryWorkloadInsightsTopContributorsDataInput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartQueryWorkloadInsightsTopContributorsDataInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "startTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartQueryWorkloadInsightsTopContributorsDataInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "endTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartQueryWorkloadInsightsTopContributorsDataInput.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadInsightsMetric, location_name: "metricName", traits: {"smithy.api#required" => {}}))
    StartQueryWorkloadInsightsTopContributorsDataInput.add_member(:destination_category, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCategory, location_name: "destinationCategory", traits: {"smithy.api#required" => {}}))
    StartQueryWorkloadInsightsTopContributorsDataInput.type = Types::StartQueryWorkloadInsightsTopContributorsDataInput
    StartQueryWorkloadInsightsTopContributorsDataOutput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#required" => {}}))
    StartQueryWorkloadInsightsTopContributorsDataOutput.type = Types::StartQueryWorkloadInsightsTopContributorsDataOutput
    StartQueryWorkloadInsightsTopContributorsInput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartQueryWorkloadInsightsTopContributorsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "startTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartQueryWorkloadInsightsTopContributorsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "endTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartQueryWorkloadInsightsTopContributorsInput.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadInsightsMetric, location_name: "metricName", traits: {"smithy.api#required" => {}}))
    StartQueryWorkloadInsightsTopContributorsInput.add_member(:destination_category, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationCategory, location_name: "destinationCategory", traits: {"smithy.api#required" => {}}))
    StartQueryWorkloadInsightsTopContributorsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "limit"))
    StartQueryWorkloadInsightsTopContributorsInput.type = Types::StartQueryWorkloadInsightsTopContributorsInput
    StartQueryWorkloadInsightsTopContributorsOutput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#required" => {}}))
    StartQueryWorkloadInsightsTopContributorsOutput.type = Types::StartQueryWorkloadInsightsTopContributorsOutput
    StopQueryMonitorTopContributorsInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "monitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopQueryMonitorTopContributorsInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopQueryMonitorTopContributorsInput.type = Types::StopQueryMonitorTopContributorsInput
    StopQueryMonitorTopContributorsOutput.type = Types::StopQueryMonitorTopContributorsOutput
    StopQueryWorkloadInsightsTopContributorsDataInput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopQueryWorkloadInsightsTopContributorsDataInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopQueryWorkloadInsightsTopContributorsDataInput.type = Types::StopQueryWorkloadInsightsTopContributorsDataInput
    StopQueryWorkloadInsightsTopContributorsDataOutput.type = Types::StopQueryWorkloadInsightsTopContributorsDataOutput
    StopQueryWorkloadInsightsTopContributorsInput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopQueryWorkloadInsightsTopContributorsInput.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "queryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopQueryWorkloadInsightsTopContributorsInput.type = Types::StopQueryWorkloadInsightsTopContributorsInput
    StopQueryWorkloadInsightsTopContributorsOutput.type = Types::StopQueryWorkloadInsightsTopContributorsOutput
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TargetId.add_member(:account_id, Types::TargetId::AccountId, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "accountId"))
    TargetId.add_member(:unknown, Types::TargetId::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TargetId.type = Types::TargetId
    TargetIdentifier.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, location_name: "targetId", traits: {"smithy.api#required" => {}}))
    TargetIdentifier.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, location_name: "targetType", traits: {"smithy.api#required" => {}}))
    TargetIdentifier.type = Types::TargetIdentifier
    TargetResource.add_member(:target_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetIdentifier, location_name: "targetIdentifier", traits: {"smithy.api#required" => {}}))
    TargetResource.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, location_name: "region", traits: {"smithy.api#required" => {}}))
    TargetResource.type = Types::TargetResource
    TargetResourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResource)
    TargetType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TraversedComponent.add_member(:component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Component, location_name: "componentId"))
    TraversedComponent.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, location_name: "componentType"))
    TraversedComponent.add_member(:component_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "componentArn"))
    TraversedComponent.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceName"))
    TraversedComponent.type = Types::TraversedComponent
    TraversedConstructsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TraversedComponent)
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateMonitorInput.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "monitorName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMonitorInput.add_member(:local_resources_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorLocalResources, location_name: "localResourcesToAdd"))
    UpdateMonitorInput.add_member(:local_resources_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorLocalResources, location_name: "localResourcesToRemove"))
    UpdateMonitorInput.add_member(:remote_resources_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorRemoteResources, location_name: "remoteResourcesToAdd"))
    UpdateMonitorInput.add_member(:remote_resources_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorRemoteResources, location_name: "remoteResourcesToRemove"))
    UpdateMonitorInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UuidString, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateMonitorInput.type = Types::UpdateMonitorInput
    UpdateMonitorOutput.add_member(:monitor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorArn, location_name: "monitorArn", traits: {"smithy.api#required" => {}}))
    UpdateMonitorOutput.add_member(:monitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "monitorName", traits: {"smithy.api#required" => {}}))
    UpdateMonitorOutput.add_member(:monitor_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorStatus, location_name: "monitorStatus", traits: {"smithy.api#required" => {}}))
    UpdateMonitorOutput.add_member(:local_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorLocalResources, location_name: "localResources", traits: {"smithy.api#required" => {}}))
    UpdateMonitorOutput.add_member(:remote_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorRemoteResources, location_name: "remoteResources", traits: {"smithy.api#required" => {}}))
    UpdateMonitorOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateMonitorOutput.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, location_name: "modifiedAt", traits: {"smithy.api#required" => {}}))
    UpdateMonitorOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    UpdateMonitorOutput.type = Types::UpdateMonitorOutput
    UpdateScopeInput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateScopeInput.add_member(:resources_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceList, location_name: "resourcesToAdd", traits: {"smithy.api#length" => {"min" => 1, "max" => 99}}))
    UpdateScopeInput.add_member(:resources_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceList, location_name: "resourcesToDelete", traits: {"smithy.api#length" => {"min" => 1, "max" => 99}}))
    UpdateScopeInput.type = Types::UpdateScopeInput
    UpdateScopeOutput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, location_name: "scopeId", traits: {"smithy.api#required" => {}}))
    UpdateScopeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    UpdateScopeOutput.add_member(:scope_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "scopeArn", traits: {"smithy.api#required" => {}}))
    UpdateScopeOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    UpdateScopeOutput.type = Types::UpdateScopeOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ValidationException.type = Types::ValidationException
    WorkloadInsightsMetric.add_member(:timeouts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMEOUTS", traits: {"smithy.api#enumValue" => "TIMEOUTS"}))
    WorkloadInsightsMetric.add_member(:retransmissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETRANSMISSIONS", traits: {"smithy.api#enumValue" => "RETRANSMISSIONS"}))
    WorkloadInsightsMetric.add_member(:data_transferred, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DATA_TRANSFERRED", traits: {"smithy.api#enumValue" => "DATA_TRANSFERRED"}))
    WorkloadInsightsTopContributorsDataPoint.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadInsightsTopContributorsTimestampsList, location_name: "timestamps", traits: {"smithy.api#required" => {}}))
    WorkloadInsightsTopContributorsDataPoint.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadInsightsTopContributorsValuesList, location_name: "values", traits: {"smithy.api#required" => {}}))
    WorkloadInsightsTopContributorsDataPoint.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "label", traits: {"smithy.api#required" => {}}))
    WorkloadInsightsTopContributorsDataPoint.type = Types::WorkloadInsightsTopContributorsDataPoint
    WorkloadInsightsTopContributorsDataPoints.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadInsightsTopContributorsDataPoint)
    WorkloadInsightsTopContributorsRow.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "accountId"))
    WorkloadInsightsTopContributorsRow.add_member(:local_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, location_name: "localSubnetId"))
    WorkloadInsightsTopContributorsRow.add_member(:local_az, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, location_name: "localAz"))
    WorkloadInsightsTopContributorsRow.add_member(:local_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, location_name: "localVpcId"))
    WorkloadInsightsTopContributorsRow.add_member(:local_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, location_name: "localRegion"))
    WorkloadInsightsTopContributorsRow.add_member(:remote_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "remoteIdentifier"))
    WorkloadInsightsTopContributorsRow.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "value"))
    WorkloadInsightsTopContributorsRow.add_member(:local_subnet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArn, location_name: "localSubnetArn"))
    WorkloadInsightsTopContributorsRow.add_member(:local_vpc_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcArn, location_name: "localVpcArn"))
    WorkloadInsightsTopContributorsRow.type = Types::WorkloadInsightsTopContributorsRow
    WorkloadInsightsTopContributorsRowList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadInsightsTopContributorsRow)
    WorkloadInsightsTopContributorsTimestampsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, traits: {"smithy.api#timestampFormat" => "date-time"})
    WorkloadInsightsTopContributorsValuesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double)

    NetworkFlowMonitor = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.networkflowmonitor#NetworkFlowMonitor"
      service.name = "NetworkFlowMonitor"
      service.version = "2023-04-19"
      service.traits = {"aws.api#service" => {"sdkId" => "NetworkFlowMonitor", "arnNamespace" => "networkflowmonitor", "cloudTrailEventSource" => "networkflowmonitor.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "networkflowmonitor"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tag key-value pairs attached to the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tag key-value pairs in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Amz-Requested-Operation"]}, "smithy.api#title" => "Network Flow Monitor"}
      service.add_operation(:create_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#CreateMonitor"
        operation.name = "CreateMonitor"
        operation.input = CreateMonitorInput
        operation.output = CreateMonitorOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a monitor"}, "smithy.api#http" => {"uri" => "/monitors", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#CreateScope"
        operation.name = "CreateScope"
        operation.input = CreateScopeInput
        operation.output = CreateScopeOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a scope"}, "smithy.api#http" => {"uri" => "/scopes", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#DeleteMonitor"
        operation.name = "DeleteMonitor"
        operation.input = DeleteMonitorInput
        operation.output = DeleteMonitorOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a monitor"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#DeleteScope"
        operation.name = "DeleteScope"
        operation.input = DeleteScopeInput
        operation.output = DeleteScopeOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a scope"}, "smithy.api#http" => {"uri" => "/scopes/{scopeId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#GetMonitor"
        operation.name = "GetMonitor"
        operation.input = GetMonitorInput
        operation.output = GetMonitorOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a monitor"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_query_results_monitor_top_contributors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#GetQueryResultsMonitorTopContributors"
        operation.name = "GetQueryResultsMonitorTopContributors"
        operation.input = GetQueryResultsMonitorTopContributorsInput
        operation.output = GetQueryResultsMonitorTopContributorsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get the results of a query that retrieves top contributors data for a monitor"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}/topContributorsQueries/{queryId}/results", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetQueryResultsMonitorTopContributors.new
      end)
      service.add_operation(:get_query_results_workload_insights_top_contributors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#GetQueryResultsWorkloadInsightsTopContributors"
        operation.name = "GetQueryResultsWorkloadInsightsTopContributors"
        operation.input = GetQueryResultsWorkloadInsightsTopContributorsInput
        operation.output = GetQueryResultsWorkloadInsightsTopContributorsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get the results of a query that retrieves top contributors for workload insights"}, "smithy.api#http" => {"uri" => "/workloadInsights/{scopeId}/topContributorsQueries/{queryId}/results", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetQueryResultsWorkloadInsightsTopContributors.new
      end)
      service.add_operation(:get_query_results_workload_insights_top_contributors_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#GetQueryResultsWorkloadInsightsTopContributorsData"
        operation.name = "GetQueryResultsWorkloadInsightsTopContributorsData"
        operation.input = GetQueryResultsWorkloadInsightsTopContributorsDataInput
        operation.output = GetQueryResultsWorkloadInsightsTopContributorsDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get the results of a query that retrieves top contributors data points for workload insights"}, "smithy.api#http" => {"uri" => "/workloadInsights/{scopeId}/topContributorsDataQueries/{queryId}/results", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetQueryResultsWorkloadInsightsTopContributorsData.new
      end)
      service.add_operation(:get_query_status_monitor_top_contributors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#GetQueryStatusMonitorTopContributors"
        operation.name = "GetQueryStatusMonitorTopContributors"
        operation.input = GetQueryStatusMonitorTopContributorsInput
        operation.output = GetQueryStatusMonitorTopContributorsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get the status of a query that retrieves top contributors data for a monitor"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}/topContributorsQueries/{queryId}/status", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_query_status_workload_insights_top_contributors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#GetQueryStatusWorkloadInsightsTopContributors"
        operation.name = "GetQueryStatusWorkloadInsightsTopContributors"
        operation.input = GetQueryStatusWorkloadInsightsTopContributorsInput
        operation.output = GetQueryStatusWorkloadInsightsTopContributorsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get the status of a query that retrieves top contributors for workload insights"}, "smithy.api#http" => {"uri" => "/workloadInsights/{scopeId}/topContributorsQueries/{queryId}/status", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_query_status_workload_insights_top_contributors_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#GetQueryStatusWorkloadInsightsTopContributorsData"
        operation.name = "GetQueryStatusWorkloadInsightsTopContributorsData"
        operation.input = GetQueryStatusWorkloadInsightsTopContributorsDataInput
        operation.output = GetQueryStatusWorkloadInsightsTopContributorsDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get the status of a query that retrieves top contributors data points for workload insights"}, "smithy.api#http" => {"uri" => "/workloadInsights/{scopeId}/topContributorsDataQueries/{queryId}/status", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#GetScope"
        operation.name = "GetScope"
        operation.input = GetScopeInput
        operation.output = GetScopeOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a scope"}, "smithy.api#http" => {"uri" => "/scopes/{scopeId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_monitors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#ListMonitors"
        operation.name = "ListMonitors"
        operation.input = ListMonitorsInput
        operation.output = ListMonitorsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all monitors in an account and their statuses"}, "smithy.api#http" => {"uri" => "/monitors", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListMonitors", "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListMonitors.new
      end)
      service.add_operation(:list_scopes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#ListScopes"
        operation.name = "ListScopes"
        operation.input = ListScopesInput
        operation.output = ListScopesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get all scopes for an account"}, "smithy.api#http" => {"uri" => "/scopes", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListScopes.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the tags for a resource"}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_query_monitor_top_contributors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#StartQueryMonitorTopContributors"
        operation.name = "StartQueryMonitorTopContributors"
        operation.input = StartQueryMonitorTopContributorsInput
        operation.output = StartQueryMonitorTopContributorsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to start a query for retrieving top contributors data for a monitor"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}/topContributorsQueries", "method" => "POST"}}
      end)
      service.add_operation(:start_query_workload_insights_top_contributors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#StartQueryWorkloadInsightsTopContributors"
        operation.name = "StartQueryWorkloadInsightsTopContributors"
        operation.input = StartQueryWorkloadInsightsTopContributorsInput
        operation.output = StartQueryWorkloadInsightsTopContributorsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to start a query for retrieving top contributors data for workload insights"}, "smithy.api#http" => {"uri" => "/workloadInsights/{scopeId}/topContributorsQueries", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_query_workload_insights_top_contributors_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#StartQueryWorkloadInsightsTopContributorsData"
        operation.name = "StartQueryWorkloadInsightsTopContributorsData"
        operation.input = StartQueryWorkloadInsightsTopContributorsDataInput
        operation.output = StartQueryWorkloadInsightsTopContributorsDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to start a query for retrieving top contributors data points for workload insights"}, "smithy.api#http" => {"uri" => "/workloadInsights/{scopeId}/topContributorsDataQueries", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:stop_query_monitor_top_contributors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#StopQueryMonitorTopContributors"
        operation.name = "StopQueryMonitorTopContributors"
        operation.input = StopQueryMonitorTopContributorsInput
        operation.output = StopQueryMonitorTopContributorsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to stop a query for retrieving top contributors data for a monitor"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}/topContributorsQueries/{queryId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_query_workload_insights_top_contributors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#StopQueryWorkloadInsightsTopContributors"
        operation.name = "StopQueryWorkloadInsightsTopContributors"
        operation.input = StopQueryWorkloadInsightsTopContributorsInput
        operation.output = StopQueryWorkloadInsightsTopContributorsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to stop a query for retrieving top contributors for workload insights"}, "smithy.api#http" => {"uri" => "/workloadInsights/{scopeId}/topContributorsQueries/{queryId}", "method" => "DELETE"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:stop_query_workload_insights_top_contributors_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#StopQueryWorkloadInsightsTopContributorsData"
        operation.name = "StopQueryWorkloadInsightsTopContributorsData"
        operation.input = StopQueryWorkloadInsightsTopContributorsDataInput
        operation.output = StopQueryWorkloadInsightsTopContributorsDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to stop a query for retrieving top contributors data points for workload insights"}, "smithy.api#http" => {"uri" => "/workloadInsights/{scopeId}/topContributorsDataQueries/{queryId}", "method" => "DELETE"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add tags to a resource"}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from a resource"}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#UpdateMonitor"
        operation.name = "UpdateMonitor"
        operation.input = UpdateMonitorInput
        operation.output = UpdateMonitorOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a monitor"}, "smithy.api#http" => {"uri" => "/monitors/{monitorName}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networkflowmonitor#UpdateScope"
        operation.name = "UpdateScope"
        operation.input = UpdateScopeInput
        operation.output = UpdateScopeOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a scope"}, "smithy.api#http" => {"uri" => "/scopes/{scopeId}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
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
