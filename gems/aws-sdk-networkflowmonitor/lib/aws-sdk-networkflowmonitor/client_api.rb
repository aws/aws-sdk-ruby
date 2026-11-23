# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::NetworkFlowMonitor
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountToAdd = Shapes::StructureShape.new(name: 'AccountToAdd')
    AccountToAddList = Shapes::ListShape.new(name: 'AccountToAddList')
    AdditionalFlowInfo = Shapes::StructureShape.new(name: 'AdditionalFlowInfo')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AwsRegion = Shapes::StringShape.new(name: 'AwsRegion')
    ClientLocation = Shapes::StructureShape.new(name: 'ClientLocation')
    Component = Shapes::StringShape.new(name: 'Component')
    ComponentType = Shapes::StringShape.new(name: 'ComponentType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateMonitorInput = Shapes::StructureShape.new(name: 'CreateMonitorInput')
    CreateMonitorInputLocalResourcesList = Shapes::ListShape.new(name: 'CreateMonitorInputLocalResourcesList')
    CreateMonitorOutput = Shapes::StructureShape.new(name: 'CreateMonitorOutput')
    CreatePerformanceMonitorInput = Shapes::StructureShape.new(name: 'CreatePerformanceMonitorInput')
    CreatePerformanceMonitorInputTargetsList = Shapes::ListShape.new(name: 'CreatePerformanceMonitorInputTargetsList')
    CreatePerformanceMonitorOutput = Shapes::StructureShape.new(name: 'CreatePerformanceMonitorOutput')
    CreateScopeInput = Shapes::StructureShape.new(name: 'CreateScopeInput')
    CreateScopeInputTargetsList = Shapes::ListShape.new(name: 'CreateScopeInputTargetsList')
    CreateScopeOutput = Shapes::StructureShape.new(name: 'CreateScopeOutput')
    DeleteMonitorInput = Shapes::StructureShape.new(name: 'DeleteMonitorInput')
    DeleteMonitorOutput = Shapes::StructureShape.new(name: 'DeleteMonitorOutput')
    DeletePerformanceMonitorInput = Shapes::StructureShape.new(name: 'DeletePerformanceMonitorInput')
    DeletePerformanceMonitorOutput = Shapes::StructureShape.new(name: 'DeletePerformanceMonitorOutput')
    DeleteScopeInput = Shapes::StructureShape.new(name: 'DeleteScopeInput')
    DeleteScopeOutput = Shapes::StructureShape.new(name: 'DeleteScopeOutput')
    DestinationCategory = Shapes::StringShape.new(name: 'DestinationCategory')
    Double = Shapes::FloatShape.new(name: 'Double')
    FilterOperator = Shapes::StringShape.new(name: 'FilterOperator')
    FilterParameter = Shapes::StructureShape.new(name: 'FilterParameter')
    FilterParameterValuesList = Shapes::ListShape.new(name: 'FilterParameterValuesList')
    FilterParameters = Shapes::ListShape.new(name: 'FilterParameters')
    GetMonitorInput = Shapes::StructureShape.new(name: 'GetMonitorInput')
    GetMonitorOutput = Shapes::StructureShape.new(name: 'GetMonitorOutput')
    GetMonitorScopeSuggestionsInput = Shapes::StructureShape.new(name: 'GetMonitorScopeSuggestionsInput')
    GetMonitorScopeSuggestionsOutput = Shapes::StructureShape.new(name: 'GetMonitorScopeSuggestionsOutput')
    GetPerformanceMonitorInput = Shapes::StructureShape.new(name: 'GetPerformanceMonitorInput')
    GetPerformanceMonitorOutput = Shapes::StructureShape.new(name: 'GetPerformanceMonitorOutput')
    GetQueryResultsMonitorTopContributorsInput = Shapes::StructureShape.new(name: 'GetQueryResultsMonitorTopContributorsInput')
    GetQueryResultsMonitorTopContributorsOutput = Shapes::StructureShape.new(name: 'GetQueryResultsMonitorTopContributorsOutput')
    GetQueryResultsPerformanceMonitorInput = Shapes::StructureShape.new(name: 'GetQueryResultsPerformanceMonitorInput')
    GetQueryResultsPerformanceMonitorOutput = Shapes::StructureShape.new(name: 'GetQueryResultsPerformanceMonitorOutput')
    GetQueryResultsWorkloadInsightsTopContributorsDataInput = Shapes::StructureShape.new(name: 'GetQueryResultsWorkloadInsightsTopContributorsDataInput')
    GetQueryResultsWorkloadInsightsTopContributorsDataOutput = Shapes::StructureShape.new(name: 'GetQueryResultsWorkloadInsightsTopContributorsDataOutput')
    GetQueryResultsWorkloadInsightsTopContributorsInput = Shapes::StructureShape.new(name: 'GetQueryResultsWorkloadInsightsTopContributorsInput')
    GetQueryResultsWorkloadInsightsTopContributorsOutput = Shapes::StructureShape.new(name: 'GetQueryResultsWorkloadInsightsTopContributorsOutput')
    GetQueryStatusMonitorTopContributorsInput = Shapes::StructureShape.new(name: 'GetQueryStatusMonitorTopContributorsInput')
    GetQueryStatusMonitorTopContributorsOutput = Shapes::StructureShape.new(name: 'GetQueryStatusMonitorTopContributorsOutput')
    GetQueryStatusPerformanceMonitorInput = Shapes::StructureShape.new(name: 'GetQueryStatusPerformanceMonitorInput')
    GetQueryStatusPerformanceMonitorOutput = Shapes::StructureShape.new(name: 'GetQueryStatusPerformanceMonitorOutput')
    GetQueryStatusWorkloadInsightsTopContributorsDataInput = Shapes::StructureShape.new(name: 'GetQueryStatusWorkloadInsightsTopContributorsDataInput')
    GetQueryStatusWorkloadInsightsTopContributorsDataOutput = Shapes::StructureShape.new(name: 'GetQueryStatusWorkloadInsightsTopContributorsDataOutput')
    GetQueryStatusWorkloadInsightsTopContributorsInput = Shapes::StructureShape.new(name: 'GetQueryStatusWorkloadInsightsTopContributorsInput')
    GetQueryStatusWorkloadInsightsTopContributorsOutput = Shapes::StructureShape.new(name: 'GetQueryStatusWorkloadInsightsTopContributorsOutput')
    GetScopeInput = Shapes::StructureShape.new(name: 'GetScopeInput')
    GetScopeInputScopeIdString = Shapes::StringShape.new(name: 'GetScopeInputScopeIdString')
    GetScopeOutput = Shapes::StructureShape.new(name: 'GetScopeOutput')
    InstanceArn = Shapes::StringShape.new(name: 'InstanceArn')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Iso8601Timestamp = Shapes::TimestampShape.new(name: 'Iso8601Timestamp')
    KubernetesMetadata = Shapes::StructureShape.new(name: 'KubernetesMetadata')
    Limit = Shapes::IntegerShape.new(name: 'Limit')
    ListMonitorsInput = Shapes::StructureShape.new(name: 'ListMonitorsInput')
    ListMonitorsOutput = Shapes::StructureShape.new(name: 'ListMonitorsOutput')
    ListPerformanceMonitorsInput = Shapes::StructureShape.new(name: 'ListPerformanceMonitorsInput')
    ListPerformanceMonitorsOutput = Shapes::StructureShape.new(name: 'ListPerformanceMonitorsOutput')
    ListScopesInput = Shapes::StructureShape.new(name: 'ListScopesInput')
    ListScopesOutput = Shapes::StructureShape.new(name: 'ListScopesOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricUnit = Shapes::StringShape.new(name: 'MetricUnit')
    MonitorArn = Shapes::StringShape.new(name: 'MonitorArn')
    MonitorList = Shapes::ListShape.new(name: 'MonitorList')
    MonitorLocalResource = Shapes::StructureShape.new(name: 'MonitorLocalResource')
    MonitorLocalResourceType = Shapes::StringShape.new(name: 'MonitorLocalResourceType')
    MonitorLocalResources = Shapes::ListShape.new(name: 'MonitorLocalResources')
    MonitorMetric = Shapes::StringShape.new(name: 'MonitorMetric')
    MonitorRemoteResource = Shapes::StructureShape.new(name: 'MonitorRemoteResource')
    MonitorRemoteResourceType = Shapes::StringShape.new(name: 'MonitorRemoteResourceType')
    MonitorRemoteResources = Shapes::ListShape.new(name: 'MonitorRemoteResources')
    MonitorStatus = Shapes::StringShape.new(name: 'MonitorStatus')
    MonitorSummary = Shapes::StructureShape.new(name: 'MonitorSummary')
    MonitorTopContributorsRow = Shapes::StructureShape.new(name: 'MonitorTopContributorsRow')
    MonitorTopContributorsRowList = Shapes::ListShape.new(name: 'MonitorTopContributorsRowList')
    Network = Shapes::StructureShape.new(name: 'Network')
    OrgMembershipStatus = Shapes::StringShape.new(name: 'OrgMembershipStatus')
    PerformanceMonitorQueryType = Shapes::StringShape.new(name: 'PerformanceMonitorQueryType')
    PerformanceMonitorSummary = Shapes::StructureShape.new(name: 'PerformanceMonitorSummary')
    PerformanceMonitorSummaryList = Shapes::ListShape.new(name: 'PerformanceMonitorSummaryList')
    PerformanceMonitorTarget = Shapes::StructureShape.new(name: 'PerformanceMonitorTarget')
    PerformanceMonitorTargetIdentifierString = Shapes::StringShape.new(name: 'PerformanceMonitorTargetIdentifierString')
    PerformanceMonitorTargetType = Shapes::StringShape.new(name: 'PerformanceMonitorTargetType')
    PerformanceMonitorTargets = Shapes::ListShape.new(name: 'PerformanceMonitorTargets')
    PerformanceMonitorType = Shapes::StringShape.new(name: 'PerformanceMonitorType')
    QueryData = Shapes::ListShape.new(name: 'QueryData')
    QueryField = Shapes::StructureShape.new(name: 'QueryField')
    QueryFields = Shapes::ListShape.new(name: 'QueryFields')
    QueryLimit = Shapes::IntegerShape.new(name: 'QueryLimit')
    QueryMaxResults = Shapes::IntegerShape.new(name: 'QueryMaxResults')
    QueryRow = Shapes::ListShape.new(name: 'QueryRow')
    QueryStatus = Shapes::StringShape.new(name: 'QueryStatus')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ScopeCoverageStatus = Shapes::StringShape.new(name: 'ScopeCoverageStatus')
    ScopeId = Shapes::StringShape.new(name: 'ScopeId')
    ScopeStatus = Shapes::StringShape.new(name: 'ScopeStatus')
    ScopeSummary = Shapes::StructureShape.new(name: 'ScopeSummary')
    ScopeSummaryList = Shapes::ListShape.new(name: 'ScopeSummaryList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartQueryMonitorTopContributorsInput = Shapes::StructureShape.new(name: 'StartQueryMonitorTopContributorsInput')
    StartQueryMonitorTopContributorsOutput = Shapes::StructureShape.new(name: 'StartQueryMonitorTopContributorsOutput')
    StartQueryPerformanceMonitorInput = Shapes::StructureShape.new(name: 'StartQueryPerformanceMonitorInput')
    StartQueryPerformanceMonitorOutput = Shapes::StructureShape.new(name: 'StartQueryPerformanceMonitorOutput')
    StartQueryWorkloadInsightsTopContributorsDataInput = Shapes::StructureShape.new(name: 'StartQueryWorkloadInsightsTopContributorsDataInput')
    StartQueryWorkloadInsightsTopContributorsDataOutput = Shapes::StructureShape.new(name: 'StartQueryWorkloadInsightsTopContributorsDataOutput')
    StartQueryWorkloadInsightsTopContributorsInput = Shapes::StructureShape.new(name: 'StartQueryWorkloadInsightsTopContributorsInput')
    StartQueryWorkloadInsightsTopContributorsOutput = Shapes::StructureShape.new(name: 'StartQueryWorkloadInsightsTopContributorsOutput')
    StopQueryMonitorTopContributorsInput = Shapes::StructureShape.new(name: 'StopQueryMonitorTopContributorsInput')
    StopQueryMonitorTopContributorsOutput = Shapes::StructureShape.new(name: 'StopQueryMonitorTopContributorsOutput')
    StopQueryPerformanceMonitorInput = Shapes::StructureShape.new(name: 'StopQueryPerformanceMonitorInput')
    StopQueryPerformanceMonitorOutput = Shapes::StructureShape.new(name: 'StopQueryPerformanceMonitorOutput')
    StopQueryWorkloadInsightsTopContributorsDataInput = Shapes::StructureShape.new(name: 'StopQueryWorkloadInsightsTopContributorsDataInput')
    StopQueryWorkloadInsightsTopContributorsDataOutput = Shapes::StructureShape.new(name: 'StopQueryWorkloadInsightsTopContributorsDataOutput')
    StopQueryWorkloadInsightsTopContributorsInput = Shapes::StructureShape.new(name: 'StopQueryWorkloadInsightsTopContributorsInput')
    StopQueryWorkloadInsightsTopContributorsOutput = Shapes::StructureShape.new(name: 'StopQueryWorkloadInsightsTopContributorsOutput')
    String = Shapes::StringShape.new(name: 'String')
    SubnetArn = Shapes::StringShape.new(name: 'SubnetArn')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetId = Shapes::UnionShape.new(name: 'TargetId')
    TargetIdentifier = Shapes::StructureShape.new(name: 'TargetIdentifier')
    TargetResource = Shapes::StructureShape.new(name: 'TargetResource')
    TargetResourceList = Shapes::ListShape.new(name: 'TargetResourceList')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TraversedComponent = Shapes::StructureShape.new(name: 'TraversedComponent')
    TraversedConstructsList = Shapes::ListShape.new(name: 'TraversedConstructsList')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateMonitorInput = Shapes::StructureShape.new(name: 'UpdateMonitorInput')
    UpdateMonitorOutput = Shapes::StructureShape.new(name: 'UpdateMonitorOutput')
    UpdatePerformanceMonitorInput = Shapes::StructureShape.new(name: 'UpdatePerformanceMonitorInput')
    UpdatePerformanceMonitorInputTargetsToAddList = Shapes::ListShape.new(name: 'UpdatePerformanceMonitorInputTargetsToAddList')
    UpdatePerformanceMonitorInputTargetsToRemoveList = Shapes::ListShape.new(name: 'UpdatePerformanceMonitorInputTargetsToRemoveList')
    UpdatePerformanceMonitorOutput = Shapes::StructureShape.new(name: 'UpdatePerformanceMonitorOutput')
    UpdateScopeInput = Shapes::StructureShape.new(name: 'UpdateScopeInput')
    UpdateScopeInputResourcesToAddList = Shapes::ListShape.new(name: 'UpdateScopeInputResourcesToAddList')
    UpdateScopeInputResourcesToDeleteList = Shapes::ListShape.new(name: 'UpdateScopeInputResourcesToDeleteList')
    UpdateScopeOutput = Shapes::StructureShape.new(name: 'UpdateScopeOutput')
    UuidString = Shapes::StringShape.new(name: 'UuidString')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VpcArn = Shapes::StringShape.new(name: 'VpcArn')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    WorkloadInsightsMetric = Shapes::StringShape.new(name: 'WorkloadInsightsMetric')
    WorkloadInsightsTopContributorsDataPoint = Shapes::StructureShape.new(name: 'WorkloadInsightsTopContributorsDataPoint')
    WorkloadInsightsTopContributorsDataPoints = Shapes::ListShape.new(name: 'WorkloadInsightsTopContributorsDataPoints')
    WorkloadInsightsTopContributorsRow = Shapes::StructureShape.new(name: 'WorkloadInsightsTopContributorsRow')
    WorkloadInsightsTopContributorsRowList = Shapes::ListShape.new(name: 'WorkloadInsightsTopContributorsRowList')
    WorkloadInsightsTopContributorsTimestampsList = Shapes::ListShape.new(name: 'WorkloadInsightsTopContributorsTimestampsList')
    WorkloadInsightsTopContributorsValuesList = Shapes::ListShape.new(name: 'WorkloadInsightsTopContributorsValuesList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountToAdd.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    AccountToAdd.add_member(:region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "region"))
    AccountToAdd.add_member(:membership, Shapes::ShapeRef.new(shape: OrgMembershipStatus, required: true, location_name: "membership"))
    AccountToAdd.struct_class = Types::AccountToAdd

    AccountToAddList.member = Shapes::ShapeRef.new(shape: AccountToAdd)

    AdditionalFlowInfo.add_member(:network, Shapes::ShapeRef.new(shape: Network, location_name: "network"))
    AdditionalFlowInfo.add_member(:client_location, Shapes::ShapeRef.new(shape: ClientLocation, location_name: "clientLocation"))
    AdditionalFlowInfo.struct_class = Types::AdditionalFlowInfo

    ClientLocation.add_member(:city, Shapes::ShapeRef.new(shape: String, location_name: "city"))
    ClientLocation.add_member(:subdivision, Shapes::ShapeRef.new(shape: String, location_name: "subdivision"))
    ClientLocation.add_member(:country, Shapes::ShapeRef.new(shape: String, location_name: "country"))
    ClientLocation.struct_class = Types::ClientLocation

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    CreateMonitorInput.add_member(:local_resources, Shapes::ShapeRef.new(shape: CreateMonitorInputLocalResourcesList, required: true, location_name: "localResources"))
    CreateMonitorInput.add_member(:remote_resources, Shapes::ShapeRef.new(shape: MonitorRemoteResources, location_name: "remoteResources"))
    CreateMonitorInput.add_member(:scope_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "scopeArn"))
    CreateMonitorInput.add_member(:client_token, Shapes::ShapeRef.new(shape: UuidString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateMonitorInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMonitorInput.struct_class = Types::CreateMonitorInput

    CreateMonitorInputLocalResourcesList.member = Shapes::ShapeRef.new(shape: MonitorLocalResource)

    CreateMonitorOutput.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "monitorArn"))
    CreateMonitorOutput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    CreateMonitorOutput.add_member(:monitor_status, Shapes::ShapeRef.new(shape: MonitorStatus, required: true, location_name: "monitorStatus"))
    CreateMonitorOutput.add_member(:local_resources, Shapes::ShapeRef.new(shape: MonitorLocalResources, required: true, location_name: "localResources"))
    CreateMonitorOutput.add_member(:remote_resources, Shapes::ShapeRef.new(shape: MonitorRemoteResources, required: true, location_name: "remoteResources"))
    CreateMonitorOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "createdAt"))
    CreateMonitorOutput.add_member(:modified_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "modifiedAt"))
    CreateMonitorOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMonitorOutput.struct_class = Types::CreateMonitorOutput

    CreatePerformanceMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    CreatePerformanceMonitorInput.add_member(:scope_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "scopeArn"))
    CreatePerformanceMonitorInput.add_member(:targets, Shapes::ShapeRef.new(shape: CreatePerformanceMonitorInputTargetsList, required: true, location_name: "targets"))
    CreatePerformanceMonitorInput.add_member(:client_token, Shapes::ShapeRef.new(shape: UuidString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePerformanceMonitorInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePerformanceMonitorInput.struct_class = Types::CreatePerformanceMonitorInput

    CreatePerformanceMonitorInputTargetsList.member = Shapes::ShapeRef.new(shape: PerformanceMonitorTarget)

    CreatePerformanceMonitorOutput.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "monitorArn"))
    CreatePerformanceMonitorOutput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    CreatePerformanceMonitorOutput.add_member(:monitor_status, Shapes::ShapeRef.new(shape: MonitorStatus, required: true, location_name: "monitorStatus"))
    CreatePerformanceMonitorOutput.add_member(:monitor_type, Shapes::ShapeRef.new(shape: PerformanceMonitorType, required: true, location_name: "monitorType"))
    CreatePerformanceMonitorOutput.add_member(:targets, Shapes::ShapeRef.new(shape: PerformanceMonitorTargets, required: true, location_name: "targets"))
    CreatePerformanceMonitorOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "createdAt"))
    CreatePerformanceMonitorOutput.add_member(:modified_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "modifiedAt"))
    CreatePerformanceMonitorOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePerformanceMonitorOutput.struct_class = Types::CreatePerformanceMonitorOutput

    CreateScopeInput.add_member(:targets, Shapes::ShapeRef.new(shape: CreateScopeInputTargetsList, required: true, location_name: "targets"))
    CreateScopeInput.add_member(:client_token, Shapes::ShapeRef.new(shape: UuidString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateScopeInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateScopeInput.struct_class = Types::CreateScopeInput

    CreateScopeInputTargetsList.member = Shapes::ShapeRef.new(shape: TargetResource)

    CreateScopeOutput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location_name: "scopeId"))
    CreateScopeOutput.add_member(:status, Shapes::ShapeRef.new(shape: ScopeStatus, required: true, location_name: "status"))
    CreateScopeOutput.add_member(:scope_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "scopeArn"))
    CreateScopeOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateScopeOutput.struct_class = Types::CreateScopeOutput

    DeleteMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    DeleteMonitorInput.struct_class = Types::DeleteMonitorInput

    DeleteMonitorOutput.struct_class = Types::DeleteMonitorOutput

    DeletePerformanceMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    DeletePerformanceMonitorInput.struct_class = Types::DeletePerformanceMonitorInput

    DeletePerformanceMonitorOutput.struct_class = Types::DeletePerformanceMonitorOutput

    DeleteScopeInput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location: "uri", location_name: "scopeId"))
    DeleteScopeInput.struct_class = Types::DeleteScopeInput

    DeleteScopeOutput.struct_class = Types::DeleteScopeOutput

    FilterParameter.add_member(:field, Shapes::ShapeRef.new(shape: String, required: true, location_name: "field"))
    FilterParameter.add_member(:operator, Shapes::ShapeRef.new(shape: FilterOperator, required: true, location_name: "operator"))
    FilterParameter.add_member(:values, Shapes::ShapeRef.new(shape: FilterParameterValuesList, required: true, location_name: "values"))
    FilterParameter.struct_class = Types::FilterParameter

    FilterParameterValuesList.member = Shapes::ShapeRef.new(shape: String)

    FilterParameters.member = Shapes::ShapeRef.new(shape: FilterParameter)

    GetMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    GetMonitorInput.struct_class = Types::GetMonitorInput

    GetMonitorOutput.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "monitorArn"))
    GetMonitorOutput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    GetMonitorOutput.add_member(:monitor_status, Shapes::ShapeRef.new(shape: MonitorStatus, required: true, location_name: "monitorStatus"))
    GetMonitorOutput.add_member(:local_resources, Shapes::ShapeRef.new(shape: MonitorLocalResources, required: true, location_name: "localResources"))
    GetMonitorOutput.add_member(:remote_resources, Shapes::ShapeRef.new(shape: MonitorRemoteResources, required: true, location_name: "remoteResources"))
    GetMonitorOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "createdAt"))
    GetMonitorOutput.add_member(:modified_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "modifiedAt"))
    GetMonitorOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetMonitorOutput.struct_class = Types::GetMonitorOutput

    GetMonitorScopeSuggestionsInput.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location: "querystring", location_name: "monitorArn"))
    GetMonitorScopeSuggestionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetMonitorScopeSuggestionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetMonitorScopeSuggestionsInput.struct_class = Types::GetMonitorScopeSuggestionsInput

    GetMonitorScopeSuggestionsOutput.add_member(:status, Shapes::ShapeRef.new(shape: ScopeCoverageStatus, required: true, location_name: "status"))
    GetMonitorScopeSuggestionsOutput.add_member(:accounts_to_add, Shapes::ShapeRef.new(shape: AccountToAddList, required: true, location_name: "accountsToAdd"))
    GetMonitorScopeSuggestionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetMonitorScopeSuggestionsOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "updatedAt"))
    GetMonitorScopeSuggestionsOutput.struct_class = Types::GetMonitorScopeSuggestionsOutput

    GetPerformanceMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    GetPerformanceMonitorInput.struct_class = Types::GetPerformanceMonitorInput

    GetPerformanceMonitorOutput.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "monitorArn"))
    GetPerformanceMonitorOutput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    GetPerformanceMonitorOutput.add_member(:monitor_status, Shapes::ShapeRef.new(shape: MonitorStatus, required: true, location_name: "monitorStatus"))
    GetPerformanceMonitorOutput.add_member(:monitor_type, Shapes::ShapeRef.new(shape: PerformanceMonitorType, required: true, location_name: "monitorType"))
    GetPerformanceMonitorOutput.add_member(:targets, Shapes::ShapeRef.new(shape: PerformanceMonitorTargets, required: true, location_name: "targets"))
    GetPerformanceMonitorOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "createdAt"))
    GetPerformanceMonitorOutput.add_member(:modified_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "modifiedAt"))
    GetPerformanceMonitorOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetPerformanceMonitorOutput.struct_class = Types::GetPerformanceMonitorOutput

    GetQueryResultsMonitorTopContributorsInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    GetQueryResultsMonitorTopContributorsInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    GetQueryResultsMonitorTopContributorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetQueryResultsMonitorTopContributorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    GetQueryResultsMonitorTopContributorsInput.struct_class = Types::GetQueryResultsMonitorTopContributorsInput

    GetQueryResultsMonitorTopContributorsOutput.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, location_name: "unit"))
    GetQueryResultsMonitorTopContributorsOutput.add_member(:top_contributors, Shapes::ShapeRef.new(shape: MonitorTopContributorsRowList, location_name: "topContributors"))
    GetQueryResultsMonitorTopContributorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetQueryResultsMonitorTopContributorsOutput.struct_class = Types::GetQueryResultsMonitorTopContributorsOutput

    GetQueryResultsPerformanceMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    GetQueryResultsPerformanceMonitorInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    GetQueryResultsPerformanceMonitorInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetQueryResultsPerformanceMonitorInput.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryMaxResults, location: "querystring", location_name: "maxResults"))
    GetQueryResultsPerformanceMonitorInput.struct_class = Types::GetQueryResultsPerformanceMonitorInput

    GetQueryResultsPerformanceMonitorOutput.add_member(:fields, Shapes::ShapeRef.new(shape: QueryFields, required: true, location_name: "fields"))
    GetQueryResultsPerformanceMonitorOutput.add_member(:data, Shapes::ShapeRef.new(shape: QueryData, required: true, location_name: "data"))
    GetQueryResultsPerformanceMonitorOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetQueryResultsPerformanceMonitorOutput.struct_class = Types::GetQueryResultsPerformanceMonitorOutput

    GetQueryResultsWorkloadInsightsTopContributorsDataInput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location: "uri", location_name: "scopeId"))
    GetQueryResultsWorkloadInsightsTopContributorsDataInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    GetQueryResultsWorkloadInsightsTopContributorsDataInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetQueryResultsWorkloadInsightsTopContributorsDataInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    GetQueryResultsWorkloadInsightsTopContributorsDataInput.struct_class = Types::GetQueryResultsWorkloadInsightsTopContributorsDataInput

    GetQueryResultsWorkloadInsightsTopContributorsDataOutput.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, required: true, location_name: "unit"))
    GetQueryResultsWorkloadInsightsTopContributorsDataOutput.add_member(:datapoints, Shapes::ShapeRef.new(shape: WorkloadInsightsTopContributorsDataPoints, required: true, location_name: "datapoints"))
    GetQueryResultsWorkloadInsightsTopContributorsDataOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetQueryResultsWorkloadInsightsTopContributorsDataOutput.struct_class = Types::GetQueryResultsWorkloadInsightsTopContributorsDataOutput

    GetQueryResultsWorkloadInsightsTopContributorsInput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location: "uri", location_name: "scopeId"))
    GetQueryResultsWorkloadInsightsTopContributorsInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    GetQueryResultsWorkloadInsightsTopContributorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetQueryResultsWorkloadInsightsTopContributorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    GetQueryResultsWorkloadInsightsTopContributorsInput.struct_class = Types::GetQueryResultsWorkloadInsightsTopContributorsInput

    GetQueryResultsWorkloadInsightsTopContributorsOutput.add_member(:top_contributors, Shapes::ShapeRef.new(shape: WorkloadInsightsTopContributorsRowList, location_name: "topContributors"))
    GetQueryResultsWorkloadInsightsTopContributorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetQueryResultsWorkloadInsightsTopContributorsOutput.struct_class = Types::GetQueryResultsWorkloadInsightsTopContributorsOutput

    GetQueryStatusMonitorTopContributorsInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    GetQueryStatusMonitorTopContributorsInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    GetQueryStatusMonitorTopContributorsInput.struct_class = Types::GetQueryStatusMonitorTopContributorsInput

    GetQueryStatusMonitorTopContributorsOutput.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "status"))
    GetQueryStatusMonitorTopContributorsOutput.struct_class = Types::GetQueryStatusMonitorTopContributorsOutput

    GetQueryStatusPerformanceMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    GetQueryStatusPerformanceMonitorInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    GetQueryStatusPerformanceMonitorInput.struct_class = Types::GetQueryStatusPerformanceMonitorInput

    GetQueryStatusPerformanceMonitorOutput.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "status"))
    GetQueryStatusPerformanceMonitorOutput.struct_class = Types::GetQueryStatusPerformanceMonitorOutput

    GetQueryStatusWorkloadInsightsTopContributorsDataInput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location: "uri", location_name: "scopeId"))
    GetQueryStatusWorkloadInsightsTopContributorsDataInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    GetQueryStatusWorkloadInsightsTopContributorsDataInput.struct_class = Types::GetQueryStatusWorkloadInsightsTopContributorsDataInput

    GetQueryStatusWorkloadInsightsTopContributorsDataOutput.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "status"))
    GetQueryStatusWorkloadInsightsTopContributorsDataOutput.struct_class = Types::GetQueryStatusWorkloadInsightsTopContributorsDataOutput

    GetQueryStatusWorkloadInsightsTopContributorsInput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location: "uri", location_name: "scopeId"))
    GetQueryStatusWorkloadInsightsTopContributorsInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    GetQueryStatusWorkloadInsightsTopContributorsInput.struct_class = Types::GetQueryStatusWorkloadInsightsTopContributorsInput

    GetQueryStatusWorkloadInsightsTopContributorsOutput.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "status"))
    GetQueryStatusWorkloadInsightsTopContributorsOutput.struct_class = Types::GetQueryStatusWorkloadInsightsTopContributorsOutput

    GetScopeInput.add_member(:scope_id, Shapes::ShapeRef.new(shape: GetScopeInputScopeIdString, required: true, location: "uri", location_name: "scopeId"))
    GetScopeInput.struct_class = Types::GetScopeInput

    GetScopeOutput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location_name: "scopeId"))
    GetScopeOutput.add_member(:status, Shapes::ShapeRef.new(shape: ScopeStatus, required: true, location_name: "status"))
    GetScopeOutput.add_member(:scope_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "scopeArn"))
    GetScopeOutput.add_member(:targets, Shapes::ShapeRef.new(shape: TargetResourceList, required: true, location_name: "targets"))
    GetScopeOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetScopeOutput.struct_class = Types::GetScopeOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    KubernetesMetadata.add_member(:local_service_name, Shapes::ShapeRef.new(shape: String, location_name: "localServiceName"))
    KubernetesMetadata.add_member(:local_pod_name, Shapes::ShapeRef.new(shape: String, location_name: "localPodName"))
    KubernetesMetadata.add_member(:local_pod_namespace, Shapes::ShapeRef.new(shape: String, location_name: "localPodNamespace"))
    KubernetesMetadata.add_member(:remote_service_name, Shapes::ShapeRef.new(shape: String, location_name: "remoteServiceName"))
    KubernetesMetadata.add_member(:remote_pod_name, Shapes::ShapeRef.new(shape: String, location_name: "remotePodName"))
    KubernetesMetadata.add_member(:remote_pod_namespace, Shapes::ShapeRef.new(shape: String, location_name: "remotePodNamespace"))
    KubernetesMetadata.struct_class = Types::KubernetesMetadata

    ListMonitorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMonitorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMonitorsInput.add_member(:monitor_status, Shapes::ShapeRef.new(shape: MonitorStatus, location: "querystring", location_name: "monitorStatus"))
    ListMonitorsInput.struct_class = Types::ListMonitorsInput

    ListMonitorsOutput.add_member(:monitors, Shapes::ShapeRef.new(shape: MonitorList, required: true, location_name: "monitors"))
    ListMonitorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMonitorsOutput.struct_class = Types::ListMonitorsOutput

    ListPerformanceMonitorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListPerformanceMonitorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPerformanceMonitorsInput.add_member(:monitor_status, Shapes::ShapeRef.new(shape: MonitorStatus, location: "querystring", location_name: "monitorStatus"))
    ListPerformanceMonitorsInput.add_member(:monitor_type, Shapes::ShapeRef.new(shape: PerformanceMonitorType, location: "querystring", location_name: "monitorType"))
    ListPerformanceMonitorsInput.struct_class = Types::ListPerformanceMonitorsInput

    ListPerformanceMonitorsOutput.add_member(:monitors, Shapes::ShapeRef.new(shape: PerformanceMonitorSummaryList, required: true, location_name: "monitors"))
    ListPerformanceMonitorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPerformanceMonitorsOutput.struct_class = Types::ListPerformanceMonitorsOutput

    ListScopesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListScopesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListScopesInput.struct_class = Types::ListScopesInput

    ListScopesOutput.add_member(:scopes, Shapes::ShapeRef.new(shape: ScopeSummaryList, required: true, location_name: "scopes"))
    ListScopesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListScopesOutput.struct_class = Types::ListScopesOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    MonitorList.member = Shapes::ShapeRef.new(shape: MonitorSummary)

    MonitorLocalResource.add_member(:type, Shapes::ShapeRef.new(shape: MonitorLocalResourceType, required: true, location_name: "type"))
    MonitorLocalResource.add_member(:identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "identifier"))
    MonitorLocalResource.struct_class = Types::MonitorLocalResource

    MonitorLocalResources.member = Shapes::ShapeRef.new(shape: MonitorLocalResource)

    MonitorRemoteResource.add_member(:type, Shapes::ShapeRef.new(shape: MonitorRemoteResourceType, required: true, location_name: "type"))
    MonitorRemoteResource.add_member(:identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "identifier"))
    MonitorRemoteResource.struct_class = Types::MonitorRemoteResource

    MonitorRemoteResources.member = Shapes::ShapeRef.new(shape: MonitorRemoteResource)

    MonitorSummary.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "monitorArn"))
    MonitorSummary.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    MonitorSummary.add_member(:monitor_status, Shapes::ShapeRef.new(shape: MonitorStatus, required: true, location_name: "monitorStatus"))
    MonitorSummary.struct_class = Types::MonitorSummary

    MonitorTopContributorsRow.add_member(:local_ip, Shapes::ShapeRef.new(shape: String, location_name: "localIp"))
    MonitorTopContributorsRow.add_member(:snat_ip, Shapes::ShapeRef.new(shape: String, location_name: "snatIp"))
    MonitorTopContributorsRow.add_member(:local_instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "localInstanceId"))
    MonitorTopContributorsRow.add_member(:local_vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "localVpcId"))
    MonitorTopContributorsRow.add_member(:local_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "localRegion"))
    MonitorTopContributorsRow.add_member(:local_az, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "localAz"))
    MonitorTopContributorsRow.add_member(:local_subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "localSubnetId"))
    MonitorTopContributorsRow.add_member(:target_port, Shapes::ShapeRef.new(shape: Integer, location_name: "targetPort"))
    MonitorTopContributorsRow.add_member(:destination_category, Shapes::ShapeRef.new(shape: DestinationCategory, location_name: "destinationCategory"))
    MonitorTopContributorsRow.add_member(:remote_vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "remoteVpcId"))
    MonitorTopContributorsRow.add_member(:remote_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "remoteRegion"))
    MonitorTopContributorsRow.add_member(:remote_az, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "remoteAz"))
    MonitorTopContributorsRow.add_member(:remote_subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "remoteSubnetId"))
    MonitorTopContributorsRow.add_member(:remote_instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "remoteInstanceId"))
    MonitorTopContributorsRow.add_member(:remote_ip, Shapes::ShapeRef.new(shape: String, location_name: "remoteIp"))
    MonitorTopContributorsRow.add_member(:dnat_ip, Shapes::ShapeRef.new(shape: String, location_name: "dnatIp"))
    MonitorTopContributorsRow.add_member(:value, Shapes::ShapeRef.new(shape: Long, location_name: "value"))
    MonitorTopContributorsRow.add_member(:traversed_constructs, Shapes::ShapeRef.new(shape: TraversedConstructsList, location_name: "traversedConstructs"))
    MonitorTopContributorsRow.add_member(:kubernetes_metadata, Shapes::ShapeRef.new(shape: KubernetesMetadata, location_name: "kubernetesMetadata"))
    MonitorTopContributorsRow.add_member(:local_instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "localInstanceArn"))
    MonitorTopContributorsRow.add_member(:local_subnet_arn, Shapes::ShapeRef.new(shape: SubnetArn, location_name: "localSubnetArn"))
    MonitorTopContributorsRow.add_member(:local_vpc_arn, Shapes::ShapeRef.new(shape: VpcArn, location_name: "localVpcArn"))
    MonitorTopContributorsRow.add_member(:remote_instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "remoteInstanceArn"))
    MonitorTopContributorsRow.add_member(:remote_subnet_arn, Shapes::ShapeRef.new(shape: SubnetArn, location_name: "remoteSubnetArn"))
    MonitorTopContributorsRow.add_member(:remote_vpc_arn, Shapes::ShapeRef.new(shape: VpcArn, location_name: "remoteVpcArn"))
    MonitorTopContributorsRow.add_member(:additional_flow_info, Shapes::ShapeRef.new(shape: AdditionalFlowInfo, location_name: "additionalFlowInfo"))
    MonitorTopContributorsRow.struct_class = Types::MonitorTopContributorsRow

    MonitorTopContributorsRowList.member = Shapes::ShapeRef.new(shape: MonitorTopContributorsRow)

    Network.add_member(:as_name, Shapes::ShapeRef.new(shape: String, location_name: "asName"))
    Network.add_member(:as_number, Shapes::ShapeRef.new(shape: Long, location_name: "asNumber"))
    Network.struct_class = Types::Network

    PerformanceMonitorSummary.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "monitorArn"))
    PerformanceMonitorSummary.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    PerformanceMonitorSummary.add_member(:monitor_status, Shapes::ShapeRef.new(shape: MonitorStatus, required: true, location_name: "monitorStatus"))
    PerformanceMonitorSummary.add_member(:monitor_type, Shapes::ShapeRef.new(shape: PerformanceMonitorType, required: true, location_name: "monitorType"))
    PerformanceMonitorSummary.add_member(:targets, Shapes::ShapeRef.new(shape: PerformanceMonitorTargets, location_name: "targets"))
    PerformanceMonitorSummary.struct_class = Types::PerformanceMonitorSummary

    PerformanceMonitorSummaryList.member = Shapes::ShapeRef.new(shape: PerformanceMonitorSummary)

    PerformanceMonitorTarget.add_member(:type, Shapes::ShapeRef.new(shape: PerformanceMonitorTargetType, required: true, location_name: "type"))
    PerformanceMonitorTarget.add_member(:identifier, Shapes::ShapeRef.new(shape: PerformanceMonitorTargetIdentifierString, required: true, location_name: "identifier"))
    PerformanceMonitorTarget.struct_class = Types::PerformanceMonitorTarget

    PerformanceMonitorTargets.member = Shapes::ShapeRef.new(shape: PerformanceMonitorTarget)

    QueryData.member = Shapes::ShapeRef.new(shape: QueryRow)

    QueryField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    QueryField.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    QueryField.struct_class = Types::QueryField

    QueryFields.member = Shapes::ShapeRef.new(shape: QueryField)

    QueryRow.member = Shapes::ShapeRef.new(shape: String)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ScopeSummary.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location_name: "scopeId"))
    ScopeSummary.add_member(:status, Shapes::ShapeRef.new(shape: ScopeStatus, required: true, location_name: "status"))
    ScopeSummary.add_member(:scope_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "scopeArn"))
    ScopeSummary.struct_class = Types::ScopeSummary

    ScopeSummaryList.member = Shapes::ShapeRef.new(shape: ScopeSummary)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartQueryMonitorTopContributorsInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    StartQueryMonitorTopContributorsInput.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "startTime"))
    StartQueryMonitorTopContributorsInput.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "endTime"))
    StartQueryMonitorTopContributorsInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: MonitorMetric, required: true, location_name: "metricName"))
    StartQueryMonitorTopContributorsInput.add_member(:destination_category, Shapes::ShapeRef.new(shape: DestinationCategory, required: true, location_name: "destinationCategory"))
    StartQueryMonitorTopContributorsInput.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "limit"))
    StartQueryMonitorTopContributorsInput.struct_class = Types::StartQueryMonitorTopContributorsInput

    StartQueryMonitorTopContributorsOutput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "queryId"))
    StartQueryMonitorTopContributorsOutput.struct_class = Types::StartQueryMonitorTopContributorsOutput

    StartQueryPerformanceMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    StartQueryPerformanceMonitorInput.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "startTime"))
    StartQueryPerformanceMonitorInput.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "endTime"))
    StartQueryPerformanceMonitorInput.add_member(:query_type, Shapes::ShapeRef.new(shape: PerformanceMonitorQueryType, required: true, location_name: "queryType"))
    StartQueryPerformanceMonitorInput.add_member(:filter_parameters, Shapes::ShapeRef.new(shape: FilterParameters, location_name: "filterParameters"))
    StartQueryPerformanceMonitorInput.add_member(:limit, Shapes::ShapeRef.new(shape: QueryLimit, location_name: "limit"))
    StartQueryPerformanceMonitorInput.struct_class = Types::StartQueryPerformanceMonitorInput

    StartQueryPerformanceMonitorOutput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "queryId"))
    StartQueryPerformanceMonitorOutput.struct_class = Types::StartQueryPerformanceMonitorOutput

    StartQueryWorkloadInsightsTopContributorsDataInput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location: "uri", location_name: "scopeId"))
    StartQueryWorkloadInsightsTopContributorsDataInput.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "startTime"))
    StartQueryWorkloadInsightsTopContributorsDataInput.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "endTime"))
    StartQueryWorkloadInsightsTopContributorsDataInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: WorkloadInsightsMetric, required: true, location_name: "metricName"))
    StartQueryWorkloadInsightsTopContributorsDataInput.add_member(:destination_category, Shapes::ShapeRef.new(shape: DestinationCategory, required: true, location_name: "destinationCategory"))
    StartQueryWorkloadInsightsTopContributorsDataInput.struct_class = Types::StartQueryWorkloadInsightsTopContributorsDataInput

    StartQueryWorkloadInsightsTopContributorsDataOutput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "queryId"))
    StartQueryWorkloadInsightsTopContributorsDataOutput.struct_class = Types::StartQueryWorkloadInsightsTopContributorsDataOutput

    StartQueryWorkloadInsightsTopContributorsInput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location: "uri", location_name: "scopeId"))
    StartQueryWorkloadInsightsTopContributorsInput.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "startTime"))
    StartQueryWorkloadInsightsTopContributorsInput.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "endTime"))
    StartQueryWorkloadInsightsTopContributorsInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: WorkloadInsightsMetric, required: true, location_name: "metricName"))
    StartQueryWorkloadInsightsTopContributorsInput.add_member(:destination_category, Shapes::ShapeRef.new(shape: DestinationCategory, required: true, location_name: "destinationCategory"))
    StartQueryWorkloadInsightsTopContributorsInput.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "limit"))
    StartQueryWorkloadInsightsTopContributorsInput.struct_class = Types::StartQueryWorkloadInsightsTopContributorsInput

    StartQueryWorkloadInsightsTopContributorsOutput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "queryId"))
    StartQueryWorkloadInsightsTopContributorsOutput.struct_class = Types::StartQueryWorkloadInsightsTopContributorsOutput

    StopQueryMonitorTopContributorsInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    StopQueryMonitorTopContributorsInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    StopQueryMonitorTopContributorsInput.struct_class = Types::StopQueryMonitorTopContributorsInput

    StopQueryMonitorTopContributorsOutput.struct_class = Types::StopQueryMonitorTopContributorsOutput

    StopQueryPerformanceMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    StopQueryPerformanceMonitorInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    StopQueryPerformanceMonitorInput.struct_class = Types::StopQueryPerformanceMonitorInput

    StopQueryPerformanceMonitorOutput.struct_class = Types::StopQueryPerformanceMonitorOutput

    StopQueryWorkloadInsightsTopContributorsDataInput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location: "uri", location_name: "scopeId"))
    StopQueryWorkloadInsightsTopContributorsDataInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    StopQueryWorkloadInsightsTopContributorsDataInput.struct_class = Types::StopQueryWorkloadInsightsTopContributorsDataInput

    StopQueryWorkloadInsightsTopContributorsDataOutput.struct_class = Types::StopQueryWorkloadInsightsTopContributorsDataOutput

    StopQueryWorkloadInsightsTopContributorsInput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location: "uri", location_name: "scopeId"))
    StopQueryWorkloadInsightsTopContributorsInput.add_member(:query_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "queryId"))
    StopQueryWorkloadInsightsTopContributorsInput.struct_class = Types::StopQueryWorkloadInsightsTopContributorsInput

    StopQueryWorkloadInsightsTopContributorsOutput.struct_class = Types::StopQueryWorkloadInsightsTopContributorsOutput

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TargetId.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    TargetId.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TargetId.add_member_subclass(:account_id, Types::TargetId::AccountId)
    TargetId.add_member_subclass(:unknown, Types::TargetId::Unknown)
    TargetId.struct_class = Types::TargetId

    TargetIdentifier.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "targetId"))
    TargetIdentifier.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, required: true, location_name: "targetType"))
    TargetIdentifier.struct_class = Types::TargetIdentifier

    TargetResource.add_member(:target_identifier, Shapes::ShapeRef.new(shape: TargetIdentifier, required: true, location_name: "targetIdentifier"))
    TargetResource.add_member(:region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "region"))
    TargetResource.struct_class = Types::TargetResource

    TargetResourceList.member = Shapes::ShapeRef.new(shape: TargetResource)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TraversedComponent.add_member(:component_id, Shapes::ShapeRef.new(shape: Component, location_name: "componentId"))
    TraversedComponent.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, location_name: "componentType"))
    TraversedComponent.add_member(:component_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "componentArn"))
    TraversedComponent.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    TraversedComponent.struct_class = Types::TraversedComponent

    TraversedConstructsList.member = Shapes::ShapeRef.new(shape: TraversedComponent)

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    UpdateMonitorInput.add_member(:local_resources_to_add, Shapes::ShapeRef.new(shape: MonitorLocalResources, location_name: "localResourcesToAdd"))
    UpdateMonitorInput.add_member(:local_resources_to_remove, Shapes::ShapeRef.new(shape: MonitorLocalResources, location_name: "localResourcesToRemove"))
    UpdateMonitorInput.add_member(:remote_resources_to_add, Shapes::ShapeRef.new(shape: MonitorRemoteResources, location_name: "remoteResourcesToAdd"))
    UpdateMonitorInput.add_member(:remote_resources_to_remove, Shapes::ShapeRef.new(shape: MonitorRemoteResources, location_name: "remoteResourcesToRemove"))
    UpdateMonitorInput.add_member(:client_token, Shapes::ShapeRef.new(shape: UuidString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateMonitorInput.struct_class = Types::UpdateMonitorInput

    UpdateMonitorOutput.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "monitorArn"))
    UpdateMonitorOutput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    UpdateMonitorOutput.add_member(:monitor_status, Shapes::ShapeRef.new(shape: MonitorStatus, required: true, location_name: "monitorStatus"))
    UpdateMonitorOutput.add_member(:local_resources, Shapes::ShapeRef.new(shape: MonitorLocalResources, required: true, location_name: "localResources"))
    UpdateMonitorOutput.add_member(:remote_resources, Shapes::ShapeRef.new(shape: MonitorRemoteResources, required: true, location_name: "remoteResources"))
    UpdateMonitorOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "createdAt"))
    UpdateMonitorOutput.add_member(:modified_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "modifiedAt"))
    UpdateMonitorOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateMonitorOutput.struct_class = Types::UpdateMonitorOutput

    UpdatePerformanceMonitorInput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "monitorName"))
    UpdatePerformanceMonitorInput.add_member(:targets_to_add, Shapes::ShapeRef.new(shape: UpdatePerformanceMonitorInputTargetsToAddList, location_name: "targetsToAdd"))
    UpdatePerformanceMonitorInput.add_member(:targets_to_remove, Shapes::ShapeRef.new(shape: UpdatePerformanceMonitorInputTargetsToRemoveList, location_name: "targetsToRemove"))
    UpdatePerformanceMonitorInput.add_member(:client_token, Shapes::ShapeRef.new(shape: UuidString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdatePerformanceMonitorInput.struct_class = Types::UpdatePerformanceMonitorInput

    UpdatePerformanceMonitorInputTargetsToAddList.member = Shapes::ShapeRef.new(shape: PerformanceMonitorTarget)

    UpdatePerformanceMonitorInputTargetsToRemoveList.member = Shapes::ShapeRef.new(shape: PerformanceMonitorTarget)

    UpdatePerformanceMonitorOutput.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: MonitorArn, required: true, location_name: "monitorArn"))
    UpdatePerformanceMonitorOutput.add_member(:monitor_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "monitorName"))
    UpdatePerformanceMonitorOutput.add_member(:monitor_status, Shapes::ShapeRef.new(shape: MonitorStatus, required: true, location_name: "monitorStatus"))
    UpdatePerformanceMonitorOutput.add_member(:monitor_type, Shapes::ShapeRef.new(shape: PerformanceMonitorType, required: true, location_name: "monitorType"))
    UpdatePerformanceMonitorOutput.add_member(:targets, Shapes::ShapeRef.new(shape: PerformanceMonitorTargets, required: true, location_name: "targets"))
    UpdatePerformanceMonitorOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "createdAt"))
    UpdatePerformanceMonitorOutput.add_member(:modified_at, Shapes::ShapeRef.new(shape: Iso8601Timestamp, required: true, location_name: "modifiedAt"))
    UpdatePerformanceMonitorOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdatePerformanceMonitorOutput.struct_class = Types::UpdatePerformanceMonitorOutput

    UpdateScopeInput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location: "uri", location_name: "scopeId"))
    UpdateScopeInput.add_member(:resources_to_add, Shapes::ShapeRef.new(shape: UpdateScopeInputResourcesToAddList, location_name: "resourcesToAdd"))
    UpdateScopeInput.add_member(:resources_to_delete, Shapes::ShapeRef.new(shape: UpdateScopeInputResourcesToDeleteList, location_name: "resourcesToDelete"))
    UpdateScopeInput.struct_class = Types::UpdateScopeInput

    UpdateScopeInputResourcesToAddList.member = Shapes::ShapeRef.new(shape: TargetResource)

    UpdateScopeInputResourcesToDeleteList.member = Shapes::ShapeRef.new(shape: TargetResource)

    UpdateScopeOutput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location_name: "scopeId"))
    UpdateScopeOutput.add_member(:status, Shapes::ShapeRef.new(shape: ScopeStatus, required: true, location_name: "status"))
    UpdateScopeOutput.add_member(:scope_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "scopeArn"))
    UpdateScopeOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateScopeOutput.struct_class = Types::UpdateScopeOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    WorkloadInsightsTopContributorsDataPoint.add_member(:timestamps, Shapes::ShapeRef.new(shape: WorkloadInsightsTopContributorsTimestampsList, required: true, location_name: "timestamps"))
    WorkloadInsightsTopContributorsDataPoint.add_member(:values, Shapes::ShapeRef.new(shape: WorkloadInsightsTopContributorsValuesList, required: true, location_name: "values"))
    WorkloadInsightsTopContributorsDataPoint.add_member(:label, Shapes::ShapeRef.new(shape: String, required: true, location_name: "label"))
    WorkloadInsightsTopContributorsDataPoint.struct_class = Types::WorkloadInsightsTopContributorsDataPoint

    WorkloadInsightsTopContributorsDataPoints.member = Shapes::ShapeRef.new(shape: WorkloadInsightsTopContributorsDataPoint)

    WorkloadInsightsTopContributorsRow.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    WorkloadInsightsTopContributorsRow.add_member(:local_subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "localSubnetId"))
    WorkloadInsightsTopContributorsRow.add_member(:local_az, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "localAz"))
    WorkloadInsightsTopContributorsRow.add_member(:local_vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "localVpcId"))
    WorkloadInsightsTopContributorsRow.add_member(:local_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "localRegion"))
    WorkloadInsightsTopContributorsRow.add_member(:remote_identifier, Shapes::ShapeRef.new(shape: String, location_name: "remoteIdentifier"))
    WorkloadInsightsTopContributorsRow.add_member(:value, Shapes::ShapeRef.new(shape: Long, location_name: "value"))
    WorkloadInsightsTopContributorsRow.add_member(:local_subnet_arn, Shapes::ShapeRef.new(shape: SubnetArn, location_name: "localSubnetArn"))
    WorkloadInsightsTopContributorsRow.add_member(:local_vpc_arn, Shapes::ShapeRef.new(shape: VpcArn, location_name: "localVpcArn"))
    WorkloadInsightsTopContributorsRow.struct_class = Types::WorkloadInsightsTopContributorsRow

    WorkloadInsightsTopContributorsRowList.member = Shapes::ShapeRef.new(shape: WorkloadInsightsTopContributorsRow)

    WorkloadInsightsTopContributorsTimestampsList.member = Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time)

    WorkloadInsightsTopContributorsValuesList.member = Shapes::ShapeRef.new(shape: Double)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-04-19"

      api.metadata = {
        "apiVersion" => "2023-04-19",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "networkflowmonitor",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Network Flow Monitor",
        "serviceId" => "NetworkFlowMonitor",
        "signatureVersion" => "v4",
        "signingName" => "networkflowmonitor",
        "uid" => "networkflowmonitor-2023-04-19",
      }

      api.add_operation(:create_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMonitor"
        o.http_method = "POST"
        o.http_request_uri = "/monitors"
        o.input = Shapes::ShapeRef.new(shape: CreateMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_performance_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePerformanceMonitor"
        o.http_method = "POST"
        o.http_request_uri = "/performance-monitors"
        o.input = Shapes::ShapeRef.new(shape: CreatePerformanceMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePerformanceMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScope"
        o.http_method = "POST"
        o.http_request_uri = "/scopes"
        o.input = Shapes::ShapeRef.new(shape: CreateScopeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateScopeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMonitor"
        o.http_method = "DELETE"
        o.http_request_uri = "/monitors/{monitorName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_performance_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePerformanceMonitor"
        o.http_method = "DELETE"
        o.http_request_uri = "/performance-monitors/{monitorName}"
        o.input = Shapes::ShapeRef.new(shape: DeletePerformanceMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePerformanceMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScope"
        o.http_method = "DELETE"
        o.http_request_uri = "/scopes/{scopeId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteScopeInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteScopeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMonitor"
        o.http_method = "GET"
        o.http_request_uri = "/monitors/{monitorName}"
        o.input = Shapes::ShapeRef.new(shape: GetMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: GetMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_monitor_scope_suggestions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMonitorScopeSuggestions"
        o.http_method = "GET"
        o.http_request_uri = "/monitor-scope-suggestions"
        o.input = Shapes::ShapeRef.new(shape: GetMonitorScopeSuggestionsInput)
        o.output = Shapes::ShapeRef.new(shape: GetMonitorScopeSuggestionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_performance_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPerformanceMonitor"
        o.http_method = "GET"
        o.http_request_uri = "/performance-monitors/{monitorName}"
        o.input = Shapes::ShapeRef.new(shape: GetPerformanceMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: GetPerformanceMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_query_results_monitor_top_contributors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryResultsMonitorTopContributors"
        o.http_method = "GET"
        o.http_request_uri = "/monitors/{monitorName}/topContributorsQueries/{queryId}/results"
        o.input = Shapes::ShapeRef.new(shape: GetQueryResultsMonitorTopContributorsInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryResultsMonitorTopContributorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_query_results_performance_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryResultsPerformanceMonitor"
        o.http_method = "GET"
        o.http_request_uri = "/performance-monitors/{monitorName}/queries/{queryId}/results"
        o.input = Shapes::ShapeRef.new(shape: GetQueryResultsPerformanceMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryResultsPerformanceMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_query_results_workload_insights_top_contributors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryResultsWorkloadInsightsTopContributors"
        o.http_method = "GET"
        o.http_request_uri = "/workloadInsights/{scopeId}/topContributorsQueries/{queryId}/results"
        o.input = Shapes::ShapeRef.new(shape: GetQueryResultsWorkloadInsightsTopContributorsInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryResultsWorkloadInsightsTopContributorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_query_results_workload_insights_top_contributors_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryResultsWorkloadInsightsTopContributorsData"
        o.http_method = "GET"
        o.http_request_uri = "/workloadInsights/{scopeId}/topContributorsDataQueries/{queryId}/results"
        o.input = Shapes::ShapeRef.new(shape: GetQueryResultsWorkloadInsightsTopContributorsDataInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryResultsWorkloadInsightsTopContributorsDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_query_status_monitor_top_contributors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryStatusMonitorTopContributors"
        o.http_method = "GET"
        o.http_request_uri = "/monitors/{monitorName}/topContributorsQueries/{queryId}/status"
        o.input = Shapes::ShapeRef.new(shape: GetQueryStatusMonitorTopContributorsInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryStatusMonitorTopContributorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_query_status_performance_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryStatusPerformanceMonitor"
        o.http_method = "GET"
        o.http_request_uri = "/performance-monitors/{monitorName}/queries/{queryId}/status"
        o.input = Shapes::ShapeRef.new(shape: GetQueryStatusPerformanceMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryStatusPerformanceMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_query_status_workload_insights_top_contributors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryStatusWorkloadInsightsTopContributors"
        o.http_method = "GET"
        o.http_request_uri = "/workloadInsights/{scopeId}/topContributorsQueries/{queryId}/status"
        o.input = Shapes::ShapeRef.new(shape: GetQueryStatusWorkloadInsightsTopContributorsInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryStatusWorkloadInsightsTopContributorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_query_status_workload_insights_top_contributors_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryStatusWorkloadInsightsTopContributorsData"
        o.http_method = "GET"
        o.http_request_uri = "/workloadInsights/{scopeId}/topContributorsDataQueries/{queryId}/status"
        o.input = Shapes::ShapeRef.new(shape: GetQueryStatusWorkloadInsightsTopContributorsDataInput)
        o.output = Shapes::ShapeRef.new(shape: GetQueryStatusWorkloadInsightsTopContributorsDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetScope"
        o.http_method = "GET"
        o.http_request_uri = "/scopes/{scopeId}"
        o.input = Shapes::ShapeRef.new(shape: GetScopeInput)
        o.output = Shapes::ShapeRef.new(shape: GetScopeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_monitors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMonitors"
        o.http_method = "GET"
        o.http_request_uri = "/monitors"
        o.input = Shapes::ShapeRef.new(shape: ListMonitorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMonitorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_performance_monitors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPerformanceMonitors"
        o.http_method = "GET"
        o.http_request_uri = "/performance-monitors"
        o.input = Shapes::ShapeRef.new(shape: ListPerformanceMonitorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListPerformanceMonitorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_scopes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScopes"
        o.http_method = "GET"
        o.http_request_uri = "/scopes"
        o.input = Shapes::ShapeRef.new(shape: ListScopesInput)
        o.output = Shapes::ShapeRef.new(shape: ListScopesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_query_monitor_top_contributors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartQueryMonitorTopContributors"
        o.http_method = "POST"
        o.http_request_uri = "/monitors/{monitorName}/topContributorsQueries"
        o.input = Shapes::ShapeRef.new(shape: StartQueryMonitorTopContributorsInput)
        o.output = Shapes::ShapeRef.new(shape: StartQueryMonitorTopContributorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_query_performance_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartQueryPerformanceMonitor"
        o.http_method = "POST"
        o.http_request_uri = "/performance-monitors/{monitorName}/queries"
        o.input = Shapes::ShapeRef.new(shape: StartQueryPerformanceMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: StartQueryPerformanceMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_query_workload_insights_top_contributors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartQueryWorkloadInsightsTopContributors"
        o.http_method = "POST"
        o.http_request_uri = "/workloadInsights/{scopeId}/topContributorsQueries"
        o.input = Shapes::ShapeRef.new(shape: StartQueryWorkloadInsightsTopContributorsInput)
        o.output = Shapes::ShapeRef.new(shape: StartQueryWorkloadInsightsTopContributorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_query_workload_insights_top_contributors_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartQueryWorkloadInsightsTopContributorsData"
        o.http_method = "POST"
        o.http_request_uri = "/workloadInsights/{scopeId}/topContributorsDataQueries"
        o.input = Shapes::ShapeRef.new(shape: StartQueryWorkloadInsightsTopContributorsDataInput)
        o.output = Shapes::ShapeRef.new(shape: StartQueryWorkloadInsightsTopContributorsDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_query_monitor_top_contributors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopQueryMonitorTopContributors"
        o.http_method = "DELETE"
        o.http_request_uri = "/monitors/{monitorName}/topContributorsQueries/{queryId}"
        o.input = Shapes::ShapeRef.new(shape: StopQueryMonitorTopContributorsInput)
        o.output = Shapes::ShapeRef.new(shape: StopQueryMonitorTopContributorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_query_performance_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopQueryPerformanceMonitor"
        o.http_method = "DELETE"
        o.http_request_uri = "/performance-monitors/{monitorName}/queries/{queryId}"
        o.input = Shapes::ShapeRef.new(shape: StopQueryPerformanceMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: StopQueryPerformanceMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_query_workload_insights_top_contributors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopQueryWorkloadInsightsTopContributors"
        o.http_method = "DELETE"
        o.http_request_uri = "/workloadInsights/{scopeId}/topContributorsQueries/{queryId}"
        o.input = Shapes::ShapeRef.new(shape: StopQueryWorkloadInsightsTopContributorsInput)
        o.output = Shapes::ShapeRef.new(shape: StopQueryWorkloadInsightsTopContributorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_query_workload_insights_top_contributors_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopQueryWorkloadInsightsTopContributorsData"
        o.http_method = "DELETE"
        o.http_request_uri = "/workloadInsights/{scopeId}/topContributorsDataQueries/{queryId}"
        o.input = Shapes::ShapeRef.new(shape: StopQueryWorkloadInsightsTopContributorsDataInput)
        o.output = Shapes::ShapeRef.new(shape: StopQueryWorkloadInsightsTopContributorsDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMonitor"
        o.http_method = "PATCH"
        o.http_request_uri = "/monitors/{monitorName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_performance_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePerformanceMonitor"
        o.http_method = "PATCH"
        o.http_request_uri = "/performance-monitors/{monitorName}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePerformanceMonitorInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePerformanceMonitorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScope"
        o.http_method = "PATCH"
        o.http_request_uri = "/scopes/{scopeId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateScopeInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateScopeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
