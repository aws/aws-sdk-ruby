# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ARCRegionswitch
  # @api private
  module ClientApi

    include Seahorse::Model

    AbbreviatedExecution = Shapes::StructureShape.new(name: 'AbbreviatedExecution')
    AbbreviatedExecutionsList = Shapes::ListShape.new(name: 'AbbreviatedExecutionsList')
    AbbreviatedPlan = Shapes::StructureShape.new(name: 'AbbreviatedPlan')
    AbbreviatedPlanRecoveryTimeObjectiveMinutesInteger = Shapes::IntegerShape.new(name: 'AbbreviatedPlanRecoveryTimeObjectiveMinutesInteger')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AlarmCondition = Shapes::StringShape.new(name: 'AlarmCondition')
    AlarmType = Shapes::StringShape.new(name: 'AlarmType')
    Approval = Shapes::StringShape.new(name: 'Approval')
    ApprovePlanExecutionStepRequest = Shapes::StructureShape.new(name: 'ApprovePlanExecutionStepRequest')
    ApprovePlanExecutionStepResponse = Shapes::StructureShape.new(name: 'ApprovePlanExecutionStepResponse')
    ArcRoutingControlConfiguration = Shapes::StructureShape.new(name: 'ArcRoutingControlConfiguration')
    ArcRoutingControlConfigurationTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'ArcRoutingControlConfigurationTimeoutMinutesInteger')
    ArcRoutingControlState = Shapes::StructureShape.new(name: 'ArcRoutingControlState')
    ArcRoutingControlStates = Shapes::ListShape.new(name: 'ArcRoutingControlStates')
    Asg = Shapes::StructureShape.new(name: 'Asg')
    AsgArn = Shapes::StringShape.new(name: 'AsgArn')
    AsgList = Shapes::ListShape.new(name: 'AsgList')
    AssociatedAlarm = Shapes::StructureShape.new(name: 'AssociatedAlarm')
    AssociatedAlarmMap = Shapes::MapShape.new(name: 'AssociatedAlarmMap')
    AuroraClusterArn = Shapes::StringShape.new(name: 'AuroraClusterArn')
    AuroraClusterArns = Shapes::ListShape.new(name: 'AuroraClusterArns')
    CancelPlanExecutionRequest = Shapes::StructureShape.new(name: 'CancelPlanExecutionRequest')
    CancelPlanExecutionResponse = Shapes::StructureShape.new(name: 'CancelPlanExecutionResponse')
    CreatePlanRequest = Shapes::StructureShape.new(name: 'CreatePlanRequest')
    CreatePlanRequestRecoveryTimeObjectiveMinutesInteger = Shapes::IntegerShape.new(name: 'CreatePlanRequestRecoveryTimeObjectiveMinutesInteger')
    CreatePlanResponse = Shapes::StructureShape.new(name: 'CreatePlanResponse')
    CustomActionLambdaConfiguration = Shapes::StructureShape.new(name: 'CustomActionLambdaConfiguration')
    CustomActionLambdaConfigurationTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'CustomActionLambdaConfigurationTimeoutMinutesInteger')
    DeletePlanRequest = Shapes::StructureShape.new(name: 'DeletePlanRequest')
    DeletePlanResponse = Shapes::StructureShape.new(name: 'DeletePlanResponse')
    Duration = Shapes::StringShape.new(name: 'Duration')
    Ec2AsgCapacityIncreaseConfiguration = Shapes::StructureShape.new(name: 'Ec2AsgCapacityIncreaseConfiguration')
    Ec2AsgCapacityIncreaseConfigurationTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'Ec2AsgCapacityIncreaseConfigurationTimeoutMinutesInteger')
    Ec2AsgCapacityMonitoringApproach = Shapes::StringShape.new(name: 'Ec2AsgCapacityMonitoringApproach')
    Ec2Ungraceful = Shapes::StructureShape.new(name: 'Ec2Ungraceful')
    Ec2UngracefulMinimumSuccessPercentageInteger = Shapes::IntegerShape.new(name: 'Ec2UngracefulMinimumSuccessPercentageInteger')
    EcsCapacityIncreaseConfiguration = Shapes::StructureShape.new(name: 'EcsCapacityIncreaseConfiguration')
    EcsCapacityIncreaseConfigurationTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'EcsCapacityIncreaseConfigurationTimeoutMinutesInteger')
    EcsCapacityMonitoringApproach = Shapes::StringShape.new(name: 'EcsCapacityMonitoringApproach')
    EcsClusterArn = Shapes::StringShape.new(name: 'EcsClusterArn')
    EcsServiceArn = Shapes::StringShape.new(name: 'EcsServiceArn')
    EcsUngraceful = Shapes::StructureShape.new(name: 'EcsUngraceful')
    EcsUngracefulMinimumSuccessPercentageInteger = Shapes::IntegerShape.new(name: 'EcsUngracefulMinimumSuccessPercentageInteger')
    EksCapacityMonitoringApproach = Shapes::StringShape.new(name: 'EksCapacityMonitoringApproach')
    EksCluster = Shapes::StructureShape.new(name: 'EksCluster')
    EksClusterArn = Shapes::StringShape.new(name: 'EksClusterArn')
    EksClusters = Shapes::ListShape.new(name: 'EksClusters')
    EksResourceScalingConfiguration = Shapes::StructureShape.new(name: 'EksResourceScalingConfiguration')
    EksResourceScalingConfigurationTargetPercentInteger = Shapes::IntegerShape.new(name: 'EksResourceScalingConfigurationTargetPercentInteger')
    EksResourceScalingConfigurationTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'EksResourceScalingConfigurationTimeoutMinutesInteger')
    EksResourceScalingUngraceful = Shapes::StructureShape.new(name: 'EksResourceScalingUngraceful')
    EksResourceScalingUngracefulMinimumSuccessPercentageInteger = Shapes::IntegerShape.new(name: 'EksResourceScalingUngracefulMinimumSuccessPercentageInteger')
    EvaluationStatus = Shapes::StringShape.new(name: 'EvaluationStatus')
    ExecutionAction = Shapes::StringShape.new(name: 'ExecutionAction')
    ExecutionApprovalConfiguration = Shapes::StructureShape.new(name: 'ExecutionApprovalConfiguration')
    ExecutionApprovalConfigurationTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'ExecutionApprovalConfigurationTimeoutMinutesInteger')
    ExecutionBlockConfiguration = Shapes::UnionShape.new(name: 'ExecutionBlockConfiguration')
    ExecutionBlockType = Shapes::StringShape.new(name: 'ExecutionBlockType')
    ExecutionComment = Shapes::StringShape.new(name: 'ExecutionComment')
    ExecutionEvent = Shapes::StructureShape.new(name: 'ExecutionEvent')
    ExecutionEventList = Shapes::ListShape.new(name: 'ExecutionEventList')
    ExecutionEventType = Shapes::StringShape.new(name: 'ExecutionEventType')
    ExecutionId = Shapes::StringShape.new(name: 'ExecutionId')
    ExecutionMode = Shapes::StringShape.new(name: 'ExecutionMode')
    ExecutionState = Shapes::StringShape.new(name: 'ExecutionState')
    Float = Shapes::FloatShape.new(name: 'Float')
    GetPlanEvaluationStatusRequest = Shapes::StructureShape.new(name: 'GetPlanEvaluationStatusRequest')
    GetPlanEvaluationStatusResponse = Shapes::StructureShape.new(name: 'GetPlanEvaluationStatusResponse')
    GetPlanExecutionRequest = Shapes::StructureShape.new(name: 'GetPlanExecutionRequest')
    GetPlanExecutionResponse = Shapes::StructureShape.new(name: 'GetPlanExecutionResponse')
    GetPlanExecutionStepStatesMaxResults = Shapes::IntegerShape.new(name: 'GetPlanExecutionStepStatesMaxResults')
    GetPlanInRegionRequest = Shapes::StructureShape.new(name: 'GetPlanInRegionRequest')
    GetPlanInRegionResponse = Shapes::StructureShape.new(name: 'GetPlanInRegionResponse')
    GetPlanRequest = Shapes::StructureShape.new(name: 'GetPlanRequest')
    GetPlanResponse = Shapes::StructureShape.new(name: 'GetPlanResponse')
    GlobalAuroraConfiguration = Shapes::StructureShape.new(name: 'GlobalAuroraConfiguration')
    GlobalAuroraConfigurationTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'GlobalAuroraConfigurationTimeoutMinutesInteger')
    GlobalAuroraDefaultBehavior = Shapes::StringShape.new(name: 'GlobalAuroraDefaultBehavior')
    GlobalAuroraUngraceful = Shapes::StructureShape.new(name: 'GlobalAuroraUngraceful')
    GlobalAuroraUngracefulBehavior = Shapes::StringShape.new(name: 'GlobalAuroraUngracefulBehavior')
    GlobalClusterIdentifier = Shapes::StringShape.new(name: 'GlobalClusterIdentifier')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IllegalArgumentException = Shapes::StructureShape.new(name: 'IllegalArgumentException')
    IllegalStateException = Shapes::StructureShape.new(name: 'IllegalStateException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KubernetesNamespace = Shapes::StringShape.new(name: 'KubernetesNamespace')
    KubernetesResourceType = Shapes::StructureShape.new(name: 'KubernetesResourceType')
    KubernetesScalingApplication = Shapes::MapShape.new(name: 'KubernetesScalingApplication')
    KubernetesScalingApps = Shapes::ListShape.new(name: 'KubernetesScalingApps')
    KubernetesScalingResource = Shapes::StructureShape.new(name: 'KubernetesScalingResource')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    LambdaList = Shapes::ListShape.new(name: 'LambdaList')
    LambdaUngraceful = Shapes::StructureShape.new(name: 'LambdaUngraceful')
    LambdaUngracefulBehavior = Shapes::StringShape.new(name: 'LambdaUngracefulBehavior')
    Lambdas = Shapes::StructureShape.new(name: 'Lambdas')
    ListExecutionEventsMaxResults = Shapes::IntegerShape.new(name: 'ListExecutionEventsMaxResults')
    ListExecutionsMaxResults = Shapes::IntegerShape.new(name: 'ListExecutionsMaxResults')
    ListPlanExecutionEventsRequest = Shapes::StructureShape.new(name: 'ListPlanExecutionEventsRequest')
    ListPlanExecutionEventsResponse = Shapes::StructureShape.new(name: 'ListPlanExecutionEventsResponse')
    ListPlanExecutionsRequest = Shapes::StructureShape.new(name: 'ListPlanExecutionsRequest')
    ListPlanExecutionsResponse = Shapes::StructureShape.new(name: 'ListPlanExecutionsResponse')
    ListPlansInRegionRequest = Shapes::StructureShape.new(name: 'ListPlansInRegionRequest')
    ListPlansInRegionResponse = Shapes::StructureShape.new(name: 'ListPlansInRegionResponse')
    ListPlansRequest = Shapes::StructureShape.new(name: 'ListPlansRequest')
    ListPlansResponse = Shapes::StructureShape.new(name: 'ListPlansResponse')
    ListRoute53HealthChecksRequest = Shapes::StructureShape.new(name: 'ListRoute53HealthChecksRequest')
    ListRoute53HealthChecksRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRoute53HealthChecksRequestMaxResultsInteger')
    ListRoute53HealthChecksResponse = Shapes::StructureShape.new(name: 'ListRoute53HealthChecksResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MinimalWorkflow = Shapes::StructureShape.new(name: 'MinimalWorkflow')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ParallelExecutionBlockConfiguration = Shapes::StructureShape.new(name: 'ParallelExecutionBlockConfiguration')
    Plan = Shapes::StructureShape.new(name: 'Plan')
    PlanArn = Shapes::StringShape.new(name: 'PlanArn')
    PlanList = Shapes::ListShape.new(name: 'PlanList')
    PlanName = Shapes::StringShape.new(name: 'PlanName')
    PlanRecoveryTimeObjectiveMinutesInteger = Shapes::IntegerShape.new(name: 'PlanRecoveryTimeObjectiveMinutesInteger')
    PlanWarnings = Shapes::ListShape.new(name: 'PlanWarnings')
    RecoveryApproach = Shapes::StringShape.new(name: 'RecoveryApproach')
    Region = Shapes::StringShape.new(name: 'Region')
    RegionAndRoutingControls = Shapes::MapShape.new(name: 'RegionAndRoutingControls')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    RegionSwitchPlanConfiguration = Shapes::StructureShape.new(name: 'RegionSwitchPlanConfiguration')
    RegionToRunIn = Shapes::StringShape.new(name: 'RegionToRunIn')
    RegionalScalingResource = Shapes::MapShape.new(name: 'RegionalScalingResource')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceWarning = Shapes::StructureShape.new(name: 'ResourceWarning')
    ResourceWarningStatus = Shapes::StringShape.new(name: 'ResourceWarningStatus')
    Resources = Shapes::ListShape.new(name: 'Resources')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Route53HealthCheck = Shapes::StructureShape.new(name: 'Route53HealthCheck')
    Route53HealthCheckConfiguration = Shapes::StructureShape.new(name: 'Route53HealthCheckConfiguration')
    Route53HealthCheckConfigurationTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'Route53HealthCheckConfigurationTimeoutMinutesInteger')
    Route53HealthCheckId = Shapes::StringShape.new(name: 'Route53HealthCheckId')
    Route53HealthCheckList = Shapes::ListShape.new(name: 'Route53HealthCheckList')
    Route53HostedZoneId = Shapes::StringShape.new(name: 'Route53HostedZoneId')
    Route53RecordName = Shapes::StringShape.new(name: 'Route53RecordName')
    Route53ResourceRecordSet = Shapes::StructureShape.new(name: 'Route53ResourceRecordSet')
    Route53ResourceRecordSetIdentifier = Shapes::StringShape.new(name: 'Route53ResourceRecordSetIdentifier')
    Route53ResourceRecordSetList = Shapes::ListShape.new(name: 'Route53ResourceRecordSetList')
    RoutingControlArn = Shapes::StringShape.new(name: 'RoutingControlArn')
    RoutingControlStateChange = Shapes::StringShape.new(name: 'RoutingControlStateChange')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceList = Shapes::ListShape.new(name: 'ServiceList')
    StartPlanExecutionRequest = Shapes::StructureShape.new(name: 'StartPlanExecutionRequest')
    StartPlanExecutionResponse = Shapes::StructureShape.new(name: 'StartPlanExecutionResponse')
    Step = Shapes::StructureShape.new(name: 'Step')
    StepName = Shapes::StringShape.new(name: 'StepName')
    StepState = Shapes::StructureShape.new(name: 'StepState')
    StepStates = Shapes::ListShape.new(name: 'StepStates')
    StepStatus = Shapes::StringShape.new(name: 'StepStatus')
    Steps = Shapes::ListShape.new(name: 'Steps')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Trigger = Shapes::StructureShape.new(name: 'Trigger')
    TriggerCondition = Shapes::StructureShape.new(name: 'TriggerCondition')
    TriggerConditionList = Shapes::ListShape.new(name: 'TriggerConditionList')
    TriggerList = Shapes::ListShape.new(name: 'TriggerList')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdatePlanExecutionAction = Shapes::StringShape.new(name: 'UpdatePlanExecutionAction')
    UpdatePlanExecutionRequest = Shapes::StructureShape.new(name: 'UpdatePlanExecutionRequest')
    UpdatePlanExecutionResponse = Shapes::StructureShape.new(name: 'UpdatePlanExecutionResponse')
    UpdatePlanExecutionStepAction = Shapes::StringShape.new(name: 'UpdatePlanExecutionStepAction')
    UpdatePlanExecutionStepRequest = Shapes::StructureShape.new(name: 'UpdatePlanExecutionStepRequest')
    UpdatePlanExecutionStepResponse = Shapes::StructureShape.new(name: 'UpdatePlanExecutionStepResponse')
    UpdatePlanRequest = Shapes::StructureShape.new(name: 'UpdatePlanRequest')
    UpdatePlanRequestRecoveryTimeObjectiveMinutesInteger = Shapes::IntegerShape.new(name: 'UpdatePlanRequestRecoveryTimeObjectiveMinutesInteger')
    UpdatePlanResponse = Shapes::StructureShape.new(name: 'UpdatePlanResponse')
    Workflow = Shapes::StructureShape.new(name: 'Workflow')
    WorkflowList = Shapes::ListShape.new(name: 'WorkflowList')
    WorkflowTargetAction = Shapes::StringShape.new(name: 'WorkflowTargetAction')

    AbbreviatedExecution.add_member(:plan_arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "planArn"))
    AbbreviatedExecution.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, required: true, location_name: "executionId"))
    AbbreviatedExecution.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    AbbreviatedExecution.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    AbbreviatedExecution.add_member(:comment, Shapes::ShapeRef.new(shape: String, location_name: "comment"))
    AbbreviatedExecution.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    AbbreviatedExecution.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    AbbreviatedExecution.add_member(:mode, Shapes::ShapeRef.new(shape: ExecutionMode, required: true, location_name: "mode"))
    AbbreviatedExecution.add_member(:execution_state, Shapes::ShapeRef.new(shape: ExecutionState, required: true, location_name: "executionState"))
    AbbreviatedExecution.add_member(:execution_action, Shapes::ShapeRef.new(shape: ExecutionAction, required: true, location_name: "executionAction"))
    AbbreviatedExecution.add_member(:execution_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "executionRegion"))
    AbbreviatedExecution.add_member(:actual_recovery_time, Shapes::ShapeRef.new(shape: Duration, location_name: "actualRecoveryTime"))
    AbbreviatedExecution.struct_class = Types::AbbreviatedExecution

    AbbreviatedExecutionsList.member = Shapes::ShapeRef.new(shape: AbbreviatedExecution)

    AbbreviatedPlan.add_member(:arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "arn"))
    AbbreviatedPlan.add_member(:owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "owner"))
    AbbreviatedPlan.add_member(:name, Shapes::ShapeRef.new(shape: PlanName, required: true, location_name: "name"))
    AbbreviatedPlan.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "regions"))
    AbbreviatedPlan.add_member(:recovery_approach, Shapes::ShapeRef.new(shape: RecoveryApproach, required: true, location_name: "recoveryApproach"))
    AbbreviatedPlan.add_member(:primary_region, Shapes::ShapeRef.new(shape: Region, location_name: "primaryRegion"))
    AbbreviatedPlan.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    AbbreviatedPlan.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    AbbreviatedPlan.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    AbbreviatedPlan.add_member(:execution_role, Shapes::ShapeRef.new(shape: String, location_name: "executionRole"))
    AbbreviatedPlan.add_member(:active_plan_execution, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "activePlanExecution"))
    AbbreviatedPlan.add_member(:recovery_time_objective_minutes, Shapes::ShapeRef.new(shape: AbbreviatedPlanRecoveryTimeObjectiveMinutesInteger, location_name: "recoveryTimeObjectiveMinutes"))
    AbbreviatedPlan.struct_class = Types::AbbreviatedPlan

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ApprovePlanExecutionStepRequest.add_member(:plan_arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "planArn"))
    ApprovePlanExecutionStepRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, required: true, location_name: "executionId"))
    ApprovePlanExecutionStepRequest.add_member(:step_name, Shapes::ShapeRef.new(shape: StepName, required: true, location_name: "stepName"))
    ApprovePlanExecutionStepRequest.add_member(:approval, Shapes::ShapeRef.new(shape: Approval, required: true, location_name: "approval"))
    ApprovePlanExecutionStepRequest.add_member(:comment, Shapes::ShapeRef.new(shape: ExecutionComment, location_name: "comment"))
    ApprovePlanExecutionStepRequest.struct_class = Types::ApprovePlanExecutionStepRequest

    ApprovePlanExecutionStepResponse.struct_class = Types::ApprovePlanExecutionStepResponse

    ArcRoutingControlConfiguration.add_member(:timeout_minutes, Shapes::ShapeRef.new(shape: ArcRoutingControlConfigurationTimeoutMinutesInteger, location_name: "timeoutMinutes"))
    ArcRoutingControlConfiguration.add_member(:cross_account_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "crossAccountRole"))
    ArcRoutingControlConfiguration.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    ArcRoutingControlConfiguration.add_member(:region_and_routing_controls, Shapes::ShapeRef.new(shape: RegionAndRoutingControls, required: true, location_name: "regionAndRoutingControls"))
    ArcRoutingControlConfiguration.struct_class = Types::ArcRoutingControlConfiguration

    ArcRoutingControlState.add_member(:routing_control_arn, Shapes::ShapeRef.new(shape: RoutingControlArn, required: true, location_name: "routingControlArn"))
    ArcRoutingControlState.add_member(:state, Shapes::ShapeRef.new(shape: RoutingControlStateChange, required: true, location_name: "state"))
    ArcRoutingControlState.struct_class = Types::ArcRoutingControlState

    ArcRoutingControlStates.member = Shapes::ShapeRef.new(shape: ArcRoutingControlState)

    Asg.add_member(:cross_account_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "crossAccountRole"))
    Asg.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    Asg.add_member(:arn, Shapes::ShapeRef.new(shape: AsgArn, location_name: "arn"))
    Asg.struct_class = Types::Asg

    AsgList.member = Shapes::ShapeRef.new(shape: Asg)

    AssociatedAlarm.add_member(:cross_account_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "crossAccountRole"))
    AssociatedAlarm.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    AssociatedAlarm.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceIdentifier"))
    AssociatedAlarm.add_member(:alarm_type, Shapes::ShapeRef.new(shape: AlarmType, required: true, location_name: "alarmType"))
    AssociatedAlarm.struct_class = Types::AssociatedAlarm

    AssociatedAlarmMap.key = Shapes::ShapeRef.new(shape: String)
    AssociatedAlarmMap.value = Shapes::ShapeRef.new(shape: AssociatedAlarm)

    AuroraClusterArns.member = Shapes::ShapeRef.new(shape: AuroraClusterArn)

    CancelPlanExecutionRequest.add_member(:plan_arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "planArn"))
    CancelPlanExecutionRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, required: true, location_name: "executionId"))
    CancelPlanExecutionRequest.add_member(:comment, Shapes::ShapeRef.new(shape: ExecutionComment, location_name: "comment"))
    CancelPlanExecutionRequest.struct_class = Types::CancelPlanExecutionRequest

    CancelPlanExecutionResponse.struct_class = Types::CancelPlanExecutionResponse

    CreatePlanRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreatePlanRequest.add_member(:workflows, Shapes::ShapeRef.new(shape: WorkflowList, required: true, location_name: "workflows"))
    CreatePlanRequest.add_member(:execution_role, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "executionRole"))
    CreatePlanRequest.add_member(:recovery_time_objective_minutes, Shapes::ShapeRef.new(shape: CreatePlanRequestRecoveryTimeObjectiveMinutesInteger, location_name: "recoveryTimeObjectiveMinutes"))
    CreatePlanRequest.add_member(:associated_alarms, Shapes::ShapeRef.new(shape: AssociatedAlarmMap, location_name: "associatedAlarms"))
    CreatePlanRequest.add_member(:triggers, Shapes::ShapeRef.new(shape: TriggerList, location_name: "triggers"))
    CreatePlanRequest.add_member(:name, Shapes::ShapeRef.new(shape: PlanName, required: true, location_name: "name"))
    CreatePlanRequest.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "regions"))
    CreatePlanRequest.add_member(:recovery_approach, Shapes::ShapeRef.new(shape: RecoveryApproach, required: true, location_name: "recoveryApproach"))
    CreatePlanRequest.add_member(:primary_region, Shapes::ShapeRef.new(shape: Region, location_name: "primaryRegion"))
    CreatePlanRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePlanRequest.struct_class = Types::CreatePlanRequest

    CreatePlanResponse.add_member(:plan, Shapes::ShapeRef.new(shape: Plan, location_name: "plan"))
    CreatePlanResponse.struct_class = Types::CreatePlanResponse

    CustomActionLambdaConfiguration.add_member(:timeout_minutes, Shapes::ShapeRef.new(shape: CustomActionLambdaConfigurationTimeoutMinutesInteger, location_name: "timeoutMinutes"))
    CustomActionLambdaConfiguration.add_member(:lambdas, Shapes::ShapeRef.new(shape: LambdaList, required: true, location_name: "lambdas"))
    CustomActionLambdaConfiguration.add_member(:retry_interval_minutes, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "retryIntervalMinutes"))
    CustomActionLambdaConfiguration.add_member(:region_to_run, Shapes::ShapeRef.new(shape: RegionToRunIn, required: true, location_name: "regionToRun"))
    CustomActionLambdaConfiguration.add_member(:ungraceful, Shapes::ShapeRef.new(shape: LambdaUngraceful, location_name: "ungraceful"))
    CustomActionLambdaConfiguration.struct_class = Types::CustomActionLambdaConfiguration

    DeletePlanRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "arn"))
    DeletePlanRequest.struct_class = Types::DeletePlanRequest

    DeletePlanResponse.struct_class = Types::DeletePlanResponse

    Ec2AsgCapacityIncreaseConfiguration.add_member(:timeout_minutes, Shapes::ShapeRef.new(shape: Ec2AsgCapacityIncreaseConfigurationTimeoutMinutesInteger, location_name: "timeoutMinutes"))
    Ec2AsgCapacityIncreaseConfiguration.add_member(:asgs, Shapes::ShapeRef.new(shape: AsgList, required: true, location_name: "asgs"))
    Ec2AsgCapacityIncreaseConfiguration.add_member(:ungraceful, Shapes::ShapeRef.new(shape: Ec2Ungraceful, location_name: "ungraceful"))
    Ec2AsgCapacityIncreaseConfiguration.add_member(:target_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "targetPercent"))
    Ec2AsgCapacityIncreaseConfiguration.add_member(:capacity_monitoring_approach, Shapes::ShapeRef.new(shape: Ec2AsgCapacityMonitoringApproach, location_name: "capacityMonitoringApproach"))
    Ec2AsgCapacityIncreaseConfiguration.struct_class = Types::Ec2AsgCapacityIncreaseConfiguration

    Ec2Ungraceful.add_member(:minimum_success_percentage, Shapes::ShapeRef.new(shape: Ec2UngracefulMinimumSuccessPercentageInteger, required: true, location_name: "minimumSuccessPercentage"))
    Ec2Ungraceful.struct_class = Types::Ec2Ungraceful

    EcsCapacityIncreaseConfiguration.add_member(:timeout_minutes, Shapes::ShapeRef.new(shape: EcsCapacityIncreaseConfigurationTimeoutMinutesInteger, location_name: "timeoutMinutes"))
    EcsCapacityIncreaseConfiguration.add_member(:services, Shapes::ShapeRef.new(shape: ServiceList, required: true, location_name: "services"))
    EcsCapacityIncreaseConfiguration.add_member(:ungraceful, Shapes::ShapeRef.new(shape: EcsUngraceful, location_name: "ungraceful"))
    EcsCapacityIncreaseConfiguration.add_member(:target_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "targetPercent"))
    EcsCapacityIncreaseConfiguration.add_member(:capacity_monitoring_approach, Shapes::ShapeRef.new(shape: EcsCapacityMonitoringApproach, location_name: "capacityMonitoringApproach"))
    EcsCapacityIncreaseConfiguration.struct_class = Types::EcsCapacityIncreaseConfiguration

    EcsUngraceful.add_member(:minimum_success_percentage, Shapes::ShapeRef.new(shape: EcsUngracefulMinimumSuccessPercentageInteger, required: true, location_name: "minimumSuccessPercentage"))
    EcsUngraceful.struct_class = Types::EcsUngraceful

    EksCluster.add_member(:cross_account_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "crossAccountRole"))
    EksCluster.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    EksCluster.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: EksClusterArn, required: true, location_name: "clusterArn"))
    EksCluster.struct_class = Types::EksCluster

    EksClusters.member = Shapes::ShapeRef.new(shape: EksCluster)

    EksResourceScalingConfiguration.add_member(:timeout_minutes, Shapes::ShapeRef.new(shape: EksResourceScalingConfigurationTimeoutMinutesInteger, location_name: "timeoutMinutes"))
    EksResourceScalingConfiguration.add_member(:kubernetes_resource_type, Shapes::ShapeRef.new(shape: KubernetesResourceType, required: true, location_name: "kubernetesResourceType"))
    EksResourceScalingConfiguration.add_member(:scaling_resources, Shapes::ShapeRef.new(shape: KubernetesScalingApps, location_name: "scalingResources"))
    EksResourceScalingConfiguration.add_member(:eks_clusters, Shapes::ShapeRef.new(shape: EksClusters, location_name: "eksClusters"))
    EksResourceScalingConfiguration.add_member(:ungraceful, Shapes::ShapeRef.new(shape: EksResourceScalingUngraceful, location_name: "ungraceful"))
    EksResourceScalingConfiguration.add_member(:target_percent, Shapes::ShapeRef.new(shape: EksResourceScalingConfigurationTargetPercentInteger, location_name: "targetPercent"))
    EksResourceScalingConfiguration.add_member(:capacity_monitoring_approach, Shapes::ShapeRef.new(shape: EksCapacityMonitoringApproach, location_name: "capacityMonitoringApproach"))
    EksResourceScalingConfiguration.struct_class = Types::EksResourceScalingConfiguration

    EksResourceScalingUngraceful.add_member(:minimum_success_percentage, Shapes::ShapeRef.new(shape: EksResourceScalingUngracefulMinimumSuccessPercentageInteger, required: true, location_name: "minimumSuccessPercentage"))
    EksResourceScalingUngraceful.struct_class = Types::EksResourceScalingUngraceful

    ExecutionApprovalConfiguration.add_member(:timeout_minutes, Shapes::ShapeRef.new(shape: ExecutionApprovalConfigurationTimeoutMinutesInteger, location_name: "timeoutMinutes"))
    ExecutionApprovalConfiguration.add_member(:approval_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "approvalRole"))
    ExecutionApprovalConfiguration.struct_class = Types::ExecutionApprovalConfiguration

    ExecutionBlockConfiguration.add_member(:custom_action_lambda_config, Shapes::ShapeRef.new(shape: CustomActionLambdaConfiguration, location_name: "customActionLambdaConfig"))
    ExecutionBlockConfiguration.add_member(:ec2_asg_capacity_increase_config, Shapes::ShapeRef.new(shape: Ec2AsgCapacityIncreaseConfiguration, location_name: "ec2AsgCapacityIncreaseConfig"))
    ExecutionBlockConfiguration.add_member(:execution_approval_config, Shapes::ShapeRef.new(shape: ExecutionApprovalConfiguration, location_name: "executionApprovalConfig"))
    ExecutionBlockConfiguration.add_member(:arc_routing_control_config, Shapes::ShapeRef.new(shape: ArcRoutingControlConfiguration, location_name: "arcRoutingControlConfig"))
    ExecutionBlockConfiguration.add_member(:global_aurora_config, Shapes::ShapeRef.new(shape: GlobalAuroraConfiguration, location_name: "globalAuroraConfig"))
    ExecutionBlockConfiguration.add_member(:parallel_config, Shapes::ShapeRef.new(shape: ParallelExecutionBlockConfiguration, location_name: "parallelConfig"))
    ExecutionBlockConfiguration.add_member(:region_switch_plan_config, Shapes::ShapeRef.new(shape: RegionSwitchPlanConfiguration, location_name: "regionSwitchPlanConfig"))
    ExecutionBlockConfiguration.add_member(:ecs_capacity_increase_config, Shapes::ShapeRef.new(shape: EcsCapacityIncreaseConfiguration, location_name: "ecsCapacityIncreaseConfig"))
    ExecutionBlockConfiguration.add_member(:eks_resource_scaling_config, Shapes::ShapeRef.new(shape: EksResourceScalingConfiguration, location_name: "eksResourceScalingConfig"))
    ExecutionBlockConfiguration.add_member(:route53_health_check_config, Shapes::ShapeRef.new(shape: Route53HealthCheckConfiguration, location_name: "route53HealthCheckConfig"))
    ExecutionBlockConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ExecutionBlockConfiguration.add_member_subclass(:custom_action_lambda_config, Types::ExecutionBlockConfiguration::CustomActionLambdaConfig)
    ExecutionBlockConfiguration.add_member_subclass(:ec2_asg_capacity_increase_config, Types::ExecutionBlockConfiguration::Ec2AsgCapacityIncreaseConfig)
    ExecutionBlockConfiguration.add_member_subclass(:execution_approval_config, Types::ExecutionBlockConfiguration::ExecutionApprovalConfig)
    ExecutionBlockConfiguration.add_member_subclass(:arc_routing_control_config, Types::ExecutionBlockConfiguration::ArcRoutingControlConfig)
    ExecutionBlockConfiguration.add_member_subclass(:global_aurora_config, Types::ExecutionBlockConfiguration::GlobalAuroraConfig)
    ExecutionBlockConfiguration.add_member_subclass(:parallel_config, Types::ExecutionBlockConfiguration::ParallelConfig)
    ExecutionBlockConfiguration.add_member_subclass(:region_switch_plan_config, Types::ExecutionBlockConfiguration::RegionSwitchPlanConfig)
    ExecutionBlockConfiguration.add_member_subclass(:ecs_capacity_increase_config, Types::ExecutionBlockConfiguration::EcsCapacityIncreaseConfig)
    ExecutionBlockConfiguration.add_member_subclass(:eks_resource_scaling_config, Types::ExecutionBlockConfiguration::EksResourceScalingConfig)
    ExecutionBlockConfiguration.add_member_subclass(:route53_health_check_config, Types::ExecutionBlockConfiguration::Route53HealthCheckConfig)
    ExecutionBlockConfiguration.add_member_subclass(:unknown, Types::ExecutionBlockConfiguration::Unknown)
    ExecutionBlockConfiguration.struct_class = Types::ExecutionBlockConfiguration

    ExecutionEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp"))
    ExecutionEvent.add_member(:type, Shapes::ShapeRef.new(shape: ExecutionEventType, location_name: "type"))
    ExecutionEvent.add_member(:step_name, Shapes::ShapeRef.new(shape: StepName, location_name: "stepName"))
    ExecutionEvent.add_member(:execution_block_type, Shapes::ShapeRef.new(shape: ExecutionBlockType, location_name: "executionBlockType"))
    ExecutionEvent.add_member(:resources, Shapes::ShapeRef.new(shape: Resources, location_name: "resources"))
    ExecutionEvent.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    ExecutionEvent.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ExecutionEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "eventId"))
    ExecutionEvent.add_member(:previous_event_id, Shapes::ShapeRef.new(shape: String, location_name: "previousEventId"))
    ExecutionEvent.struct_class = Types::ExecutionEvent

    ExecutionEventList.member = Shapes::ShapeRef.new(shape: ExecutionEvent)

    GetPlanEvaluationStatusRequest.add_member(:plan_arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "planArn"))
    GetPlanEvaluationStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetPlanEvaluationStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetPlanEvaluationStatusRequest.struct_class = Types::GetPlanEvaluationStatusRequest

    GetPlanEvaluationStatusResponse.add_member(:plan_arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "planArn"))
    GetPlanEvaluationStatusResponse.add_member(:last_evaluation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastEvaluationTime"))
    GetPlanEvaluationStatusResponse.add_member(:last_evaluated_version, Shapes::ShapeRef.new(shape: String, location_name: "lastEvaluatedVersion"))
    GetPlanEvaluationStatusResponse.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    GetPlanEvaluationStatusResponse.add_member(:evaluation_state, Shapes::ShapeRef.new(shape: EvaluationStatus, location_name: "evaluationState"))
    GetPlanEvaluationStatusResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: PlanWarnings, location_name: "warnings"))
    GetPlanEvaluationStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetPlanEvaluationStatusResponse.struct_class = Types::GetPlanEvaluationStatusResponse

    GetPlanExecutionRequest.add_member(:plan_arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "planArn"))
    GetPlanExecutionRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, required: true, location_name: "executionId"))
    GetPlanExecutionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetPlanExecutionStepStatesMaxResults, location_name: "maxResults"))
    GetPlanExecutionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetPlanExecutionRequest.struct_class = Types::GetPlanExecutionRequest

    GetPlanExecutionResponse.add_member(:plan_arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "planArn"))
    GetPlanExecutionResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, required: true, location_name: "executionId"))
    GetPlanExecutionResponse.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    GetPlanExecutionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetPlanExecutionResponse.add_member(:comment, Shapes::ShapeRef.new(shape: String, location_name: "comment"))
    GetPlanExecutionResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    GetPlanExecutionResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetPlanExecutionResponse.add_member(:mode, Shapes::ShapeRef.new(shape: ExecutionMode, required: true, location_name: "mode"))
    GetPlanExecutionResponse.add_member(:execution_state, Shapes::ShapeRef.new(shape: ExecutionState, required: true, location_name: "executionState"))
    GetPlanExecutionResponse.add_member(:execution_action, Shapes::ShapeRef.new(shape: ExecutionAction, required: true, location_name: "executionAction"))
    GetPlanExecutionResponse.add_member(:execution_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "executionRegion"))
    GetPlanExecutionResponse.add_member(:step_states, Shapes::ShapeRef.new(shape: StepStates, location_name: "stepStates"))
    GetPlanExecutionResponse.add_member(:plan, Shapes::ShapeRef.new(shape: Plan, location_name: "plan"))
    GetPlanExecutionResponse.add_member(:actual_recovery_time, Shapes::ShapeRef.new(shape: Duration, location_name: "actualRecoveryTime"))
    GetPlanExecutionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetPlanExecutionResponse.struct_class = Types::GetPlanExecutionResponse

    GetPlanInRegionRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "arn"))
    GetPlanInRegionRequest.struct_class = Types::GetPlanInRegionRequest

    GetPlanInRegionResponse.add_member(:plan, Shapes::ShapeRef.new(shape: Plan, location_name: "plan"))
    GetPlanInRegionResponse.struct_class = Types::GetPlanInRegionResponse

    GetPlanRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "arn"))
    GetPlanRequest.struct_class = Types::GetPlanRequest

    GetPlanResponse.add_member(:plan, Shapes::ShapeRef.new(shape: Plan, location_name: "plan"))
    GetPlanResponse.struct_class = Types::GetPlanResponse

    GlobalAuroraConfiguration.add_member(:timeout_minutes, Shapes::ShapeRef.new(shape: GlobalAuroraConfigurationTimeoutMinutesInteger, location_name: "timeoutMinutes"))
    GlobalAuroraConfiguration.add_member(:cross_account_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "crossAccountRole"))
    GlobalAuroraConfiguration.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    GlobalAuroraConfiguration.add_member(:behavior, Shapes::ShapeRef.new(shape: GlobalAuroraDefaultBehavior, required: true, location_name: "behavior"))
    GlobalAuroraConfiguration.add_member(:ungraceful, Shapes::ShapeRef.new(shape: GlobalAuroraUngraceful, location_name: "ungraceful"))
    GlobalAuroraConfiguration.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "globalClusterIdentifier"))
    GlobalAuroraConfiguration.add_member(:database_cluster_arns, Shapes::ShapeRef.new(shape: AuroraClusterArns, required: true, location_name: "databaseClusterArns"))
    GlobalAuroraConfiguration.struct_class = Types::GlobalAuroraConfiguration

    GlobalAuroraUngraceful.add_member(:ungraceful, Shapes::ShapeRef.new(shape: GlobalAuroraUngracefulBehavior, location_name: "ungraceful"))
    GlobalAuroraUngraceful.struct_class = Types::GlobalAuroraUngraceful

    IllegalArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    IllegalArgumentException.struct_class = Types::IllegalArgumentException

    IllegalStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    IllegalStateException.struct_class = Types::IllegalStateException

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    KubernetesResourceType.add_member(:api_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "apiVersion"))
    KubernetesResourceType.add_member(:kind, Shapes::ShapeRef.new(shape: String, required: true, location_name: "kind"))
    KubernetesResourceType.struct_class = Types::KubernetesResourceType

    KubernetesScalingApplication.key = Shapes::ShapeRef.new(shape: String)
    KubernetesScalingApplication.value = Shapes::ShapeRef.new(shape: RegionalScalingResource)

    KubernetesScalingApps.member = Shapes::ShapeRef.new(shape: KubernetesScalingApplication)

    KubernetesScalingResource.add_member(:namespace, Shapes::ShapeRef.new(shape: KubernetesNamespace, required: true, location_name: "namespace"))
    KubernetesScalingResource.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    KubernetesScalingResource.add_member(:hpa_name, Shapes::ShapeRef.new(shape: String, location_name: "hpaName"))
    KubernetesScalingResource.struct_class = Types::KubernetesScalingResource

    LambdaList.member = Shapes::ShapeRef.new(shape: Lambdas)

    LambdaUngraceful.add_member(:behavior, Shapes::ShapeRef.new(shape: LambdaUngracefulBehavior, location_name: "behavior"))
    LambdaUngraceful.struct_class = Types::LambdaUngraceful

    Lambdas.add_member(:cross_account_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "crossAccountRole"))
    Lambdas.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    Lambdas.add_member(:arn, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "arn"))
    Lambdas.struct_class = Types::Lambdas

    ListPlanExecutionEventsRequest.add_member(:plan_arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "planArn"))
    ListPlanExecutionEventsRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, required: true, location_name: "executionId"))
    ListPlanExecutionEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListExecutionEventsMaxResults, location_name: "maxResults"))
    ListPlanExecutionEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPlanExecutionEventsRequest.add_member(:name, Shapes::ShapeRef.new(shape: StepName, location_name: "name"))
    ListPlanExecutionEventsRequest.struct_class = Types::ListPlanExecutionEventsRequest

    ListPlanExecutionEventsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ExecutionEventList, location_name: "items"))
    ListPlanExecutionEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPlanExecutionEventsResponse.struct_class = Types::ListPlanExecutionEventsResponse

    ListPlanExecutionsRequest.add_member(:plan_arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "planArn"))
    ListPlanExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListExecutionsMaxResults, location_name: "maxResults"))
    ListPlanExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPlanExecutionsRequest.add_member(:state, Shapes::ShapeRef.new(shape: ExecutionState, location_name: "state"))
    ListPlanExecutionsRequest.struct_class = Types::ListPlanExecutionsRequest

    ListPlanExecutionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: AbbreviatedExecutionsList, location_name: "items"))
    ListPlanExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPlanExecutionsResponse.struct_class = Types::ListPlanExecutionsResponse

    ListPlansInRegionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPlansInRegionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPlansInRegionRequest.struct_class = Types::ListPlansInRegionRequest

    ListPlansInRegionResponse.add_member(:plans, Shapes::ShapeRef.new(shape: PlanList, location_name: "plans"))
    ListPlansInRegionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPlansInRegionResponse.struct_class = Types::ListPlansInRegionResponse

    ListPlansRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPlansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPlansRequest.struct_class = Types::ListPlansRequest

    ListPlansResponse.add_member(:plans, Shapes::ShapeRef.new(shape: PlanList, location_name: "plans"))
    ListPlansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPlansResponse.struct_class = Types::ListPlansResponse

    ListRoute53HealthChecksRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "arn"))
    ListRoute53HealthChecksRequest.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: Route53HostedZoneId, location_name: "hostedZoneId"))
    ListRoute53HealthChecksRequest.add_member(:record_name, Shapes::ShapeRef.new(shape: Route53RecordName, location_name: "recordName"))
    ListRoute53HealthChecksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRoute53HealthChecksRequestMaxResultsInteger, location_name: "maxResults"))
    ListRoute53HealthChecksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRoute53HealthChecksRequest.struct_class = Types::ListRoute53HealthChecksRequest

    ListRoute53HealthChecksResponse.add_member(:health_checks, Shapes::ShapeRef.new(shape: Route53HealthCheckList, location_name: "healthChecks"))
    ListRoute53HealthChecksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRoute53HealthChecksResponse.struct_class = Types::ListRoute53HealthChecksResponse

    ListTagsForResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: Tags, location_name: "resourceTags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MinimalWorkflow.add_member(:action, Shapes::ShapeRef.new(shape: ExecutionAction, location_name: "action"))
    MinimalWorkflow.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    MinimalWorkflow.struct_class = Types::MinimalWorkflow

    ParallelExecutionBlockConfiguration.add_member(:steps, Shapes::ShapeRef.new(shape: Steps, required: true, location_name: "steps"))
    ParallelExecutionBlockConfiguration.struct_class = Types::ParallelExecutionBlockConfiguration

    Plan.add_member(:arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "arn"))
    Plan.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Plan.add_member(:workflows, Shapes::ShapeRef.new(shape: WorkflowList, required: true, location_name: "workflows"))
    Plan.add_member(:execution_role, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "executionRole"))
    Plan.add_member(:recovery_time_objective_minutes, Shapes::ShapeRef.new(shape: PlanRecoveryTimeObjectiveMinutesInteger, location_name: "recoveryTimeObjectiveMinutes"))
    Plan.add_member(:associated_alarms, Shapes::ShapeRef.new(shape: AssociatedAlarmMap, location_name: "associatedAlarms"))
    Plan.add_member(:triggers, Shapes::ShapeRef.new(shape: TriggerList, location_name: "triggers"))
    Plan.add_member(:name, Shapes::ShapeRef.new(shape: PlanName, required: true, location_name: "name"))
    Plan.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "regions"))
    Plan.add_member(:recovery_approach, Shapes::ShapeRef.new(shape: RecoveryApproach, required: true, location_name: "recoveryApproach"))
    Plan.add_member(:primary_region, Shapes::ShapeRef.new(shape: Region, location_name: "primaryRegion"))
    Plan.add_member(:owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "owner"))
    Plan.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    Plan.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Plan.struct_class = Types::Plan

    PlanList.member = Shapes::ShapeRef.new(shape: AbbreviatedPlan)

    PlanWarnings.member = Shapes::ShapeRef.new(shape: ResourceWarning)

    RegionAndRoutingControls.key = Shapes::ShapeRef.new(shape: String)
    RegionAndRoutingControls.value = Shapes::ShapeRef.new(shape: ArcRoutingControlStates)

    RegionList.member = Shapes::ShapeRef.new(shape: Region)

    RegionSwitchPlanConfiguration.add_member(:cross_account_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "crossAccountRole"))
    RegionSwitchPlanConfiguration.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    RegionSwitchPlanConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "arn"))
    RegionSwitchPlanConfiguration.struct_class = Types::RegionSwitchPlanConfiguration

    RegionalScalingResource.key = Shapes::ShapeRef.new(shape: Region)
    RegionalScalingResource.value = Shapes::ShapeRef.new(shape: KubernetesScalingResource)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceWarning.add_member(:workflow, Shapes::ShapeRef.new(shape: MinimalWorkflow, location_name: "workflow"))
    ResourceWarning.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "version"))
    ResourceWarning.add_member(:step_name, Shapes::ShapeRef.new(shape: StepName, location_name: "stepName"))
    ResourceWarning.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    ResourceWarning.add_member(:warning_status, Shapes::ShapeRef.new(shape: ResourceWarningStatus, required: true, location_name: "warningStatus"))
    ResourceWarning.add_member(:warning_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "warningUpdatedTime"))
    ResourceWarning.add_member(:warning_message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "warningMessage"))
    ResourceWarning.struct_class = Types::ResourceWarning

    Resources.member = Shapes::ShapeRef.new(shape: String)

    Route53HealthCheck.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: Route53HostedZoneId, required: true, location_name: "hostedZoneId"))
    Route53HealthCheck.add_member(:record_name, Shapes::ShapeRef.new(shape: Route53RecordName, required: true, location_name: "recordName"))
    Route53HealthCheck.add_member(:health_check_id, Shapes::ShapeRef.new(shape: Route53HealthCheckId, location_name: "healthCheckId"))
    Route53HealthCheck.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "region"))
    Route53HealthCheck.struct_class = Types::Route53HealthCheck

    Route53HealthCheckConfiguration.add_member(:timeout_minutes, Shapes::ShapeRef.new(shape: Route53HealthCheckConfigurationTimeoutMinutesInteger, location_name: "timeoutMinutes"))
    Route53HealthCheckConfiguration.add_member(:cross_account_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "crossAccountRole"))
    Route53HealthCheckConfiguration.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    Route53HealthCheckConfiguration.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: Route53HostedZoneId, required: true, location_name: "hostedZoneId"))
    Route53HealthCheckConfiguration.add_member(:record_name, Shapes::ShapeRef.new(shape: Route53RecordName, required: true, location_name: "recordName"))
    Route53HealthCheckConfiguration.add_member(:record_sets, Shapes::ShapeRef.new(shape: Route53ResourceRecordSetList, location_name: "recordSets"))
    Route53HealthCheckConfiguration.struct_class = Types::Route53HealthCheckConfiguration

    Route53HealthCheckList.member = Shapes::ShapeRef.new(shape: Route53HealthCheck)

    Route53ResourceRecordSet.add_member(:record_set_identifier, Shapes::ShapeRef.new(shape: Route53ResourceRecordSetIdentifier, location_name: "recordSetIdentifier"))
    Route53ResourceRecordSet.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    Route53ResourceRecordSet.struct_class = Types::Route53ResourceRecordSet

    Route53ResourceRecordSetList.member = Shapes::ShapeRef.new(shape: Route53ResourceRecordSet)

    Service.add_member(:cross_account_role, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "crossAccountRole"))
    Service.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    Service.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: EcsClusterArn, location_name: "clusterArn"))
    Service.add_member(:service_arn, Shapes::ShapeRef.new(shape: EcsServiceArn, location_name: "serviceArn"))
    Service.struct_class = Types::Service

    ServiceList.member = Shapes::ShapeRef.new(shape: Service)

    StartPlanExecutionRequest.add_member(:plan_arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "planArn"))
    StartPlanExecutionRequest.add_member(:target_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "targetRegion"))
    StartPlanExecutionRequest.add_member(:action, Shapes::ShapeRef.new(shape: ExecutionAction, required: true, location_name: "action"))
    StartPlanExecutionRequest.add_member(:mode, Shapes::ShapeRef.new(shape: ExecutionMode, location_name: "mode"))
    StartPlanExecutionRequest.add_member(:comment, Shapes::ShapeRef.new(shape: ExecutionComment, location_name: "comment"))
    StartPlanExecutionRequest.add_member(:latest_version, Shapes::ShapeRef.new(shape: String, location_name: "latestVersion"))
    StartPlanExecutionRequest.struct_class = Types::StartPlanExecutionRequest

    StartPlanExecutionResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "executionId"))
    StartPlanExecutionResponse.add_member(:plan, Shapes::ShapeRef.new(shape: PlanArn, location_name: "plan"))
    StartPlanExecutionResponse.add_member(:plan_version, Shapes::ShapeRef.new(shape: String, location_name: "planVersion"))
    StartPlanExecutionResponse.add_member(:activate_region, Shapes::ShapeRef.new(shape: String, location_name: "activateRegion"))
    StartPlanExecutionResponse.add_member(:deactivate_region, Shapes::ShapeRef.new(shape: String, location_name: "deactivateRegion"))
    StartPlanExecutionResponse.struct_class = Types::StartPlanExecutionResponse

    Step.add_member(:name, Shapes::ShapeRef.new(shape: StepName, required: true, location_name: "name"))
    Step.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Step.add_member(:execution_block_configuration, Shapes::ShapeRef.new(shape: ExecutionBlockConfiguration, required: true, location_name: "executionBlockConfiguration"))
    Step.add_member(:execution_block_type, Shapes::ShapeRef.new(shape: ExecutionBlockType, required: true, location_name: "executionBlockType"))
    Step.struct_class = Types::Step

    StepState.add_member(:name, Shapes::ShapeRef.new(shape: StepName, location_name: "name"))
    StepState.add_member(:status, Shapes::ShapeRef.new(shape: StepStatus, location_name: "status"))
    StepState.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    StepState.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    StepState.add_member(:step_mode, Shapes::ShapeRef.new(shape: ExecutionMode, location_name: "stepMode"))
    StepState.struct_class = Types::StepState

    StepStates.member = Shapes::ShapeRef.new(shape: StepState)

    Steps.member = Shapes::ShapeRef.new(shape: Step)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    Trigger.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Trigger.add_member(:target_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "targetRegion"))
    Trigger.add_member(:action, Shapes::ShapeRef.new(shape: WorkflowTargetAction, required: true, location_name: "action"))
    Trigger.add_member(:conditions, Shapes::ShapeRef.new(shape: TriggerConditionList, required: true, location_name: "conditions"))
    Trigger.add_member(:min_delay_minutes_between_executions, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "minDelayMinutesBetweenExecutions"))
    Trigger.struct_class = Types::Trigger

    TriggerCondition.add_member(:associated_alarm_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "associatedAlarmName"))
    TriggerCondition.add_member(:condition, Shapes::ShapeRef.new(shape: AlarmCondition, required: true, location_name: "condition"))
    TriggerCondition.struct_class = Types::TriggerCondition

    TriggerConditionList.member = Shapes::ShapeRef.new(shape: TriggerCondition)

    TriggerList.member = Shapes::ShapeRef.new(shape: Trigger)

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "arn"))
    UntagResourceRequest.add_member(:resource_tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "resourceTagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdatePlanExecutionRequest.add_member(:plan_arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "planArn"))
    UpdatePlanExecutionRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, required: true, location_name: "executionId"))
    UpdatePlanExecutionRequest.add_member(:action, Shapes::ShapeRef.new(shape: UpdatePlanExecutionAction, required: true, location_name: "action"))
    UpdatePlanExecutionRequest.add_member(:comment, Shapes::ShapeRef.new(shape: ExecutionComment, location_name: "comment"))
    UpdatePlanExecutionRequest.struct_class = Types::UpdatePlanExecutionRequest

    UpdatePlanExecutionResponse.struct_class = Types::UpdatePlanExecutionResponse

    UpdatePlanExecutionStepRequest.add_member(:plan_arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "planArn"))
    UpdatePlanExecutionStepRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, required: true, location_name: "executionId"))
    UpdatePlanExecutionStepRequest.add_member(:comment, Shapes::ShapeRef.new(shape: ExecutionComment, required: true, location_name: "comment"))
    UpdatePlanExecutionStepRequest.add_member(:step_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stepName"))
    UpdatePlanExecutionStepRequest.add_member(:action_to_take, Shapes::ShapeRef.new(shape: UpdatePlanExecutionStepAction, required: true, location_name: "actionToTake"))
    UpdatePlanExecutionStepRequest.struct_class = Types::UpdatePlanExecutionStepRequest

    UpdatePlanExecutionStepResponse.struct_class = Types::UpdatePlanExecutionStepResponse

    UpdatePlanRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlanArn, required: true, location_name: "arn"))
    UpdatePlanRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdatePlanRequest.add_member(:workflows, Shapes::ShapeRef.new(shape: WorkflowList, required: true, location_name: "workflows"))
    UpdatePlanRequest.add_member(:execution_role, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "executionRole"))
    UpdatePlanRequest.add_member(:recovery_time_objective_minutes, Shapes::ShapeRef.new(shape: UpdatePlanRequestRecoveryTimeObjectiveMinutesInteger, location_name: "recoveryTimeObjectiveMinutes"))
    UpdatePlanRequest.add_member(:associated_alarms, Shapes::ShapeRef.new(shape: AssociatedAlarmMap, location_name: "associatedAlarms"))
    UpdatePlanRequest.add_member(:triggers, Shapes::ShapeRef.new(shape: TriggerList, location_name: "triggers"))
    UpdatePlanRequest.struct_class = Types::UpdatePlanRequest

    UpdatePlanResponse.add_member(:plan, Shapes::ShapeRef.new(shape: Plan, location_name: "plan"))
    UpdatePlanResponse.struct_class = Types::UpdatePlanResponse

    Workflow.add_member(:steps, Shapes::ShapeRef.new(shape: Steps, location_name: "steps"))
    Workflow.add_member(:workflow_target_action, Shapes::ShapeRef.new(shape: WorkflowTargetAction, required: true, location_name: "workflowTargetAction"))
    Workflow.add_member(:workflow_target_region, Shapes::ShapeRef.new(shape: Region, location_name: "workflowTargetRegion"))
    Workflow.add_member(:workflow_description, Shapes::ShapeRef.new(shape: String, location_name: "workflowDescription"))
    Workflow.struct_class = Types::Workflow

    WorkflowList.member = Shapes::ShapeRef.new(shape: Workflow)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-07-26"

      api.metadata = {
        "apiVersion" => "2022-07-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "arc-region-switch",
        "jsonVersion" => "1.0",
        "protocol" => "smithy-rpc-v2-cbor",
        "protocols" => ["smithy-rpc-v2-cbor", "json"],
        "serviceFullName" => "ARC - Region switch",
        "serviceId" => "ARC Region switch",
        "signatureVersion" => "v4",
        "signingName" => "arc-region-switch",
        "targetPrefix" => "ArcRegionSwitch",
        "uid" => "arc-region-switch-2022-07-26",
      }

      api.add_operation(:approve_plan_execution_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApprovePlanExecutionStep"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ApprovePlanExecutionStepRequest)
        o.output = Shapes::ShapeRef.new(shape: ApprovePlanExecutionStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:cancel_plan_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelPlanExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelPlanExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelPlanExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePlanRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePlanResponse)
      end)

      api.add_operation(:delete_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePlanRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalStateException)
      end)

      api.add_operation(:get_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_plan_evaluation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlanEvaluationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPlanEvaluationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPlanEvaluationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_plan_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlanExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPlanExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPlanExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_plan_in_region, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlanInRegion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPlanInRegionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPlanInRegionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_plan_execution_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlanExecutionEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPlanExecutionEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPlanExecutionEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_plan_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlanExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPlanExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPlanExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_plans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlans"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPlansRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPlansResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_plans_in_region, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlansInRegion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPlansInRegionRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPlansInRegionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_route_53_health_checks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoute53HealthChecks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRoute53HealthChecksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoute53HealthChecksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_plan_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPlanExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartPlanExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPlanExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalArgumentException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePlanRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_plan_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePlanExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePlanExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePlanExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_plan_execution_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePlanExecutionStep"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePlanExecutionStepRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePlanExecutionStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
