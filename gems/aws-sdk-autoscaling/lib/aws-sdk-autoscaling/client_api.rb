# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling
  # @api private
  module ClientApi

    include Seahorse::Model

    Activities = Shapes::ListShape.new(name: 'Activities')
    ActivitiesType = Shapes::StructureShape.new(name: 'ActivitiesType')
    Activity = Shapes::StructureShape.new(name: 'Activity')
    ActivityIds = Shapes::ListShape.new(name: 'ActivityIds')
    ActivityType = Shapes::StructureShape.new(name: 'ActivityType')
    AdjustmentType = Shapes::StructureShape.new(name: 'AdjustmentType')
    AdjustmentTypes = Shapes::ListShape.new(name: 'AdjustmentTypes')
    Alarm = Shapes::StructureShape.new(name: 'Alarm')
    Alarms = Shapes::ListShape.new(name: 'Alarms')
    AlreadyExistsFault = Shapes::StructureShape.new(name: 'AlreadyExistsFault')
    AsciiStringMaxLen255 = Shapes::StringShape.new(name: 'AsciiStringMaxLen255')
    AssociatePublicIpAddress = Shapes::BooleanShape.new(name: 'AssociatePublicIpAddress')
    AttachInstancesQuery = Shapes::StructureShape.new(name: 'AttachInstancesQuery')
    AttachLoadBalancerTargetGroupsResultType = Shapes::StructureShape.new(name: 'AttachLoadBalancerTargetGroupsResultType')
    AttachLoadBalancerTargetGroupsType = Shapes::StructureShape.new(name: 'AttachLoadBalancerTargetGroupsType')
    AttachLoadBalancersResultType = Shapes::StructureShape.new(name: 'AttachLoadBalancersResultType')
    AttachLoadBalancersType = Shapes::StructureShape.new(name: 'AttachLoadBalancersType')
    AutoScalingGroup = Shapes::StructureShape.new(name: 'AutoScalingGroup')
    AutoScalingGroupDesiredCapacity = Shapes::IntegerShape.new(name: 'AutoScalingGroupDesiredCapacity')
    AutoScalingGroupMaxSize = Shapes::IntegerShape.new(name: 'AutoScalingGroupMaxSize')
    AutoScalingGroupMinSize = Shapes::IntegerShape.new(name: 'AutoScalingGroupMinSize')
    AutoScalingGroupNames = Shapes::ListShape.new(name: 'AutoScalingGroupNames')
    AutoScalingGroupNamesType = Shapes::StructureShape.new(name: 'AutoScalingGroupNamesType')
    AutoScalingGroups = Shapes::ListShape.new(name: 'AutoScalingGroups')
    AutoScalingGroupsType = Shapes::StructureShape.new(name: 'AutoScalingGroupsType')
    AutoScalingInstanceDetails = Shapes::StructureShape.new(name: 'AutoScalingInstanceDetails')
    AutoScalingInstances = Shapes::ListShape.new(name: 'AutoScalingInstances')
    AutoScalingInstancesType = Shapes::StructureShape.new(name: 'AutoScalingInstancesType')
    AutoScalingNotificationTypes = Shapes::ListShape.new(name: 'AutoScalingNotificationTypes')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    BatchDeleteScheduledActionAnswer = Shapes::StructureShape.new(name: 'BatchDeleteScheduledActionAnswer')
    BatchDeleteScheduledActionType = Shapes::StructureShape.new(name: 'BatchDeleteScheduledActionType')
    BatchPutScheduledUpdateGroupActionAnswer = Shapes::StructureShape.new(name: 'BatchPutScheduledUpdateGroupActionAnswer')
    BatchPutScheduledUpdateGroupActionType = Shapes::StructureShape.new(name: 'BatchPutScheduledUpdateGroupActionType')
    BlockDeviceEbsDeleteOnTermination = Shapes::BooleanShape.new(name: 'BlockDeviceEbsDeleteOnTermination')
    BlockDeviceEbsEncrypted = Shapes::BooleanShape.new(name: 'BlockDeviceEbsEncrypted')
    BlockDeviceEbsIops = Shapes::IntegerShape.new(name: 'BlockDeviceEbsIops')
    BlockDeviceEbsVolumeSize = Shapes::IntegerShape.new(name: 'BlockDeviceEbsVolumeSize')
    BlockDeviceEbsVolumeType = Shapes::StringShape.new(name: 'BlockDeviceEbsVolumeType')
    BlockDeviceMapping = Shapes::StructureShape.new(name: 'BlockDeviceMapping')
    BlockDeviceMappings = Shapes::ListShape.new(name: 'BlockDeviceMappings')
    ClassicLinkVPCSecurityGroups = Shapes::ListShape.new(name: 'ClassicLinkVPCSecurityGroups')
    CompleteLifecycleActionAnswer = Shapes::StructureShape.new(name: 'CompleteLifecycleActionAnswer')
    CompleteLifecycleActionType = Shapes::StructureShape.new(name: 'CompleteLifecycleActionType')
    Cooldown = Shapes::IntegerShape.new(name: 'Cooldown')
    CreateAutoScalingGroupType = Shapes::StructureShape.new(name: 'CreateAutoScalingGroupType')
    CreateLaunchConfigurationType = Shapes::StructureShape.new(name: 'CreateLaunchConfigurationType')
    CreateOrUpdateTagsType = Shapes::StructureShape.new(name: 'CreateOrUpdateTagsType')
    CustomizedMetricSpecification = Shapes::StructureShape.new(name: 'CustomizedMetricSpecification')
    DeleteAutoScalingGroupType = Shapes::StructureShape.new(name: 'DeleteAutoScalingGroupType')
    DeleteLifecycleHookAnswer = Shapes::StructureShape.new(name: 'DeleteLifecycleHookAnswer')
    DeleteLifecycleHookType = Shapes::StructureShape.new(name: 'DeleteLifecycleHookType')
    DeleteNotificationConfigurationType = Shapes::StructureShape.new(name: 'DeleteNotificationConfigurationType')
    DeletePolicyType = Shapes::StructureShape.new(name: 'DeletePolicyType')
    DeleteScheduledActionType = Shapes::StructureShape.new(name: 'DeleteScheduledActionType')
    DeleteTagsType = Shapes::StructureShape.new(name: 'DeleteTagsType')
    DescribeAccountLimitsAnswer = Shapes::StructureShape.new(name: 'DescribeAccountLimitsAnswer')
    DescribeAdjustmentTypesAnswer = Shapes::StructureShape.new(name: 'DescribeAdjustmentTypesAnswer')
    DescribeAutoScalingInstancesType = Shapes::StructureShape.new(name: 'DescribeAutoScalingInstancesType')
    DescribeAutoScalingNotificationTypesAnswer = Shapes::StructureShape.new(name: 'DescribeAutoScalingNotificationTypesAnswer')
    DescribeLifecycleHookTypesAnswer = Shapes::StructureShape.new(name: 'DescribeLifecycleHookTypesAnswer')
    DescribeLifecycleHooksAnswer = Shapes::StructureShape.new(name: 'DescribeLifecycleHooksAnswer')
    DescribeLifecycleHooksType = Shapes::StructureShape.new(name: 'DescribeLifecycleHooksType')
    DescribeLoadBalancerTargetGroupsRequest = Shapes::StructureShape.new(name: 'DescribeLoadBalancerTargetGroupsRequest')
    DescribeLoadBalancerTargetGroupsResponse = Shapes::StructureShape.new(name: 'DescribeLoadBalancerTargetGroupsResponse')
    DescribeLoadBalancersRequest = Shapes::StructureShape.new(name: 'DescribeLoadBalancersRequest')
    DescribeLoadBalancersResponse = Shapes::StructureShape.new(name: 'DescribeLoadBalancersResponse')
    DescribeMetricCollectionTypesAnswer = Shapes::StructureShape.new(name: 'DescribeMetricCollectionTypesAnswer')
    DescribeNotificationConfigurationsAnswer = Shapes::StructureShape.new(name: 'DescribeNotificationConfigurationsAnswer')
    DescribeNotificationConfigurationsType = Shapes::StructureShape.new(name: 'DescribeNotificationConfigurationsType')
    DescribePoliciesType = Shapes::StructureShape.new(name: 'DescribePoliciesType')
    DescribeScalingActivitiesType = Shapes::StructureShape.new(name: 'DescribeScalingActivitiesType')
    DescribeScheduledActionsType = Shapes::StructureShape.new(name: 'DescribeScheduledActionsType')
    DescribeTagsType = Shapes::StructureShape.new(name: 'DescribeTagsType')
    DescribeTerminationPolicyTypesAnswer = Shapes::StructureShape.new(name: 'DescribeTerminationPolicyTypesAnswer')
    DetachInstancesAnswer = Shapes::StructureShape.new(name: 'DetachInstancesAnswer')
    DetachInstancesQuery = Shapes::StructureShape.new(name: 'DetachInstancesQuery')
    DetachLoadBalancerTargetGroupsResultType = Shapes::StructureShape.new(name: 'DetachLoadBalancerTargetGroupsResultType')
    DetachLoadBalancerTargetGroupsType = Shapes::StructureShape.new(name: 'DetachLoadBalancerTargetGroupsType')
    DetachLoadBalancersResultType = Shapes::StructureShape.new(name: 'DetachLoadBalancersResultType')
    DetachLoadBalancersType = Shapes::StructureShape.new(name: 'DetachLoadBalancersType')
    DisableMetricsCollectionQuery = Shapes::StructureShape.new(name: 'DisableMetricsCollectionQuery')
    DisableScaleIn = Shapes::BooleanShape.new(name: 'DisableScaleIn')
    Ebs = Shapes::StructureShape.new(name: 'Ebs')
    EbsOptimized = Shapes::BooleanShape.new(name: 'EbsOptimized')
    EnableMetricsCollectionQuery = Shapes::StructureShape.new(name: 'EnableMetricsCollectionQuery')
    EnabledMetric = Shapes::StructureShape.new(name: 'EnabledMetric')
    EnabledMetrics = Shapes::ListShape.new(name: 'EnabledMetrics')
    EnterStandbyAnswer = Shapes::StructureShape.new(name: 'EnterStandbyAnswer')
    EnterStandbyQuery = Shapes::StructureShape.new(name: 'EnterStandbyQuery')
    EstimatedInstanceWarmup = Shapes::IntegerShape.new(name: 'EstimatedInstanceWarmup')
    ExecutePolicyType = Shapes::StructureShape.new(name: 'ExecutePolicyType')
    ExitStandbyAnswer = Shapes::StructureShape.new(name: 'ExitStandbyAnswer')
    ExitStandbyQuery = Shapes::StructureShape.new(name: 'ExitStandbyQuery')
    FailedScheduledUpdateGroupActionRequest = Shapes::StructureShape.new(name: 'FailedScheduledUpdateGroupActionRequest')
    FailedScheduledUpdateGroupActionRequests = Shapes::ListShape.new(name: 'FailedScheduledUpdateGroupActionRequests')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    Filters = Shapes::ListShape.new(name: 'Filters')
    ForceDelete = Shapes::BooleanShape.new(name: 'ForceDelete')
    GlobalTimeout = Shapes::IntegerShape.new(name: 'GlobalTimeout')
    HealthCheckGracePeriod = Shapes::IntegerShape.new(name: 'HealthCheckGracePeriod')
    HeartbeatTimeout = Shapes::IntegerShape.new(name: 'HeartbeatTimeout')
    HonorCooldown = Shapes::BooleanShape.new(name: 'HonorCooldown')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceIds = Shapes::ListShape.new(name: 'InstanceIds')
    InstanceMonitoring = Shapes::StructureShape.new(name: 'InstanceMonitoring')
    InstanceProtected = Shapes::BooleanShape.new(name: 'InstanceProtected')
    Instances = Shapes::ListShape.new(name: 'Instances')
    InvalidNextToken = Shapes::StructureShape.new(name: 'InvalidNextToken')
    LaunchConfiguration = Shapes::StructureShape.new(name: 'LaunchConfiguration')
    LaunchConfigurationNameType = Shapes::StructureShape.new(name: 'LaunchConfigurationNameType')
    LaunchConfigurationNames = Shapes::ListShape.new(name: 'LaunchConfigurationNames')
    LaunchConfigurationNamesType = Shapes::StructureShape.new(name: 'LaunchConfigurationNamesType')
    LaunchConfigurations = Shapes::ListShape.new(name: 'LaunchConfigurations')
    LaunchConfigurationsType = Shapes::StructureShape.new(name: 'LaunchConfigurationsType')
    LaunchTemplateName = Shapes::StringShape.new(name: 'LaunchTemplateName')
    LaunchTemplateSpecification = Shapes::StructureShape.new(name: 'LaunchTemplateSpecification')
    LifecycleActionResult = Shapes::StringShape.new(name: 'LifecycleActionResult')
    LifecycleActionToken = Shapes::StringShape.new(name: 'LifecycleActionToken')
    LifecycleHook = Shapes::StructureShape.new(name: 'LifecycleHook')
    LifecycleHookNames = Shapes::ListShape.new(name: 'LifecycleHookNames')
    LifecycleHookSpecification = Shapes::StructureShape.new(name: 'LifecycleHookSpecification')
    LifecycleHookSpecifications = Shapes::ListShape.new(name: 'LifecycleHookSpecifications')
    LifecycleHooks = Shapes::ListShape.new(name: 'LifecycleHooks')
    LifecycleState = Shapes::StringShape.new(name: 'LifecycleState')
    LifecycleTransition = Shapes::StringShape.new(name: 'LifecycleTransition')
    LimitExceededFault = Shapes::StructureShape.new(name: 'LimitExceededFault')
    LoadBalancerNames = Shapes::ListShape.new(name: 'LoadBalancerNames')
    LoadBalancerState = Shapes::StructureShape.new(name: 'LoadBalancerState')
    LoadBalancerStates = Shapes::ListShape.new(name: 'LoadBalancerStates')
    LoadBalancerTargetGroupState = Shapes::StructureShape.new(name: 'LoadBalancerTargetGroupState')
    LoadBalancerTargetGroupStates = Shapes::ListShape.new(name: 'LoadBalancerTargetGroupStates')
    MaxNumberOfAutoScalingGroups = Shapes::IntegerShape.new(name: 'MaxNumberOfAutoScalingGroups')
    MaxNumberOfLaunchConfigurations = Shapes::IntegerShape.new(name: 'MaxNumberOfLaunchConfigurations')
    MaxRecords = Shapes::IntegerShape.new(name: 'MaxRecords')
    MetricCollectionType = Shapes::StructureShape.new(name: 'MetricCollectionType')
    MetricCollectionTypes = Shapes::ListShape.new(name: 'MetricCollectionTypes')
    MetricDimension = Shapes::StructureShape.new(name: 'MetricDimension')
    MetricDimensionName = Shapes::StringShape.new(name: 'MetricDimensionName')
    MetricDimensionValue = Shapes::StringShape.new(name: 'MetricDimensionValue')
    MetricDimensions = Shapes::ListShape.new(name: 'MetricDimensions')
    MetricGranularityType = Shapes::StructureShape.new(name: 'MetricGranularityType')
    MetricGranularityTypes = Shapes::ListShape.new(name: 'MetricGranularityTypes')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNamespace = Shapes::StringShape.new(name: 'MetricNamespace')
    MetricScale = Shapes::FloatShape.new(name: 'MetricScale')
    MetricStatistic = Shapes::StringShape.new(name: 'MetricStatistic')
    MetricType = Shapes::StringShape.new(name: 'MetricType')
    MetricUnit = Shapes::StringShape.new(name: 'MetricUnit')
    Metrics = Shapes::ListShape.new(name: 'Metrics')
    MinAdjustmentMagnitude = Shapes::IntegerShape.new(name: 'MinAdjustmentMagnitude')
    MinAdjustmentStep = Shapes::IntegerShape.new(name: 'MinAdjustmentStep')
    MonitoringEnabled = Shapes::BooleanShape.new(name: 'MonitoringEnabled')
    NoDevice = Shapes::BooleanShape.new(name: 'NoDevice')
    NotificationConfiguration = Shapes::StructureShape.new(name: 'NotificationConfiguration')
    NotificationConfigurations = Shapes::ListShape.new(name: 'NotificationConfigurations')
    NotificationTargetResourceName = Shapes::StringShape.new(name: 'NotificationTargetResourceName')
    NumberOfAutoScalingGroups = Shapes::IntegerShape.new(name: 'NumberOfAutoScalingGroups')
    NumberOfLaunchConfigurations = Shapes::IntegerShape.new(name: 'NumberOfLaunchConfigurations')
    PoliciesType = Shapes::StructureShape.new(name: 'PoliciesType')
    PolicyARNType = Shapes::StructureShape.new(name: 'PolicyARNType')
    PolicyIncrement = Shapes::IntegerShape.new(name: 'PolicyIncrement')
    PolicyNames = Shapes::ListShape.new(name: 'PolicyNames')
    PolicyTypes = Shapes::ListShape.new(name: 'PolicyTypes')
    PredefinedMetricSpecification = Shapes::StructureShape.new(name: 'PredefinedMetricSpecification')
    ProcessNames = Shapes::ListShape.new(name: 'ProcessNames')
    ProcessType = Shapes::StructureShape.new(name: 'ProcessType')
    Processes = Shapes::ListShape.new(name: 'Processes')
    ProcessesType = Shapes::StructureShape.new(name: 'ProcessesType')
    Progress = Shapes::IntegerShape.new(name: 'Progress')
    PropagateAtLaunch = Shapes::BooleanShape.new(name: 'PropagateAtLaunch')
    ProtectedFromScaleIn = Shapes::BooleanShape.new(name: 'ProtectedFromScaleIn')
    PutLifecycleHookAnswer = Shapes::StructureShape.new(name: 'PutLifecycleHookAnswer')
    PutLifecycleHookType = Shapes::StructureShape.new(name: 'PutLifecycleHookType')
    PutNotificationConfigurationType = Shapes::StructureShape.new(name: 'PutNotificationConfigurationType')
    PutScalingPolicyType = Shapes::StructureShape.new(name: 'PutScalingPolicyType')
    PutScheduledUpdateGroupActionType = Shapes::StructureShape.new(name: 'PutScheduledUpdateGroupActionType')
    RecordLifecycleActionHeartbeatAnswer = Shapes::StructureShape.new(name: 'RecordLifecycleActionHeartbeatAnswer')
    RecordLifecycleActionHeartbeatType = Shapes::StructureShape.new(name: 'RecordLifecycleActionHeartbeatType')
    ResourceContentionFault = Shapes::StructureShape.new(name: 'ResourceContentionFault')
    ResourceInUseFault = Shapes::StructureShape.new(name: 'ResourceInUseFault')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ScalingActivityInProgressFault = Shapes::StructureShape.new(name: 'ScalingActivityInProgressFault')
    ScalingActivityStatusCode = Shapes::StringShape.new(name: 'ScalingActivityStatusCode')
    ScalingPolicies = Shapes::ListShape.new(name: 'ScalingPolicies')
    ScalingPolicy = Shapes::StructureShape.new(name: 'ScalingPolicy')
    ScalingProcessQuery = Shapes::StructureShape.new(name: 'ScalingProcessQuery')
    ScheduledActionNames = Shapes::ListShape.new(name: 'ScheduledActionNames')
    ScheduledActionsType = Shapes::StructureShape.new(name: 'ScheduledActionsType')
    ScheduledUpdateGroupAction = Shapes::StructureShape.new(name: 'ScheduledUpdateGroupAction')
    ScheduledUpdateGroupActionRequest = Shapes::StructureShape.new(name: 'ScheduledUpdateGroupActionRequest')
    ScheduledUpdateGroupActionRequests = Shapes::ListShape.new(name: 'ScheduledUpdateGroupActionRequests')
    ScheduledUpdateGroupActions = Shapes::ListShape.new(name: 'ScheduledUpdateGroupActions')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    ServiceLinkedRoleFailure = Shapes::StructureShape.new(name: 'ServiceLinkedRoleFailure')
    SetDesiredCapacityType = Shapes::StructureShape.new(name: 'SetDesiredCapacityType')
    SetInstanceHealthQuery = Shapes::StructureShape.new(name: 'SetInstanceHealthQuery')
    SetInstanceProtectionAnswer = Shapes::StructureShape.new(name: 'SetInstanceProtectionAnswer')
    SetInstanceProtectionQuery = Shapes::StructureShape.new(name: 'SetInstanceProtectionQuery')
    ShouldDecrementDesiredCapacity = Shapes::BooleanShape.new(name: 'ShouldDecrementDesiredCapacity')
    ShouldRespectGracePeriod = Shapes::BooleanShape.new(name: 'ShouldRespectGracePeriod')
    SpotPrice = Shapes::StringShape.new(name: 'SpotPrice')
    StepAdjustment = Shapes::StructureShape.new(name: 'StepAdjustment')
    StepAdjustments = Shapes::ListShape.new(name: 'StepAdjustments')
    SuspendedProcess = Shapes::StructureShape.new(name: 'SuspendedProcess')
    SuspendedProcesses = Shapes::ListShape.new(name: 'SuspendedProcesses')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagDescription = Shapes::StructureShape.new(name: 'TagDescription')
    TagDescriptionList = Shapes::ListShape.new(name: 'TagDescriptionList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TagsType = Shapes::StructureShape.new(name: 'TagsType')
    TargetGroupARNs = Shapes::ListShape.new(name: 'TargetGroupARNs')
    TargetTrackingConfiguration = Shapes::StructureShape.new(name: 'TargetTrackingConfiguration')
    TerminateInstanceInAutoScalingGroupType = Shapes::StructureShape.new(name: 'TerminateInstanceInAutoScalingGroupType')
    TerminationPolicies = Shapes::ListShape.new(name: 'TerminationPolicies')
    TimestampType = Shapes::TimestampShape.new(name: 'TimestampType')
    UpdateAutoScalingGroupType = Shapes::StructureShape.new(name: 'UpdateAutoScalingGroupType')
    Values = Shapes::ListShape.new(name: 'Values')
    XmlString = Shapes::StringShape.new(name: 'XmlString')
    XmlStringMaxLen1023 = Shapes::StringShape.new(name: 'XmlStringMaxLen1023')
    XmlStringMaxLen1600 = Shapes::StringShape.new(name: 'XmlStringMaxLen1600')
    XmlStringMaxLen19 = Shapes::StringShape.new(name: 'XmlStringMaxLen19')
    XmlStringMaxLen2047 = Shapes::StringShape.new(name: 'XmlStringMaxLen2047')
    XmlStringMaxLen255 = Shapes::StringShape.new(name: 'XmlStringMaxLen255')
    XmlStringMaxLen32 = Shapes::StringShape.new(name: 'XmlStringMaxLen32')
    XmlStringMaxLen511 = Shapes::StringShape.new(name: 'XmlStringMaxLen511')
    XmlStringMaxLen64 = Shapes::StringShape.new(name: 'XmlStringMaxLen64')
    XmlStringUserData = Shapes::StringShape.new(name: 'XmlStringUserData')

    Activities.member = Shapes::ShapeRef.new(shape: Activity)

    ActivitiesType.add_member(:activities, Shapes::ShapeRef.new(shape: Activities, required: true, location_name: "Activities"))
    ActivitiesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    ActivitiesType.struct_class = Types::ActivitiesType

    Activity.add_member(:activity_id, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "ActivityId"))
    Activity.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    Activity.add_member(:description, Shapes::ShapeRef.new(shape: XmlString, location_name: "Description"))
    Activity.add_member(:cause, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, required: true, location_name: "Cause"))
    Activity.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "StartTime"))
    Activity.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    Activity.add_member(:status_code, Shapes::ShapeRef.new(shape: ScalingActivityStatusCode, required: true, location_name: "StatusCode"))
    Activity.add_member(:status_message, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "StatusMessage"))
    Activity.add_member(:progress, Shapes::ShapeRef.new(shape: Progress, location_name: "Progress"))
    Activity.add_member(:details, Shapes::ShapeRef.new(shape: XmlString, location_name: "Details"))
    Activity.struct_class = Types::Activity

    ActivityIds.member = Shapes::ShapeRef.new(shape: XmlString)

    ActivityType.add_member(:activity, Shapes::ShapeRef.new(shape: Activity, location_name: "Activity"))
    ActivityType.struct_class = Types::ActivityType

    AdjustmentType.add_member(:adjustment_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AdjustmentType"))
    AdjustmentType.struct_class = Types::AdjustmentType

    AdjustmentTypes.member = Shapes::ShapeRef.new(shape: AdjustmentType)

    Alarm.add_member(:alarm_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AlarmName"))
    Alarm.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "AlarmARN"))
    Alarm.struct_class = Types::Alarm

    Alarms.member = Shapes::ShapeRef.new(shape: Alarm)

    AttachInstancesQuery.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, location_name: "InstanceIds"))
    AttachInstancesQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    AttachInstancesQuery.struct_class = Types::AttachInstancesQuery

    AttachLoadBalancerTargetGroupsResultType.struct_class = Types::AttachLoadBalancerTargetGroupsResultType

    AttachLoadBalancerTargetGroupsType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    AttachLoadBalancerTargetGroupsType.add_member(:target_group_arns, Shapes::ShapeRef.new(shape: TargetGroupARNs, required: true, location_name: "TargetGroupARNs"))
    AttachLoadBalancerTargetGroupsType.struct_class = Types::AttachLoadBalancerTargetGroupsType

    AttachLoadBalancersResultType.struct_class = Types::AttachLoadBalancersResultType

    AttachLoadBalancersType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    AttachLoadBalancersType.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: LoadBalancerNames, required: true, location_name: "LoadBalancerNames"))
    AttachLoadBalancersType.struct_class = Types::AttachLoadBalancersType

    AutoScalingGroup.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    AutoScalingGroup.add_member(:auto_scaling_group_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "AutoScalingGroupARN"))
    AutoScalingGroup.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "LaunchConfigurationName"))
    AutoScalingGroup.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplate"))
    AutoScalingGroup.add_member(:min_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMinSize, required: true, location_name: "MinSize"))
    AutoScalingGroup.add_member(:max_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMaxSize, required: true, location_name: "MaxSize"))
    AutoScalingGroup.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, required: true, location_name: "DesiredCapacity"))
    AutoScalingGroup.add_member(:default_cooldown, Shapes::ShapeRef.new(shape: Cooldown, required: true, location_name: "DefaultCooldown"))
    AutoScalingGroup.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, required: true, location_name: "AvailabilityZones"))
    AutoScalingGroup.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: LoadBalancerNames, location_name: "LoadBalancerNames"))
    AutoScalingGroup.add_member(:target_group_arns, Shapes::ShapeRef.new(shape: TargetGroupARNs, location_name: "TargetGroupARNs"))
    AutoScalingGroup.add_member(:health_check_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, required: true, location_name: "HealthCheckType"))
    AutoScalingGroup.add_member(:health_check_grace_period, Shapes::ShapeRef.new(shape: HealthCheckGracePeriod, location_name: "HealthCheckGracePeriod"))
    AutoScalingGroup.add_member(:instances, Shapes::ShapeRef.new(shape: Instances, location_name: "Instances"))
    AutoScalingGroup.add_member(:created_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "CreatedTime"))
    AutoScalingGroup.add_member(:suspended_processes, Shapes::ShapeRef.new(shape: SuspendedProcesses, location_name: "SuspendedProcesses"))
    AutoScalingGroup.add_member(:placement_group, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "PlacementGroup"))
    AutoScalingGroup.add_member(:vpc_zone_identifier, Shapes::ShapeRef.new(shape: XmlStringMaxLen2047, location_name: "VPCZoneIdentifier"))
    AutoScalingGroup.add_member(:enabled_metrics, Shapes::ShapeRef.new(shape: EnabledMetrics, location_name: "EnabledMetrics"))
    AutoScalingGroup.add_member(:status, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Status"))
    AutoScalingGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagDescriptionList, location_name: "Tags"))
    AutoScalingGroup.add_member(:termination_policies, Shapes::ShapeRef.new(shape: TerminationPolicies, location_name: "TerminationPolicies"))
    AutoScalingGroup.add_member(:new_instances_protected_from_scale_in, Shapes::ShapeRef.new(shape: InstanceProtected, location_name: "NewInstancesProtectedFromScaleIn"))
    AutoScalingGroup.add_member(:service_linked_role_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ServiceLinkedRoleARN"))
    AutoScalingGroup.struct_class = Types::AutoScalingGroup

    AutoScalingGroupNames.member = Shapes::ShapeRef.new(shape: ResourceName)

    AutoScalingGroupNamesType.add_member(:auto_scaling_group_names, Shapes::ShapeRef.new(shape: AutoScalingGroupNames, location_name: "AutoScalingGroupNames"))
    AutoScalingGroupNamesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    AutoScalingGroupNamesType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    AutoScalingGroupNamesType.struct_class = Types::AutoScalingGroupNamesType

    AutoScalingGroups.member = Shapes::ShapeRef.new(shape: AutoScalingGroup)

    AutoScalingGroupsType.add_member(:auto_scaling_groups, Shapes::ShapeRef.new(shape: AutoScalingGroups, required: true, location_name: "AutoScalingGroups"))
    AutoScalingGroupsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    AutoScalingGroupsType.struct_class = Types::AutoScalingGroupsType

    AutoScalingInstanceDetails.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, required: true, location_name: "InstanceId"))
    AutoScalingInstanceDetails.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    AutoScalingInstanceDetails.add_member(:availability_zone, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AvailabilityZone"))
    AutoScalingInstanceDetails.add_member(:lifecycle_state, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, required: true, location_name: "LifecycleState"))
    AutoScalingInstanceDetails.add_member(:health_status, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, required: true, location_name: "HealthStatus"))
    AutoScalingInstanceDetails.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "LaunchConfigurationName"))
    AutoScalingInstanceDetails.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplate"))
    AutoScalingInstanceDetails.add_member(:protected_from_scale_in, Shapes::ShapeRef.new(shape: InstanceProtected, required: true, location_name: "ProtectedFromScaleIn"))
    AutoScalingInstanceDetails.struct_class = Types::AutoScalingInstanceDetails

    AutoScalingInstances.member = Shapes::ShapeRef.new(shape: AutoScalingInstanceDetails)

    AutoScalingInstancesType.add_member(:auto_scaling_instances, Shapes::ShapeRef.new(shape: AutoScalingInstances, location_name: "AutoScalingInstances"))
    AutoScalingInstancesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    AutoScalingInstancesType.struct_class = Types::AutoScalingInstancesType

    AutoScalingNotificationTypes.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    BatchDeleteScheduledActionAnswer.add_member(:failed_scheduled_actions, Shapes::ShapeRef.new(shape: FailedScheduledUpdateGroupActionRequests, location_name: "FailedScheduledActions"))
    BatchDeleteScheduledActionAnswer.struct_class = Types::BatchDeleteScheduledActionAnswer

    BatchDeleteScheduledActionType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    BatchDeleteScheduledActionType.add_member(:scheduled_action_names, Shapes::ShapeRef.new(shape: ScheduledActionNames, required: true, location_name: "ScheduledActionNames"))
    BatchDeleteScheduledActionType.struct_class = Types::BatchDeleteScheduledActionType

    BatchPutScheduledUpdateGroupActionAnswer.add_member(:failed_scheduled_update_group_actions, Shapes::ShapeRef.new(shape: FailedScheduledUpdateGroupActionRequests, location_name: "FailedScheduledUpdateGroupActions"))
    BatchPutScheduledUpdateGroupActionAnswer.struct_class = Types::BatchPutScheduledUpdateGroupActionAnswer

    BatchPutScheduledUpdateGroupActionType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    BatchPutScheduledUpdateGroupActionType.add_member(:scheduled_update_group_actions, Shapes::ShapeRef.new(shape: ScheduledUpdateGroupActionRequests, required: true, location_name: "ScheduledUpdateGroupActions"))
    BatchPutScheduledUpdateGroupActionType.struct_class = Types::BatchPutScheduledUpdateGroupActionType

    BlockDeviceMapping.add_member(:virtual_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "VirtualName"))
    BlockDeviceMapping.add_member(:device_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "DeviceName"))
    BlockDeviceMapping.add_member(:ebs, Shapes::ShapeRef.new(shape: Ebs, location_name: "Ebs"))
    BlockDeviceMapping.add_member(:no_device, Shapes::ShapeRef.new(shape: NoDevice, location_name: "NoDevice"))
    BlockDeviceMapping.struct_class = Types::BlockDeviceMapping

    BlockDeviceMappings.member = Shapes::ShapeRef.new(shape: BlockDeviceMapping)

    ClassicLinkVPCSecurityGroups.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    CompleteLifecycleActionAnswer.struct_class = Types::CompleteLifecycleActionAnswer

    CompleteLifecycleActionType.add_member(:lifecycle_hook_name, Shapes::ShapeRef.new(shape: AsciiStringMaxLen255, required: true, location_name: "LifecycleHookName"))
    CompleteLifecycleActionType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    CompleteLifecycleActionType.add_member(:lifecycle_action_token, Shapes::ShapeRef.new(shape: LifecycleActionToken, location_name: "LifecycleActionToken"))
    CompleteLifecycleActionType.add_member(:lifecycle_action_result, Shapes::ShapeRef.new(shape: LifecycleActionResult, required: true, location_name: "LifecycleActionResult"))
    CompleteLifecycleActionType.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, location_name: "InstanceId"))
    CompleteLifecycleActionType.struct_class = Types::CompleteLifecycleActionType

    CreateAutoScalingGroupType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    CreateAutoScalingGroupType.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "LaunchConfigurationName"))
    CreateAutoScalingGroupType.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplate"))
    CreateAutoScalingGroupType.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, location_name: "InstanceId"))
    CreateAutoScalingGroupType.add_member(:min_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMinSize, required: true, location_name: "MinSize"))
    CreateAutoScalingGroupType.add_member(:max_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMaxSize, required: true, location_name: "MaxSize"))
    CreateAutoScalingGroupType.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, location_name: "DesiredCapacity"))
    CreateAutoScalingGroupType.add_member(:default_cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "DefaultCooldown"))
    CreateAutoScalingGroupType.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    CreateAutoScalingGroupType.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: LoadBalancerNames, location_name: "LoadBalancerNames"))
    CreateAutoScalingGroupType.add_member(:target_group_arns, Shapes::ShapeRef.new(shape: TargetGroupARNs, location_name: "TargetGroupARNs"))
    CreateAutoScalingGroupType.add_member(:health_check_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, location_name: "HealthCheckType"))
    CreateAutoScalingGroupType.add_member(:health_check_grace_period, Shapes::ShapeRef.new(shape: HealthCheckGracePeriod, location_name: "HealthCheckGracePeriod"))
    CreateAutoScalingGroupType.add_member(:placement_group, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "PlacementGroup"))
    CreateAutoScalingGroupType.add_member(:vpc_zone_identifier, Shapes::ShapeRef.new(shape: XmlStringMaxLen2047, location_name: "VPCZoneIdentifier"))
    CreateAutoScalingGroupType.add_member(:termination_policies, Shapes::ShapeRef.new(shape: TerminationPolicies, location_name: "TerminationPolicies"))
    CreateAutoScalingGroupType.add_member(:new_instances_protected_from_scale_in, Shapes::ShapeRef.new(shape: InstanceProtected, location_name: "NewInstancesProtectedFromScaleIn"))
    CreateAutoScalingGroupType.add_member(:lifecycle_hook_specification_list, Shapes::ShapeRef.new(shape: LifecycleHookSpecifications, location_name: "LifecycleHookSpecificationList"))
    CreateAutoScalingGroupType.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateAutoScalingGroupType.add_member(:service_linked_role_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ServiceLinkedRoleARN"))
    CreateAutoScalingGroupType.struct_class = Types::CreateAutoScalingGroupType

    CreateLaunchConfigurationType.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "LaunchConfigurationName"))
    CreateLaunchConfigurationType.add_member(:image_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "ImageId"))
    CreateLaunchConfigurationType.add_member(:key_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "KeyName"))
    CreateLaunchConfigurationType.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    CreateLaunchConfigurationType.add_member(:classic_link_vpc_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "ClassicLinkVPCId"))
    CreateLaunchConfigurationType.add_member(:classic_link_vpc_security_groups, Shapes::ShapeRef.new(shape: ClassicLinkVPCSecurityGroups, location_name: "ClassicLinkVPCSecurityGroups"))
    CreateLaunchConfigurationType.add_member(:user_data, Shapes::ShapeRef.new(shape: XmlStringUserData, location_name: "UserData"))
    CreateLaunchConfigurationType.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, location_name: "InstanceId"))
    CreateLaunchConfigurationType.add_member(:instance_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "InstanceType"))
    CreateLaunchConfigurationType.add_member(:kernel_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "KernelId"))
    CreateLaunchConfigurationType.add_member(:ramdisk_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "RamdiskId"))
    CreateLaunchConfigurationType.add_member(:block_device_mappings, Shapes::ShapeRef.new(shape: BlockDeviceMappings, location_name: "BlockDeviceMappings"))
    CreateLaunchConfigurationType.add_member(:instance_monitoring, Shapes::ShapeRef.new(shape: InstanceMonitoring, location_name: "InstanceMonitoring"))
    CreateLaunchConfigurationType.add_member(:spot_price, Shapes::ShapeRef.new(shape: SpotPrice, location_name: "SpotPrice"))
    CreateLaunchConfigurationType.add_member(:iam_instance_profile, Shapes::ShapeRef.new(shape: XmlStringMaxLen1600, location_name: "IamInstanceProfile"))
    CreateLaunchConfigurationType.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: EbsOptimized, location_name: "EbsOptimized"))
    CreateLaunchConfigurationType.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: AssociatePublicIpAddress, location_name: "AssociatePublicIpAddress"))
    CreateLaunchConfigurationType.add_member(:placement_tenancy, Shapes::ShapeRef.new(shape: XmlStringMaxLen64, location_name: "PlacementTenancy"))
    CreateLaunchConfigurationType.struct_class = Types::CreateLaunchConfigurationType

    CreateOrUpdateTagsType.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    CreateOrUpdateTagsType.struct_class = Types::CreateOrUpdateTagsType

    CustomizedMetricSpecification.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    CustomizedMetricSpecification.add_member(:namespace, Shapes::ShapeRef.new(shape: MetricNamespace, required: true, location_name: "Namespace"))
    CustomizedMetricSpecification.add_member(:dimensions, Shapes::ShapeRef.new(shape: MetricDimensions, location_name: "Dimensions"))
    CustomizedMetricSpecification.add_member(:statistic, Shapes::ShapeRef.new(shape: MetricStatistic, required: true, location_name: "Statistic"))
    CustomizedMetricSpecification.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, location_name: "Unit"))
    CustomizedMetricSpecification.struct_class = Types::CustomizedMetricSpecification

    DeleteAutoScalingGroupType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    DeleteAutoScalingGroupType.add_member(:force_delete, Shapes::ShapeRef.new(shape: ForceDelete, location_name: "ForceDelete"))
    DeleteAutoScalingGroupType.struct_class = Types::DeleteAutoScalingGroupType

    DeleteLifecycleHookAnswer.struct_class = Types::DeleteLifecycleHookAnswer

    DeleteLifecycleHookType.add_member(:lifecycle_hook_name, Shapes::ShapeRef.new(shape: AsciiStringMaxLen255, required: true, location_name: "LifecycleHookName"))
    DeleteLifecycleHookType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    DeleteLifecycleHookType.struct_class = Types::DeleteLifecycleHookType

    DeleteNotificationConfigurationType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    DeleteNotificationConfigurationType.add_member(:topic_arn, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TopicARN"))
    DeleteNotificationConfigurationType.struct_class = Types::DeleteNotificationConfigurationType

    DeletePolicyType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "AutoScalingGroupName"))
    DeletePolicyType.add_member(:policy_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "PolicyName"))
    DeletePolicyType.struct_class = Types::DeletePolicyType

    DeleteScheduledActionType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    DeleteScheduledActionType.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ScheduledActionName"))
    DeleteScheduledActionType.struct_class = Types::DeleteScheduledActionType

    DeleteTagsType.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    DeleteTagsType.struct_class = Types::DeleteTagsType

    DescribeAccountLimitsAnswer.add_member(:max_number_of_auto_scaling_groups, Shapes::ShapeRef.new(shape: MaxNumberOfAutoScalingGroups, location_name: "MaxNumberOfAutoScalingGroups"))
    DescribeAccountLimitsAnswer.add_member(:max_number_of_launch_configurations, Shapes::ShapeRef.new(shape: MaxNumberOfLaunchConfigurations, location_name: "MaxNumberOfLaunchConfigurations"))
    DescribeAccountLimitsAnswer.add_member(:number_of_auto_scaling_groups, Shapes::ShapeRef.new(shape: NumberOfAutoScalingGroups, location_name: "NumberOfAutoScalingGroups"))
    DescribeAccountLimitsAnswer.add_member(:number_of_launch_configurations, Shapes::ShapeRef.new(shape: NumberOfLaunchConfigurations, location_name: "NumberOfLaunchConfigurations"))
    DescribeAccountLimitsAnswer.struct_class = Types::DescribeAccountLimitsAnswer

    DescribeAdjustmentTypesAnswer.add_member(:adjustment_types, Shapes::ShapeRef.new(shape: AdjustmentTypes, location_name: "AdjustmentTypes"))
    DescribeAdjustmentTypesAnswer.struct_class = Types::DescribeAdjustmentTypesAnswer

    DescribeAutoScalingInstancesType.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, location_name: "InstanceIds"))
    DescribeAutoScalingInstancesType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeAutoScalingInstancesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeAutoScalingInstancesType.struct_class = Types::DescribeAutoScalingInstancesType

    DescribeAutoScalingNotificationTypesAnswer.add_member(:auto_scaling_notification_types, Shapes::ShapeRef.new(shape: AutoScalingNotificationTypes, location_name: "AutoScalingNotificationTypes"))
    DescribeAutoScalingNotificationTypesAnswer.struct_class = Types::DescribeAutoScalingNotificationTypesAnswer

    DescribeLifecycleHookTypesAnswer.add_member(:lifecycle_hook_types, Shapes::ShapeRef.new(shape: AutoScalingNotificationTypes, location_name: "LifecycleHookTypes"))
    DescribeLifecycleHookTypesAnswer.struct_class = Types::DescribeLifecycleHookTypesAnswer

    DescribeLifecycleHooksAnswer.add_member(:lifecycle_hooks, Shapes::ShapeRef.new(shape: LifecycleHooks, location_name: "LifecycleHooks"))
    DescribeLifecycleHooksAnswer.struct_class = Types::DescribeLifecycleHooksAnswer

    DescribeLifecycleHooksType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    DescribeLifecycleHooksType.add_member(:lifecycle_hook_names, Shapes::ShapeRef.new(shape: LifecycleHookNames, location_name: "LifecycleHookNames"))
    DescribeLifecycleHooksType.struct_class = Types::DescribeLifecycleHooksType

    DescribeLoadBalancerTargetGroupsRequest.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    DescribeLoadBalancerTargetGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeLoadBalancerTargetGroupsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeLoadBalancerTargetGroupsRequest.struct_class = Types::DescribeLoadBalancerTargetGroupsRequest

    DescribeLoadBalancerTargetGroupsResponse.add_member(:load_balancer_target_groups, Shapes::ShapeRef.new(shape: LoadBalancerTargetGroupStates, location_name: "LoadBalancerTargetGroups"))
    DescribeLoadBalancerTargetGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeLoadBalancerTargetGroupsResponse.struct_class = Types::DescribeLoadBalancerTargetGroupsResponse

    DescribeLoadBalancersRequest.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    DescribeLoadBalancersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeLoadBalancersRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeLoadBalancersRequest.struct_class = Types::DescribeLoadBalancersRequest

    DescribeLoadBalancersResponse.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancerStates, location_name: "LoadBalancers"))
    DescribeLoadBalancersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeLoadBalancersResponse.struct_class = Types::DescribeLoadBalancersResponse

    DescribeMetricCollectionTypesAnswer.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricCollectionTypes, location_name: "Metrics"))
    DescribeMetricCollectionTypesAnswer.add_member(:granularities, Shapes::ShapeRef.new(shape: MetricGranularityTypes, location_name: "Granularities"))
    DescribeMetricCollectionTypesAnswer.struct_class = Types::DescribeMetricCollectionTypesAnswer

    DescribeNotificationConfigurationsAnswer.add_member(:notification_configurations, Shapes::ShapeRef.new(shape: NotificationConfigurations, required: true, location_name: "NotificationConfigurations"))
    DescribeNotificationConfigurationsAnswer.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeNotificationConfigurationsAnswer.struct_class = Types::DescribeNotificationConfigurationsAnswer

    DescribeNotificationConfigurationsType.add_member(:auto_scaling_group_names, Shapes::ShapeRef.new(shape: AutoScalingGroupNames, location_name: "AutoScalingGroupNames"))
    DescribeNotificationConfigurationsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeNotificationConfigurationsType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeNotificationConfigurationsType.struct_class = Types::DescribeNotificationConfigurationsType

    DescribePoliciesType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "AutoScalingGroupName"))
    DescribePoliciesType.add_member(:policy_names, Shapes::ShapeRef.new(shape: PolicyNames, location_name: "PolicyNames"))
    DescribePoliciesType.add_member(:policy_types, Shapes::ShapeRef.new(shape: PolicyTypes, location_name: "PolicyTypes"))
    DescribePoliciesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribePoliciesType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribePoliciesType.struct_class = Types::DescribePoliciesType

    DescribeScalingActivitiesType.add_member(:activity_ids, Shapes::ShapeRef.new(shape: ActivityIds, location_name: "ActivityIds"))
    DescribeScalingActivitiesType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "AutoScalingGroupName"))
    DescribeScalingActivitiesType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeScalingActivitiesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeScalingActivitiesType.struct_class = Types::DescribeScalingActivitiesType

    DescribeScheduledActionsType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "AutoScalingGroupName"))
    DescribeScheduledActionsType.add_member(:scheduled_action_names, Shapes::ShapeRef.new(shape: ScheduledActionNames, location_name: "ScheduledActionNames"))
    DescribeScheduledActionsType.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "StartTime"))
    DescribeScheduledActionsType.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    DescribeScheduledActionsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeScheduledActionsType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeScheduledActionsType.struct_class = Types::DescribeScheduledActionsType

    DescribeTagsType.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    DescribeTagsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeTagsType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeTagsType.struct_class = Types::DescribeTagsType

    DescribeTerminationPolicyTypesAnswer.add_member(:termination_policy_types, Shapes::ShapeRef.new(shape: TerminationPolicies, location_name: "TerminationPolicyTypes"))
    DescribeTerminationPolicyTypesAnswer.struct_class = Types::DescribeTerminationPolicyTypesAnswer

    DetachInstancesAnswer.add_member(:activities, Shapes::ShapeRef.new(shape: Activities, location_name: "Activities"))
    DetachInstancesAnswer.struct_class = Types::DetachInstancesAnswer

    DetachInstancesQuery.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, location_name: "InstanceIds"))
    DetachInstancesQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    DetachInstancesQuery.add_member(:should_decrement_desired_capacity, Shapes::ShapeRef.new(shape: ShouldDecrementDesiredCapacity, required: true, location_name: "ShouldDecrementDesiredCapacity"))
    DetachInstancesQuery.struct_class = Types::DetachInstancesQuery

    DetachLoadBalancerTargetGroupsResultType.struct_class = Types::DetachLoadBalancerTargetGroupsResultType

    DetachLoadBalancerTargetGroupsType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    DetachLoadBalancerTargetGroupsType.add_member(:target_group_arns, Shapes::ShapeRef.new(shape: TargetGroupARNs, required: true, location_name: "TargetGroupARNs"))
    DetachLoadBalancerTargetGroupsType.struct_class = Types::DetachLoadBalancerTargetGroupsType

    DetachLoadBalancersResultType.struct_class = Types::DetachLoadBalancersResultType

    DetachLoadBalancersType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    DetachLoadBalancersType.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: LoadBalancerNames, required: true, location_name: "LoadBalancerNames"))
    DetachLoadBalancersType.struct_class = Types::DetachLoadBalancersType

    DisableMetricsCollectionQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    DisableMetricsCollectionQuery.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    DisableMetricsCollectionQuery.struct_class = Types::DisableMetricsCollectionQuery

    Ebs.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "SnapshotId"))
    Ebs.add_member(:volume_size, Shapes::ShapeRef.new(shape: BlockDeviceEbsVolumeSize, location_name: "VolumeSize"))
    Ebs.add_member(:volume_type, Shapes::ShapeRef.new(shape: BlockDeviceEbsVolumeType, location_name: "VolumeType"))
    Ebs.add_member(:delete_on_termination, Shapes::ShapeRef.new(shape: BlockDeviceEbsDeleteOnTermination, location_name: "DeleteOnTermination"))
    Ebs.add_member(:iops, Shapes::ShapeRef.new(shape: BlockDeviceEbsIops, location_name: "Iops"))
    Ebs.add_member(:encrypted, Shapes::ShapeRef.new(shape: BlockDeviceEbsEncrypted, location_name: "Encrypted"))
    Ebs.struct_class = Types::Ebs

    EnableMetricsCollectionQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    EnableMetricsCollectionQuery.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    EnableMetricsCollectionQuery.add_member(:granularity, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "Granularity"))
    EnableMetricsCollectionQuery.struct_class = Types::EnableMetricsCollectionQuery

    EnabledMetric.add_member(:metric, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Metric"))
    EnabledMetric.add_member(:granularity, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Granularity"))
    EnabledMetric.struct_class = Types::EnabledMetric

    EnabledMetrics.member = Shapes::ShapeRef.new(shape: EnabledMetric)

    EnterStandbyAnswer.add_member(:activities, Shapes::ShapeRef.new(shape: Activities, location_name: "Activities"))
    EnterStandbyAnswer.struct_class = Types::EnterStandbyAnswer

    EnterStandbyQuery.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, location_name: "InstanceIds"))
    EnterStandbyQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    EnterStandbyQuery.add_member(:should_decrement_desired_capacity, Shapes::ShapeRef.new(shape: ShouldDecrementDesiredCapacity, required: true, location_name: "ShouldDecrementDesiredCapacity"))
    EnterStandbyQuery.struct_class = Types::EnterStandbyQuery

    ExecutePolicyType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "AutoScalingGroupName"))
    ExecutePolicyType.add_member(:policy_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "PolicyName"))
    ExecutePolicyType.add_member(:honor_cooldown, Shapes::ShapeRef.new(shape: HonorCooldown, location_name: "HonorCooldown"))
    ExecutePolicyType.add_member(:metric_value, Shapes::ShapeRef.new(shape: MetricScale, location_name: "MetricValue"))
    ExecutePolicyType.add_member(:breach_threshold, Shapes::ShapeRef.new(shape: MetricScale, location_name: "BreachThreshold"))
    ExecutePolicyType.struct_class = Types::ExecutePolicyType

    ExitStandbyAnswer.add_member(:activities, Shapes::ShapeRef.new(shape: Activities, location_name: "Activities"))
    ExitStandbyAnswer.struct_class = Types::ExitStandbyAnswer

    ExitStandbyQuery.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, location_name: "InstanceIds"))
    ExitStandbyQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    ExitStandbyQuery.struct_class = Types::ExitStandbyQuery

    FailedScheduledUpdateGroupActionRequest.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "ScheduledActionName"))
    FailedScheduledUpdateGroupActionRequest.add_member(:error_code, Shapes::ShapeRef.new(shape: XmlStringMaxLen64, location_name: "ErrorCode"))
    FailedScheduledUpdateGroupActionRequest.add_member(:error_message, Shapes::ShapeRef.new(shape: XmlString, location_name: "ErrorMessage"))
    FailedScheduledUpdateGroupActionRequest.struct_class = Types::FailedScheduledUpdateGroupActionRequest

    FailedScheduledUpdateGroupActionRequests.member = Shapes::ShapeRef.new(shape: FailedScheduledUpdateGroupActionRequest)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: XmlString, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: Values, location_name: "Values"))
    Filter.struct_class = Types::Filter

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    Instance.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, required: true, location_name: "InstanceId"))
    Instance.add_member(:availability_zone, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AvailabilityZone"))
    Instance.add_member(:lifecycle_state, Shapes::ShapeRef.new(shape: LifecycleState, required: true, location_name: "LifecycleState"))
    Instance.add_member(:health_status, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, required: true, location_name: "HealthStatus"))
    Instance.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "LaunchConfigurationName"))
    Instance.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplate"))
    Instance.add_member(:protected_from_scale_in, Shapes::ShapeRef.new(shape: InstanceProtected, required: true, location_name: "ProtectedFromScaleIn"))
    Instance.struct_class = Types::Instance

    InstanceIds.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen19)

    InstanceMonitoring.add_member(:enabled, Shapes::ShapeRef.new(shape: MonitoringEnabled, location_name: "Enabled"))
    InstanceMonitoring.struct_class = Types::InstanceMonitoring

    Instances.member = Shapes::ShapeRef.new(shape: Instance)

    LaunchConfiguration.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "LaunchConfigurationName"))
    LaunchConfiguration.add_member(:launch_configuration_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "LaunchConfigurationARN"))
    LaunchConfiguration.add_member(:image_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "ImageId"))
    LaunchConfiguration.add_member(:key_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "KeyName"))
    LaunchConfiguration.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    LaunchConfiguration.add_member(:classic_link_vpc_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "ClassicLinkVPCId"))
    LaunchConfiguration.add_member(:classic_link_vpc_security_groups, Shapes::ShapeRef.new(shape: ClassicLinkVPCSecurityGroups, location_name: "ClassicLinkVPCSecurityGroups"))
    LaunchConfiguration.add_member(:user_data, Shapes::ShapeRef.new(shape: XmlStringUserData, location_name: "UserData"))
    LaunchConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "InstanceType"))
    LaunchConfiguration.add_member(:kernel_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "KernelId"))
    LaunchConfiguration.add_member(:ramdisk_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "RamdiskId"))
    LaunchConfiguration.add_member(:block_device_mappings, Shapes::ShapeRef.new(shape: BlockDeviceMappings, location_name: "BlockDeviceMappings"))
    LaunchConfiguration.add_member(:instance_monitoring, Shapes::ShapeRef.new(shape: InstanceMonitoring, location_name: "InstanceMonitoring"))
    LaunchConfiguration.add_member(:spot_price, Shapes::ShapeRef.new(shape: SpotPrice, location_name: "SpotPrice"))
    LaunchConfiguration.add_member(:iam_instance_profile, Shapes::ShapeRef.new(shape: XmlStringMaxLen1600, location_name: "IamInstanceProfile"))
    LaunchConfiguration.add_member(:created_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "CreatedTime"))
    LaunchConfiguration.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: EbsOptimized, location_name: "EbsOptimized"))
    LaunchConfiguration.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: AssociatePublicIpAddress, location_name: "AssociatePublicIpAddress"))
    LaunchConfiguration.add_member(:placement_tenancy, Shapes::ShapeRef.new(shape: XmlStringMaxLen64, location_name: "PlacementTenancy"))
    LaunchConfiguration.struct_class = Types::LaunchConfiguration

    LaunchConfigurationNameType.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "LaunchConfigurationName"))
    LaunchConfigurationNameType.struct_class = Types::LaunchConfigurationNameType

    LaunchConfigurationNames.member = Shapes::ShapeRef.new(shape: ResourceName)

    LaunchConfigurationNamesType.add_member(:launch_configuration_names, Shapes::ShapeRef.new(shape: LaunchConfigurationNames, location_name: "LaunchConfigurationNames"))
    LaunchConfigurationNamesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    LaunchConfigurationNamesType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    LaunchConfigurationNamesType.struct_class = Types::LaunchConfigurationNamesType

    LaunchConfigurations.member = Shapes::ShapeRef.new(shape: LaunchConfiguration)

    LaunchConfigurationsType.add_member(:launch_configurations, Shapes::ShapeRef.new(shape: LaunchConfigurations, required: true, location_name: "LaunchConfigurations"))
    LaunchConfigurationsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    LaunchConfigurationsType.struct_class = Types::LaunchConfigurationsType

    LaunchTemplateSpecification.add_member(:launch_template_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "LaunchTemplateId"))
    LaunchTemplateSpecification.add_member(:launch_template_name, Shapes::ShapeRef.new(shape: LaunchTemplateName, location_name: "LaunchTemplateName"))
    LaunchTemplateSpecification.add_member(:version, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Version"))
    LaunchTemplateSpecification.struct_class = Types::LaunchTemplateSpecification

    LifecycleHook.add_member(:lifecycle_hook_name, Shapes::ShapeRef.new(shape: AsciiStringMaxLen255, location_name: "LifecycleHookName"))
    LifecycleHook.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "AutoScalingGroupName"))
    LifecycleHook.add_member(:lifecycle_transition, Shapes::ShapeRef.new(shape: LifecycleTransition, location_name: "LifecycleTransition"))
    LifecycleHook.add_member(:notification_target_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "NotificationTargetARN"))
    LifecycleHook.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "RoleARN"))
    LifecycleHook.add_member(:notification_metadata, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, location_name: "NotificationMetadata"))
    LifecycleHook.add_member(:heartbeat_timeout, Shapes::ShapeRef.new(shape: HeartbeatTimeout, location_name: "HeartbeatTimeout"))
    LifecycleHook.add_member(:global_timeout, Shapes::ShapeRef.new(shape: GlobalTimeout, location_name: "GlobalTimeout"))
    LifecycleHook.add_member(:default_result, Shapes::ShapeRef.new(shape: LifecycleActionResult, location_name: "DefaultResult"))
    LifecycleHook.struct_class = Types::LifecycleHook

    LifecycleHookNames.member = Shapes::ShapeRef.new(shape: AsciiStringMaxLen255)

    LifecycleHookSpecification.add_member(:lifecycle_hook_name, Shapes::ShapeRef.new(shape: AsciiStringMaxLen255, required: true, location_name: "LifecycleHookName"))
    LifecycleHookSpecification.add_member(:lifecycle_transition, Shapes::ShapeRef.new(shape: LifecycleTransition, required: true, location_name: "LifecycleTransition"))
    LifecycleHookSpecification.add_member(:notification_metadata, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, location_name: "NotificationMetadata"))
    LifecycleHookSpecification.add_member(:heartbeat_timeout, Shapes::ShapeRef.new(shape: HeartbeatTimeout, location_name: "HeartbeatTimeout"))
    LifecycleHookSpecification.add_member(:default_result, Shapes::ShapeRef.new(shape: LifecycleActionResult, location_name: "DefaultResult"))
    LifecycleHookSpecification.add_member(:notification_target_arn, Shapes::ShapeRef.new(shape: NotificationTargetResourceName, location_name: "NotificationTargetARN"))
    LifecycleHookSpecification.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "RoleARN"))
    LifecycleHookSpecification.struct_class = Types::LifecycleHookSpecification

    LifecycleHookSpecifications.member = Shapes::ShapeRef.new(shape: LifecycleHookSpecification)

    LifecycleHooks.member = Shapes::ShapeRef.new(shape: LifecycleHook)

    LoadBalancerNames.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    LoadBalancerState.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "LoadBalancerName"))
    LoadBalancerState.add_member(:state, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "State"))
    LoadBalancerState.struct_class = Types::LoadBalancerState

    LoadBalancerStates.member = Shapes::ShapeRef.new(shape: LoadBalancerState)

    LoadBalancerTargetGroupState.add_member(:load_balancer_target_group_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen511, location_name: "LoadBalancerTargetGroupARN"))
    LoadBalancerTargetGroupState.add_member(:state, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "State"))
    LoadBalancerTargetGroupState.struct_class = Types::LoadBalancerTargetGroupState

    LoadBalancerTargetGroupStates.member = Shapes::ShapeRef.new(shape: LoadBalancerTargetGroupState)

    MetricCollectionType.add_member(:metric, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Metric"))
    MetricCollectionType.struct_class = Types::MetricCollectionType

    MetricCollectionTypes.member = Shapes::ShapeRef.new(shape: MetricCollectionType)

    MetricDimension.add_member(:name, Shapes::ShapeRef.new(shape: MetricDimensionName, required: true, location_name: "Name"))
    MetricDimension.add_member(:value, Shapes::ShapeRef.new(shape: MetricDimensionValue, required: true, location_name: "Value"))
    MetricDimension.struct_class = Types::MetricDimension

    MetricDimensions.member = Shapes::ShapeRef.new(shape: MetricDimension)

    MetricGranularityType.add_member(:granularity, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Granularity"))
    MetricGranularityType.struct_class = Types::MetricGranularityType

    MetricGranularityTypes.member = Shapes::ShapeRef.new(shape: MetricGranularityType)

    Metrics.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    NotificationConfiguration.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "AutoScalingGroupName"))
    NotificationConfiguration.add_member(:topic_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "TopicARN"))
    NotificationConfiguration.add_member(:notification_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "NotificationType"))
    NotificationConfiguration.struct_class = Types::NotificationConfiguration

    NotificationConfigurations.member = Shapes::ShapeRef.new(shape: NotificationConfiguration)

    PoliciesType.add_member(:scaling_policies, Shapes::ShapeRef.new(shape: ScalingPolicies, location_name: "ScalingPolicies"))
    PoliciesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    PoliciesType.struct_class = Types::PoliciesType

    PolicyARNType.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "PolicyARN"))
    PolicyARNType.add_member(:alarms, Shapes::ShapeRef.new(shape: Alarms, location_name: "Alarms"))
    PolicyARNType.struct_class = Types::PolicyARNType

    PolicyNames.member = Shapes::ShapeRef.new(shape: ResourceName)

    PolicyTypes.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen64)

    PredefinedMetricSpecification.add_member(:predefined_metric_type, Shapes::ShapeRef.new(shape: MetricType, required: true, location_name: "PredefinedMetricType"))
    PredefinedMetricSpecification.add_member(:resource_label, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, location_name: "ResourceLabel"))
    PredefinedMetricSpecification.struct_class = Types::PredefinedMetricSpecification

    ProcessNames.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    ProcessType.add_member(:process_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "ProcessName"))
    ProcessType.struct_class = Types::ProcessType

    Processes.member = Shapes::ShapeRef.new(shape: ProcessType)

    ProcessesType.add_member(:processes, Shapes::ShapeRef.new(shape: Processes, location_name: "Processes"))
    ProcessesType.struct_class = Types::ProcessesType

    PutLifecycleHookAnswer.struct_class = Types::PutLifecycleHookAnswer

    PutLifecycleHookType.add_member(:lifecycle_hook_name, Shapes::ShapeRef.new(shape: AsciiStringMaxLen255, required: true, location_name: "LifecycleHookName"))
    PutLifecycleHookType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    PutLifecycleHookType.add_member(:lifecycle_transition, Shapes::ShapeRef.new(shape: LifecycleTransition, location_name: "LifecycleTransition"))
    PutLifecycleHookType.add_member(:role_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "RoleARN"))
    PutLifecycleHookType.add_member(:notification_target_arn, Shapes::ShapeRef.new(shape: NotificationTargetResourceName, location_name: "NotificationTargetARN"))
    PutLifecycleHookType.add_member(:notification_metadata, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, location_name: "NotificationMetadata"))
    PutLifecycleHookType.add_member(:heartbeat_timeout, Shapes::ShapeRef.new(shape: HeartbeatTimeout, location_name: "HeartbeatTimeout"))
    PutLifecycleHookType.add_member(:default_result, Shapes::ShapeRef.new(shape: LifecycleActionResult, location_name: "DefaultResult"))
    PutLifecycleHookType.struct_class = Types::PutLifecycleHookType

    PutNotificationConfigurationType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    PutNotificationConfigurationType.add_member(:topic_arn, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "TopicARN"))
    PutNotificationConfigurationType.add_member(:notification_types, Shapes::ShapeRef.new(shape: AutoScalingNotificationTypes, required: true, location_name: "NotificationTypes"))
    PutNotificationConfigurationType.struct_class = Types::PutNotificationConfigurationType

    PutScalingPolicyType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    PutScalingPolicyType.add_member(:policy_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "PolicyName"))
    PutScalingPolicyType.add_member(:policy_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen64, location_name: "PolicyType"))
    PutScalingPolicyType.add_member(:adjustment_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AdjustmentType"))
    PutScalingPolicyType.add_member(:min_adjustment_step, Shapes::ShapeRef.new(shape: MinAdjustmentStep, deprecated: true, location_name: "MinAdjustmentStep"))
    PutScalingPolicyType.add_member(:min_adjustment_magnitude, Shapes::ShapeRef.new(shape: MinAdjustmentMagnitude, location_name: "MinAdjustmentMagnitude"))
    PutScalingPolicyType.add_member(:scaling_adjustment, Shapes::ShapeRef.new(shape: PolicyIncrement, location_name: "ScalingAdjustment"))
    PutScalingPolicyType.add_member(:cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "Cooldown"))
    PutScalingPolicyType.add_member(:metric_aggregation_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, location_name: "MetricAggregationType"))
    PutScalingPolicyType.add_member(:step_adjustments, Shapes::ShapeRef.new(shape: StepAdjustments, location_name: "StepAdjustments"))
    PutScalingPolicyType.add_member(:estimated_instance_warmup, Shapes::ShapeRef.new(shape: EstimatedInstanceWarmup, location_name: "EstimatedInstanceWarmup"))
    PutScalingPolicyType.add_member(:target_tracking_configuration, Shapes::ShapeRef.new(shape: TargetTrackingConfiguration, location_name: "TargetTrackingConfiguration"))
    PutScalingPolicyType.struct_class = Types::PutScalingPolicyType

    PutScheduledUpdateGroupActionType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    PutScheduledUpdateGroupActionType.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "ScheduledActionName"))
    PutScheduledUpdateGroupActionType.add_member(:time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "Time"))
    PutScheduledUpdateGroupActionType.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "StartTime"))
    PutScheduledUpdateGroupActionType.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    PutScheduledUpdateGroupActionType.add_member(:recurrence, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Recurrence"))
    PutScheduledUpdateGroupActionType.add_member(:min_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMinSize, location_name: "MinSize"))
    PutScheduledUpdateGroupActionType.add_member(:max_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMaxSize, location_name: "MaxSize"))
    PutScheduledUpdateGroupActionType.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, location_name: "DesiredCapacity"))
    PutScheduledUpdateGroupActionType.struct_class = Types::PutScheduledUpdateGroupActionType

    RecordLifecycleActionHeartbeatAnswer.struct_class = Types::RecordLifecycleActionHeartbeatAnswer

    RecordLifecycleActionHeartbeatType.add_member(:lifecycle_hook_name, Shapes::ShapeRef.new(shape: AsciiStringMaxLen255, required: true, location_name: "LifecycleHookName"))
    RecordLifecycleActionHeartbeatType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    RecordLifecycleActionHeartbeatType.add_member(:lifecycle_action_token, Shapes::ShapeRef.new(shape: LifecycleActionToken, location_name: "LifecycleActionToken"))
    RecordLifecycleActionHeartbeatType.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, location_name: "InstanceId"))
    RecordLifecycleActionHeartbeatType.struct_class = Types::RecordLifecycleActionHeartbeatType

    ScalingPolicies.member = Shapes::ShapeRef.new(shape: ScalingPolicy)

    ScalingPolicy.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AutoScalingGroupName"))
    ScalingPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "PolicyName"))
    ScalingPolicy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "PolicyARN"))
    ScalingPolicy.add_member(:policy_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen64, location_name: "PolicyType"))
    ScalingPolicy.add_member(:adjustment_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AdjustmentType"))
    ScalingPolicy.add_member(:min_adjustment_step, Shapes::ShapeRef.new(shape: MinAdjustmentStep, deprecated: true, location_name: "MinAdjustmentStep"))
    ScalingPolicy.add_member(:min_adjustment_magnitude, Shapes::ShapeRef.new(shape: MinAdjustmentMagnitude, location_name: "MinAdjustmentMagnitude"))
    ScalingPolicy.add_member(:scaling_adjustment, Shapes::ShapeRef.new(shape: PolicyIncrement, location_name: "ScalingAdjustment"))
    ScalingPolicy.add_member(:cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "Cooldown"))
    ScalingPolicy.add_member(:step_adjustments, Shapes::ShapeRef.new(shape: StepAdjustments, location_name: "StepAdjustments"))
    ScalingPolicy.add_member(:metric_aggregation_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, location_name: "MetricAggregationType"))
    ScalingPolicy.add_member(:estimated_instance_warmup, Shapes::ShapeRef.new(shape: EstimatedInstanceWarmup, location_name: "EstimatedInstanceWarmup"))
    ScalingPolicy.add_member(:alarms, Shapes::ShapeRef.new(shape: Alarms, location_name: "Alarms"))
    ScalingPolicy.add_member(:target_tracking_configuration, Shapes::ShapeRef.new(shape: TargetTrackingConfiguration, location_name: "TargetTrackingConfiguration"))
    ScalingPolicy.struct_class = Types::ScalingPolicy

    ScalingProcessQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    ScalingProcessQuery.add_member(:scaling_processes, Shapes::ShapeRef.new(shape: ProcessNames, location_name: "ScalingProcesses"))
    ScalingProcessQuery.struct_class = Types::ScalingProcessQuery

    ScheduledActionNames.member = Shapes::ShapeRef.new(shape: ResourceName)

    ScheduledActionsType.add_member(:scheduled_update_group_actions, Shapes::ShapeRef.new(shape: ScheduledUpdateGroupActions, location_name: "ScheduledUpdateGroupActions"))
    ScheduledActionsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    ScheduledActionsType.struct_class = Types::ScheduledActionsType

    ScheduledUpdateGroupAction.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AutoScalingGroupName"))
    ScheduledUpdateGroupAction.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "ScheduledActionName"))
    ScheduledUpdateGroupAction.add_member(:scheduled_action_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ScheduledActionARN"))
    ScheduledUpdateGroupAction.add_member(:time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "Time"))
    ScheduledUpdateGroupAction.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "StartTime"))
    ScheduledUpdateGroupAction.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    ScheduledUpdateGroupAction.add_member(:recurrence, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Recurrence"))
    ScheduledUpdateGroupAction.add_member(:min_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMinSize, location_name: "MinSize"))
    ScheduledUpdateGroupAction.add_member(:max_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMaxSize, location_name: "MaxSize"))
    ScheduledUpdateGroupAction.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, location_name: "DesiredCapacity"))
    ScheduledUpdateGroupAction.struct_class = Types::ScheduledUpdateGroupAction

    ScheduledUpdateGroupActionRequest.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "ScheduledActionName"))
    ScheduledUpdateGroupActionRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "StartTime"))
    ScheduledUpdateGroupActionRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    ScheduledUpdateGroupActionRequest.add_member(:recurrence, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Recurrence"))
    ScheduledUpdateGroupActionRequest.add_member(:min_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMinSize, location_name: "MinSize"))
    ScheduledUpdateGroupActionRequest.add_member(:max_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMaxSize, location_name: "MaxSize"))
    ScheduledUpdateGroupActionRequest.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, location_name: "DesiredCapacity"))
    ScheduledUpdateGroupActionRequest.struct_class = Types::ScheduledUpdateGroupActionRequest

    ScheduledUpdateGroupActionRequests.member = Shapes::ShapeRef.new(shape: ScheduledUpdateGroupActionRequest)

    ScheduledUpdateGroupActions.member = Shapes::ShapeRef.new(shape: ScheduledUpdateGroupAction)

    SecurityGroups.member = Shapes::ShapeRef.new(shape: XmlString)

    SetDesiredCapacityType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    SetDesiredCapacityType.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, required: true, location_name: "DesiredCapacity"))
    SetDesiredCapacityType.add_member(:honor_cooldown, Shapes::ShapeRef.new(shape: HonorCooldown, location_name: "HonorCooldown"))
    SetDesiredCapacityType.struct_class = Types::SetDesiredCapacityType

    SetInstanceHealthQuery.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, required: true, location_name: "InstanceId"))
    SetInstanceHealthQuery.add_member(:health_status, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, required: true, location_name: "HealthStatus"))
    SetInstanceHealthQuery.add_member(:should_respect_grace_period, Shapes::ShapeRef.new(shape: ShouldRespectGracePeriod, location_name: "ShouldRespectGracePeriod"))
    SetInstanceHealthQuery.struct_class = Types::SetInstanceHealthQuery

    SetInstanceProtectionAnswer.struct_class = Types::SetInstanceProtectionAnswer

    SetInstanceProtectionQuery.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, required: true, location_name: "InstanceIds"))
    SetInstanceProtectionQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    SetInstanceProtectionQuery.add_member(:protected_from_scale_in, Shapes::ShapeRef.new(shape: ProtectedFromScaleIn, required: true, location_name: "ProtectedFromScaleIn"))
    SetInstanceProtectionQuery.struct_class = Types::SetInstanceProtectionQuery

    StepAdjustment.add_member(:metric_interval_lower_bound, Shapes::ShapeRef.new(shape: MetricScale, location_name: "MetricIntervalLowerBound"))
    StepAdjustment.add_member(:metric_interval_upper_bound, Shapes::ShapeRef.new(shape: MetricScale, location_name: "MetricIntervalUpperBound"))
    StepAdjustment.add_member(:scaling_adjustment, Shapes::ShapeRef.new(shape: PolicyIncrement, required: true, location_name: "ScalingAdjustment"))
    StepAdjustment.struct_class = Types::StepAdjustment

    StepAdjustments.member = Shapes::ShapeRef.new(shape: StepAdjustment)

    SuspendedProcess.add_member(:process_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "ProcessName"))
    SuspendedProcess.add_member(:suspension_reason, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "SuspensionReason"))
    SuspendedProcess.struct_class = Types::SuspendedProcess

    SuspendedProcesses.member = Shapes::ShapeRef.new(shape: SuspendedProcess)

    Tag.add_member(:resource_id, Shapes::ShapeRef.new(shape: XmlString, location_name: "ResourceId"))
    Tag.add_member(:resource_type, Shapes::ShapeRef.new(shape: XmlString, location_name: "ResourceType"))
    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.add_member(:propagate_at_launch, Shapes::ShapeRef.new(shape: PropagateAtLaunch, location_name: "PropagateAtLaunch"))
    Tag.struct_class = Types::Tag

    TagDescription.add_member(:resource_id, Shapes::ShapeRef.new(shape: XmlString, location_name: "ResourceId"))
    TagDescription.add_member(:resource_type, Shapes::ShapeRef.new(shape: XmlString, location_name: "ResourceType"))
    TagDescription.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    TagDescription.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    TagDescription.add_member(:propagate_at_launch, Shapes::ShapeRef.new(shape: PropagateAtLaunch, location_name: "PropagateAtLaunch"))
    TagDescription.struct_class = Types::TagDescription

    TagDescriptionList.member = Shapes::ShapeRef.new(shape: TagDescription)

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TagsType.add_member(:tags, Shapes::ShapeRef.new(shape: TagDescriptionList, location_name: "Tags"))
    TagsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    TagsType.struct_class = Types::TagsType

    TargetGroupARNs.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen511)

    TargetTrackingConfiguration.add_member(:predefined_metric_specification, Shapes::ShapeRef.new(shape: PredefinedMetricSpecification, location_name: "PredefinedMetricSpecification"))
    TargetTrackingConfiguration.add_member(:customized_metric_specification, Shapes::ShapeRef.new(shape: CustomizedMetricSpecification, location_name: "CustomizedMetricSpecification"))
    TargetTrackingConfiguration.add_member(:target_value, Shapes::ShapeRef.new(shape: MetricScale, required: true, location_name: "TargetValue"))
    TargetTrackingConfiguration.add_member(:disable_scale_in, Shapes::ShapeRef.new(shape: DisableScaleIn, location_name: "DisableScaleIn"))
    TargetTrackingConfiguration.struct_class = Types::TargetTrackingConfiguration

    TerminateInstanceInAutoScalingGroupType.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, required: true, location_name: "InstanceId"))
    TerminateInstanceInAutoScalingGroupType.add_member(:should_decrement_desired_capacity, Shapes::ShapeRef.new(shape: ShouldDecrementDesiredCapacity, required: true, location_name: "ShouldDecrementDesiredCapacity"))
    TerminateInstanceInAutoScalingGroupType.struct_class = Types::TerminateInstanceInAutoScalingGroupType

    TerminationPolicies.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen1600)

    UpdateAutoScalingGroupType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    UpdateAutoScalingGroupType.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "LaunchConfigurationName"))
    UpdateAutoScalingGroupType.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplate"))
    UpdateAutoScalingGroupType.add_member(:min_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMinSize, location_name: "MinSize"))
    UpdateAutoScalingGroupType.add_member(:max_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMaxSize, location_name: "MaxSize"))
    UpdateAutoScalingGroupType.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, location_name: "DesiredCapacity"))
    UpdateAutoScalingGroupType.add_member(:default_cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "DefaultCooldown"))
    UpdateAutoScalingGroupType.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    UpdateAutoScalingGroupType.add_member(:health_check_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, location_name: "HealthCheckType"))
    UpdateAutoScalingGroupType.add_member(:health_check_grace_period, Shapes::ShapeRef.new(shape: HealthCheckGracePeriod, location_name: "HealthCheckGracePeriod"))
    UpdateAutoScalingGroupType.add_member(:placement_group, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "PlacementGroup"))
    UpdateAutoScalingGroupType.add_member(:vpc_zone_identifier, Shapes::ShapeRef.new(shape: XmlStringMaxLen2047, location_name: "VPCZoneIdentifier"))
    UpdateAutoScalingGroupType.add_member(:termination_policies, Shapes::ShapeRef.new(shape: TerminationPolicies, location_name: "TerminationPolicies"))
    UpdateAutoScalingGroupType.add_member(:new_instances_protected_from_scale_in, Shapes::ShapeRef.new(shape: InstanceProtected, location_name: "NewInstancesProtectedFromScaleIn"))
    UpdateAutoScalingGroupType.add_member(:service_linked_role_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ServiceLinkedRoleARN"))
    UpdateAutoScalingGroupType.struct_class = Types::UpdateAutoScalingGroupType

    Values.member = Shapes::ShapeRef.new(shape: XmlString)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2011-01-01"

      api.metadata = {
        "apiVersion" => "2011-01-01",
        "endpointPrefix" => "autoscaling",
        "protocol" => "query",
        "serviceFullName" => "Auto Scaling",
        "serviceId" => "Auto Scaling",
        "signatureVersion" => "v4",
        "uid" => "autoscaling-2011-01-01",
        "xmlNamespace" => "http://autoscaling.amazonaws.com/doc/2011-01-01/",
      }

      api.add_operation(:attach_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachInstancesQuery)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:attach_load_balancer_target_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachLoadBalancerTargetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachLoadBalancerTargetGroupsType)
        o.output = Shapes::ShapeRef.new(shape: AttachLoadBalancerTargetGroupsResultType)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:attach_load_balancers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachLoadBalancers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachLoadBalancersType)
        o.output = Shapes::ShapeRef.new(shape: AttachLoadBalancersResultType)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:batch_delete_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteScheduledActionType)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteScheduledActionAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:batch_put_scheduled_update_group_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutScheduledUpdateGroupAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchPutScheduledUpdateGroupActionType)
        o.output = Shapes::ShapeRef.new(shape: BatchPutScheduledUpdateGroupActionAnswer)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:complete_lifecycle_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CompleteLifecycleAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CompleteLifecycleActionType)
        o.output = Shapes::ShapeRef.new(shape: CompleteLifecycleActionAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:create_auto_scaling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAutoScalingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAutoScalingGroupType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:create_launch_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLaunchConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLaunchConfigurationType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:create_or_update_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOrUpdateTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOrUpdateTagsType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
      end)

      api.add_operation(:delete_auto_scaling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAutoScalingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAutoScalingGroupType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ScalingActivityInProgressFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:delete_launch_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLaunchConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: LaunchConfigurationNameType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:delete_lifecycle_hook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLifecycleHook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLifecycleHookType)
        o.output = Shapes::ShapeRef.new(shape: DeleteLifecycleHookAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:delete_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotificationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotificationConfigurationType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:delete_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:delete_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduledActionType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:delete_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
      end)

      api.add_operation(:describe_account_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountLimitsAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_adjustment_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAdjustmentTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeAdjustmentTypesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_auto_scaling_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutoScalingGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AutoScalingGroupNamesType)
        o.output = Shapes::ShapeRef.new(shape: AutoScalingGroupsType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_auto_scaling_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutoScalingInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAutoScalingInstancesType)
        o.output = Shapes::ShapeRef.new(shape: AutoScalingInstancesType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_auto_scaling_notification_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutoScalingNotificationTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeAutoScalingNotificationTypesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_launch_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLaunchConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: LaunchConfigurationNamesType)
        o.output = Shapes::ShapeRef.new(shape: LaunchConfigurationsType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_lifecycle_hook_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLifecycleHookTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeLifecycleHookTypesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_lifecycle_hooks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLifecycleHooks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLifecycleHooksType)
        o.output = Shapes::ShapeRef.new(shape: DescribeLifecycleHooksAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_load_balancer_target_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBalancerTargetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoadBalancerTargetGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoadBalancerTargetGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_load_balancers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBalancers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoadBalancersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoadBalancersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_metric_collection_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetricCollectionTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeMetricCollectionTypesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_notification_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNotificationConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeNotificationConfigurationsType)
        o.output = Shapes::ShapeRef.new(shape: DescribeNotificationConfigurationsAnswer)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePoliciesType)
        o.output = Shapes::ShapeRef.new(shape: PoliciesType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_scaling_activities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScalingActivities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScalingActivitiesType)
        o.output = Shapes::ShapeRef.new(shape: ActivitiesType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_scaling_process_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScalingProcessTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: ProcessesType)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_scheduled_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScheduledActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScheduledActionsType)
        o.output = Shapes::ShapeRef.new(shape: ScheduledActionsType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsType)
        o.output = Shapes::ShapeRef.new(shape: TagsType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_termination_policy_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTerminationPolicyTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeTerminationPolicyTypesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:detach_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachInstancesQuery)
        o.output = Shapes::ShapeRef.new(shape: DetachInstancesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:detach_load_balancer_target_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachLoadBalancerTargetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachLoadBalancerTargetGroupsType)
        o.output = Shapes::ShapeRef.new(shape: DetachLoadBalancerTargetGroupsResultType)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:detach_load_balancers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachLoadBalancers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachLoadBalancersType)
        o.output = Shapes::ShapeRef.new(shape: DetachLoadBalancersResultType)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:disable_metrics_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableMetricsCollection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableMetricsCollectionQuery)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:enable_metrics_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableMetricsCollection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableMetricsCollectionQuery)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:enter_standby, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnterStandby"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnterStandbyQuery)
        o.output = Shapes::ShapeRef.new(shape: EnterStandbyAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:execute_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecutePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExecutePolicyType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ScalingActivityInProgressFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:exit_standby, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExitStandby"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExitStandbyQuery)
        o.output = Shapes::ShapeRef.new(shape: ExitStandbyAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:put_lifecycle_hook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLifecycleHook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLifecycleHookType)
        o.output = Shapes::ShapeRef.new(shape: PutLifecycleHookAnswer)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:put_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutNotificationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutNotificationConfigurationType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:put_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutScalingPolicyType)
        o.output = Shapes::ShapeRef.new(shape: PolicyARNType)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:put_scheduled_update_group_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutScheduledUpdateGroupAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutScheduledUpdateGroupActionType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:record_lifecycle_action_heartbeat, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RecordLifecycleActionHeartbeat"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RecordLifecycleActionHeartbeatType)
        o.output = Shapes::ShapeRef.new(shape: RecordLifecycleActionHeartbeatAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:resume_processes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeProcesses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ScalingProcessQuery)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:set_desired_capacity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetDesiredCapacity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetDesiredCapacityType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ScalingActivityInProgressFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:set_instance_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetInstanceHealth"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetInstanceHealthQuery)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:set_instance_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetInstanceProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetInstanceProtectionQuery)
        o.output = Shapes::ShapeRef.new(shape: SetInstanceProtectionAnswer)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:suspend_processes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SuspendProcesses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ScalingProcessQuery)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:terminate_instance_in_auto_scaling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateInstanceInAutoScalingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateInstanceInAutoScalingGroupType)
        o.output = Shapes::ShapeRef.new(shape: ActivityType)
        o.errors << Shapes::ShapeRef.new(shape: ScalingActivityInProgressFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:update_auto_scaling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAutoScalingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAutoScalingGroupType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ScalingActivityInProgressFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)
    end

  end
end
