# frozen_string_literal: true

# This is generated code!

module Aws::ARCRegionswitch
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbbreviatedExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#AbbreviatedExecution', name: 'AbbreviatedExecution')
    AbbreviatedExecutionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#AbbreviatedExecutionsList', name: 'AbbreviatedExecutionsList')
    AbbreviatedPlan = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#AbbreviatedPlan', name: 'AbbreviatedPlan')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#AccountId', name: 'AccountId', traits: {"smithy.api#pattern" => "^\\d{12}$"})
    AlarmCondition = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#AlarmCondition', name: 'AlarmCondition')
    AlarmType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#AlarmType', name: 'AlarmType')
    Approval = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#Approval', name: 'Approval')
    ApprovePlanExecutionStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ApprovePlanExecutionStepRequest', name: 'ApprovePlanExecutionStepRequest')
    ApprovePlanExecutionStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ApprovePlanExecutionStepResponse', name: 'ApprovePlanExecutionStepResponse')
    ArcRoutingControlConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ArcRoutingControlConfiguration', name: 'ArcRoutingControlConfiguration')
    ArcRoutingControlState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ArcRoutingControlState', name: 'ArcRoutingControlState')
    ArcRoutingControlStates = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#ArcRoutingControlStates', name: 'ArcRoutingControlStates')
    Asg = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#Asg', name: 'Asg')
    AsgArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#AsgArn', name: 'AsgArn', traits: {"smithy.api#pattern" => "^arn:aws:autoscaling:[a-z0-9-]+:\\d{12}:autoScalingGroup:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}:autoScalingGroupName/[\\S\\s]{1,255}$"})
    AsgList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#AsgList', name: 'AsgList', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    AssociatedAlarm = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#AssociatedAlarm', name: 'AssociatedAlarm')
    AssociatedAlarmMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.arcregionswitch#AssociatedAlarmMap', name: 'AssociatedAlarmMap')
    AuroraClusterArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#AuroraClusterArn', name: 'AuroraClusterArn')
    AuroraClusterArns = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#AuroraClusterArns', name: 'AuroraClusterArns')
    CancelPlanExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#CancelPlanExecutionRequest', name: 'CancelPlanExecutionRequest')
    CancelPlanExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#CancelPlanExecutionResponse', name: 'CancelPlanExecutionResponse')
    CreatePlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#CreatePlanRequest', name: 'CreatePlanRequest')
    CreatePlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#CreatePlanResponse', name: 'CreatePlanResponse')
    CustomActionLambdaConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#CustomActionLambdaConfiguration', name: 'CustomActionLambdaConfiguration')
    DeletePlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#DeletePlanRequest', name: 'DeletePlanRequest')
    DeletePlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#DeletePlanResponse', name: 'DeletePlanResponse')
    Duration = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#Duration', name: 'Duration', traits: {"smithy.api#pattern" => "^P(?!$)(\\d+Y)?(\\d+M)?(\\d+D)?(T(?=\\d)(\\d+H)?(\\d+M)?(\\d+S)?)?$"})
    Ec2AsgCapacityIncreaseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#Ec2AsgCapacityIncreaseConfiguration', name: 'Ec2AsgCapacityIncreaseConfiguration')
    Ec2AsgCapacityMonitoringApproach = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#Ec2AsgCapacityMonitoringApproach', name: 'Ec2AsgCapacityMonitoringApproach')
    Ec2Ungraceful = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#Ec2Ungraceful', name: 'Ec2Ungraceful')
    EcsCapacityIncreaseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#EcsCapacityIncreaseConfiguration', name: 'EcsCapacityIncreaseConfiguration')
    EcsCapacityMonitoringApproach = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#EcsCapacityMonitoringApproach', name: 'EcsCapacityMonitoringApproach')
    EcsClusterArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#EcsClusterArn', name: 'EcsClusterArn', traits: {"smithy.api#pattern" => "^arn:aws:ecs:[a-z0-9-]+:\\d{12}:cluster/[a-zA-Z0-9_-]{1,255}$"})
    EcsServiceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#EcsServiceArn', name: 'EcsServiceArn', traits: {"smithy.api#pattern" => "^arn:aws:ecs:[a-z0-9-]+:\\d{12}:service/[a-zA-Z0-9_-]+/[a-zA-Z0-9_-]{1,255}$"})
    EcsUngraceful = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#EcsUngraceful', name: 'EcsUngraceful')
    EksCapacityMonitoringApproach = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#EksCapacityMonitoringApproach', name: 'EksCapacityMonitoringApproach')
    EksCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#EksCluster', name: 'EksCluster')
    EksClusterArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#EksClusterArn', name: 'EksClusterArn', traits: {"smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:eks:[a-z0-9-]+:\\d{12}:cluster/[a-zA-Z0-9][a-zA-Z0-9-_]{0,99}$"})
    EksClusters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#EksClusters', name: 'EksClusters', traits: {"smithy.api#length" => {"min" => 2}})
    EksResourceScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#EksResourceScalingConfiguration', name: 'EksResourceScalingConfiguration')
    EksResourceScalingUngraceful = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#EksResourceScalingUngraceful', name: 'EksResourceScalingUngraceful')
    EvaluationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#EvaluationStatus', name: 'EvaluationStatus')
    ExecutionAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#ExecutionAction', name: 'ExecutionAction')
    ExecutionApprovalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ExecutionApprovalConfiguration', name: 'ExecutionApprovalConfiguration')
    ExecutionBlockConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.arcregionswitch#ExecutionBlockConfiguration', name: 'ExecutionBlockConfiguration')
    ExecutionBlockType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#ExecutionBlockType', name: 'ExecutionBlockType')
    ExecutionComment = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#ExecutionComment', name: 'ExecutionComment', traits: {"smithy.api#length" => {"max" => 1024}})
    ExecutionEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ExecutionEvent', name: 'ExecutionEvent')
    ExecutionEventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#ExecutionEventList', name: 'ExecutionEventList')
    ExecutionEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#ExecutionEventType', name: 'ExecutionEventType')
    ExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#ExecutionId', name: 'ExecutionId')
    ExecutionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#ExecutionMode', name: 'ExecutionMode')
    ExecutionState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#ExecutionState', name: 'ExecutionState')
    GetPlanEvaluationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#GetPlanEvaluationStatusRequest', name: 'GetPlanEvaluationStatusRequest')
    GetPlanEvaluationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#GetPlanEvaluationStatusResponse', name: 'GetPlanEvaluationStatusResponse')
    GetPlanExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#GetPlanExecutionRequest', name: 'GetPlanExecutionRequest')
    GetPlanExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#GetPlanExecutionResponse', name: 'GetPlanExecutionResponse')
    GetPlanExecutionStepStatesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.arcregionswitch#GetPlanExecutionStepStatesMaxResults', name: 'GetPlanExecutionStepStatesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    GetPlanInRegionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#GetPlanInRegionRequest', name: 'GetPlanInRegionRequest')
    GetPlanInRegionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#GetPlanInRegionResponse', name: 'GetPlanInRegionResponse')
    GetPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#GetPlanRequest', name: 'GetPlanRequest')
    GetPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#GetPlanResponse', name: 'GetPlanResponse')
    GlobalAuroraConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#GlobalAuroraConfiguration', name: 'GlobalAuroraConfiguration')
    GlobalAuroraDefaultBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#GlobalAuroraDefaultBehavior', name: 'GlobalAuroraDefaultBehavior')
    GlobalAuroraUngraceful = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#GlobalAuroraUngraceful', name: 'GlobalAuroraUngraceful')
    GlobalAuroraUngracefulBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#GlobalAuroraUngracefulBehavior', name: 'GlobalAuroraUngracefulBehavior')
    GlobalClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#GlobalClusterIdentifier', name: 'GlobalClusterIdentifier')
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#pattern" => "^arn:aws[a-zA-Z0-9-]*:iam::[0-9]{12}:role/.+$"})
    IllegalArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#IllegalArgumentException', name: 'IllegalArgumentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IllegalStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#IllegalStateException', name: 'IllegalStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KubernetesNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#KubernetesNamespace', name: 'KubernetesNamespace', traits: {"smithy.api#pattern" => "^[a-z0-9][a-z0-9-]{0,61}[a-z0-9]$"})
    KubernetesResourceType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#KubernetesResourceType', name: 'KubernetesResourceType')
    KubernetesScalingApplication = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.arcregionswitch#KubernetesScalingApplication', name: 'KubernetesScalingApplication')
    KubernetesScalingApps = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#KubernetesScalingApps', name: 'KubernetesScalingApps', traits: {"smithy.api#length" => {"min" => 1}})
    KubernetesScalingResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#KubernetesScalingResource', name: 'KubernetesScalingResource')
    LambdaArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#LambdaArn', name: 'LambdaArn')
    LambdaList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#LambdaList', name: 'LambdaList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    LambdaUngraceful = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#LambdaUngraceful', name: 'LambdaUngraceful')
    LambdaUngracefulBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#LambdaUngracefulBehavior', name: 'LambdaUngracefulBehavior')
    Lambdas = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#Lambdas', name: 'Lambdas')
    ListExecutionEventsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.arcregionswitch#ListExecutionEventsMaxResults', name: 'ListExecutionEventsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListExecutionsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.arcregionswitch#ListExecutionsMaxResults', name: 'ListExecutionsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListPlanExecutionEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ListPlanExecutionEventsRequest', name: 'ListPlanExecutionEventsRequest')
    ListPlanExecutionEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ListPlanExecutionEventsResponse', name: 'ListPlanExecutionEventsResponse')
    ListPlanExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ListPlanExecutionsRequest', name: 'ListPlanExecutionsRequest')
    ListPlanExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ListPlanExecutionsResponse', name: 'ListPlanExecutionsResponse')
    ListPlansInRegionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ListPlansInRegionRequest', name: 'ListPlansInRegionRequest')
    ListPlansInRegionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ListPlansInRegionResponse', name: 'ListPlansInRegionResponse')
    ListPlansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ListPlansRequest', name: 'ListPlansRequest')
    ListPlansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ListPlansResponse', name: 'ListPlansResponse')
    ListRoute53HealthChecksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ListRoute53HealthChecksRequest', name: 'ListRoute53HealthChecksRequest')
    ListRoute53HealthChecksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ListRoute53HealthChecksResponse', name: 'ListRoute53HealthChecksResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.arcregionswitch#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MinimalWorkflow = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#MinimalWorkflow', name: 'MinimalWorkflow')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ParallelExecutionBlockConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ParallelExecutionBlockConfiguration', name: 'ParallelExecutionBlockConfiguration')
    Plan = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#Plan', name: 'Plan')
    PlanArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#PlanArn', name: 'PlanArn', traits: {"smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:arc-region-switch::[0-9]{12}:plan/([a-zA-Z0-9](?:[a-zA-Z0-9-]{0,30}[a-zA-Z0-9])?):([a-z0-9]{6})$"})
    PlanList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#PlanList', name: 'PlanList')
    PlanName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#PlanName', name: 'PlanName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,30}[a-zA-Z0-9])?$"})
    PlanWarnings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#PlanWarnings', name: 'PlanWarnings')
    RecoveryApproach = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#RecoveryApproach', name: 'RecoveryApproach')
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#Region', name: 'Region', traits: {"smithy.api#pattern" => "^[a-z]{2}-[a-z-]+-\\d+$"})
    RegionAndRoutingControls = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.arcregionswitch#RegionAndRoutingControls', name: 'RegionAndRoutingControls')
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#RegionList', name: 'RegionList', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    RegionSwitchPlanConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#RegionSwitchPlanConfiguration', name: 'RegionSwitchPlanConfiguration')
    RegionToRunIn = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#RegionToRunIn', name: 'RegionToRunIn')
    RegionalScalingResource = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.arcregionswitch#RegionalScalingResource', name: 'RegionalScalingResource')
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#ResourceArn', name: 'ResourceArn')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceWarning = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#ResourceWarning', name: 'ResourceWarning')
    ResourceWarningStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#ResourceWarningStatus', name: 'ResourceWarningStatus')
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#Resources', name: 'Resources')
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#RoleArn', name: 'RoleArn')
    Route53HealthCheck = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#Route53HealthCheck', name: 'Route53HealthCheck')
    Route53HealthCheckConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#Route53HealthCheckConfiguration', name: 'Route53HealthCheckConfiguration')
    Route53HealthCheckId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#Route53HealthCheckId', name: 'Route53HealthCheckId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    Route53HealthCheckList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#Route53HealthCheckList', name: 'Route53HealthCheckList')
    Route53HostedZoneId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#Route53HostedZoneId', name: 'Route53HostedZoneId', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    Route53RecordName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#Route53RecordName', name: 'Route53RecordName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Route53ResourceRecordSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#Route53ResourceRecordSet', name: 'Route53ResourceRecordSet')
    Route53ResourceRecordSetIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#Route53ResourceRecordSetIdentifier', name: 'Route53ResourceRecordSetIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Route53ResourceRecordSetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#Route53ResourceRecordSetList', name: 'Route53ResourceRecordSetList')
    RoutingControlArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#RoutingControlArn', name: 'RoutingControlArn')
    RoutingControlStateChange = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#RoutingControlStateChange', name: 'RoutingControlStateChange')
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#Service', name: 'Service')
    ServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#ServiceList', name: 'ServiceList', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    StartPlanExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#StartPlanExecutionRequest', name: 'StartPlanExecutionRequest')
    StartPlanExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#StartPlanExecutionResponse', name: 'StartPlanExecutionResponse')
    Step = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#Step', name: 'Step')
    StepName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#StepName', name: 'StepName')
    StepState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#StepState', name: 'StepState')
    StepStates = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#StepStates', name: 'StepStates')
    StepStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#StepStatus', name: 'StepStatus')
    Steps = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#Steps', name: 'Steps')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#TagResourceRequest', name: 'TagResourceRequest', traits: {"aws.api#data" => "tagging"})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.arcregionswitch#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.arcregionswitch#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    Trigger = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#Trigger', name: 'Trigger')
    TriggerCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#TriggerCondition', name: 'TriggerCondition')
    TriggerConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#TriggerConditionList', name: 'TriggerConditionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TriggerList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#TriggerList', name: 'TriggerList')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#UntagResourceRequest', name: 'UntagResourceRequest', traits: {"aws.api#data" => "tagging"})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdatePlanExecutionAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#UpdatePlanExecutionAction', name: 'UpdatePlanExecutionAction')
    UpdatePlanExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#UpdatePlanExecutionRequest', name: 'UpdatePlanExecutionRequest')
    UpdatePlanExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#UpdatePlanExecutionResponse', name: 'UpdatePlanExecutionResponse')
    UpdatePlanExecutionStepAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#UpdatePlanExecutionStepAction', name: 'UpdatePlanExecutionStepAction')
    UpdatePlanExecutionStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#UpdatePlanExecutionStepRequest', name: 'UpdatePlanExecutionStepRequest')
    UpdatePlanExecutionStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#UpdatePlanExecutionStepResponse', name: 'UpdatePlanExecutionStepResponse')
    UpdatePlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#UpdatePlanRequest', name: 'UpdatePlanRequest')
    UpdatePlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#UpdatePlanResponse', name: 'UpdatePlanResponse')
    Workflow = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.arcregionswitch#Workflow', name: 'Workflow')
    WorkflowList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.arcregionswitch#WorkflowList', name: 'WorkflowList')
    WorkflowTargetAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.arcregionswitch#WorkflowTargetAction', name: 'WorkflowTargetAction')

    AbbreviatedExecution.add_member(:plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'planArn', traits: {"smithy.api#required" => {}}))
    AbbreviatedExecution.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId', traits: {"smithy.api#required" => {}}))
    AbbreviatedExecution.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"aws.cloudformation#cfnMutability" => "read"}))
    AbbreviatedExecution.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    AbbreviatedExecution.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'comment'))
    AbbreviatedExecution.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    AbbreviatedExecution.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime'))
    AbbreviatedExecution.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionMode, location_name: 'mode', traits: {"smithy.api#required" => {}}))
    AbbreviatedExecution.add_member(:execution_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionState, location_name: 'executionState', traits: {"smithy.api#required" => {}}))
    AbbreviatedExecution.add_member(:execution_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionAction, location_name: 'executionAction', traits: {"smithy.api#required" => {}}))
    AbbreviatedExecution.add_member(:execution_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'executionRegion', traits: {"smithy.api#required" => {}}))
    AbbreviatedExecution.add_member(:actual_recovery_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'actualRecoveryTime'))
    AbbreviatedExecution.type = Types::AbbreviatedExecution
    AbbreviatedExecutionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbbreviatedExecution)
    AbbreviatedPlan.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    AbbreviatedPlan.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'owner', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    AbbreviatedPlan.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanName, location_name: 'name', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    AbbreviatedPlan.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    AbbreviatedPlan.add_member(:recovery_approach, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryApproach, location_name: 'recoveryApproach', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    AbbreviatedPlan.add_member(:primary_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'primaryRegion', traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    AbbreviatedPlan.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"aws.cloudformation#cfnMutability" => "read"}))
    AbbreviatedPlan.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    AbbreviatedPlan.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    AbbreviatedPlan.add_member(:execution_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'executionRole'))
    AbbreviatedPlan.add_member(:active_plan_execution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'activePlanExecution'))
    AbbreviatedPlan.add_member(:recovery_time_objective_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'recoveryTimeObjectiveMinutes', traits: {"smithy.api#range" => {"min" => 1, "max" => 10080}}))
    AbbreviatedPlan.type = Types::AbbreviatedPlan
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AlarmCondition.add_member(:red, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RED', traits: {"smithy.api#enumValue" => "red"}))
    AlarmCondition.add_member(:green, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREEN', traits: {"smithy.api#enumValue" => "green"}))
    AlarmType.add_member(:application_health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION_HEALTH', traits: {"smithy.api#enumValue" => "applicationHealth"}))
    AlarmType.add_member(:trigger, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRIGGER', traits: {"smithy.api#enumValue" => "trigger"}))
    Approval.add_member(:approve, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVE', traits: {"smithy.api#enumValue" => "approve"}))
    Approval.add_member(:decline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECLINE', traits: {"smithy.api#enumValue" => "decline"}))
    ApprovePlanExecutionStepRequest.add_member(:plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'planArn', traits: {"smithy.api#required" => {}}))
    ApprovePlanExecutionStepRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId', traits: {"smithy.api#required" => {}}))
    ApprovePlanExecutionStepRequest.add_member(:step_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepName, location_name: 'stepName', traits: {"smithy.api#required" => {}}))
    ApprovePlanExecutionStepRequest.add_member(:approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Approval, location_name: 'approval', traits: {"smithy.api#required" => {}}))
    ApprovePlanExecutionStepRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionComment, location_name: 'comment'))
    ApprovePlanExecutionStepRequest.type = Types::ApprovePlanExecutionStepRequest
    ApprovePlanExecutionStepResponse.type = Types::ApprovePlanExecutionStepResponse
    ArcRoutingControlConfiguration.add_member(:timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'timeoutMinutes', traits: {"smithy.api#default" => 60, "smithy.api#range" => {"min" => 1}}))
    ArcRoutingControlConfiguration.add_member(:cross_account_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'crossAccountRole'))
    ArcRoutingControlConfiguration.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId'))
    ArcRoutingControlConfiguration.add_member(:region_and_routing_controls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionAndRoutingControls, location_name: 'regionAndRoutingControls', traits: {"smithy.api#required" => {}}))
    ArcRoutingControlConfiguration.type = Types::ArcRoutingControlConfiguration
    ArcRoutingControlState.add_member(:routing_control_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControlArn, location_name: 'routingControlArn', traits: {"smithy.api#required" => {}}))
    ArcRoutingControlState.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingControlStateChange, location_name: 'state', traits: {"smithy.api#required" => {}}))
    ArcRoutingControlState.type = Types::ArcRoutingControlState
    ArcRoutingControlStates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArcRoutingControlState)
    Asg.add_member(:cross_account_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'crossAccountRole'))
    Asg.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId'))
    Asg.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsgArn, location_name: 'arn'))
    Asg.type = Types::Asg
    AsgList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Asg)
    AssociatedAlarm.add_member(:cross_account_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'crossAccountRole'))
    AssociatedAlarm.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId'))
    AssociatedAlarm.add_member(:resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceIdentifier', traits: {"smithy.api#required" => {}}))
    AssociatedAlarm.add_member(:alarm_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmType, location_name: 'alarmType', traits: {"smithy.api#required" => {}}))
    AssociatedAlarm.type = Types::AssociatedAlarm
    AssociatedAlarmMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    AssociatedAlarmMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedAlarm)
    AuroraClusterArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuroraClusterArn)
    CancelPlanExecutionRequest.add_member(:plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'planArn', traits: {"smithy.api#required" => {}}))
    CancelPlanExecutionRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId', traits: {"smithy.api#required" => {}}))
    CancelPlanExecutionRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionComment, location_name: 'comment'))
    CancelPlanExecutionRequest.type = Types::CancelPlanExecutionRequest
    CancelPlanExecutionResponse.type = Types::CancelPlanExecutionResponse
    CreatePlanRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreatePlanRequest.add_member(:workflows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowList, location_name: 'workflows', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}}))
    CreatePlanRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'executionRole', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}}))
    CreatePlanRequest.add_member(:recovery_time_objective_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'recoveryTimeObjectiveMinutes', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#range" => {"min" => 1, "max" => 10080}}))
    CreatePlanRequest.add_member(:associated_alarms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedAlarmMap, location_name: 'associatedAlarms', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreatePlanRequest.add_member(:triggers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerList, location_name: 'triggers', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreatePlanRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanName, location_name: 'name', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    CreatePlanRequest.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    CreatePlanRequest.add_member(:recovery_approach, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryApproach, location_name: 'recoveryApproach', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    CreatePlanRequest.add_member(:primary_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'primaryRegion', traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CreatePlanRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags'))
    CreatePlanRequest.type = Types::CreatePlanRequest
    CreatePlanResponse.add_member(:plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Plan, location_name: 'plan'))
    CreatePlanResponse.type = Types::CreatePlanResponse
    CustomActionLambdaConfiguration.add_member(:timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'timeoutMinutes', traits: {"smithy.api#default" => 60, "smithy.api#range" => {"min" => 1}}))
    CustomActionLambdaConfiguration.add_member(:lambdas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaList, location_name: 'lambdas', traits: {"smithy.api#required" => {}}))
    CustomActionLambdaConfiguration.add_member(:retry_interval_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: 'retryIntervalMinutes', traits: {"smithy.api#required" => {}}))
    CustomActionLambdaConfiguration.add_member(:region_to_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionToRunIn, location_name: 'regionToRun', traits: {"smithy.api#required" => {}}))
    CustomActionLambdaConfiguration.add_member(:ungraceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaUngraceful, location_name: 'ungraceful'))
    CustomActionLambdaConfiguration.type = Types::CustomActionLambdaConfiguration
    DeletePlanRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    DeletePlanRequest.type = Types::DeletePlanRequest
    DeletePlanResponse.type = Types::DeletePlanResponse
    Ec2AsgCapacityIncreaseConfiguration.add_member(:timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'timeoutMinutes', traits: {"smithy.api#default" => 60, "smithy.api#range" => {"min" => 1}}))
    Ec2AsgCapacityIncreaseConfiguration.add_member(:asgs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsgList, location_name: 'asgs', traits: {"smithy.api#required" => {}}))
    Ec2AsgCapacityIncreaseConfiguration.add_member(:ungraceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2Ungraceful, location_name: 'ungraceful'))
    Ec2AsgCapacityIncreaseConfiguration.add_member(:target_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'targetPercent', traits: {"smithy.api#default" => 100}))
    Ec2AsgCapacityIncreaseConfiguration.add_member(:capacity_monitoring_approach, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2AsgCapacityMonitoringApproach, location_name: 'capacityMonitoringApproach', traits: {"smithy.api#default" => "sampledMaxInLast24Hours"}))
    Ec2AsgCapacityIncreaseConfiguration.type = Types::Ec2AsgCapacityIncreaseConfiguration
    Ec2AsgCapacityMonitoringApproach.add_member(:sampled_max_in_last_24_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAMPLED_MAX_IN_LAST_24_HOURS', traits: {"smithy.api#enumValue" => "sampledMaxInLast24Hours"}))
    Ec2AsgCapacityMonitoringApproach.add_member(:autoscaling_max_in_last_24_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOSCALING_MAX_IN_LAST_24_HOURS', traits: {"smithy.api#enumValue" => "autoscalingMaxInLast24Hours"}))
    Ec2Ungraceful.add_member(:minimum_success_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'minimumSuccessPercentage', traits: {"smithy.api#range" => {"min" => 0, "max" => 99}, "smithy.api#required" => {}}))
    Ec2Ungraceful.type = Types::Ec2Ungraceful
    EcsCapacityIncreaseConfiguration.add_member(:timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'timeoutMinutes', traits: {"smithy.api#default" => 60, "smithy.api#range" => {"min" => 1}}))
    EcsCapacityIncreaseConfiguration.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'services', traits: {"smithy.api#required" => {}}))
    EcsCapacityIncreaseConfiguration.add_member(:ungraceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsUngraceful, location_name: 'ungraceful'))
    EcsCapacityIncreaseConfiguration.add_member(:target_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'targetPercent', traits: {"smithy.api#default" => 100}))
    EcsCapacityIncreaseConfiguration.add_member(:capacity_monitoring_approach, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsCapacityMonitoringApproach, location_name: 'capacityMonitoringApproach', traits: {"smithy.api#default" => "sampledMaxInLast24Hours"}))
    EcsCapacityIncreaseConfiguration.type = Types::EcsCapacityIncreaseConfiguration
    EcsCapacityMonitoringApproach.add_member(:sampled_max_in_last_24_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAMPLED_MAX_IN_LAST_24_HOURS', traits: {"smithy.api#enumValue" => "sampledMaxInLast24Hours"}))
    EcsCapacityMonitoringApproach.add_member(:container_insights_max_in_last_24_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINER_INSIGHTS_MAX_IN_LAST_24_HOURS', traits: {"smithy.api#enumValue" => "containerInsightsMaxInLast24Hours"}))
    EcsUngraceful.add_member(:minimum_success_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'minimumSuccessPercentage', traits: {"smithy.api#range" => {"min" => 0, "max" => 99}, "smithy.api#required" => {}}))
    EcsUngraceful.type = Types::EcsUngraceful
    EksCapacityMonitoringApproach.add_member(:sampled_max_in_last_24_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAMPLED_MAX_IN_LAST_24_HOURS', traits: {"smithy.api#enumValue" => "sampledMaxInLast24Hours"}))
    EksCluster.add_member(:cross_account_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'crossAccountRole'))
    EksCluster.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId'))
    EksCluster.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksClusterArn, location_name: 'clusterArn', traits: {"smithy.api#required" => {}}))
    EksCluster.type = Types::EksCluster
    EksClusters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksCluster)
    EksResourceScalingConfiguration.add_member(:timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'timeoutMinutes', traits: {"smithy.api#default" => 60, "smithy.api#range" => {"min" => 1}}))
    EksResourceScalingConfiguration.add_member(:kubernetes_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KubernetesResourceType, location_name: 'kubernetesResourceType', traits: {"smithy.api#required" => {}}))
    EksResourceScalingConfiguration.add_member(:scaling_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KubernetesScalingApps, location_name: 'scalingResources'))
    EksResourceScalingConfiguration.add_member(:eks_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksClusters, location_name: 'eksClusters'))
    EksResourceScalingConfiguration.add_member(:ungraceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksResourceScalingUngraceful, location_name: 'ungraceful'))
    EksResourceScalingConfiguration.add_member(:target_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'targetPercent', traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1}}))
    EksResourceScalingConfiguration.add_member(:capacity_monitoring_approach, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksCapacityMonitoringApproach, location_name: 'capacityMonitoringApproach', traits: {"smithy.api#default" => "sampledMaxInLast24Hours"}))
    EksResourceScalingConfiguration.type = Types::EksResourceScalingConfiguration
    EksResourceScalingUngraceful.add_member(:minimum_success_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'minimumSuccessPercentage', traits: {"smithy.api#range" => {"min" => 0, "max" => 99}, "smithy.api#required" => {}}))
    EksResourceScalingUngraceful.type = Types::EksResourceScalingUngraceful
    EvaluationStatus.add_member(:passed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSED', traits: {"smithy.api#enumValue" => "passed"}))
    EvaluationStatus.add_member(:action_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTION_REQUIRED', traits: {"smithy.api#enumValue" => "actionRequired"}))
    EvaluationStatus.add_member(:pending_evaluation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_EVALUATION', traits: {"smithy.api#enumValue" => "pendingEvaluation"}))
    EvaluationStatus.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "unknown"}))
    ExecutionAction.add_member(:activate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVATE', traits: {"smithy.api#enumValue" => "activate"}))
    ExecutionAction.add_member(:deactivate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEACTIVATE', traits: {"smithy.api#enumValue" => "deactivate"}))
    ExecutionApprovalConfiguration.add_member(:timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'timeoutMinutes', traits: {"smithy.api#default" => 60, "smithy.api#range" => {"min" => 1}}))
    ExecutionApprovalConfiguration.add_member(:approval_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'approvalRole', traits: {"smithy.api#required" => {}}))
    ExecutionApprovalConfiguration.type = Types::ExecutionApprovalConfiguration
    ExecutionBlockConfiguration.add_member(:custom_action_lambda_config, Types::ExecutionBlockConfiguration::CustomActionLambdaConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomActionLambdaConfiguration, location_name: 'customActionLambdaConfig'))
    ExecutionBlockConfiguration.add_member(:ec2_asg_capacity_increase_config, Types::ExecutionBlockConfiguration::Ec2AsgCapacityIncreaseConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2AsgCapacityIncreaseConfiguration, location_name: 'ec2AsgCapacityIncreaseConfig'))
    ExecutionBlockConfiguration.add_member(:execution_approval_config, Types::ExecutionBlockConfiguration::ExecutionApprovalConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionApprovalConfiguration, location_name: 'executionApprovalConfig'))
    ExecutionBlockConfiguration.add_member(:arc_routing_control_config, Types::ExecutionBlockConfiguration::ArcRoutingControlConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArcRoutingControlConfiguration, location_name: 'arcRoutingControlConfig'))
    ExecutionBlockConfiguration.add_member(:global_aurora_config, Types::ExecutionBlockConfiguration::GlobalAuroraConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalAuroraConfiguration, location_name: 'globalAuroraConfig'))
    ExecutionBlockConfiguration.add_member(:parallel_config, Types::ExecutionBlockConfiguration::ParallelConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelExecutionBlockConfiguration, location_name: 'parallelConfig'))
    ExecutionBlockConfiguration.add_member(:region_switch_plan_config, Types::ExecutionBlockConfiguration::RegionSwitchPlanConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionSwitchPlanConfiguration, location_name: 'regionSwitchPlanConfig'))
    ExecutionBlockConfiguration.add_member(:ecs_capacity_increase_config, Types::ExecutionBlockConfiguration::EcsCapacityIncreaseConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsCapacityIncreaseConfiguration, location_name: 'ecsCapacityIncreaseConfig'))
    ExecutionBlockConfiguration.add_member(:eks_resource_scaling_config, Types::ExecutionBlockConfiguration::EksResourceScalingConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksResourceScalingConfiguration, location_name: 'eksResourceScalingConfig'))
    ExecutionBlockConfiguration.add_member(:route53_health_check_config, Types::ExecutionBlockConfiguration::Route53HealthCheckConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53HealthCheckConfiguration, location_name: 'route53HealthCheckConfig'))
    ExecutionBlockConfiguration.add_member(:unknown, Types::ExecutionBlockConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ExecutionBlockConfiguration.type = Types::ExecutionBlockConfiguration
    ExecutionBlockType.add_member(:custom_action_lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_ACTION_LAMBDA', traits: {"smithy.api#enumValue" => "CustomActionLambda"}))
    ExecutionBlockType.add_member(:execution_approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_APPROVAL', traits: {"smithy.api#enumValue" => "ManualApproval"}))
    ExecutionBlockType.add_member(:aurora, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AURORA', traits: {"smithy.api#enumValue" => "AuroraGlobalDatabase"}))
    ExecutionBlockType.add_member(:ec2_asg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_ASG', traits: {"smithy.api#enumValue" => "EC2AutoScaling"}))
    ExecutionBlockType.add_member(:routing_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTING_CONTROL', traits: {"smithy.api#enumValue" => "ARCRoutingControl"}))
    ExecutionBlockType.add_member(:region_switch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGION_SWITCH', traits: {"smithy.api#enumValue" => "ARCRegionSwitchPlan"}))
    ExecutionBlockType.add_member(:parallel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARALLEL', traits: {"smithy.api#enumValue" => "Parallel"}))
    ExecutionBlockType.add_member(:ecs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECS', traits: {"smithy.api#enumValue" => "ECSServiceScaling"}))
    ExecutionBlockType.add_member(:eks_resource_scaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS_RESOURCE_SCALING', traits: {"smithy.api#enumValue" => "EKSResourceScaling"}))
    ExecutionBlockType.add_member(:route53_health_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTE53_HEALTH_CHECK', traits: {"smithy.api#enumValue" => "Route53HealthCheck"}))
    ExecutionEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'timestamp'))
    ExecutionEvent.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionEventType, location_name: 'type'))
    ExecutionEvent.add_member(:step_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepName, location_name: 'stepName'))
    ExecutionEvent.add_member(:execution_block_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionBlockType, location_name: 'executionBlockType'))
    ExecutionEvent.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'resources'))
    ExecutionEvent.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'error'))
    ExecutionEvent.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    ExecutionEvent.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'eventId', traits: {"smithy.api#required" => {}}))
    ExecutionEvent.add_member(:previous_event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'previousEventId'))
    ExecutionEvent.type = Types::ExecutionEvent
    ExecutionEventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionEvent)
    ExecutionEventType.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "unknown"}))
    ExecutionEventType.add_member(:execution_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_PENDING', traits: {"smithy.api#enumValue" => "executionPending"}))
    ExecutionEventType.add_member(:execution_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_STARTED', traits: {"smithy.api#enumValue" => "executionStarted"}))
    ExecutionEventType.add_member(:execution_succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_SUCCEEDED', traits: {"smithy.api#enumValue" => "executionSucceeded"}))
    ExecutionEventType.add_member(:execution_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_FAILED', traits: {"smithy.api#enumValue" => "executionFailed"}))
    ExecutionEventType.add_member(:execution_pausing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_PAUSING', traits: {"smithy.api#enumValue" => "executionPausing"}))
    ExecutionEventType.add_member(:execution_paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_PAUSED', traits: {"smithy.api#enumValue" => "executionPaused"}))
    ExecutionEventType.add_member(:execution_canceling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_CANCELING', traits: {"smithy.api#enumValue" => "executionCanceling"}))
    ExecutionEventType.add_member(:execution_canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_CANCELED', traits: {"smithy.api#enumValue" => "executionCanceled"}))
    ExecutionEventType.add_member(:execution_pending_approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_PENDING_APPROVAL', traits: {"smithy.api#enumValue" => "executionPendingApproval"}))
    ExecutionEventType.add_member(:execution_behavior_changed_to_ungraceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_BEHAVIOR_CHANGED_TO_UNGRACEFUL', traits: {"smithy.api#enumValue" => "executionBehaviorChangedToUngraceful"}))
    ExecutionEventType.add_member(:execution_behavior_changed_to_graceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_BEHAVIOR_CHANGED_TO_GRACEFUL', traits: {"smithy.api#enumValue" => "executionBehaviorChangedToGraceful"}))
    ExecutionEventType.add_member(:execution_pending_child_plan_manual_approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_PENDING_CHILD_PLAN_MANUAL_APPROVAL', traits: {"smithy.api#enumValue" => "executionPendingChildPlanManualApproval"}))
    ExecutionEventType.add_member(:execution_success_monitoring_application_health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_SUCCESS_MONITORING_APPLICATION_HEALTH', traits: {"smithy.api#enumValue" => "executionSuccessMonitoringApplicationHealth"}))
    ExecutionEventType.add_member(:step_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_STARTED', traits: {"smithy.api#enumValue" => "stepStarted"}))
    ExecutionEventType.add_member(:step_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_UPDATE', traits: {"smithy.api#enumValue" => "stepUpdate"}))
    ExecutionEventType.add_member(:step_succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_SUCCEEDED', traits: {"smithy.api#enumValue" => "stepSucceeded"}))
    ExecutionEventType.add_member(:step_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_FAILED', traits: {"smithy.api#enumValue" => "stepFailed"}))
    ExecutionEventType.add_member(:step_skipped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_SKIPPED', traits: {"smithy.api#enumValue" => "stepSkipped"}))
    ExecutionEventType.add_member(:step_paused_by_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_PAUSED_BY_ERROR', traits: {"smithy.api#enumValue" => "stepPausedByError"}))
    ExecutionEventType.add_member(:step_paused_by_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_PAUSED_BY_OPERATOR', traits: {"smithy.api#enumValue" => "stepPausedByOperator"}))
    ExecutionEventType.add_member(:step_canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_CANCELED', traits: {"smithy.api#enumValue" => "stepCanceled"}))
    ExecutionEventType.add_member(:step_pending_approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_PENDING_APPROVAL', traits: {"smithy.api#enumValue" => "stepPendingApproval"}))
    ExecutionEventType.add_member(:step_execution_behavior_changed_to_ungraceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_EXECUTION_BEHAVIOR_CHANGED_TO_UNGRACEFUL', traits: {"smithy.api#enumValue" => "stepExecutionBehaviorChangedToUngraceful"}))
    ExecutionEventType.add_member(:step_pending_application_health_monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_PENDING_APPLICATION_HEALTH_MONITOR', traits: {"smithy.api#enumValue" => "stepPendingApplicationHealthMonitor"}))
    ExecutionMode.add_member(:graceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRACEFUL', traits: {"smithy.api#enumValue" => "graceful"}))
    ExecutionMode.add_member(:ungraceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNGRACEFUL', traits: {"smithy.api#enumValue" => "ungraceful"}))
    ExecutionState.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "inProgress"}))
    ExecutionState.add_member(:paused_by_failed_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED_BY_FAILED_STEP', traits: {"smithy.api#enumValue" => "pausedByFailedStep"}))
    ExecutionState.add_member(:paused_by_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED_BY_OPERATOR', traits: {"smithy.api#enumValue" => "pausedByOperator"}))
    ExecutionState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "completed"}))
    ExecutionState.add_member(:completed_with_exceptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED_WITH_EXCEPTIONS', traits: {"smithy.api#enumValue" => "completedWithExceptions"}))
    ExecutionState.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "canceled"}))
    ExecutionState.add_member(:plan_execution_timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAN_EXECUTION_TIMED_OUT', traits: {"smithy.api#enumValue" => "planExecutionTimedOut"}))
    ExecutionState.add_member(:pending_manual_approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_MANUAL_APPROVAL', traits: {"smithy.api#enumValue" => "pendingManualApproval"}))
    ExecutionState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "failed"}))
    ExecutionState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "pending"}))
    ExecutionState.add_member(:completed_monitoring_application_health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED_MONITORING_APPLICATION_HEALTH', traits: {"smithy.api#enumValue" => "completedMonitoringApplicationHealth"}))
    GetPlanEvaluationStatusRequest.add_member(:plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'planArn', traits: {"smithy.api#required" => {}}))
    GetPlanEvaluationStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    GetPlanEvaluationStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetPlanEvaluationStatusRequest.type = Types::GetPlanEvaluationStatusRequest
    GetPlanEvaluationStatusResponse.add_member(:plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'planArn', traits: {"smithy.api#required" => {}}))
    GetPlanEvaluationStatusResponse.add_member(:last_evaluation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastEvaluationTime'))
    GetPlanEvaluationStatusResponse.add_member(:last_evaluated_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'lastEvaluatedVersion'))
    GetPlanEvaluationStatusResponse.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    GetPlanEvaluationStatusResponse.add_member(:evaluation_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationStatus, location_name: 'evaluationState'))
    GetPlanEvaluationStatusResponse.add_member(:warnings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanWarnings, location_name: 'warnings'))
    GetPlanEvaluationStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetPlanEvaluationStatusResponse.type = Types::GetPlanEvaluationStatusResponse
    GetPlanExecutionRequest.add_member(:plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'planArn', traits: {"smithy.api#required" => {}}))
    GetPlanExecutionRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId', traits: {"smithy.api#required" => {}}))
    GetPlanExecutionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlanExecutionStepStatesMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100}))
    GetPlanExecutionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    GetPlanExecutionRequest.type = Types::GetPlanExecutionRequest
    GetPlanExecutionResponse.add_member(:plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'planArn', traits: {"smithy.api#required" => {}}))
    GetPlanExecutionResponse.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId', traits: {"smithy.api#required" => {}}))
    GetPlanExecutionResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"aws.cloudformation#cfnMutability" => "read"}))
    GetPlanExecutionResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetPlanExecutionResponse.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'comment'))
    GetPlanExecutionResponse.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    GetPlanExecutionResponse.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime'))
    GetPlanExecutionResponse.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionMode, location_name: 'mode', traits: {"smithy.api#required" => {}}))
    GetPlanExecutionResponse.add_member(:execution_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionState, location_name: 'executionState', traits: {"smithy.api#required" => {}}))
    GetPlanExecutionResponse.add_member(:execution_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionAction, location_name: 'executionAction', traits: {"smithy.api#required" => {}}))
    GetPlanExecutionResponse.add_member(:execution_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'executionRegion', traits: {"smithy.api#required" => {}}))
    GetPlanExecutionResponse.add_member(:step_states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepStates, location_name: 'stepStates'))
    GetPlanExecutionResponse.add_member(:plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Plan, location_name: 'plan'))
    GetPlanExecutionResponse.add_member(:actual_recovery_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'actualRecoveryTime'))
    GetPlanExecutionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    GetPlanExecutionResponse.type = Types::GetPlanExecutionResponse
    GetPlanInRegionRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetPlanInRegionRequest.type = Types::GetPlanInRegionRequest
    GetPlanInRegionResponse.add_member(:plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Plan, location_name: 'plan'))
    GetPlanInRegionResponse.type = Types::GetPlanInRegionResponse
    GetPlanRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    GetPlanRequest.type = Types::GetPlanRequest
    GetPlanResponse.add_member(:plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Plan, location_name: 'plan', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetPlanResponse.type = Types::GetPlanResponse
    GlobalAuroraConfiguration.add_member(:timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'timeoutMinutes', traits: {"smithy.api#default" => 60, "smithy.api#range" => {"min" => 1}}))
    GlobalAuroraConfiguration.add_member(:cross_account_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'crossAccountRole'))
    GlobalAuroraConfiguration.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId'))
    GlobalAuroraConfiguration.add_member(:behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalAuroraDefaultBehavior, location_name: 'behavior', traits: {"smithy.api#default" => "switchoverOnly", "smithy.api#required" => {}}))
    GlobalAuroraConfiguration.add_member(:ungraceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalAuroraUngraceful, location_name: 'ungraceful'))
    GlobalAuroraConfiguration.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'globalClusterIdentifier', traits: {"smithy.api#required" => {}}))
    GlobalAuroraConfiguration.add_member(:database_cluster_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuroraClusterArns, location_name: 'databaseClusterArns', traits: {"smithy.api#required" => {}}))
    GlobalAuroraConfiguration.type = Types::GlobalAuroraConfiguration
    GlobalAuroraDefaultBehavior.add_member(:switchover_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SWITCHOVER_ONLY', traits: {"smithy.api#enumValue" => "switchoverOnly"}))
    GlobalAuroraDefaultBehavior.add_member(:failover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILOVER', traits: {"smithy.api#enumValue" => "failover"}))
    GlobalAuroraUngraceful.add_member(:ungraceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalAuroraUngracefulBehavior, location_name: 'ungraceful'))
    GlobalAuroraUngraceful.type = Types::GlobalAuroraUngraceful
    GlobalAuroraUngracefulBehavior.add_member(:failover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILOVER', traits: {"smithy.api#enumValue" => "failover"}))
    IllegalArgumentException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    IllegalArgumentException.type = Types::IllegalArgumentException
    IllegalStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    IllegalStateException.type = Types::IllegalStateException
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    KubernetesResourceType.add_member(:api_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'apiVersion', traits: {"smithy.api#required" => {}}))
    KubernetesResourceType.add_member(:kind, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'kind', traits: {"smithy.api#required" => {}}))
    KubernetesResourceType.type = Types::KubernetesResourceType
    KubernetesScalingApplication.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    KubernetesScalingApplication.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionalScalingResource)
    KubernetesScalingApps.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KubernetesScalingApplication)
    KubernetesScalingResource.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KubernetesNamespace, location_name: 'namespace', traits: {"smithy.api#required" => {}}))
    KubernetesScalingResource.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    KubernetesScalingResource.add_member(:hpa_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'hpaName'))
    KubernetesScalingResource.type = Types::KubernetesScalingResource
    LambdaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Lambdas)
    LambdaUngraceful.add_member(:behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaUngracefulBehavior, location_name: 'behavior', traits: {"smithy.api#default" => "skip"}))
    LambdaUngraceful.type = Types::LambdaUngraceful
    LambdaUngracefulBehavior.add_member(:skip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIP', traits: {"smithy.api#enumValue" => "skip"}))
    Lambdas.add_member(:cross_account_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'crossAccountRole'))
    Lambdas.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId'))
    Lambdas.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: 'arn'))
    Lambdas.type = Types::Lambdas
    ListPlanExecutionEventsRequest.add_member(:plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'planArn', traits: {"smithy.api#required" => {}}))
    ListPlanExecutionEventsRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId', traits: {"smithy.api#required" => {}}))
    ListPlanExecutionEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionEventsMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100}))
    ListPlanExecutionEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListPlanExecutionEventsRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepName, location_name: 'name'))
    ListPlanExecutionEventsRequest.type = Types::ListPlanExecutionEventsRequest
    ListPlanExecutionEventsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionEventList, location_name: 'items'))
    ListPlanExecutionEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListPlanExecutionEventsResponse.type = Types::ListPlanExecutionEventsResponse
    ListPlanExecutionsRequest.add_member(:plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'planArn', traits: {"smithy.api#required" => {}}))
    ListPlanExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsMaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 100}))
    ListPlanExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListPlanExecutionsRequest.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionState, location_name: 'state'))
    ListPlanExecutionsRequest.type = Types::ListPlanExecutionsRequest
    ListPlanExecutionsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbbreviatedExecutionsList, location_name: 'items'))
    ListPlanExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListPlanExecutionsResponse.type = Types::ListPlanExecutionsResponse
    ListPlansInRegionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListPlansInRegionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListPlansInRegionRequest.type = Types::ListPlansInRegionRequest
    ListPlansInRegionResponse.add_member(:plans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanList, location_name: 'plans'))
    ListPlansInRegionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListPlansInRegionResponse.type = Types::ListPlansInRegionResponse
    ListPlansRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListPlansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListPlansRequest.type = Types::ListPlansRequest
    ListPlansResponse.add_member(:plans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanList, location_name: 'plans'))
    ListPlansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListPlansResponse.type = Types::ListPlansResponse
    ListRoute53HealthChecksRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListRoute53HealthChecksRequest.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53HostedZoneId, location_name: 'hostedZoneId'))
    ListRoute53HealthChecksRequest.add_member(:record_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53RecordName, location_name: 'recordName'))
    ListRoute53HealthChecksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#range" => {"min" => 10, "max" => 100}}))
    ListRoute53HealthChecksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListRoute53HealthChecksRequest.type = Types::ListRoute53HealthChecksRequest
    ListRoute53HealthChecksResponse.add_member(:health_checks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53HealthCheckList, location_name: 'healthChecks'))
    ListRoute53HealthChecksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListRoute53HealthChecksResponse.type = Types::ListRoute53HealthChecksResponse
    ListTagsForResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'resourceTags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MinimalWorkflow.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionAction, location_name: 'action'))
    MinimalWorkflow.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name'))
    MinimalWorkflow.type = Types::MinimalWorkflow
    ParallelExecutionBlockConfiguration.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Steps, location_name: 'steps', traits: {"smithy.api#required" => {}}))
    ParallelExecutionBlockConfiguration.type = Types::ParallelExecutionBlockConfiguration
    Plan.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Plan.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    Plan.add_member(:workflows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowList, location_name: 'workflows', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}}))
    Plan.add_member(:execution_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'executionRole', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}}))
    Plan.add_member(:recovery_time_objective_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'recoveryTimeObjectiveMinutes', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#range" => {"min" => 1, "max" => 10080}}))
    Plan.add_member(:associated_alarms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedAlarmMap, location_name: 'associatedAlarms', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    Plan.add_member(:triggers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerList, location_name: 'triggers', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    Plan.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanName, location_name: 'name', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    Plan.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    Plan.add_member(:recovery_approach, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryApproach, location_name: 'recoveryApproach', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#required" => {}}))
    Plan.add_member(:primary_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'primaryRegion', traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    Plan.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'owner', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    Plan.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"aws.cloudformation#cfnMutability" => "read"}))
    Plan.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    Plan.type = Types::Plan
    PlanList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbbreviatedPlan)
    PlanWarnings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceWarning)
    RecoveryApproach.add_member(:active_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE_ACTIVE', traits: {"smithy.api#enumValue" => "activeActive"}))
    RecoveryApproach.add_member(:active_passive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE_PASSIVE', traits: {"smithy.api#enumValue" => "activePassive"}))
    RegionAndRoutingControls.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    RegionAndRoutingControls.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArcRoutingControlStates)
    RegionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    RegionSwitchPlanConfiguration.add_member(:cross_account_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'crossAccountRole'))
    RegionSwitchPlanConfiguration.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId'))
    RegionSwitchPlanConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    RegionSwitchPlanConfiguration.type = Types::RegionSwitchPlanConfiguration
    RegionToRunIn.add_member(:activating_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVATING_REGION', traits: {"smithy.api#enumValue" => "activatingRegion"}))
    RegionToRunIn.add_member(:deactivating_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEACTIVATING_REGION', traits: {"smithy.api#enumValue" => "deactivatingRegion"}))
    RegionalScalingResource.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    RegionalScalingResource.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KubernetesScalingResource)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceWarning.add_member(:workflow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinimalWorkflow, location_name: 'workflow'))
    ResourceWarning.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#required" => {}}))
    ResourceWarning.add_member(:step_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepName, location_name: 'stepName'))
    ResourceWarning.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn'))
    ResourceWarning.add_member(:warning_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceWarningStatus, location_name: 'warningStatus', traits: {"smithy.api#required" => {}}))
    ResourceWarning.add_member(:warning_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'warningUpdatedTime', traits: {"smithy.api#required" => {}}))
    ResourceWarning.add_member(:warning_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'warningMessage', traits: {"smithy.api#required" => {}}))
    ResourceWarning.type = Types::ResourceWarning
    ResourceWarningStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "active"}))
    ResourceWarningStatus.add_member(:resolved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOLVED', traits: {"smithy.api#enumValue" => "resolved"}))
    Resources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Route53HealthCheck.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53HostedZoneId, location_name: 'hostedZoneId', traits: {"smithy.api#required" => {}}))
    Route53HealthCheck.add_member(:record_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53RecordName, location_name: 'recordName', traits: {"smithy.api#required" => {}}))
    Route53HealthCheck.add_member(:health_check_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53HealthCheckId, location_name: 'healthCheckId'))
    Route53HealthCheck.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region', traits: {"smithy.api#required" => {}}))
    Route53HealthCheck.type = Types::Route53HealthCheck
    Route53HealthCheckConfiguration.add_member(:timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'timeoutMinutes', traits: {"smithy.api#default" => 60, "smithy.api#range" => {"min" => 1}}))
    Route53HealthCheckConfiguration.add_member(:cross_account_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'crossAccountRole'))
    Route53HealthCheckConfiguration.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId'))
    Route53HealthCheckConfiguration.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53HostedZoneId, location_name: 'hostedZoneId', traits: {"smithy.api#required" => {}}))
    Route53HealthCheckConfiguration.add_member(:record_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53RecordName, location_name: 'recordName', traits: {"smithy.api#required" => {}}))
    Route53HealthCheckConfiguration.add_member(:record_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53ResourceRecordSetList, location_name: 'recordSets'))
    Route53HealthCheckConfiguration.type = Types::Route53HealthCheckConfiguration
    Route53HealthCheckList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53HealthCheck)
    Route53ResourceRecordSet.add_member(:record_set_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53ResourceRecordSetIdentifier, location_name: 'recordSetIdentifier'))
    Route53ResourceRecordSet.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    Route53ResourceRecordSet.type = Types::Route53ResourceRecordSet
    Route53ResourceRecordSetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route53ResourceRecordSet)
    RoutingControlStateChange.add_member(:on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON', traits: {"smithy.api#enumValue" => "On"}))
    RoutingControlStateChange.add_member(:off, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "Off"}))
    Service.add_member(:cross_account_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'crossAccountRole'))
    Service.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'externalId'))
    Service.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsClusterArn, location_name: 'clusterArn'))
    Service.add_member(:service_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsServiceArn, location_name: 'serviceArn'))
    Service.type = Types::Service
    ServiceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service)
    StartPlanExecutionRequest.add_member(:plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'planArn', traits: {"smithy.api#required" => {}}))
    StartPlanExecutionRequest.add_member(:target_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'targetRegion', traits: {"smithy.api#required" => {}}))
    StartPlanExecutionRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionAction, location_name: 'action', traits: {"smithy.api#required" => {}}))
    StartPlanExecutionRequest.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionMode, location_name: 'mode', traits: {"smithy.api#default" => "graceful"}))
    StartPlanExecutionRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionComment, location_name: 'comment'))
    StartPlanExecutionRequest.add_member(:latest_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'latestVersion'))
    StartPlanExecutionRequest.type = Types::StartPlanExecutionRequest
    StartPlanExecutionResponse.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId'))
    StartPlanExecutionResponse.add_member(:plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'plan'))
    StartPlanExecutionResponse.add_member(:plan_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'planVersion'))
    StartPlanExecutionResponse.add_member(:activate_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'activateRegion'))
    StartPlanExecutionResponse.add_member(:deactivate_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'deactivateRegion'))
    StartPlanExecutionResponse.type = Types::StartPlanExecutionResponse
    Step.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Step.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    Step.add_member(:execution_block_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionBlockConfiguration, location_name: 'executionBlockConfiguration', traits: {"smithy.api#required" => {}}))
    Step.add_member(:execution_block_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionBlockType, location_name: 'executionBlockType', traits: {"smithy.api#required" => {}}))
    Step.type = Types::Step
    StepState.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepName, location_name: 'name'))
    StepState.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepStatus, location_name: 'status'))
    StepState.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startTime'))
    StepState.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'endTime'))
    StepState.add_member(:step_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionMode, location_name: 'stepMode'))
    StepState.type = Types::StepState
    StepStates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepState)
    StepStatus.add_member(:not_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_STARTED', traits: {"smithy.api#enumValue" => "notStarted"}))
    StepStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "running"}))
    StepStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "failed"}))
    StepStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "completed"}))
    StepStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "canceled"}))
    StepStatus.add_member(:skipped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIPPED', traits: {"smithy.api#enumValue" => "skipped"}))
    StepStatus.add_member(:pending_approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_APPROVAL', traits: {"smithy.api#enumValue" => "pendingApproval"}))
    Steps.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Step)
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    Trigger.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    Trigger.add_member(:target_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'targetRegion', traits: {"smithy.api#required" => {}}))
    Trigger.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowTargetAction, location_name: 'action', traits: {"smithy.api#required" => {}}))
    Trigger.add_member(:conditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerConditionList, location_name: 'conditions', traits: {"smithy.api#required" => {}}))
    Trigger.add_member(:min_delay_minutes_between_executions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'minDelayMinutesBetweenExecutions', traits: {"smithy.api#required" => {}}))
    Trigger.type = Types::Trigger
    TriggerCondition.add_member(:associated_alarm_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'associatedAlarmName', traits: {"smithy.api#required" => {}}))
    TriggerCondition.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmCondition, location_name: 'condition', traits: {"smithy.api#required" => {}}))
    TriggerCondition.type = Types::TriggerCondition
    TriggerConditionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerCondition)
    TriggerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Trigger)
    UntagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'resourceTagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdatePlanExecutionAction.add_member(:switch_to_graceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SWITCH_TO_GRACEFUL', traits: {"smithy.api#enumValue" => "switchToGraceful"}))
    UpdatePlanExecutionAction.add_member(:switch_to_ungraceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SWITCH_TO_UNGRACEFUL', traits: {"smithy.api#enumValue" => "switchToUngraceful"}))
    UpdatePlanExecutionAction.add_member(:pause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSE', traits: {"smithy.api#enumValue" => "pause"}))
    UpdatePlanExecutionAction.add_member(:resume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESUME', traits: {"smithy.api#enumValue" => "resume"}))
    UpdatePlanExecutionRequest.add_member(:plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'planArn', traits: {"smithy.api#required" => {}}))
    UpdatePlanExecutionRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId', traits: {"smithy.api#required" => {}}))
    UpdatePlanExecutionRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlanExecutionAction, location_name: 'action', traits: {"smithy.api#required" => {}}))
    UpdatePlanExecutionRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionComment, location_name: 'comment'))
    UpdatePlanExecutionRequest.type = Types::UpdatePlanExecutionRequest
    UpdatePlanExecutionResponse.type = Types::UpdatePlanExecutionResponse
    UpdatePlanExecutionStepAction.add_member(:switch_to_ungraceful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SWITCH_TO_UNGRACEFUL', traits: {"smithy.api#enumValue" => "switchToUngraceful"}))
    UpdatePlanExecutionStepAction.add_member(:skip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIP', traits: {"smithy.api#enumValue" => "skip"}))
    UpdatePlanExecutionStepRequest.add_member(:plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'planArn', traits: {"smithy.api#required" => {}}))
    UpdatePlanExecutionStepRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId', traits: {"smithy.api#required" => {}}))
    UpdatePlanExecutionStepRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionComment, location_name: 'comment', traits: {"smithy.api#required" => {}}))
    UpdatePlanExecutionStepRequest.add_member(:step_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'stepName', traits: {"smithy.api#required" => {}}))
    UpdatePlanExecutionStepRequest.add_member(:action_to_take, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlanExecutionStepAction, location_name: 'actionToTake', traits: {"smithy.api#required" => {}}))
    UpdatePlanExecutionStepRequest.type = Types::UpdatePlanExecutionStepRequest
    UpdatePlanExecutionStepResponse.type = Types::UpdatePlanExecutionStepResponse
    UpdatePlanRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlanArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    UpdatePlanRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdatePlanRequest.add_member(:workflows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowList, location_name: 'workflows', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}}))
    UpdatePlanRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'executionRole', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}}))
    UpdatePlanRequest.add_member(:recovery_time_objective_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'recoveryTimeObjectiveMinutes', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#range" => {"min" => 1, "max" => 10080}}))
    UpdatePlanRequest.add_member(:associated_alarms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedAlarmMap, location_name: 'associatedAlarms', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdatePlanRequest.add_member(:triggers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerList, location_name: 'triggers', traits: {"aws.cloudformation#cfnMutability" => "full"}))
    UpdatePlanRequest.type = Types::UpdatePlanRequest
    UpdatePlanResponse.add_member(:plan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Plan, location_name: 'plan'))
    UpdatePlanResponse.type = Types::UpdatePlanResponse
    Workflow.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Steps, location_name: 'steps'))
    Workflow.add_member(:workflow_target_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowTargetAction, location_name: 'workflowTargetAction', traits: {"smithy.api#required" => {}}))
    Workflow.add_member(:workflow_target_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'workflowTargetRegion'))
    Workflow.add_member(:workflow_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'workflowDescription'))
    Workflow.type = Types::Workflow
    WorkflowList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Workflow)
    WorkflowTargetAction.add_member(:activate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVATE', traits: {"smithy.api#enumValue" => "activate"}))
    WorkflowTargetAction.add_member(:deactivate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEACTIVATE', traits: {"smithy.api#enumValue" => "deactivate"}))

    ArcRegionSwitch = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.arcregionswitch#ArcRegionSwitch"
      service.name = "ArcRegionSwitch"
      service.version = "2022-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "ARC Region switch", "endpointPrefix" => "arc-region-switch", "arnNamespace" => "arc-region-switch", "cloudFormationName" => "ARCRegionSwitch"}, "aws.auth#sigv4" => {"name" => "arc-region-switch"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#rulesBasedEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag's key and value in a request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tag key-value pairs attached to the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the presence of tag keys in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "ARC - Region switch", "smithy.protocols#rpcv2Cbor" => {}}
      service.add_operation(:approve_plan_execution_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#ApprovePlanExecutionStep"
        operation.name = "ApprovePlanExecutionStep"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovePlanExecutionStepRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovePlanExecutionStepResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to approve a plan execution step"}}
      end)
      service.add_operation(:cancel_plan_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#CancelPlanExecution"
        operation.name = "CancelPlanExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelPlanExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelPlanExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to cancel a plan execution"}}
      end)
      service.add_operation(:create_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#CreatePlan"
        operation.name = "CreatePlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePlanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePlanResponse)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a plan"}, "smithy.rules#staticContextParams" => {"UseControlPlaneEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#DeletePlan"
        operation.name = "DeletePlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlanResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a plan"}, "smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"UseControlPlaneEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#GetPlan"
        operation.name = "GetPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlanResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a plan"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"UseControlPlaneEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_plan_evaluation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#GetPlanEvaluationStatus"
        operation.name = "GetPlanEvaluationStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlanEvaluationStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlanEvaluationStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a plan's evaluation status"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetPlanEvaluationStatus.new
      end)
      service.add_operation(:get_plan_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#GetPlanExecution"
        operation.name = "GetPlanExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlanExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlanExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get plan execution details and setup information"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetPlanExecution.new
      end)
      service.add_operation(:get_plan_in_region, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#GetPlanInRegion"
        operation.name = "GetPlanInRegion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlanInRegionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlanInRegionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a plan in a specific AWS Region using the Region switch Regional data plane"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_plan_execution_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#ListPlanExecutionEvents"
        operation.name = "ListPlanExecutionEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlanExecutionEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlanExecutionEventsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list plan execution events"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlanExecutionEvents.new
      end)
      service.add_operation(:list_plan_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#ListPlanExecutions"
        operation.name = "ListPlanExecutions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlanExecutionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlanExecutionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list plan executions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlanExecutions.new
      end)
      service.add_operation(:list_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#ListPlans"
        operation.name = "ListPlans"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlansRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlansResponse)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list plans"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"UseControlPlaneEndpoint" => {"value" => true}}, "smithy.test#smokeTests" => [{"id" => "ListPlansSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListPlans.new
      end)
      service.add_operation(:list_plans_in_region, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#ListPlansInRegion"
        operation.name = "ListPlansInRegion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlansInRegionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlansInRegionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list plans in a specific AWS Region using the Region switch Regional data plane"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlansInRegion.new
      end)
      service.add_operation(:list_route53_health_checks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#ListRoute53HealthChecks"
        operation.name = "ListRoute53HealthChecks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoute53HealthChecksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRoute53HealthChecksResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Lists Route 53 health checks created by ARC region switch for a given plan"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"UseControlPlaneEndpoint" => {"value" => true}}}
        operation[:paginator] = Paginators::ListRoute53HealthChecks.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to list tags for a resource"}, "smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"UseControlPlaneEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:start_plan_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#StartPlanExecution"
        operation.name = "StartPlanExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartPlanExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartPlanExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalArgumentException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to start a plan execution"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to tag a resource"}, "smithy.rules#staticContextParams" => {"UseControlPlaneEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from a resource"}, "smithy.rules#staticContextParams" => {"UseControlPlaneEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:update_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#UpdatePlan"
        operation.name = "UpdatePlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlanResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a plan"}, "smithy.rules#staticContextParams" => {"UseControlPlaneEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:update_plan_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#UpdatePlanExecution"
        operation.name = "UpdatePlanExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlanExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlanExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IllegalStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a plan execution"}}
      end)
      service.add_operation(:update_plan_execution_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.arcregionswitch#UpdatePlanExecutionStep"
        operation.name = "UpdatePlanExecutionStep"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlanExecutionStepRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePlanExecutionStepResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a plan execution step"}}
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
