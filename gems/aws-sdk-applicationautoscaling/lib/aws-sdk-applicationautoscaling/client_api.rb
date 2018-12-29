# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationAutoScaling
  # @api private
  module ClientApi

    include Seahorse::Model

    AdjustmentType = Shapes::StringShape.new(name: 'AdjustmentType')
    Alarm = Shapes::StructureShape.new(name: 'Alarm')
    Alarms = Shapes::ListShape.new(name: 'Alarms')
    ConcurrentUpdateException = Shapes::StructureShape.new(name: 'ConcurrentUpdateException')
    Cooldown = Shapes::IntegerShape.new(name: 'Cooldown')
    CustomizedMetricSpecification = Shapes::StructureShape.new(name: 'CustomizedMetricSpecification')
    DeleteScalingPolicyRequest = Shapes::StructureShape.new(name: 'DeleteScalingPolicyRequest')
    DeleteScalingPolicyResponse = Shapes::StructureShape.new(name: 'DeleteScalingPolicyResponse')
    DeleteScheduledActionRequest = Shapes::StructureShape.new(name: 'DeleteScheduledActionRequest')
    DeleteScheduledActionResponse = Shapes::StructureShape.new(name: 'DeleteScheduledActionResponse')
    DeregisterScalableTargetRequest = Shapes::StructureShape.new(name: 'DeregisterScalableTargetRequest')
    DeregisterScalableTargetResponse = Shapes::StructureShape.new(name: 'DeregisterScalableTargetResponse')
    DescribeScalableTargetsRequest = Shapes::StructureShape.new(name: 'DescribeScalableTargetsRequest')
    DescribeScalableTargetsResponse = Shapes::StructureShape.new(name: 'DescribeScalableTargetsResponse')
    DescribeScalingActivitiesRequest = Shapes::StructureShape.new(name: 'DescribeScalingActivitiesRequest')
    DescribeScalingActivitiesResponse = Shapes::StructureShape.new(name: 'DescribeScalingActivitiesResponse')
    DescribeScalingPoliciesRequest = Shapes::StructureShape.new(name: 'DescribeScalingPoliciesRequest')
    DescribeScalingPoliciesResponse = Shapes::StructureShape.new(name: 'DescribeScalingPoliciesResponse')
    DescribeScheduledActionsRequest = Shapes::StructureShape.new(name: 'DescribeScheduledActionsRequest')
    DescribeScheduledActionsResponse = Shapes::StructureShape.new(name: 'DescribeScheduledActionsResponse')
    DisableScaleIn = Shapes::BooleanShape.new(name: 'DisableScaleIn')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FailedResourceAccessException = Shapes::StructureShape.new(name: 'FailedResourceAccessException')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricAggregationType = Shapes::StringShape.new(name: 'MetricAggregationType')
    MetricDimension = Shapes::StructureShape.new(name: 'MetricDimension')
    MetricDimensionName = Shapes::StringShape.new(name: 'MetricDimensionName')
    MetricDimensionValue = Shapes::StringShape.new(name: 'MetricDimensionValue')
    MetricDimensions = Shapes::ListShape.new(name: 'MetricDimensions')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNamespace = Shapes::StringShape.new(name: 'MetricNamespace')
    MetricScale = Shapes::FloatShape.new(name: 'MetricScale')
    MetricStatistic = Shapes::StringShape.new(name: 'MetricStatistic')
    MetricType = Shapes::StringShape.new(name: 'MetricType')
    MetricUnit = Shapes::StringShape.new(name: 'MetricUnit')
    MinAdjustmentMagnitude = Shapes::IntegerShape.new(name: 'MinAdjustmentMagnitude')
    ObjectNotFoundException = Shapes::StructureShape.new(name: 'ObjectNotFoundException')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyType = Shapes::StringShape.new(name: 'PolicyType')
    PredefinedMetricSpecification = Shapes::StructureShape.new(name: 'PredefinedMetricSpecification')
    PutScalingPolicyRequest = Shapes::StructureShape.new(name: 'PutScalingPolicyRequest')
    PutScalingPolicyResponse = Shapes::StructureShape.new(name: 'PutScalingPolicyResponse')
    PutScheduledActionRequest = Shapes::StructureShape.new(name: 'PutScheduledActionRequest')
    PutScheduledActionResponse = Shapes::StructureShape.new(name: 'PutScheduledActionResponse')
    RegisterScalableTargetRequest = Shapes::StructureShape.new(name: 'RegisterScalableTargetRequest')
    RegisterScalableTargetResponse = Shapes::StructureShape.new(name: 'RegisterScalableTargetResponse')
    ResourceCapacity = Shapes::IntegerShape.new(name: 'ResourceCapacity')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdMaxLen1600 = Shapes::StringShape.new(name: 'ResourceIdMaxLen1600')
    ResourceIdsMaxLen1600 = Shapes::ListShape.new(name: 'ResourceIdsMaxLen1600')
    ResourceLabel = Shapes::StringShape.new(name: 'ResourceLabel')
    ScalableDimension = Shapes::StringShape.new(name: 'ScalableDimension')
    ScalableTarget = Shapes::StructureShape.new(name: 'ScalableTarget')
    ScalableTargetAction = Shapes::StructureShape.new(name: 'ScalableTargetAction')
    ScalableTargets = Shapes::ListShape.new(name: 'ScalableTargets')
    ScalingActivities = Shapes::ListShape.new(name: 'ScalingActivities')
    ScalingActivity = Shapes::StructureShape.new(name: 'ScalingActivity')
    ScalingActivityStatusCode = Shapes::StringShape.new(name: 'ScalingActivityStatusCode')
    ScalingAdjustment = Shapes::IntegerShape.new(name: 'ScalingAdjustment')
    ScalingPolicies = Shapes::ListShape.new(name: 'ScalingPolicies')
    ScalingPolicy = Shapes::StructureShape.new(name: 'ScalingPolicy')
    ScheduledAction = Shapes::StructureShape.new(name: 'ScheduledAction')
    ScheduledActionName = Shapes::StringShape.new(name: 'ScheduledActionName')
    ScheduledActions = Shapes::ListShape.new(name: 'ScheduledActions')
    ServiceNamespace = Shapes::StringShape.new(name: 'ServiceNamespace')
    StepAdjustment = Shapes::StructureShape.new(name: 'StepAdjustment')
    StepAdjustments = Shapes::ListShape.new(name: 'StepAdjustments')
    StepScalingPolicyConfiguration = Shapes::StructureShape.new(name: 'StepScalingPolicyConfiguration')
    TargetTrackingScalingPolicyConfiguration = Shapes::StructureShape.new(name: 'TargetTrackingScalingPolicyConfiguration')
    TimestampType = Shapes::TimestampShape.new(name: 'TimestampType')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    XmlString = Shapes::StringShape.new(name: 'XmlString')

    Alarm.add_member(:alarm_name, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "AlarmName"))
    Alarm.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "AlarmARN"))
    Alarm.struct_class = Types::Alarm

    Alarms.member = Shapes::ShapeRef.new(shape: Alarm)

    CustomizedMetricSpecification.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    CustomizedMetricSpecification.add_member(:namespace, Shapes::ShapeRef.new(shape: MetricNamespace, required: true, location_name: "Namespace"))
    CustomizedMetricSpecification.add_member(:dimensions, Shapes::ShapeRef.new(shape: MetricDimensions, location_name: "Dimensions"))
    CustomizedMetricSpecification.add_member(:statistic, Shapes::ShapeRef.new(shape: MetricStatistic, required: true, location_name: "Statistic"))
    CustomizedMetricSpecification.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, location_name: "Unit"))
    CustomizedMetricSpecification.struct_class = Types::CustomizedMetricSpecification

    DeleteScalingPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "PolicyName"))
    DeleteScalingPolicyRequest.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    DeleteScalingPolicyRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ResourceId"))
    DeleteScalingPolicyRequest.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, required: true, location_name: "ScalableDimension"))
    DeleteScalingPolicyRequest.struct_class = Types::DeleteScalingPolicyRequest

    DeleteScalingPolicyResponse.struct_class = Types::DeleteScalingPolicyResponse

    DeleteScheduledActionRequest.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    DeleteScheduledActionRequest.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ScheduledActionName"))
    DeleteScheduledActionRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ResourceId"))
    DeleteScheduledActionRequest.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, location_name: "ScalableDimension"))
    DeleteScheduledActionRequest.struct_class = Types::DeleteScheduledActionRequest

    DeleteScheduledActionResponse.struct_class = Types::DeleteScheduledActionResponse

    DeregisterScalableTargetRequest.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    DeregisterScalableTargetRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ResourceId"))
    DeregisterScalableTargetRequest.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, required: true, location_name: "ScalableDimension"))
    DeregisterScalableTargetRequest.struct_class = Types::DeregisterScalableTargetRequest

    DeregisterScalableTargetResponse.struct_class = Types::DeregisterScalableTargetResponse

    DescribeScalableTargetsRequest.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    DescribeScalableTargetsRequest.add_member(:resource_ids, Shapes::ShapeRef.new(shape: ResourceIdsMaxLen1600, location_name: "ResourceIds"))
    DescribeScalableTargetsRequest.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, location_name: "ScalableDimension"))
    DescribeScalableTargetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeScalableTargetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeScalableTargetsRequest.struct_class = Types::DescribeScalableTargetsRequest

    DescribeScalableTargetsResponse.add_member(:scalable_targets, Shapes::ShapeRef.new(shape: ScalableTargets, location_name: "ScalableTargets"))
    DescribeScalableTargetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeScalableTargetsResponse.struct_class = Types::DescribeScalableTargetsResponse

    DescribeScalingActivitiesRequest.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    DescribeScalingActivitiesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, location_name: "ResourceId"))
    DescribeScalingActivitiesRequest.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, location_name: "ScalableDimension"))
    DescribeScalingActivitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeScalingActivitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeScalingActivitiesRequest.struct_class = Types::DescribeScalingActivitiesRequest

    DescribeScalingActivitiesResponse.add_member(:scaling_activities, Shapes::ShapeRef.new(shape: ScalingActivities, location_name: "ScalingActivities"))
    DescribeScalingActivitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeScalingActivitiesResponse.struct_class = Types::DescribeScalingActivitiesResponse

    DescribeScalingPoliciesRequest.add_member(:policy_names, Shapes::ShapeRef.new(shape: ResourceIdsMaxLen1600, location_name: "PolicyNames"))
    DescribeScalingPoliciesRequest.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    DescribeScalingPoliciesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, location_name: "ResourceId"))
    DescribeScalingPoliciesRequest.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, location_name: "ScalableDimension"))
    DescribeScalingPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeScalingPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeScalingPoliciesRequest.struct_class = Types::DescribeScalingPoliciesRequest

    DescribeScalingPoliciesResponse.add_member(:scaling_policies, Shapes::ShapeRef.new(shape: ScalingPolicies, location_name: "ScalingPolicies"))
    DescribeScalingPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeScalingPoliciesResponse.struct_class = Types::DescribeScalingPoliciesResponse

    DescribeScheduledActionsRequest.add_member(:scheduled_action_names, Shapes::ShapeRef.new(shape: ResourceIdsMaxLen1600, location_name: "ScheduledActionNames"))
    DescribeScheduledActionsRequest.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    DescribeScheduledActionsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, location_name: "ResourceId"))
    DescribeScheduledActionsRequest.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, location_name: "ScalableDimension"))
    DescribeScheduledActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeScheduledActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeScheduledActionsRequest.struct_class = Types::DescribeScheduledActionsRequest

    DescribeScheduledActionsResponse.add_member(:scheduled_actions, Shapes::ShapeRef.new(shape: ScheduledActions, location_name: "ScheduledActions"))
    DescribeScheduledActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeScheduledActionsResponse.struct_class = Types::DescribeScheduledActionsResponse

    MetricDimension.add_member(:name, Shapes::ShapeRef.new(shape: MetricDimensionName, required: true, location_name: "Name"))
    MetricDimension.add_member(:value, Shapes::ShapeRef.new(shape: MetricDimensionValue, required: true, location_name: "Value"))
    MetricDimension.struct_class = Types::MetricDimension

    MetricDimensions.member = Shapes::ShapeRef.new(shape: MetricDimension)

    PredefinedMetricSpecification.add_member(:predefined_metric_type, Shapes::ShapeRef.new(shape: MetricType, required: true, location_name: "PredefinedMetricType"))
    PredefinedMetricSpecification.add_member(:resource_label, Shapes::ShapeRef.new(shape: ResourceLabel, location_name: "ResourceLabel"))
    PredefinedMetricSpecification.struct_class = Types::PredefinedMetricSpecification

    PutScalingPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "PolicyName"))
    PutScalingPolicyRequest.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    PutScalingPolicyRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ResourceId"))
    PutScalingPolicyRequest.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, required: true, location_name: "ScalableDimension"))
    PutScalingPolicyRequest.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, location_name: "PolicyType"))
    PutScalingPolicyRequest.add_member(:step_scaling_policy_configuration, Shapes::ShapeRef.new(shape: StepScalingPolicyConfiguration, location_name: "StepScalingPolicyConfiguration"))
    PutScalingPolicyRequest.add_member(:target_tracking_scaling_policy_configuration, Shapes::ShapeRef.new(shape: TargetTrackingScalingPolicyConfiguration, location_name: "TargetTrackingScalingPolicyConfiguration"))
    PutScalingPolicyRequest.struct_class = Types::PutScalingPolicyRequest

    PutScalingPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "PolicyARN"))
    PutScalingPolicyResponse.add_member(:alarms, Shapes::ShapeRef.new(shape: Alarms, location_name: "Alarms"))
    PutScalingPolicyResponse.struct_class = Types::PutScalingPolicyResponse

    PutScheduledActionRequest.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    PutScheduledActionRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, location_name: "Schedule"))
    PutScheduledActionRequest.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: ScheduledActionName, required: true, location_name: "ScheduledActionName"))
    PutScheduledActionRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ResourceId"))
    PutScheduledActionRequest.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, location_name: "ScalableDimension"))
    PutScheduledActionRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "StartTime"))
    PutScheduledActionRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    PutScheduledActionRequest.add_member(:scalable_target_action, Shapes::ShapeRef.new(shape: ScalableTargetAction, location_name: "ScalableTargetAction"))
    PutScheduledActionRequest.struct_class = Types::PutScheduledActionRequest

    PutScheduledActionResponse.struct_class = Types::PutScheduledActionResponse

    RegisterScalableTargetRequest.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    RegisterScalableTargetRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ResourceId"))
    RegisterScalableTargetRequest.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, required: true, location_name: "ScalableDimension"))
    RegisterScalableTargetRequest.add_member(:min_capacity, Shapes::ShapeRef.new(shape: ResourceCapacity, location_name: "MinCapacity"))
    RegisterScalableTargetRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: ResourceCapacity, location_name: "MaxCapacity"))
    RegisterScalableTargetRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, location_name: "RoleARN"))
    RegisterScalableTargetRequest.struct_class = Types::RegisterScalableTargetRequest

    RegisterScalableTargetResponse.struct_class = Types::RegisterScalableTargetResponse

    ResourceIdsMaxLen1600.member = Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600)

    ScalableTarget.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    ScalableTarget.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ResourceId"))
    ScalableTarget.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, required: true, location_name: "ScalableDimension"))
    ScalableTarget.add_member(:min_capacity, Shapes::ShapeRef.new(shape: ResourceCapacity, required: true, location_name: "MinCapacity"))
    ScalableTarget.add_member(:max_capacity, Shapes::ShapeRef.new(shape: ResourceCapacity, required: true, location_name: "MaxCapacity"))
    ScalableTarget.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "RoleARN"))
    ScalableTarget.add_member(:creation_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "CreationTime"))
    ScalableTarget.struct_class = Types::ScalableTarget

    ScalableTargetAction.add_member(:min_capacity, Shapes::ShapeRef.new(shape: ResourceCapacity, location_name: "MinCapacity"))
    ScalableTargetAction.add_member(:max_capacity, Shapes::ShapeRef.new(shape: ResourceCapacity, location_name: "MaxCapacity"))
    ScalableTargetAction.struct_class = Types::ScalableTargetAction

    ScalableTargets.member = Shapes::ShapeRef.new(shape: ScalableTarget)

    ScalingActivities.member = Shapes::ShapeRef.new(shape: ScalingActivity)

    ScalingActivity.add_member(:activity_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ActivityId"))
    ScalingActivity.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    ScalingActivity.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ResourceId"))
    ScalingActivity.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, required: true, location_name: "ScalableDimension"))
    ScalingActivity.add_member(:description, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "Description"))
    ScalingActivity.add_member(:cause, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "Cause"))
    ScalingActivity.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "StartTime"))
    ScalingActivity.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    ScalingActivity.add_member(:status_code, Shapes::ShapeRef.new(shape: ScalingActivityStatusCode, required: true, location_name: "StatusCode"))
    ScalingActivity.add_member(:status_message, Shapes::ShapeRef.new(shape: XmlString, location_name: "StatusMessage"))
    ScalingActivity.add_member(:details, Shapes::ShapeRef.new(shape: XmlString, location_name: "Details"))
    ScalingActivity.struct_class = Types::ScalingActivity

    ScalingPolicies.member = Shapes::ShapeRef.new(shape: ScalingPolicy)

    ScalingPolicy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "PolicyARN"))
    ScalingPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "PolicyName"))
    ScalingPolicy.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    ScalingPolicy.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ResourceId"))
    ScalingPolicy.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, required: true, location_name: "ScalableDimension"))
    ScalingPolicy.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "PolicyType"))
    ScalingPolicy.add_member(:step_scaling_policy_configuration, Shapes::ShapeRef.new(shape: StepScalingPolicyConfiguration, location_name: "StepScalingPolicyConfiguration"))
    ScalingPolicy.add_member(:target_tracking_scaling_policy_configuration, Shapes::ShapeRef.new(shape: TargetTrackingScalingPolicyConfiguration, location_name: "TargetTrackingScalingPolicyConfiguration"))
    ScalingPolicy.add_member(:alarms, Shapes::ShapeRef.new(shape: Alarms, location_name: "Alarms"))
    ScalingPolicy.add_member(:creation_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "CreationTime"))
    ScalingPolicy.struct_class = Types::ScalingPolicy

    ScheduledAction.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: ScheduledActionName, required: true, location_name: "ScheduledActionName"))
    ScheduledAction.add_member(:scheduled_action_arn, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ScheduledActionARN"))
    ScheduledAction.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    ScheduledAction.add_member(:schedule, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "Schedule"))
    ScheduledAction.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ResourceId"))
    ScheduledAction.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, location_name: "ScalableDimension"))
    ScheduledAction.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "StartTime"))
    ScheduledAction.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    ScheduledAction.add_member(:scalable_target_action, Shapes::ShapeRef.new(shape: ScalableTargetAction, location_name: "ScalableTargetAction"))
    ScheduledAction.add_member(:creation_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "CreationTime"))
    ScheduledAction.struct_class = Types::ScheduledAction

    ScheduledActions.member = Shapes::ShapeRef.new(shape: ScheduledAction)

    StepAdjustment.add_member(:metric_interval_lower_bound, Shapes::ShapeRef.new(shape: MetricScale, location_name: "MetricIntervalLowerBound"))
    StepAdjustment.add_member(:metric_interval_upper_bound, Shapes::ShapeRef.new(shape: MetricScale, location_name: "MetricIntervalUpperBound"))
    StepAdjustment.add_member(:scaling_adjustment, Shapes::ShapeRef.new(shape: ScalingAdjustment, required: true, location_name: "ScalingAdjustment"))
    StepAdjustment.struct_class = Types::StepAdjustment

    StepAdjustments.member = Shapes::ShapeRef.new(shape: StepAdjustment)

    StepScalingPolicyConfiguration.add_member(:adjustment_type, Shapes::ShapeRef.new(shape: AdjustmentType, location_name: "AdjustmentType"))
    StepScalingPolicyConfiguration.add_member(:step_adjustments, Shapes::ShapeRef.new(shape: StepAdjustments, location_name: "StepAdjustments"))
    StepScalingPolicyConfiguration.add_member(:min_adjustment_magnitude, Shapes::ShapeRef.new(shape: MinAdjustmentMagnitude, location_name: "MinAdjustmentMagnitude"))
    StepScalingPolicyConfiguration.add_member(:cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "Cooldown"))
    StepScalingPolicyConfiguration.add_member(:metric_aggregation_type, Shapes::ShapeRef.new(shape: MetricAggregationType, location_name: "MetricAggregationType"))
    StepScalingPolicyConfiguration.struct_class = Types::StepScalingPolicyConfiguration

    TargetTrackingScalingPolicyConfiguration.add_member(:target_value, Shapes::ShapeRef.new(shape: MetricScale, required: true, location_name: "TargetValue"))
    TargetTrackingScalingPolicyConfiguration.add_member(:predefined_metric_specification, Shapes::ShapeRef.new(shape: PredefinedMetricSpecification, location_name: "PredefinedMetricSpecification"))
    TargetTrackingScalingPolicyConfiguration.add_member(:customized_metric_specification, Shapes::ShapeRef.new(shape: CustomizedMetricSpecification, location_name: "CustomizedMetricSpecification"))
    TargetTrackingScalingPolicyConfiguration.add_member(:scale_out_cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "ScaleOutCooldown"))
    TargetTrackingScalingPolicyConfiguration.add_member(:scale_in_cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "ScaleInCooldown"))
    TargetTrackingScalingPolicyConfiguration.add_member(:disable_scale_in, Shapes::ShapeRef.new(shape: DisableScaleIn, location_name: "DisableScaleIn"))
    TargetTrackingScalingPolicyConfiguration.struct_class = Types::TargetTrackingScalingPolicyConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-02-06"

      api.metadata = {
        "apiVersion" => "2016-02-06",
        "endpointPrefix" => "autoscaling",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Application Auto Scaling",
        "serviceId" => "Application Auto Scaling",
        "signatureVersion" => "v4",
        "signingName" => "application-autoscaling",
        "targetPrefix" => "AnyScaleFrontendService",
        "uid" => "application-autoscaling-2016-02-06",
      }

      api.add_operation(:delete_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteScalingPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteScalingPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduledActionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteScheduledActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:deregister_scalable_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterScalableTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterScalableTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterScalableTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_scalable_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScalableTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScalableTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScalableTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_scaling_activities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScalingActivities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScalingActivitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScalingActivitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_scaling_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScalingPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScalingPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScalingPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: FailedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_scheduled_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScheduledActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScheduledActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScheduledActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:put_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutScalingPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutScalingPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: FailedResourceAccessException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:put_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutScheduledActionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutScheduledActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:register_scalable_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterScalableTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterScalableTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterScalableTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)
    end

  end
end
