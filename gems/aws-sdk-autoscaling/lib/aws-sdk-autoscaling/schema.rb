# frozen_string_literal: true

# This is generated code!

module Aws::AutoScaling
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceleratorCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AcceleratorCountRequest", name: "AcceleratorCountRequest")
    AcceleratorManufacturer = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#AcceleratorManufacturer", name: "AcceleratorManufacturer")
    AcceleratorManufacturers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AcceleratorManufacturers", name: "AcceleratorManufacturers")
    AcceleratorName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#AcceleratorName", name: "AcceleratorName")
    AcceleratorNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AcceleratorNames", name: "AcceleratorNames")
    AcceleratorTotalMemoryMiBRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AcceleratorTotalMemoryMiBRequest", name: "AcceleratorTotalMemoryMiBRequest")
    AcceleratorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#AcceleratorType", name: "AcceleratorType")
    AcceleratorTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AcceleratorTypes", name: "AcceleratorTypes")
    ActiveInstanceRefreshNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ActiveInstanceRefreshNotFoundFault", name: "ActiveInstanceRefreshNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ActiveInstanceRefreshNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Activities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#Activities", name: "Activities")
    Activity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#Activity", name: "Activity")
    ActivityIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#ActivityIds", name: "ActivityIds")
    AdjustmentType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AdjustmentType", name: "AdjustmentType")
    AdjustmentTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AdjustmentTypes", name: "AdjustmentTypes")
    Alarm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#Alarm", name: "Alarm")
    AlarmList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AlarmList", name: "AlarmList")
    AlarmSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AlarmSpecification", name: "AlarmSpecification")
    Alarms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#Alarms", name: "Alarms")
    AllowedInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#AllowedInstanceType", name: "AllowedInstanceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\*\\-]+$"})
    AllowedInstanceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AllowedInstanceTypes", name: "AllowedInstanceTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}})
    AlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AlreadyExistsFault", name: "AlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AnyPrintableAsciiStringMaxLen4000 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#AnyPrintableAsciiStringMaxLen4000", name: "AnyPrintableAsciiStringMaxLen4000", traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007e]+$"})
    AsciiStringMaxLen255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#AsciiStringMaxLen255", name: "AsciiStringMaxLen255", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9\\-_\\/]+$"})
    AssociatePublicIpAddress = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#AssociatePublicIpAddress", name: "AssociatePublicIpAddress")
    AttachInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AttachInstancesInput", name: "AttachInstancesInput")
    AttachLoadBalancerTargetGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AttachLoadBalancerTargetGroupsInput", name: "AttachLoadBalancerTargetGroupsInput")
    AttachLoadBalancerTargetGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AttachLoadBalancerTargetGroupsOutput", name: "AttachLoadBalancerTargetGroupsOutput")
    AttachLoadBalancersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AttachLoadBalancersInput", name: "AttachLoadBalancersInput")
    AttachLoadBalancersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AttachLoadBalancersOutput", name: "AttachLoadBalancersOutput")
    AttachTrafficSourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AttachTrafficSourcesInput", name: "AttachTrafficSourcesInput")
    AttachTrafficSourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AttachTrafficSourcesOutput", name: "AttachTrafficSourcesOutput")
    AutoRollback = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#AutoRollback", name: "AutoRollback")
    AutoScalingGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AutoScalingGroup", name: "AutoScalingGroup")
    AutoScalingGroupDesiredCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#AutoScalingGroupDesiredCapacity", name: "AutoScalingGroupDesiredCapacity")
    AutoScalingGroupMaxSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#AutoScalingGroupMaxSize", name: "AutoScalingGroupMaxSize")
    AutoScalingGroupMinSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#AutoScalingGroupMinSize", name: "AutoScalingGroupMinSize")
    AutoScalingGroupNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AutoScalingGroupNames", name: "AutoScalingGroupNames")
    AutoScalingGroupPredictedCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#AutoScalingGroupPredictedCapacity", name: "AutoScalingGroupPredictedCapacity")
    AutoScalingGroupState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#AutoScalingGroupState", name: "AutoScalingGroupState", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    AutoScalingGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AutoScalingGroups", name: "AutoScalingGroups")
    AutoScalingInstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AutoScalingInstanceDetails", name: "AutoScalingInstanceDetails")
    AutoScalingInstances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AutoScalingInstances", name: "AutoScalingInstances")
    AutoScalingNotificationTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AutoScalingNotificationTypes", name: "AutoScalingNotificationTypes")
    AvailabilityZoneDistribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AvailabilityZoneDistribution", name: "AvailabilityZoneDistribution")
    AvailabilityZoneIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AvailabilityZoneIds", name: "AvailabilityZoneIds")
    AvailabilityZoneIdsLimit1 = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AvailabilityZoneIdsLimit1", name: "AvailabilityZoneIdsLimit1", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    AvailabilityZoneImpairmentPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#AvailabilityZoneImpairmentPolicy", name: "AvailabilityZoneImpairmentPolicy")
    AvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AvailabilityZones", name: "AvailabilityZones")
    AvailabilityZonesLimit1 = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#AvailabilityZonesLimit1", name: "AvailabilityZonesLimit1", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    BakeTime = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#BakeTime", name: "BakeTime", traits: {"smithy.api#range" => {"min" => 0, "max" => 172800}})
    BareMetal = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#BareMetal", name: "BareMetal")
    BaselineEbsBandwidthMbpsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#BaselineEbsBandwidthMbpsRequest", name: "BaselineEbsBandwidthMbpsRequest")
    BaselinePerformanceFactorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#BaselinePerformanceFactorsRequest", name: "BaselinePerformanceFactorsRequest")
    BatchDeleteScheduledActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#BatchDeleteScheduledActionInput", name: "BatchDeleteScheduledActionInput")
    BatchDeleteScheduledActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#BatchDeleteScheduledActionOutput", name: "BatchDeleteScheduledActionOutput")
    BatchPutScheduledUpdateGroupActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#BatchPutScheduledUpdateGroupActionInput", name: "BatchPutScheduledUpdateGroupActionInput")
    BatchPutScheduledUpdateGroupActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#BatchPutScheduledUpdateGroupActionOutput", name: "BatchPutScheduledUpdateGroupActionOutput")
    BlockDeviceEbsDeleteOnTermination = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#BlockDeviceEbsDeleteOnTermination", name: "BlockDeviceEbsDeleteOnTermination")
    BlockDeviceEbsEncrypted = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#BlockDeviceEbsEncrypted", name: "BlockDeviceEbsEncrypted")
    BlockDeviceEbsIops = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#BlockDeviceEbsIops", name: "BlockDeviceEbsIops", traits: {"smithy.api#range" => {"min" => 100, "max" => 20000}})
    BlockDeviceEbsThroughput = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#BlockDeviceEbsThroughput", name: "BlockDeviceEbsThroughput", traits: {"smithy.api#range" => {"min" => 125, "max" => 1000}})
    BlockDeviceEbsVolumeSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#BlockDeviceEbsVolumeSize", name: "BlockDeviceEbsVolumeSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 16384}})
    BlockDeviceEbsVolumeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#BlockDeviceEbsVolumeType", name: "BlockDeviceEbsVolumeType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    BlockDeviceMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#BlockDeviceMapping", name: "BlockDeviceMapping")
    BlockDeviceMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#BlockDeviceMappings", name: "BlockDeviceMappings")
    BooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#BooleanType", name: "BooleanType")
    BurstablePerformance = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#BurstablePerformance", name: "BurstablePerformance")
    CancelInstanceRefreshInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#CancelInstanceRefreshInput", name: "CancelInstanceRefreshInput")
    CancelInstanceRefreshOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#CancelInstanceRefreshOutput", name: "CancelInstanceRefreshOutput")
    CapacityDistributionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#CapacityDistributionStrategy", name: "CapacityDistributionStrategy")
    CapacityForecast = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#CapacityForecast", name: "CapacityForecast")
    CapacityRebalanceEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#CapacityRebalanceEnabled", name: "CapacityRebalanceEnabled")
    CapacityReservationIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#CapacityReservationIds", name: "CapacityReservationIds")
    CapacityReservationPreference = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#CapacityReservationPreference", name: "CapacityReservationPreference")
    CapacityReservationResourceGroupArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#CapacityReservationResourceGroupArns", name: "CapacityReservationResourceGroupArns")
    CapacityReservationSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#CapacityReservationSpecification", name: "CapacityReservationSpecification")
    CapacityReservationTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#CapacityReservationTarget", name: "CapacityReservationTarget")
    CheckpointDelay = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#CheckpointDelay", name: "CheckpointDelay", traits: {"smithy.api#range" => {"min" => 0, "max" => 172800}})
    CheckpointPercentages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#CheckpointPercentages", name: "CheckpointPercentages")
    ClassicLinkVPCSecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#ClassicLinkVPCSecurityGroups", name: "ClassicLinkVPCSecurityGroups")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9\\-_\\/]+$"})
    CompleteLifecycleActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#CompleteLifecycleActionInput", name: "CompleteLifecycleActionInput")
    CompleteLifecycleActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#CompleteLifecycleActionOutput", name: "CompleteLifecycleActionOutput")
    Context = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#Context", name: "Context")
    Cooldown = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#Cooldown", name: "Cooldown")
    CpuManufacturer = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#CpuManufacturer", name: "CpuManufacturer")
    CpuManufacturers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#CpuManufacturers", name: "CpuManufacturers")
    CpuPerformanceFactorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#CpuPerformanceFactorRequest", name: "CpuPerformanceFactorRequest")
    CreateAutoScalingGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#CreateAutoScalingGroupInput", name: "CreateAutoScalingGroupInput")
    CreateLaunchConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#CreateLaunchConfigurationInput", name: "CreateLaunchConfigurationInput")
    CreateOrUpdateTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#CreateOrUpdateTagsInput", name: "CreateOrUpdateTagsInput")
    CustomizedMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#CustomizedMetricSpecification", name: "CustomizedMetricSpecification")
    DefaultInstanceWarmup = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#DefaultInstanceWarmup", name: "DefaultInstanceWarmup")
    DeleteAutoScalingGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DeleteAutoScalingGroupInput", name: "DeleteAutoScalingGroupInput")
    DeleteLaunchConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DeleteLaunchConfigurationInput", name: "DeleteLaunchConfigurationInput")
    DeleteLifecycleHookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DeleteLifecycleHookInput", name: "DeleteLifecycleHookInput")
    DeleteLifecycleHookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DeleteLifecycleHookOutput", name: "DeleteLifecycleHookOutput")
    DeleteNotificationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DeleteNotificationConfigurationInput", name: "DeleteNotificationConfigurationInput")
    DeletePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DeletePolicyInput", name: "DeletePolicyInput")
    DeleteScheduledActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DeleteScheduledActionInput", name: "DeleteScheduledActionInput")
    DeleteTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DeleteTagsInput", name: "DeleteTagsInput")
    DeleteWarmPoolInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DeleteWarmPoolInput", name: "DeleteWarmPoolInput")
    DeleteWarmPoolOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DeleteWarmPoolOutput", name: "DeleteWarmPoolOutput")
    DeletionProtection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#DeletionProtection", name: "DeletionProtection")
    DescribeAccountLimitsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeAccountLimitsOutput", name: "DescribeAccountLimitsOutput")
    DescribeAdjustmentTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeAdjustmentTypesOutput", name: "DescribeAdjustmentTypesOutput")
    DescribeAutoScalingGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeAutoScalingGroupsInput", name: "DescribeAutoScalingGroupsInput")
    DescribeAutoScalingGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeAutoScalingGroupsOutput", name: "DescribeAutoScalingGroupsOutput")
    DescribeAutoScalingInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeAutoScalingInstancesInput", name: "DescribeAutoScalingInstancesInput")
    DescribeAutoScalingInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeAutoScalingInstancesOutput", name: "DescribeAutoScalingInstancesOutput")
    DescribeAutoScalingNotificationTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeAutoScalingNotificationTypesOutput", name: "DescribeAutoScalingNotificationTypesOutput")
    DescribeInstanceRefreshesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeInstanceRefreshesInput", name: "DescribeInstanceRefreshesInput")
    DescribeInstanceRefreshesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeInstanceRefreshesOutput", name: "DescribeInstanceRefreshesOutput")
    DescribeLaunchConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeLaunchConfigurationsInput", name: "DescribeLaunchConfigurationsInput")
    DescribeLaunchConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeLaunchConfigurationsOutput", name: "DescribeLaunchConfigurationsOutput")
    DescribeLifecycleHookTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeLifecycleHookTypesOutput", name: "DescribeLifecycleHookTypesOutput")
    DescribeLifecycleHooksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeLifecycleHooksInput", name: "DescribeLifecycleHooksInput")
    DescribeLifecycleHooksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeLifecycleHooksOutput", name: "DescribeLifecycleHooksOutput")
    DescribeLoadBalancerTargetGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeLoadBalancerTargetGroupsRequest", name: "DescribeLoadBalancerTargetGroupsRequest")
    DescribeLoadBalancerTargetGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeLoadBalancerTargetGroupsResponse", name: "DescribeLoadBalancerTargetGroupsResponse")
    DescribeLoadBalancersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeLoadBalancersRequest", name: "DescribeLoadBalancersRequest")
    DescribeLoadBalancersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeLoadBalancersResponse", name: "DescribeLoadBalancersResponse")
    DescribeMetricCollectionTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeMetricCollectionTypesOutput", name: "DescribeMetricCollectionTypesOutput")
    DescribeNotificationConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeNotificationConfigurationsInput", name: "DescribeNotificationConfigurationsInput")
    DescribeNotificationConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeNotificationConfigurationsOutput", name: "DescribeNotificationConfigurationsOutput")
    DescribePoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribePoliciesInput", name: "DescribePoliciesInput")
    DescribePoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribePoliciesOutput", name: "DescribePoliciesOutput")
    DescribeScalingActivitiesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeScalingActivitiesInput", name: "DescribeScalingActivitiesInput")
    DescribeScalingActivitiesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeScalingActivitiesOutput", name: "DescribeScalingActivitiesOutput")
    DescribeScalingProcessTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeScalingProcessTypesOutput", name: "DescribeScalingProcessTypesOutput")
    DescribeScheduledActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeScheduledActionsInput", name: "DescribeScheduledActionsInput")
    DescribeScheduledActionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeScheduledActionsOutput", name: "DescribeScheduledActionsOutput")
    DescribeTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeTagsInput", name: "DescribeTagsInput")
    DescribeTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeTagsOutput", name: "DescribeTagsOutput")
    DescribeTerminationPolicyTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeTerminationPolicyTypesOutput", name: "DescribeTerminationPolicyTypesOutput")
    DescribeTrafficSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeTrafficSourcesRequest", name: "DescribeTrafficSourcesRequest")
    DescribeTrafficSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeTrafficSourcesResponse", name: "DescribeTrafficSourcesResponse")
    DescribeWarmPoolInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeWarmPoolInput", name: "DescribeWarmPoolInput")
    DescribeWarmPoolOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DescribeWarmPoolOutput", name: "DescribeWarmPoolOutput")
    DesiredConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DesiredConfiguration", name: "DesiredConfiguration")
    DetachInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DetachInstancesInput", name: "DetachInstancesInput")
    DetachInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DetachInstancesOutput", name: "DetachInstancesOutput")
    DetachLoadBalancerTargetGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DetachLoadBalancerTargetGroupsInput", name: "DetachLoadBalancerTargetGroupsInput")
    DetachLoadBalancerTargetGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DetachLoadBalancerTargetGroupsOutput", name: "DetachLoadBalancerTargetGroupsOutput")
    DetachLoadBalancersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DetachLoadBalancersInput", name: "DetachLoadBalancersInput")
    DetachLoadBalancersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DetachLoadBalancersOutput", name: "DetachLoadBalancersOutput")
    DetachTrafficSourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DetachTrafficSourcesInput", name: "DetachTrafficSourcesInput")
    DetachTrafficSourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DetachTrafficSourcesOutput", name: "DetachTrafficSourcesOutput")
    DisableMetricsCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DisableMetricsCollectionInput", name: "DisableMetricsCollectionInput")
    DisableScaleIn = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#DisableScaleIn", name: "DisableScaleIn")
    DistributionSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#DistributionSegment", name: "DistributionSegment")
    DistributionSegments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#DistributionSegments", name: "DistributionSegments")
    Ebs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#Ebs", name: "Ebs")
    EbsOptimized = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#EbsOptimized", name: "EbsOptimized")
    EnableMetricsCollectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#EnableMetricsCollectionInput", name: "EnableMetricsCollectionInput")
    EnabledMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#EnabledMetric", name: "EnabledMetric")
    EnabledMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#EnabledMetrics", name: "EnabledMetrics")
    EnterStandbyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#EnterStandbyInput", name: "EnterStandbyInput")
    EnterStandbyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#EnterStandbyOutput", name: "EnterStandbyOutput")
    EstimatedInstanceWarmup = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#EstimatedInstanceWarmup", name: "EstimatedInstanceWarmup")
    ExcludedInstance = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#ExcludedInstance", name: "ExcludedInstance", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\*\\-]+$"})
    ExcludedInstanceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#ExcludedInstanceTypes", name: "ExcludedInstanceTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}})
    ExecutePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ExecutePolicyInput", name: "ExecutePolicyInput")
    ExitStandbyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ExitStandbyInput", name: "ExitStandbyInput")
    ExitStandbyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ExitStandbyOutput", name: "ExitStandbyOutput")
    FailedScheduledUpdateGroupActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#FailedScheduledUpdateGroupActionRequest", name: "FailedScheduledUpdateGroupActionRequest")
    FailedScheduledUpdateGroupActionRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#FailedScheduledUpdateGroupActionRequests", name: "FailedScheduledUpdateGroupActionRequests")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#Filter", name: "Filter")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#Filters", name: "Filters")
    ForceDelete = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#ForceDelete", name: "ForceDelete")
    GetPredictiveScalingForecastInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#GetPredictiveScalingForecastInput", name: "GetPredictiveScalingForecastInput")
    GetPredictiveScalingForecastOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#GetPredictiveScalingForecastOutput", name: "GetPredictiveScalingForecastOutput")
    GlobalTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#GlobalTimeout", name: "GlobalTimeout")
    HealthCheckGracePeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#HealthCheckGracePeriod", name: "HealthCheckGracePeriod")
    HeartbeatTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#HeartbeatTimeout", name: "HeartbeatTimeout")
    HonorCooldown = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#HonorCooldown", name: "HonorCooldown")
    IdempotentCallInProgressFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#IdempotentCallInProgressFault", name: "IdempotentCallInProgressFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IdempotentCallInProgress", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IdempotentParameterMismatchError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#IdempotentParameterMismatchError", name: "IdempotentParameterMismatchError", traits: {"aws.protocols#awsQueryError" => {"code" => "IdempotentParameterMismatch", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ImageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#ImageId", name: "ImageId", traits: {"smithy.api#length" => {"min" => 5, "max" => 21}, "smithy.api#pattern" => "^ami-[a-z0-9]{1,17}$"})
    ImpairedZoneHealthCheckBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#ImpairedZoneHealthCheckBehavior", name: "ImpairedZoneHealthCheckBehavior")
    IncludeDeletedGroups = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#IncludeDeletedGroups", name: "IncludeDeletedGroups")
    IncludeInstances = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#IncludeInstances", name: "IncludeInstances")
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#Instance", name: "Instance")
    InstanceCollection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstanceCollection", name: "InstanceCollection")
    InstanceCollections = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#InstanceCollections", name: "InstanceCollections")
    InstanceGeneration = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#InstanceGeneration", name: "InstanceGeneration")
    InstanceGenerations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#InstanceGenerations", name: "InstanceGenerations")
    InstanceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#InstanceIds", name: "InstanceIds")
    InstanceLifecyclePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstanceLifecyclePolicy", name: "InstanceLifecyclePolicy")
    InstanceMaintenancePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstanceMaintenancePolicy", name: "InstanceMaintenancePolicy")
    InstanceMetadataEndpointState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#InstanceMetadataEndpointState", name: "InstanceMetadataEndpointState")
    InstanceMetadataHttpPutResponseHopLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#InstanceMetadataHttpPutResponseHopLimit", name: "InstanceMetadataHttpPutResponseHopLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 64}})
    InstanceMetadataHttpTokensState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#InstanceMetadataHttpTokensState", name: "InstanceMetadataHttpTokensState")
    InstanceMetadataOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstanceMetadataOptions", name: "InstanceMetadataOptions")
    InstanceMonitoring = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstanceMonitoring", name: "InstanceMonitoring")
    InstanceProtected = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#InstanceProtected", name: "InstanceProtected")
    InstanceRefresh = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstanceRefresh", name: "InstanceRefresh")
    InstanceRefreshIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#InstanceRefreshIds", name: "InstanceRefreshIds")
    InstanceRefreshInProgressFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstanceRefreshInProgressFault", name: "InstanceRefreshInProgressFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InstanceRefreshInProgress", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InstanceRefreshLivePoolProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstanceRefreshLivePoolProgress", name: "InstanceRefreshLivePoolProgress")
    InstanceRefreshProgressDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstanceRefreshProgressDetails", name: "InstanceRefreshProgressDetails")
    InstanceRefreshStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#InstanceRefreshStatus", name: "InstanceRefreshStatus")
    InstanceRefreshWarmPoolProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstanceRefreshWarmPoolProgress", name: "InstanceRefreshWarmPoolProgress")
    InstanceRefreshes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#InstanceRefreshes", name: "InstanceRefreshes")
    InstanceRequirements = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstanceRequirements", name: "InstanceRequirements")
    InstanceReusePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstanceReusePolicy", name: "InstanceReusePolicy")
    Instances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#Instances", name: "Instances")
    InstancesDistribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InstancesDistribution", name: "InstancesDistribution")
    InstancesToUpdate = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#InstancesToUpdate", name: "InstancesToUpdate", traits: {"smithy.api#range" => {"min" => 0}})
    IntPercent = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#IntPercent", name: "IntPercent", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    IntPercent100To200 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#IntPercent100To200", name: "IntPercent100To200", traits: {"smithy.api#range" => {"min" => 100, "max" => 200}})
    IntPercent100To200Resettable = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#IntPercent100To200Resettable", name: "IntPercent100To200Resettable", traits: {"smithy.api#range" => {"min" => -1, "max" => 200}})
    IntPercentResettable = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#IntPercentResettable", name: "IntPercentResettable", traits: {"smithy.api#range" => {"min" => -1, "max" => 100}})
    InvalidNextToken = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#InvalidNextToken", name: "InvalidNextToken", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNextToken", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IrreversibleInstanceRefreshFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#IrreversibleInstanceRefreshFault", name: "IrreversibleInstanceRefreshFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IrreversibleInstanceRefresh", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LaunchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LaunchConfiguration", name: "LaunchConfiguration")
    LaunchConfigurationNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#LaunchConfigurationNames", name: "LaunchConfigurationNames")
    LaunchConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#LaunchConfigurations", name: "LaunchConfigurations")
    LaunchInstancesError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LaunchInstancesError", name: "LaunchInstancesError")
    LaunchInstancesErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#LaunchInstancesErrors", name: "LaunchInstancesErrors")
    LaunchInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LaunchInstancesRequest", name: "LaunchInstancesRequest")
    LaunchInstancesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LaunchInstancesResult", name: "LaunchInstancesResult")
    LaunchTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LaunchTemplate", name: "LaunchTemplate")
    LaunchTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#LaunchTemplateName", name: "LaunchTemplateName", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\(\\)\\.\\-/_]+$"})
    LaunchTemplateOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LaunchTemplateOverrides", name: "LaunchTemplateOverrides")
    LaunchTemplateSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LaunchTemplateSpecification", name: "LaunchTemplateSpecification")
    LifecycleActionResult = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#LifecycleActionResult", name: "LifecycleActionResult")
    LifecycleActionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#LifecycleActionToken", name: "LifecycleActionToken", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    LifecycleHook = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LifecycleHook", name: "LifecycleHook")
    LifecycleHookNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#LifecycleHookNames", name: "LifecycleHookNames", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    LifecycleHookSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LifecycleHookSpecification", name: "LifecycleHookSpecification")
    LifecycleHookSpecifications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#LifecycleHookSpecifications", name: "LifecycleHookSpecifications")
    LifecycleHooks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#LifecycleHooks", name: "LifecycleHooks")
    LifecycleState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#LifecycleState", name: "LifecycleState")
    LifecycleTransition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#LifecycleTransition", name: "LifecycleTransition")
    LimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LimitExceededFault", name: "LimitExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LoadBalancerNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#LoadBalancerNames", name: "LoadBalancerNames")
    LoadBalancerState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LoadBalancerState", name: "LoadBalancerState")
    LoadBalancerStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#LoadBalancerStates", name: "LoadBalancerStates")
    LoadBalancerTargetGroupState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LoadBalancerTargetGroupState", name: "LoadBalancerTargetGroupState")
    LoadBalancerTargetGroupStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#LoadBalancerTargetGroupStates", name: "LoadBalancerTargetGroupStates")
    LoadForecast = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#LoadForecast", name: "LoadForecast")
    LoadForecasts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#LoadForecasts", name: "LoadForecasts")
    LocalStorage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#LocalStorage", name: "LocalStorage")
    LocalStorageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#LocalStorageType", name: "LocalStorageType")
    LocalStorageTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#LocalStorageTypes", name: "LocalStorageTypes")
    ManagerIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#ManagerIdentifier", name: "ManagerIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    MaxGroupPreparedCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#MaxGroupPreparedCapacity", name: "MaxGroupPreparedCapacity", traits: {"smithy.api#range" => {"min" => -1}})
    MaxInstanceLifetime = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#MaxInstanceLifetime", name: "MaxInstanceLifetime")
    MaxNumberOfAutoScalingGroups = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#MaxNumberOfAutoScalingGroups", name: "MaxNumberOfAutoScalingGroups")
    MaxNumberOfLaunchConfigurations = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#MaxNumberOfLaunchConfigurations", name: "MaxNumberOfLaunchConfigurations")
    MaxRecords = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#MaxRecords", name: "MaxRecords")
    MemoryGiBPerVCpuRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#MemoryGiBPerVCpuRequest", name: "MemoryGiBPerVCpuRequest")
    MemoryMiBRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#MemoryMiBRequest", name: "MemoryMiBRequest")
    Metric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#Metric", name: "Metric")
    MetricCollectionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#MetricCollectionType", name: "MetricCollectionType")
    MetricCollectionTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#MetricCollectionTypes", name: "MetricCollectionTypes")
    MetricDataQueries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#MetricDataQueries", name: "MetricDataQueries")
    MetricDataQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#MetricDataQuery", name: "MetricDataQuery")
    MetricDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#MetricDimension", name: "MetricDimension")
    MetricDimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#MetricDimensionName", name: "MetricDimensionName")
    MetricDimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#MetricDimensionValue", name: "MetricDimensionValue")
    MetricDimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#MetricDimensions", name: "MetricDimensions")
    MetricGranularityInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#MetricGranularityInSeconds", name: "MetricGranularityInSeconds", traits: {"smithy.api#range" => {"min" => 1}})
    MetricGranularityType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#MetricGranularityType", name: "MetricGranularityType")
    MetricGranularityTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#MetricGranularityTypes", name: "MetricGranularityTypes")
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#MetricName", name: "MetricName")
    MetricNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#MetricNamespace", name: "MetricNamespace")
    MetricScale = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.autoscaling#MetricScale", name: "MetricScale")
    MetricStat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#MetricStat", name: "MetricStat")
    MetricStatistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#MetricStatistic", name: "MetricStatistic")
    MetricType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#MetricType", name: "MetricType")
    MetricUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#MetricUnit", name: "MetricUnit")
    Metrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#Metrics", name: "Metrics")
    MinAdjustmentMagnitude = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#MinAdjustmentMagnitude", name: "MinAdjustmentMagnitude")
    MinAdjustmentStep = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#MinAdjustmentStep", name: "MinAdjustmentStep", traits: {"smithy.api#deprecated" => {}})
    MixedInstanceSpotPrice = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#MixedInstanceSpotPrice", name: "MixedInstanceSpotPrice", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    MixedInstancesPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#MixedInstancesPolicy", name: "MixedInstancesPolicy")
    MonitoringEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#MonitoringEnabled", name: "MonitoringEnabled")
    NetworkBandwidthGbpsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#NetworkBandwidthGbpsRequest", name: "NetworkBandwidthGbpsRequest")
    NetworkInterfaceCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#NetworkInterfaceCountRequest", name: "NetworkInterfaceCountRequest")
    NoDevice = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#NoDevice", name: "NoDevice")
    NonZeroIntPercent = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#NonZeroIntPercent", name: "NonZeroIntPercent", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#NotificationConfiguration", name: "NotificationConfiguration")
    NotificationConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#NotificationConfigurations", name: "NotificationConfigurations")
    NotificationTargetResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#NotificationTargetResourceName", name: "NotificationTargetResourceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#NullableBoolean", name: "NullableBoolean")
    NullablePositiveDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.autoscaling#NullablePositiveDouble", name: "NullablePositiveDouble", traits: {"smithy.api#range" => {"min" => 0}})
    NullablePositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#NullablePositiveInteger", name: "NullablePositiveInteger", traits: {"smithy.api#range" => {"min" => 0}})
    NumberOfAutoScalingGroups = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#NumberOfAutoScalingGroups", name: "NumberOfAutoScalingGroups")
    NumberOfLaunchConfigurations = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#NumberOfLaunchConfigurations", name: "NumberOfLaunchConfigurations")
    OnDemandBaseCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#OnDemandBaseCapacity", name: "OnDemandBaseCapacity")
    OnDemandPercentageAboveBaseCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#OnDemandPercentageAboveBaseCapacity", name: "OnDemandPercentageAboveBaseCapacity")
    Operator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#Operator", name: "Operator")
    Overrides = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#Overrides", name: "Overrides")
    PerformanceFactorReferenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PerformanceFactorReferenceRequest", name: "PerformanceFactorReferenceRequest")
    PerformanceFactorReferenceSetRequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#PerformanceFactorReferenceSetRequest", name: "PerformanceFactorReferenceSetRequest")
    PolicyIncrement = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#PolicyIncrement", name: "PolicyIncrement")
    PolicyNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#PolicyNames", name: "PolicyNames")
    PolicyTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#PolicyTypes", name: "PolicyTypes")
    PredefinedLoadMetricType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#PredefinedLoadMetricType", name: "PredefinedLoadMetricType")
    PredefinedMetricPairType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#PredefinedMetricPairType", name: "PredefinedMetricPairType")
    PredefinedMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PredefinedMetricSpecification", name: "PredefinedMetricSpecification")
    PredefinedScalingMetricType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#PredefinedScalingMetricType", name: "PredefinedScalingMetricType")
    PredictiveScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingConfiguration", name: "PredictiveScalingConfiguration")
    PredictiveScalingCustomizedCapacityMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingCustomizedCapacityMetric", name: "PredictiveScalingCustomizedCapacityMetric")
    PredictiveScalingCustomizedLoadMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingCustomizedLoadMetric", name: "PredictiveScalingCustomizedLoadMetric")
    PredictiveScalingCustomizedScalingMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingCustomizedScalingMetric", name: "PredictiveScalingCustomizedScalingMetric")
    PredictiveScalingForecastTimestamps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingForecastTimestamps", name: "PredictiveScalingForecastTimestamps")
    PredictiveScalingForecastValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingForecastValues", name: "PredictiveScalingForecastValues")
    PredictiveScalingMaxCapacityBreachBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingMaxCapacityBreachBehavior", name: "PredictiveScalingMaxCapacityBreachBehavior")
    PredictiveScalingMaxCapacityBuffer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingMaxCapacityBuffer", name: "PredictiveScalingMaxCapacityBuffer", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    PredictiveScalingMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingMetricSpecification", name: "PredictiveScalingMetricSpecification")
    PredictiveScalingMetricSpecifications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingMetricSpecifications", name: "PredictiveScalingMetricSpecifications")
    PredictiveScalingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingMode", name: "PredictiveScalingMode")
    PredictiveScalingPredefinedLoadMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingPredefinedLoadMetric", name: "PredictiveScalingPredefinedLoadMetric")
    PredictiveScalingPredefinedMetricPair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingPredefinedMetricPair", name: "PredictiveScalingPredefinedMetricPair")
    PredictiveScalingPredefinedScalingMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingPredefinedScalingMetric", name: "PredictiveScalingPredefinedScalingMetric")
    PredictiveScalingSchedulingBufferTime = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#PredictiveScalingSchedulingBufferTime", name: "PredictiveScalingSchedulingBufferTime", traits: {"smithy.api#range" => {"min" => 0}})
    ProcessNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#ProcessNames", name: "ProcessNames")
    ProcessType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ProcessType", name: "ProcessType")
    Processes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#Processes", name: "Processes")
    Progress = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#Progress", name: "Progress")
    PropagateAtLaunch = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#PropagateAtLaunch", name: "PropagateAtLaunch")
    ProtectedFromScaleIn = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#ProtectedFromScaleIn", name: "ProtectedFromScaleIn")
    PutLifecycleHookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PutLifecycleHookInput", name: "PutLifecycleHookInput")
    PutLifecycleHookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PutLifecycleHookOutput", name: "PutLifecycleHookOutput")
    PutNotificationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PutNotificationConfigurationInput", name: "PutNotificationConfigurationInput")
    PutScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PutScalingPolicyInput", name: "PutScalingPolicyInput")
    PutScalingPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PutScalingPolicyOutput", name: "PutScalingPolicyOutput")
    PutScheduledUpdateGroupActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PutScheduledUpdateGroupActionInput", name: "PutScheduledUpdateGroupActionInput")
    PutWarmPoolInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PutWarmPoolInput", name: "PutWarmPoolInput")
    PutWarmPoolOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#PutWarmPoolOutput", name: "PutWarmPoolOutput")
    RecordLifecycleActionHeartbeatInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#RecordLifecycleActionHeartbeatInput", name: "RecordLifecycleActionHeartbeatInput")
    RecordLifecycleActionHeartbeatOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#RecordLifecycleActionHeartbeatOutput", name: "RecordLifecycleActionHeartbeatOutput")
    RefreshInstanceWarmup = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#RefreshInstanceWarmup", name: "RefreshInstanceWarmup", traits: {"smithy.api#range" => {"min" => 0}})
    RefreshPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#RefreshPreferences", name: "RefreshPreferences")
    RefreshStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#RefreshStrategy", name: "RefreshStrategy")
    RequestedCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#RequestedCapacity", name: "RequestedCapacity", traits: {"smithy.api#range" => {"min" => 1}})
    ResourceContentionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ResourceContentionFault", name: "ResourceContentionFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceContention", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ResourceInUseFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ResourceInUseFault", name: "ResourceInUseFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    ResumeProcessesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ResumeProcessesInput", name: "ResumeProcessesInput")
    RetentionAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#RetentionAction", name: "RetentionAction")
    RetentionTriggers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#RetentionTriggers", name: "RetentionTriggers")
    RetryStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#RetryStrategy", name: "RetryStrategy")
    ReturnData = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#ReturnData", name: "ReturnData")
    ReuseOnScaleIn = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#ReuseOnScaleIn", name: "ReuseOnScaleIn")
    RollbackDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#RollbackDetails", name: "RollbackDetails")
    RollbackInstanceRefreshInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#RollbackInstanceRefreshInput", name: "RollbackInstanceRefreshInput")
    RollbackInstanceRefreshOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#RollbackInstanceRefreshOutput", name: "RollbackInstanceRefreshOutput")
    ScaleInProtectedInstances = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#ScaleInProtectedInstances", name: "ScaleInProtectedInstances")
    ScalingActivityInProgressFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ScalingActivityInProgressFault", name: "ScalingActivityInProgressFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ScalingActivityInProgress", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScalingActivityStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#ScalingActivityStatusCode", name: "ScalingActivityStatusCode")
    ScalingPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#ScalingPolicies", name: "ScalingPolicies")
    ScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ScalingPolicy", name: "ScalingPolicy")
    ScalingPolicyEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#ScalingPolicyEnabled", name: "ScalingPolicyEnabled")
    ScheduledActionNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#ScheduledActionNames", name: "ScheduledActionNames")
    ScheduledUpdateGroupAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ScheduledUpdateGroupAction", name: "ScheduledUpdateGroupAction")
    ScheduledUpdateGroupActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ScheduledUpdateGroupActionRequest", name: "ScheduledUpdateGroupActionRequest")
    ScheduledUpdateGroupActionRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#ScheduledUpdateGroupActionRequests", name: "ScheduledUpdateGroupActionRequests")
    ScheduledUpdateGroupActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#ScheduledUpdateGroupActions", name: "ScheduledUpdateGroupActions")
    SecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#SecurityGroups", name: "SecurityGroups")
    ServiceLinkedRoleFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#ServiceLinkedRoleFailure", name: "ServiceLinkedRoleFailure", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceLinkedRoleFailure", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    SetDesiredCapacityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#SetDesiredCapacityInput", name: "SetDesiredCapacityInput")
    SetInstanceHealthInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#SetInstanceHealthInput", name: "SetInstanceHealthInput")
    SetInstanceProtectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#SetInstanceProtectionInput", name: "SetInstanceProtectionInput")
    SetInstanceProtectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#SetInstanceProtectionOutput", name: "SetInstanceProtectionOutput")
    ShouldDecrementDesiredCapacity = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#ShouldDecrementDesiredCapacity", name: "ShouldDecrementDesiredCapacity")
    ShouldRespectGracePeriod = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#ShouldRespectGracePeriod", name: "ShouldRespectGracePeriod")
    SkipMatching = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#SkipMatching", name: "SkipMatching")
    SkipZonalShiftValidation = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#SkipZonalShiftValidation", name: "SkipZonalShiftValidation")
    SpotInstancePools = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#SpotInstancePools", name: "SpotInstancePools")
    SpotPrice = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#SpotPrice", name: "SpotPrice", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    StandbyInstances = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#StandbyInstances", name: "StandbyInstances")
    StartInstanceRefreshInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#StartInstanceRefreshInput", name: "StartInstanceRefreshInput")
    StartInstanceRefreshOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#StartInstanceRefreshOutput", name: "StartInstanceRefreshOutput")
    StepAdjustment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#StepAdjustment", name: "StepAdjustment")
    StepAdjustments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#StepAdjustments", name: "StepAdjustments")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#String", name: "String")
    SubnetIdsLimit1 = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#SubnetIdsLimit1", name: "SubnetIdsLimit1", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    SuspendProcessesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#SuspendProcessesInput", name: "SuspendProcessesInput")
    SuspendedProcess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#SuspendedProcess", name: "SuspendedProcess")
    SuspendedProcesses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#SuspendedProcesses", name: "SuspendedProcesses")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#Tag", name: "Tag")
    TagDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#TagDescription", name: "TagDescription")
    TagDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#TagDescriptionList", name: "TagDescriptionList")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#Tags", name: "Tags")
    TargetCapacityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#TargetCapacityType", name: "TargetCapacityType")
    TargetCapacityTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#TargetCapacityTypes", name: "TargetCapacityTypes")
    TargetGroupARNs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#TargetGroupARNs", name: "TargetGroupARNs")
    TargetTrackingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#TargetTrackingConfiguration", name: "TargetTrackingConfiguration")
    TargetTrackingMetricDataQueries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#TargetTrackingMetricDataQueries", name: "TargetTrackingMetricDataQueries")
    TargetTrackingMetricDataQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#TargetTrackingMetricDataQuery", name: "TargetTrackingMetricDataQuery")
    TargetTrackingMetricStat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#TargetTrackingMetricStat", name: "TargetTrackingMetricStat")
    TerminateInstanceInAutoScalingGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#TerminateInstanceInAutoScalingGroupInput", name: "TerminateInstanceInAutoScalingGroupInput")
    TerminateInstanceInAutoScalingGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#TerminateInstanceInAutoScalingGroupOutput", name: "TerminateInstanceInAutoScalingGroupOutput")
    TerminationInstanceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#TerminationInstanceIds", name: "TerminationInstanceIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TerminationPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#TerminationPolicies", name: "TerminationPolicies")
    TimestampType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.autoscaling#TimestampType", name: "TimestampType")
    TotalLocalStorageGBRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#TotalLocalStorageGBRequest", name: "TotalLocalStorageGBRequest")
    TrafficSourceIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#TrafficSourceIdentifier", name: "TrafficSourceIdentifier")
    TrafficSourceState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#TrafficSourceState", name: "TrafficSourceState")
    TrafficSourceStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#TrafficSourceStates", name: "TrafficSourceStates")
    TrafficSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#TrafficSources", name: "TrafficSources")
    UpdateAutoScalingGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#UpdateAutoScalingGroupInput", name: "UpdateAutoScalingGroupInput")
    UpdatePlacementGroupParam = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#UpdatePlacementGroupParam", name: "UpdatePlacementGroupParam", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    VCpuCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#VCpuCountRequest", name: "VCpuCountRequest")
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.autoscaling#Values", name: "Values")
    WarmPoolConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.autoscaling#WarmPoolConfiguration", name: "WarmPoolConfiguration")
    WarmPoolMinSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#WarmPoolMinSize", name: "WarmPoolMinSize", traits: {"smithy.api#range" => {"min" => 0}})
    WarmPoolSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.autoscaling#WarmPoolSize", name: "WarmPoolSize")
    WarmPoolState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#WarmPoolState", name: "WarmPoolState")
    WarmPoolStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.autoscaling#WarmPoolStatus", name: "WarmPoolStatus")
    XmlString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlString", name: "XmlString", traits: {"smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen1023 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlStringMaxLen1023", name: "XmlStringMaxLen1023", traits: {"smithy.api#length" => {"min" => 1, "max" => 1023}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen1600 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlStringMaxLen1600", name: "XmlStringMaxLen1600", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen19 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlStringMaxLen19", name: "XmlStringMaxLen19", traits: {"smithy.api#length" => {"min" => 1, "max" => 19}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen2047 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlStringMaxLen2047", name: "XmlStringMaxLen2047", traits: {"smithy.api#length" => {"min" => 1, "max" => 2047}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlStringMaxLen255", name: "XmlStringMaxLen255", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen32 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlStringMaxLen32", name: "XmlStringMaxLen32", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen5000 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlStringMaxLen5000", name: "XmlStringMaxLen5000", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen511 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlStringMaxLen511", name: "XmlStringMaxLen511", traits: {"smithy.api#length" => {"min" => 1, "max" => 511}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlStringMaxLen64", name: "XmlStringMaxLen64", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMetricLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlStringMetricLabel", name: "XmlStringMetricLabel", traits: {"smithy.api#length" => {"min" => 0, "max" => 2047}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMetricStat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlStringMetricStat", name: "XmlStringMetricStat", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringUserData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.autoscaling#XmlStringUserData", name: "XmlStringUserData", traits: {"smithy.api#length" => {"min" => 0, "max" => 21847}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    ZonalShiftEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.autoscaling#ZonalShiftEnabled", name: "ZonalShiftEnabled")

    AcceleratorCountRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "Min"))
    AcceleratorCountRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "Max"))
    AcceleratorCountRequest.type = Types::AcceleratorCountRequest
    AcceleratorManufacturer.add_member(:nvidia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NVIDIA", traits: {"smithy.api#enumValue" => "nvidia"}))
    AcceleratorManufacturer.add_member(:amd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMD", traits: {"smithy.api#enumValue" => "amd"}))
    AcceleratorManufacturer.add_member(:amazon_web_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_WEB_SERVICES", traits: {"smithy.api#enumValue" => "amazon-web-services"}))
    AcceleratorManufacturer.add_member(:xilinx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XILINX", traits: {"smithy.api#enumValue" => "xilinx"}))
    AcceleratorManufacturers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorManufacturer, name: "member"))
    AcceleratorName.add_member(:a100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "A100", traits: {"smithy.api#enumValue" => "a100"}))
    AcceleratorName.add_member(:v100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V100", traits: {"smithy.api#enumValue" => "v100"}))
    AcceleratorName.add_member(:k80, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "K80", traits: {"smithy.api#enumValue" => "k80"}))
    AcceleratorName.add_member(:t4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T4", traits: {"smithy.api#enumValue" => "t4"}))
    AcceleratorName.add_member(:m60, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "M60", traits: {"smithy.api#enumValue" => "m60"}))
    AcceleratorName.add_member(:radeon_pro_v520, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RADEON_PRO_V520", traits: {"smithy.api#enumValue" => "radeon-pro-v520"}))
    AcceleratorName.add_member(:vu9_p, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VU9P", traits: {"smithy.api#enumValue" => "vu9p"}))
    AcceleratorNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorName, name: "member"))
    AcceleratorTotalMemoryMiBRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "Min"))
    AcceleratorTotalMemoryMiBRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "Max"))
    AcceleratorTotalMemoryMiBRequest.type = Types::AcceleratorTotalMemoryMiBRequest
    AcceleratorType.add_member(:gpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GPU", traits: {"smithy.api#enumValue" => "gpu"}))
    AcceleratorType.add_member(:fpga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FPGA", traits: {"smithy.api#enumValue" => "fpga"}))
    AcceleratorType.add_member(:inference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFERENCE", traits: {"smithy.api#enumValue" => "inference"}))
    AcceleratorTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorType, name: "member"))
    ActiveInstanceRefreshNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "message"))
    ActiveInstanceRefreshNotFoundFault.type = Types::ActiveInstanceRefreshNotFoundFault
    Activities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Activity, name: "member"))
    Activity.add_member(:activity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ActivityId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Activity.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Activity.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Description"))
    Activity.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen1023, name: "Cause", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Activity.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Activity.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndTime"))
    Activity.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingActivityStatusCode, name: "StatusCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Activity.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "StatusMessage"))
    Activity.add_member(:progress, ::Smithy::Schema::Shapes::MemberShape.new(target: Progress, name: "Progress"))
    Activity.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Details"))
    Activity.add_member(:auto_scaling_group_state, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupState, name: "AutoScalingGroupState"))
    Activity.add_member(:auto_scaling_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "AutoScalingGroupARN"))
    Activity.type = Types::Activity
    ActivityIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "member"))
    AdjustmentType.add_member(:adjustment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AdjustmentType"))
    AdjustmentType.type = Types::AdjustmentType
    AdjustmentTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdjustmentType, name: "member"))
    Alarm.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AlarmName"))
    Alarm.add_member(:alarm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "AlarmARN"))
    Alarm.type = Types::Alarm
    AlarmList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    AlarmSpecification.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmList, name: "Alarms"))
    AlarmSpecification.type = Types::AlarmSpecification
    Alarms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Alarm, name: "member"))
    AllowedInstanceTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedInstanceType, name: "member"))
    AlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "message"))
    AlreadyExistsFault.type = Types::AlreadyExistsFault
    AttachInstancesInput.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIds, name: "InstanceIds"))
    AttachInstancesInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AttachInstancesInput.type = Types::AttachInstancesInput
    AttachLoadBalancerTargetGroupsInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AttachLoadBalancerTargetGroupsInput.add_member(:target_group_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupARNs, name: "TargetGroupARNs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AttachLoadBalancerTargetGroupsInput.type = Types::AttachLoadBalancerTargetGroupsInput
    AttachLoadBalancerTargetGroupsOutput.type = Types::AttachLoadBalancerTargetGroupsOutput
    AttachLoadBalancersInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AttachLoadBalancersInput.add_member(:load_balancer_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerNames, name: "LoadBalancerNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AttachLoadBalancersInput.type = Types::AttachLoadBalancersInput
    AttachLoadBalancersOutput.type = Types::AttachLoadBalancersOutput
    AttachTrafficSourcesInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AttachTrafficSourcesInput.add_member(:traffic_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficSources, name: "TrafficSources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AttachTrafficSourcesInput.add_member(:skip_zonal_shift_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: SkipZonalShiftValidation, name: "SkipZonalShiftValidation"))
    AttachTrafficSourcesInput.type = Types::AttachTrafficSourcesInput
    AttachTrafficSourcesOutput.type = Types::AttachTrafficSourcesOutput
    AutoScalingGroup.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingGroup.add_member(:auto_scaling_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "AutoScalingGroupARN"))
    AutoScalingGroup.add_member(:launch_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "LaunchConfigurationName"))
    AutoScalingGroup.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "LaunchTemplate"))
    AutoScalingGroup.add_member(:mixed_instances_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: MixedInstancesPolicy, name: "MixedInstancesPolicy"))
    AutoScalingGroup.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupMinSize, name: "MinSize", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingGroup.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupMaxSize, name: "MaxSize", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingGroup.add_member(:desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupDesiredCapacity, name: "DesiredCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingGroup.add_member(:predicted_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupPredictedCapacity, name: "PredictedCapacity"))
    AutoScalingGroup.add_member(:default_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: Cooldown, name: "DefaultCooldown", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingGroup.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingGroup.add_member(:availability_zone_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneIds, name: "AvailabilityZoneIds"))
    AutoScalingGroup.add_member(:load_balancer_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerNames, name: "LoadBalancerNames"))
    AutoScalingGroup.add_member(:target_group_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupARNs, name: "TargetGroupARNs"))
    AutoScalingGroup.add_member(:health_check_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen32, name: "HealthCheckType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingGroup.add_member(:health_check_grace_period, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckGracePeriod, name: "HealthCheckGracePeriod"))
    AutoScalingGroup.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Instances, name: "Instances"))
    AutoScalingGroup.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreatedTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingGroup.add_member(:suspended_processes, ::Smithy::Schema::Shapes::MemberShape.new(target: SuspendedProcesses, name: "SuspendedProcesses"))
    AutoScalingGroup.add_member(:placement_group, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "PlacementGroup"))
    AutoScalingGroup.add_member(:vpc_zone_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen5000, name: "VPCZoneIdentifier"))
    AutoScalingGroup.add_member(:enabled_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledMetrics, name: "EnabledMetrics"))
    AutoScalingGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Status"))
    AutoScalingGroup.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagDescriptionList, name: "Tags"))
    AutoScalingGroup.add_member(:termination_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationPolicies, name: "TerminationPolicies"))
    AutoScalingGroup.add_member(:new_instances_protected_from_scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProtected, name: "NewInstancesProtectedFromScaleIn"))
    AutoScalingGroup.add_member(:service_linked_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ServiceLinkedRoleARN"))
    AutoScalingGroup.add_member(:max_instance_lifetime, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxInstanceLifetime, name: "MaxInstanceLifetime"))
    AutoScalingGroup.add_member(:capacity_rebalance, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityRebalanceEnabled, name: "CapacityRebalance"))
    AutoScalingGroup.add_member(:warm_pool_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmPoolConfiguration, name: "WarmPoolConfiguration"))
    AutoScalingGroup.add_member(:warm_pool_size, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmPoolSize, name: "WarmPoolSize"))
    AutoScalingGroup.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: Context, name: "Context"))
    AutoScalingGroup.add_member(:desired_capacity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "DesiredCapacityType"))
    AutoScalingGroup.add_member(:default_instance_warmup, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultInstanceWarmup, name: "DefaultInstanceWarmup"))
    AutoScalingGroup.add_member(:traffic_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficSources, name: "TrafficSources"))
    AutoScalingGroup.add_member(:instance_maintenance_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMaintenancePolicy, name: "InstanceMaintenancePolicy"))
    AutoScalingGroup.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "DeletionProtection"))
    AutoScalingGroup.add_member(:availability_zone_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneDistribution, name: "AvailabilityZoneDistribution"))
    AutoScalingGroup.add_member(:availability_zone_impairment_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneImpairmentPolicy, name: "AvailabilityZoneImpairmentPolicy"))
    AutoScalingGroup.add_member(:capacity_reservation_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationSpecification, name: "CapacityReservationSpecification"))
    AutoScalingGroup.add_member(:instance_lifecycle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceLifecyclePolicy, name: "InstanceLifecyclePolicy"))
    AutoScalingGroup.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, name: "Operator"))
    AutoScalingGroup.type = Types::AutoScalingGroup
    AutoScalingGroupNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    AutoScalingGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroup, name: "member"))
    AutoScalingInstanceDetails.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen19, name: "InstanceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingInstanceDetails.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "InstanceType"))
    AutoScalingInstanceDetails.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingInstanceDetails.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AvailabilityZone", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingInstanceDetails.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AvailabilityZoneId"))
    AutoScalingInstanceDetails.add_member(:lifecycle_state, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen32, name: "LifecycleState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingInstanceDetails.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen32, name: "HealthStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingInstanceDetails.add_member(:launch_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "LaunchConfigurationName"))
    AutoScalingInstanceDetails.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "LaunchTemplate"))
    AutoScalingInstanceDetails.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ImageId"))
    AutoScalingInstanceDetails.add_member(:protected_from_scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProtected, name: "ProtectedFromScaleIn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingInstanceDetails.add_member(:weighted_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen32, name: "WeightedCapacity"))
    AutoScalingInstanceDetails.type = Types::AutoScalingInstanceDetails
    AutoScalingInstances.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingInstanceDetails, name: "member"))
    AutoScalingNotificationTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    AvailabilityZoneDistribution.add_member(:capacity_distribution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityDistributionStrategy, name: "CapacityDistributionStrategy"))
    AvailabilityZoneDistribution.type = Types::AvailabilityZoneDistribution
    AvailabilityZoneIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    AvailabilityZoneIdsLimit1.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    AvailabilityZoneImpairmentPolicy.add_member(:zonal_shift_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftEnabled, name: "ZonalShiftEnabled"))
    AvailabilityZoneImpairmentPolicy.add_member(:impaired_zone_health_check_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ImpairedZoneHealthCheckBehavior, name: "ImpairedZoneHealthCheckBehavior"))
    AvailabilityZoneImpairmentPolicy.type = Types::AvailabilityZoneImpairmentPolicy
    AvailabilityZones.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    AvailabilityZonesLimit1.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    BareMetal.add_member(:included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUDED", traits: {"smithy.api#enumValue" => "included"}))
    BareMetal.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDED", traits: {"smithy.api#enumValue" => "excluded"}))
    BareMetal.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    BaselineEbsBandwidthMbpsRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "Min"))
    BaselineEbsBandwidthMbpsRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "Max"))
    BaselineEbsBandwidthMbpsRequest.type = Types::BaselineEbsBandwidthMbpsRequest
    BaselinePerformanceFactorsRequest.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuPerformanceFactorRequest, name: "Cpu"))
    BaselinePerformanceFactorsRequest.type = Types::BaselinePerformanceFactorsRequest
    BatchDeleteScheduledActionInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchDeleteScheduledActionInput.add_member(:scheduled_action_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionNames, name: "ScheduledActionNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchDeleteScheduledActionInput.type = Types::BatchDeleteScheduledActionInput
    BatchDeleteScheduledActionOutput.add_member(:failed_scheduled_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedScheduledUpdateGroupActionRequests, name: "FailedScheduledActions"))
    BatchDeleteScheduledActionOutput.type = Types::BatchDeleteScheduledActionOutput
    BatchPutScheduledUpdateGroupActionInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchPutScheduledUpdateGroupActionInput.add_member(:scheduled_update_group_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledUpdateGroupActionRequests, name: "ScheduledUpdateGroupActions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchPutScheduledUpdateGroupActionInput.type = Types::BatchPutScheduledUpdateGroupActionInput
    BatchPutScheduledUpdateGroupActionOutput.add_member(:failed_scheduled_update_group_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedScheduledUpdateGroupActionRequests, name: "FailedScheduledUpdateGroupActions"))
    BatchPutScheduledUpdateGroupActionOutput.type = Types::BatchPutScheduledUpdateGroupActionOutput
    BlockDeviceMapping.add_member(:virtual_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "VirtualName"))
    BlockDeviceMapping.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "DeviceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BlockDeviceMapping.add_member(:ebs, ::Smithy::Schema::Shapes::MemberShape.new(target: Ebs, name: "Ebs"))
    BlockDeviceMapping.add_member(:no_device, ::Smithy::Schema::Shapes::MemberShape.new(target: NoDevice, name: "NoDevice"))
    BlockDeviceMapping.type = Types::BlockDeviceMapping
    BlockDeviceMappings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockDeviceMapping, name: "member"))
    BurstablePerformance.add_member(:included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUDED", traits: {"smithy.api#enumValue" => "included"}))
    BurstablePerformance.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDED", traits: {"smithy.api#enumValue" => "excluded"}))
    BurstablePerformance.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    CancelInstanceRefreshInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelInstanceRefreshInput.add_member(:wait_for_transitioning_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "WaitForTransitioningInstances"))
    CancelInstanceRefreshInput.type = Types::CancelInstanceRefreshInput
    CancelInstanceRefreshOutput.add_member(:instance_refresh_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "InstanceRefreshId"))
    CancelInstanceRefreshOutput.type = Types::CancelInstanceRefreshOutput
    CapacityDistributionStrategy.add_member(:balanced_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BALANCED_ONLY", traits: {"smithy.api#enumValue" => "balanced-only"}))
    CapacityDistributionStrategy.add_member(:balanced_best_effort, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BALANCED_BEST_EFFORT", traits: {"smithy.api#enumValue" => "balanced-best-effort"}))
    CapacityDistributionStrategy.add_member(:reservations_then_balanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESERVATIONS_THEN_BALANCED", traits: {"smithy.api#enumValue" => "reservations-then-balanced"}))
    CapacityForecast.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingForecastTimestamps, name: "Timestamps", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CapacityForecast.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingForecastValues, name: "Values", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CapacityForecast.type = Types::CapacityForecast
    CapacityReservationIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AsciiStringMaxLen255, name: "member"))
    CapacityReservationPreference.add_member(:capacity_reservations_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CapacityReservationsOnly", traits: {"smithy.api#enumValue" => "capacity-reservations-only"}))
    CapacityReservationPreference.add_member(:capacity_reservations_first, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CapacityReservationsFirst", traits: {"smithy.api#enumValue" => "capacity-reservations-first"}))
    CapacityReservationPreference.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "none"}))
    CapacityReservationPreference.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Default", traits: {"smithy.api#enumValue" => "default"}))
    CapacityReservationResourceGroupArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "member"))
    CapacityReservationSpecification.add_member(:capacity_reservation_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationPreference, name: "CapacityReservationPreference"))
    CapacityReservationSpecification.add_member(:capacity_reservation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationTarget, name: "CapacityReservationTarget"))
    CapacityReservationSpecification.type = Types::CapacityReservationSpecification
    CapacityReservationTarget.add_member(:capacity_reservation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationIds, name: "CapacityReservationIds"))
    CapacityReservationTarget.add_member(:capacity_reservation_resource_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationResourceGroupArns, name: "CapacityReservationResourceGroupArns"))
    CapacityReservationTarget.type = Types::CapacityReservationTarget
    CheckpointPercentages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroIntPercent, name: "member"))
    ClassicLinkVPCSecurityGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    CompleteLifecycleActionInput.add_member(:lifecycle_hook_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AsciiStringMaxLen255, name: "LifecycleHookName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CompleteLifecycleActionInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CompleteLifecycleActionInput.add_member(:lifecycle_action_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleActionToken, name: "LifecycleActionToken"))
    CompleteLifecycleActionInput.add_member(:lifecycle_action_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleActionResult, name: "LifecycleActionResult", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CompleteLifecycleActionInput.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen19, name: "InstanceId"))
    CompleteLifecycleActionInput.type = Types::CompleteLifecycleActionInput
    CompleteLifecycleActionOutput.type = Types::CompleteLifecycleActionOutput
    CpuManufacturer.add_member(:intel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEL", traits: {"smithy.api#enumValue" => "intel"}))
    CpuManufacturer.add_member(:amd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMD", traits: {"smithy.api#enumValue" => "amd"}))
    CpuManufacturer.add_member(:amazon_web_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_WEB_SERVICES", traits: {"smithy.api#enumValue" => "amazon-web-services"}))
    CpuManufacturer.add_member(:apple, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLE", traits: {"smithy.api#enumValue" => "apple"}))
    CpuManufacturers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuManufacturer, name: "member"))
    CpuPerformanceFactorRequest.add_member(:references, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceFactorReferenceSetRequest, name: "References", traits: {"smithy.api#xmlName" => "Reference"}))
    CpuPerformanceFactorRequest.type = Types::CpuPerformanceFactorRequest
    CreateAutoScalingGroupInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAutoScalingGroupInput.add_member(:launch_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "LaunchConfigurationName"))
    CreateAutoScalingGroupInput.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "LaunchTemplate"))
    CreateAutoScalingGroupInput.add_member(:mixed_instances_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: MixedInstancesPolicy, name: "MixedInstancesPolicy"))
    CreateAutoScalingGroupInput.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen19, name: "InstanceId"))
    CreateAutoScalingGroupInput.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupMinSize, name: "MinSize", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAutoScalingGroupInput.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupMaxSize, name: "MaxSize", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAutoScalingGroupInput.add_member(:desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupDesiredCapacity, name: "DesiredCapacity"))
    CreateAutoScalingGroupInput.add_member(:default_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: Cooldown, name: "DefaultCooldown"))
    CreateAutoScalingGroupInput.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    CreateAutoScalingGroupInput.add_member(:availability_zone_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneIds, name: "AvailabilityZoneIds"))
    CreateAutoScalingGroupInput.add_member(:load_balancer_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerNames, name: "LoadBalancerNames"))
    CreateAutoScalingGroupInput.add_member(:target_group_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupARNs, name: "TargetGroupARNs"))
    CreateAutoScalingGroupInput.add_member(:health_check_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen32, name: "HealthCheckType"))
    CreateAutoScalingGroupInput.add_member(:health_check_grace_period, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckGracePeriod, name: "HealthCheckGracePeriod"))
    CreateAutoScalingGroupInput.add_member(:placement_group, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "PlacementGroup"))
    CreateAutoScalingGroupInput.add_member(:vpc_zone_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen5000, name: "VPCZoneIdentifier"))
    CreateAutoScalingGroupInput.add_member(:termination_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationPolicies, name: "TerminationPolicies"))
    CreateAutoScalingGroupInput.add_member(:new_instances_protected_from_scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProtected, name: "NewInstancesProtectedFromScaleIn"))
    CreateAutoScalingGroupInput.add_member(:capacity_rebalance, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityRebalanceEnabled, name: "CapacityRebalance"))
    CreateAutoScalingGroupInput.add_member(:lifecycle_hook_specification_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleHookSpecifications, name: "LifecycleHookSpecificationList"))
    CreateAutoScalingGroupInput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "DeletionProtection"))
    CreateAutoScalingGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateAutoScalingGroupInput.add_member(:service_linked_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ServiceLinkedRoleARN"))
    CreateAutoScalingGroupInput.add_member(:max_instance_lifetime, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxInstanceLifetime, name: "MaxInstanceLifetime"))
    CreateAutoScalingGroupInput.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: Context, name: "Context"))
    CreateAutoScalingGroupInput.add_member(:desired_capacity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "DesiredCapacityType"))
    CreateAutoScalingGroupInput.add_member(:default_instance_warmup, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultInstanceWarmup, name: "DefaultInstanceWarmup"))
    CreateAutoScalingGroupInput.add_member(:traffic_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficSources, name: "TrafficSources"))
    CreateAutoScalingGroupInput.add_member(:instance_maintenance_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMaintenancePolicy, name: "InstanceMaintenancePolicy"))
    CreateAutoScalingGroupInput.add_member(:availability_zone_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneDistribution, name: "AvailabilityZoneDistribution"))
    CreateAutoScalingGroupInput.add_member(:availability_zone_impairment_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneImpairmentPolicy, name: "AvailabilityZoneImpairmentPolicy"))
    CreateAutoScalingGroupInput.add_member(:skip_zonal_shift_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: SkipZonalShiftValidation, name: "SkipZonalShiftValidation"))
    CreateAutoScalingGroupInput.add_member(:capacity_reservation_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationSpecification, name: "CapacityReservationSpecification"))
    CreateAutoScalingGroupInput.add_member(:instance_lifecycle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceLifecyclePolicy, name: "InstanceLifecyclePolicy"))
    CreateAutoScalingGroupInput.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, name: "Operator"))
    CreateAutoScalingGroupInput.type = Types::CreateAutoScalingGroupInput
    CreateLaunchConfigurationInput.add_member(:launch_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "LaunchConfigurationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateLaunchConfigurationInput.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ImageId"))
    CreateLaunchConfigurationInput.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "KeyName"))
    CreateLaunchConfigurationInput.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups"))
    CreateLaunchConfigurationInput.add_member(:classic_link_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ClassicLinkVPCId"))
    CreateLaunchConfigurationInput.add_member(:classic_link_vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ClassicLinkVPCSecurityGroups, name: "ClassicLinkVPCSecurityGroups"))
    CreateLaunchConfigurationInput.add_member(:user_data, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringUserData, name: "UserData"))
    CreateLaunchConfigurationInput.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen19, name: "InstanceId"))
    CreateLaunchConfigurationInput.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "InstanceType"))
    CreateLaunchConfigurationInput.add_member(:kernel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "KernelId"))
    CreateLaunchConfigurationInput.add_member(:ramdisk_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "RamdiskId"))
    CreateLaunchConfigurationInput.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockDeviceMappings, name: "BlockDeviceMappings"))
    CreateLaunchConfigurationInput.add_member(:instance_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMonitoring, name: "InstanceMonitoring"))
    CreateLaunchConfigurationInput.add_member(:spot_price, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotPrice, name: "SpotPrice"))
    CreateLaunchConfigurationInput.add_member(:iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen1600, name: "IamInstanceProfile"))
    CreateLaunchConfigurationInput.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsOptimized, name: "EbsOptimized"))
    CreateLaunchConfigurationInput.add_member(:associate_public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatePublicIpAddress, name: "AssociatePublicIpAddress"))
    CreateLaunchConfigurationInput.add_member(:placement_tenancy, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen64, name: "PlacementTenancy"))
    CreateLaunchConfigurationInput.add_member(:metadata_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataOptions, name: "MetadataOptions"))
    CreateLaunchConfigurationInput.type = Types::CreateLaunchConfigurationInput
    CreateOrUpdateTagsInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOrUpdateTagsInput.type = Types::CreateOrUpdateTagsInput
    CustomizedMetricSpecification.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    CustomizedMetricSpecification.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNamespace, name: "Namespace"))
    CustomizedMetricSpecification.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensions, name: "Dimensions"))
    CustomizedMetricSpecification.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatistic, name: "Statistic"))
    CustomizedMetricSpecification.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, name: "Unit"))
    CustomizedMetricSpecification.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGranularityInSeconds, name: "Period"))
    CustomizedMetricSpecification.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricDataQueries, name: "Metrics"))
    CustomizedMetricSpecification.type = Types::CustomizedMetricSpecification
    DeleteAutoScalingGroupInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteAutoScalingGroupInput.add_member(:force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceDelete, name: "ForceDelete"))
    DeleteAutoScalingGroupInput.type = Types::DeleteAutoScalingGroupInput
    DeleteLaunchConfigurationInput.add_member(:launch_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "LaunchConfigurationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteLaunchConfigurationInput.type = Types::DeleteLaunchConfigurationInput
    DeleteLifecycleHookInput.add_member(:lifecycle_hook_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AsciiStringMaxLen255, name: "LifecycleHookName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteLifecycleHookInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteLifecycleHookInput.type = Types::DeleteLifecycleHookInput
    DeleteLifecycleHookOutput.type = Types::DeleteLifecycleHookOutput
    DeleteNotificationConfigurationInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteNotificationConfigurationInput.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "TopicARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteNotificationConfigurationInput.type = Types::DeleteNotificationConfigurationInput
    DeletePolicyInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName"))
    DeletePolicyInput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "PolicyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeletePolicyInput.type = Types::DeletePolicyInput
    DeleteScheduledActionInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteScheduledActionInput.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ScheduledActionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteScheduledActionInput.type = Types::DeleteScheduledActionInput
    DeleteTagsInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteTagsInput.type = Types::DeleteTagsInput
    DeleteWarmPoolInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteWarmPoolInput.add_member(:force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ForceDelete, name: "ForceDelete"))
    DeleteWarmPoolInput.type = Types::DeleteWarmPoolInput
    DeleteWarmPoolOutput.type = Types::DeleteWarmPoolOutput
    DeletionProtection.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "none"}))
    DeletionProtection.add_member(:prevent_force_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PreventForceDeletion", traits: {"smithy.api#enumValue" => "prevent-force-deletion"}))
    DeletionProtection.add_member(:prevent_all_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PreventAllDeletion", traits: {"smithy.api#enumValue" => "prevent-all-deletion"}))
    DescribeAccountLimitsOutput.add_member(:max_number_of_auto_scaling_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxNumberOfAutoScalingGroups, name: "MaxNumberOfAutoScalingGroups"))
    DescribeAccountLimitsOutput.add_member(:max_number_of_launch_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxNumberOfLaunchConfigurations, name: "MaxNumberOfLaunchConfigurations"))
    DescribeAccountLimitsOutput.add_member(:number_of_auto_scaling_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfAutoScalingGroups, name: "NumberOfAutoScalingGroups"))
    DescribeAccountLimitsOutput.add_member(:number_of_launch_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfLaunchConfigurations, name: "NumberOfLaunchConfigurations"))
    DescribeAccountLimitsOutput.type = Types::DescribeAccountLimitsOutput
    DescribeAdjustmentTypesOutput.add_member(:adjustment_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AdjustmentTypes, name: "AdjustmentTypes"))
    DescribeAdjustmentTypesOutput.type = Types::DescribeAdjustmentTypesOutput
    DescribeAutoScalingGroupsInput.add_member(:auto_scaling_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupNames, name: "AutoScalingGroupNames"))
    DescribeAutoScalingGroupsInput.add_member(:include_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeInstances, name: "IncludeInstances"))
    DescribeAutoScalingGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeAutoScalingGroupsInput.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeAutoScalingGroupsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    DescribeAutoScalingGroupsInput.type = Types::DescribeAutoScalingGroupsInput
    DescribeAutoScalingGroupsOutput.add_member(:auto_scaling_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroups, name: "AutoScalingGroups", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeAutoScalingGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeAutoScalingGroupsOutput.type = Types::DescribeAutoScalingGroupsOutput
    DescribeAutoScalingInstancesInput.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIds, name: "InstanceIds"))
    DescribeAutoScalingInstancesInput.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeAutoScalingInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeAutoScalingInstancesInput.type = Types::DescribeAutoScalingInstancesInput
    DescribeAutoScalingInstancesOutput.add_member(:auto_scaling_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingInstances, name: "AutoScalingInstances"))
    DescribeAutoScalingInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeAutoScalingInstancesOutput.type = Types::DescribeAutoScalingInstancesOutput
    DescribeAutoScalingNotificationTypesOutput.add_member(:auto_scaling_notification_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingNotificationTypes, name: "AutoScalingNotificationTypes"))
    DescribeAutoScalingNotificationTypesOutput.type = Types::DescribeAutoScalingNotificationTypesOutput
    DescribeInstanceRefreshesInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeInstanceRefreshesInput.add_member(:instance_refresh_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRefreshIds, name: "InstanceRefreshIds"))
    DescribeInstanceRefreshesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeInstanceRefreshesInput.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeInstanceRefreshesInput.type = Types::DescribeInstanceRefreshesInput
    DescribeInstanceRefreshesOutput.add_member(:instance_refreshes, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRefreshes, name: "InstanceRefreshes"))
    DescribeInstanceRefreshesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeInstanceRefreshesOutput.type = Types::DescribeInstanceRefreshesOutput
    DescribeLaunchConfigurationsInput.add_member(:launch_configuration_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationNames, name: "LaunchConfigurationNames"))
    DescribeLaunchConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeLaunchConfigurationsInput.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeLaunchConfigurationsInput.type = Types::DescribeLaunchConfigurationsInput
    DescribeLaunchConfigurationsOutput.add_member(:launch_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurations, name: "LaunchConfigurations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeLaunchConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeLaunchConfigurationsOutput.type = Types::DescribeLaunchConfigurationsOutput
    DescribeLifecycleHookTypesOutput.add_member(:lifecycle_hook_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingNotificationTypes, name: "LifecycleHookTypes"))
    DescribeLifecycleHookTypesOutput.type = Types::DescribeLifecycleHookTypesOutput
    DescribeLifecycleHooksInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeLifecycleHooksInput.add_member(:lifecycle_hook_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleHookNames, name: "LifecycleHookNames"))
    DescribeLifecycleHooksInput.type = Types::DescribeLifecycleHooksInput
    DescribeLifecycleHooksOutput.add_member(:lifecycle_hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleHooks, name: "LifecycleHooks"))
    DescribeLifecycleHooksOutput.type = Types::DescribeLifecycleHooksOutput
    DescribeLoadBalancerTargetGroupsRequest.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeLoadBalancerTargetGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeLoadBalancerTargetGroupsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeLoadBalancerTargetGroupsRequest.type = Types::DescribeLoadBalancerTargetGroupsRequest
    DescribeLoadBalancerTargetGroupsResponse.add_member(:load_balancer_target_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTargetGroupStates, name: "LoadBalancerTargetGroups"))
    DescribeLoadBalancerTargetGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeLoadBalancerTargetGroupsResponse.type = Types::DescribeLoadBalancerTargetGroupsResponse
    DescribeLoadBalancersRequest.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeLoadBalancersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeLoadBalancersRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeLoadBalancersRequest.type = Types::DescribeLoadBalancersRequest
    DescribeLoadBalancersResponse.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerStates, name: "LoadBalancers"))
    DescribeLoadBalancersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeLoadBalancersResponse.type = Types::DescribeLoadBalancersResponse
    DescribeMetricCollectionTypesOutput.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricCollectionTypes, name: "Metrics"))
    DescribeMetricCollectionTypesOutput.add_member(:granularities, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGranularityTypes, name: "Granularities"))
    DescribeMetricCollectionTypesOutput.type = Types::DescribeMetricCollectionTypesOutput
    DescribeNotificationConfigurationsInput.add_member(:auto_scaling_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupNames, name: "AutoScalingGroupNames"))
    DescribeNotificationConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeNotificationConfigurationsInput.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeNotificationConfigurationsInput.type = Types::DescribeNotificationConfigurationsInput
    DescribeNotificationConfigurationsOutput.add_member(:notification_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfigurations, name: "NotificationConfigurations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeNotificationConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeNotificationConfigurationsOutput.type = Types::DescribeNotificationConfigurationsOutput
    DescribePoliciesInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName"))
    DescribePoliciesInput.add_member(:policy_names, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyNames, name: "PolicyNames"))
    DescribePoliciesInput.add_member(:policy_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypes, name: "PolicyTypes"))
    DescribePoliciesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribePoliciesInput.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribePoliciesInput.type = Types::DescribePoliciesInput
    DescribePoliciesOutput.add_member(:scaling_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingPolicies, name: "ScalingPolicies"))
    DescribePoliciesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribePoliciesOutput.type = Types::DescribePoliciesOutput
    DescribeScalingActivitiesInput.add_member(:activity_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityIds, name: "ActivityIds"))
    DescribeScalingActivitiesInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName"))
    DescribeScalingActivitiesInput.add_member(:include_deleted_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeDeletedGroups, name: "IncludeDeletedGroups"))
    DescribeScalingActivitiesInput.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeScalingActivitiesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeScalingActivitiesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    DescribeScalingActivitiesInput.type = Types::DescribeScalingActivitiesInput
    DescribeScalingActivitiesOutput.add_member(:activities, ::Smithy::Schema::Shapes::MemberShape.new(target: Activities, name: "Activities", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeScalingActivitiesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeScalingActivitiesOutput.type = Types::DescribeScalingActivitiesOutput
    DescribeScalingProcessTypesOutput.add_member(:processes, ::Smithy::Schema::Shapes::MemberShape.new(target: Processes, name: "Processes"))
    DescribeScalingProcessTypesOutput.type = Types::DescribeScalingProcessTypesOutput
    DescribeScheduledActionsInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName"))
    DescribeScheduledActionsInput.add_member(:scheduled_action_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionNames, name: "ScheduledActionNames"))
    DescribeScheduledActionsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartTime"))
    DescribeScheduledActionsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndTime"))
    DescribeScheduledActionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeScheduledActionsInput.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeScheduledActionsInput.type = Types::DescribeScheduledActionsInput
    DescribeScheduledActionsOutput.add_member(:scheduled_update_group_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledUpdateGroupActions, name: "ScheduledUpdateGroupActions"))
    DescribeScheduledActionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeScheduledActionsOutput.type = Types::DescribeScheduledActionsOutput
    DescribeTagsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    DescribeTagsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeTagsInput.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeTagsInput.type = Types::DescribeTagsInput
    DescribeTagsOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagDescriptionList, name: "Tags"))
    DescribeTagsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeTagsOutput.type = Types::DescribeTagsOutput
    DescribeTerminationPolicyTypesOutput.add_member(:termination_policy_types, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationPolicies, name: "TerminationPolicyTypes"))
    DescribeTerminationPolicyTypesOutput.type = Types::DescribeTerminationPolicyTypesOutput
    DescribeTrafficSourcesRequest.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeTrafficSourcesRequest.add_member(:traffic_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "TrafficSourceType"))
    DescribeTrafficSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeTrafficSourcesRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeTrafficSourcesRequest.type = Types::DescribeTrafficSourcesRequest
    DescribeTrafficSourcesResponse.add_member(:traffic_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficSourceStates, name: "TrafficSources"))
    DescribeTrafficSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeTrafficSourcesResponse.type = Types::DescribeTrafficSourcesResponse
    DescribeWarmPoolInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeWarmPoolInput.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeWarmPoolInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeWarmPoolInput.type = Types::DescribeWarmPoolInput
    DescribeWarmPoolOutput.add_member(:warm_pool_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmPoolConfiguration, name: "WarmPoolConfiguration"))
    DescribeWarmPoolOutput.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Instances, name: "Instances"))
    DescribeWarmPoolOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeWarmPoolOutput.type = Types::DescribeWarmPoolOutput
    DesiredConfiguration.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "LaunchTemplate"))
    DesiredConfiguration.add_member(:mixed_instances_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: MixedInstancesPolicy, name: "MixedInstancesPolicy"))
    DesiredConfiguration.type = Types::DesiredConfiguration
    DetachInstancesInput.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIds, name: "InstanceIds"))
    DetachInstancesInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetachInstancesInput.add_member(:should_decrement_desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ShouldDecrementDesiredCapacity, name: "ShouldDecrementDesiredCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetachInstancesInput.type = Types::DetachInstancesInput
    DetachInstancesOutput.add_member(:activities, ::Smithy::Schema::Shapes::MemberShape.new(target: Activities, name: "Activities"))
    DetachInstancesOutput.type = Types::DetachInstancesOutput
    DetachLoadBalancerTargetGroupsInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetachLoadBalancerTargetGroupsInput.add_member(:target_group_ar_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupARNs, name: "TargetGroupARNs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetachLoadBalancerTargetGroupsInput.type = Types::DetachLoadBalancerTargetGroupsInput
    DetachLoadBalancerTargetGroupsOutput.type = Types::DetachLoadBalancerTargetGroupsOutput
    DetachLoadBalancersInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetachLoadBalancersInput.add_member(:load_balancer_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerNames, name: "LoadBalancerNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetachLoadBalancersInput.type = Types::DetachLoadBalancersInput
    DetachLoadBalancersOutput.type = Types::DetachLoadBalancersOutput
    DetachTrafficSourcesInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetachTrafficSourcesInput.add_member(:traffic_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficSources, name: "TrafficSources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DetachTrafficSourcesInput.type = Types::DetachTrafficSourcesInput
    DetachTrafficSourcesOutput.type = Types::DetachTrafficSourcesOutput
    DisableMetricsCollectionInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableMetricsCollectionInput.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: Metrics, name: "Metrics"))
    DisableMetricsCollectionInput.type = Types::DisableMetricsCollectionInput
    DistributionSegment.add_member(:target_capacity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetCapacityTypes, name: "TargetCapacityTypes"))
    DistributionSegment.type = Types::DistributionSegment
    DistributionSegments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionSegment, name: "member"))
    Ebs.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "SnapshotId"))
    Ebs.add_member(:volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockDeviceEbsVolumeSize, name: "VolumeSize"))
    Ebs.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockDeviceEbsVolumeType, name: "VolumeType"))
    Ebs.add_member(:delete_on_termination, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockDeviceEbsDeleteOnTermination, name: "DeleteOnTermination"))
    Ebs.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockDeviceEbsIops, name: "Iops"))
    Ebs.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockDeviceEbsEncrypted, name: "Encrypted"))
    Ebs.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockDeviceEbsThroughput, name: "Throughput"))
    Ebs.type = Types::Ebs
    EnableMetricsCollectionInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableMetricsCollectionInput.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: Metrics, name: "Metrics"))
    EnableMetricsCollectionInput.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Granularity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableMetricsCollectionInput.type = Types::EnableMetricsCollectionInput
    EnabledMetric.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Metric"))
    EnabledMetric.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Granularity"))
    EnabledMetric.type = Types::EnabledMetric
    EnabledMetrics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledMetric, name: "member"))
    EnterStandbyInput.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIds, name: "InstanceIds"))
    EnterStandbyInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnterStandbyInput.add_member(:should_decrement_desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ShouldDecrementDesiredCapacity, name: "ShouldDecrementDesiredCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnterStandbyInput.type = Types::EnterStandbyInput
    EnterStandbyOutput.add_member(:activities, ::Smithy::Schema::Shapes::MemberShape.new(target: Activities, name: "Activities"))
    EnterStandbyOutput.type = Types::EnterStandbyOutput
    ExcludedInstanceTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedInstance, name: "member"))
    ExecutePolicyInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName"))
    ExecutePolicyInput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "PolicyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExecutePolicyInput.add_member(:honor_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: HonorCooldown, name: "HonorCooldown"))
    ExecutePolicyInput.add_member(:metric_value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricScale, name: "MetricValue"))
    ExecutePolicyInput.add_member(:breach_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricScale, name: "BreachThreshold"))
    ExecutePolicyInput.type = Types::ExecutePolicyInput
    ExitStandbyInput.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIds, name: "InstanceIds"))
    ExitStandbyInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExitStandbyInput.type = Types::ExitStandbyInput
    ExitStandbyOutput.add_member(:activities, ::Smithy::Schema::Shapes::MemberShape.new(target: Activities, name: "Activities"))
    ExitStandbyOutput.type = Types::ExitStandbyOutput
    FailedScheduledUpdateGroupActionRequest.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ScheduledActionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailedScheduledUpdateGroupActionRequest.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen64, name: "ErrorCode"))
    FailedScheduledUpdateGroupActionRequest.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ErrorMessage"))
    FailedScheduledUpdateGroupActionRequest.type = Types::FailedScheduledUpdateGroupActionRequest
    FailedScheduledUpdateGroupActionRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedScheduledUpdateGroupActionRequest, name: "member"))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Name"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, name: "Values"))
    Filter.type = Types::Filter
    Filters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    GetPredictiveScalingForecastInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetPredictiveScalingForecastInput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "PolicyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetPredictiveScalingForecastInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetPredictiveScalingForecastInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetPredictiveScalingForecastInput.type = Types::GetPredictiveScalingForecastInput
    GetPredictiveScalingForecastOutput.add_member(:load_forecast, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadForecasts, name: "LoadForecast", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetPredictiveScalingForecastOutput.add_member(:capacity_forecast, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityForecast, name: "CapacityForecast", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetPredictiveScalingForecastOutput.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "UpdateTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetPredictiveScalingForecastOutput.type = Types::GetPredictiveScalingForecastOutput
    IdempotentCallInProgressFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Message"))
    IdempotentCallInProgressFault.type = Types::IdempotentCallInProgressFault
    IdempotentParameterMismatchError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Message"))
    IdempotentParameterMismatchError.type = Types::IdempotentParameterMismatchError
    ImpairedZoneHealthCheckBehavior.add_member(:replace_unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReplaceUnhealthy", traits: {"smithy.api#enumValue" => "ReplaceUnhealthy"}))
    ImpairedZoneHealthCheckBehavior.add_member(:ignore_unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IgnoreUnhealthy", traits: {"smithy.api#enumValue" => "IgnoreUnhealthy"}))
    Instance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen19, name: "InstanceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Instance.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "InstanceType"))
    Instance.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AvailabilityZone", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Instance.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AvailabilityZoneId"))
    Instance.add_member(:lifecycle_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleState, name: "LifecycleState", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Instance.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen32, name: "HealthStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Instance.add_member(:launch_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "LaunchConfigurationName"))
    Instance.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "LaunchTemplate"))
    Instance.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ImageId"))
    Instance.add_member(:protected_from_scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProtected, name: "ProtectedFromScaleIn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Instance.add_member(:weighted_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen32, name: "WeightedCapacity"))
    Instance.type = Types::Instance
    InstanceCollection.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "InstanceType"))
    InstanceCollection.add_member(:market_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen64, name: "MarketType"))
    InstanceCollection.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "SubnetId"))
    InstanceCollection.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AvailabilityZone"))
    InstanceCollection.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AvailabilityZoneId"))
    InstanceCollection.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIds, name: "InstanceIds"))
    InstanceCollection.type = Types::InstanceCollection
    InstanceCollections.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCollection, name: "member"))
    InstanceGeneration.add_member(:current, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT", traits: {"smithy.api#enumValue" => "current"}))
    InstanceGeneration.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREVIOUS", traits: {"smithy.api#enumValue" => "previous"}))
    InstanceGenerations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGeneration, name: "member"))
    InstanceIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen19, name: "member"))
    InstanceLifecyclePolicy.add_member(:retention_triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionTriggers, name: "RetentionTriggers"))
    InstanceLifecyclePolicy.type = Types::InstanceLifecyclePolicy
    InstanceMaintenancePolicy.add_member(:min_healthy_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntPercentResettable, name: "MinHealthyPercentage"))
    InstanceMaintenancePolicy.add_member(:max_healthy_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntPercent100To200Resettable, name: "MaxHealthyPercentage"))
    InstanceMaintenancePolicy.type = Types::InstanceMaintenancePolicy
    InstanceMetadataEndpointState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "disabled"}))
    InstanceMetadataEndpointState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "enabled"}))
    InstanceMetadataHttpTokensState.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Optional", traits: {"smithy.api#enumValue" => "optional"}))
    InstanceMetadataHttpTokensState.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Required", traits: {"smithy.api#enumValue" => "required"}))
    InstanceMetadataOptions.add_member(:http_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataHttpTokensState, name: "HttpTokens"))
    InstanceMetadataOptions.add_member(:http_put_response_hop_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataHttpPutResponseHopLimit, name: "HttpPutResponseHopLimit"))
    InstanceMetadataOptions.add_member(:http_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataEndpointState, name: "HttpEndpoint"))
    InstanceMetadataOptions.type = Types::InstanceMetadataOptions
    InstanceMonitoring.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringEnabled, name: "Enabled"))
    InstanceMonitoring.type = Types::InstanceMonitoring
    InstanceRefresh.add_member(:instance_refresh_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "InstanceRefreshId"))
    InstanceRefresh.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName"))
    InstanceRefresh.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRefreshStatus, name: "Status"))
    InstanceRefresh.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen1023, name: "StatusReason"))
    InstanceRefresh.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartTime"))
    InstanceRefresh.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndTime"))
    InstanceRefresh.add_member(:percentage_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: IntPercent, name: "PercentageComplete"))
    InstanceRefresh.add_member(:instances_to_update, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesToUpdate, name: "InstancesToUpdate"))
    InstanceRefresh.add_member(:progress_details, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRefreshProgressDetails, name: "ProgressDetails"))
    InstanceRefresh.add_member(:preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshPreferences, name: "Preferences"))
    InstanceRefresh.add_member(:desired_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredConfiguration, name: "DesiredConfiguration"))
    InstanceRefresh.add_member(:rollback_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RollbackDetails, name: "RollbackDetails"))
    InstanceRefresh.add_member(:strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshStrategy, name: "Strategy"))
    InstanceRefresh.type = Types::InstanceRefresh
    InstanceRefreshIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    InstanceRefreshInProgressFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "message"))
    InstanceRefreshInProgressFault.type = Types::InstanceRefreshInProgressFault
    InstanceRefreshLivePoolProgress.add_member(:percentage_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: IntPercent, name: "PercentageComplete"))
    InstanceRefreshLivePoolProgress.add_member(:instances_to_update, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesToUpdate, name: "InstancesToUpdate"))
    InstanceRefreshLivePoolProgress.type = Types::InstanceRefreshLivePoolProgress
    InstanceRefreshProgressDetails.add_member(:live_pool_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRefreshLivePoolProgress, name: "LivePoolProgress"))
    InstanceRefreshProgressDetails.add_member(:warm_pool_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRefreshWarmPoolProgress, name: "WarmPoolProgress"))
    InstanceRefreshProgressDetails.type = Types::InstanceRefreshProgressDetails
    InstanceRefreshStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    InstanceRefreshStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    InstanceRefreshStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Successful", traits: {"smithy.api#enumValue" => "Successful"}))
    InstanceRefreshStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    InstanceRefreshStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelling", traits: {"smithy.api#enumValue" => "Cancelling"}))
    InstanceRefreshStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    InstanceRefreshStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RollbackInProgress", traits: {"smithy.api#enumValue" => "RollbackInProgress"}))
    InstanceRefreshStatus.add_member(:rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RollbackFailed", traits: {"smithy.api#enumValue" => "RollbackFailed"}))
    InstanceRefreshStatus.add_member(:rollback_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RollbackSuccessful", traits: {"smithy.api#enumValue" => "RollbackSuccessful"}))
    InstanceRefreshStatus.add_member(:baking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Baking", traits: {"smithy.api#enumValue" => "Baking"}))
    InstanceRefreshWarmPoolProgress.add_member(:percentage_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: IntPercent, name: "PercentageComplete"))
    InstanceRefreshWarmPoolProgress.add_member(:instances_to_update, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesToUpdate, name: "InstancesToUpdate"))
    InstanceRefreshWarmPoolProgress.type = Types::InstanceRefreshWarmPoolProgress
    InstanceRefreshes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRefresh, name: "member"))
    InstanceRequirements.add_member(:v_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: VCpuCountRequest, name: "VCpuCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceRequirements.add_member(:memory_mi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryMiBRequest, name: "MemoryMiB", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceRequirements.add_member(:cpu_manufacturers, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuManufacturers, name: "CpuManufacturers"))
    InstanceRequirements.add_member(:memory_gi_b_per_v_cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryGiBPerVCpuRequest, name: "MemoryGiBPerVCpu"))
    InstanceRequirements.add_member(:excluded_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedInstanceTypes, name: "ExcludedInstanceTypes"))
    InstanceRequirements.add_member(:instance_generations, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGenerations, name: "InstanceGenerations"))
    InstanceRequirements.add_member(:spot_max_price_percentage_over_lowest_price, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "SpotMaxPricePercentageOverLowestPrice"))
    InstanceRequirements.add_member(:max_spot_price_as_percentage_of_optimal_on_demand_price, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "MaxSpotPriceAsPercentageOfOptimalOnDemandPrice"))
    InstanceRequirements.add_member(:on_demand_max_price_percentage_over_lowest_price, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "OnDemandMaxPricePercentageOverLowestPrice"))
    InstanceRequirements.add_member(:bare_metal, ::Smithy::Schema::Shapes::MemberShape.new(target: BareMetal, name: "BareMetal"))
    InstanceRequirements.add_member(:burstable_performance, ::Smithy::Schema::Shapes::MemberShape.new(target: BurstablePerformance, name: "BurstablePerformance"))
    InstanceRequirements.add_member(:require_hibernate_support, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "RequireHibernateSupport"))
    InstanceRequirements.add_member(:network_interface_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceCountRequest, name: "NetworkInterfaceCount"))
    InstanceRequirements.add_member(:local_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalStorage, name: "LocalStorage"))
    InstanceRequirements.add_member(:local_storage_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalStorageTypes, name: "LocalStorageTypes"))
    InstanceRequirements.add_member(:total_local_storage_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalLocalStorageGBRequest, name: "TotalLocalStorageGB"))
    InstanceRequirements.add_member(:baseline_ebs_bandwidth_mbps, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineEbsBandwidthMbpsRequest, name: "BaselineEbsBandwidthMbps"))
    InstanceRequirements.add_member(:accelerator_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorTypes, name: "AcceleratorTypes"))
    InstanceRequirements.add_member(:accelerator_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorCountRequest, name: "AcceleratorCount"))
    InstanceRequirements.add_member(:accelerator_manufacturers, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorManufacturers, name: "AcceleratorManufacturers"))
    InstanceRequirements.add_member(:accelerator_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorNames, name: "AcceleratorNames"))
    InstanceRequirements.add_member(:accelerator_total_memory_mi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorTotalMemoryMiBRequest, name: "AcceleratorTotalMemoryMiB"))
    InstanceRequirements.add_member(:network_bandwidth_gbps, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkBandwidthGbpsRequest, name: "NetworkBandwidthGbps"))
    InstanceRequirements.add_member(:allowed_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedInstanceTypes, name: "AllowedInstanceTypes"))
    InstanceRequirements.add_member(:baseline_performance_factors, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselinePerformanceFactorsRequest, name: "BaselinePerformanceFactors"))
    InstanceRequirements.type = Types::InstanceRequirements
    InstanceReusePolicy.add_member(:reuse_on_scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ReuseOnScaleIn, name: "ReuseOnScaleIn"))
    InstanceReusePolicy.type = Types::InstanceReusePolicy
    Instances.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, name: "member"))
    InstancesDistribution.add_member(:on_demand_allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "OnDemandAllocationStrategy"))
    InstancesDistribution.add_member(:on_demand_base_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandBaseCapacity, name: "OnDemandBaseCapacity"))
    InstancesDistribution.add_member(:on_demand_percentage_above_base_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandPercentageAboveBaseCapacity, name: "OnDemandPercentageAboveBaseCapacity"))
    InstancesDistribution.add_member(:spot_allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "SpotAllocationStrategy"))
    InstancesDistribution.add_member(:spot_instance_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotInstancePools, name: "SpotInstancePools"))
    InstancesDistribution.add_member(:spot_max_price, ::Smithy::Schema::Shapes::MemberShape.new(target: MixedInstanceSpotPrice, name: "SpotMaxPrice"))
    InstancesDistribution.add_member(:distribution_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionSegments, name: "DistributionSegments"))
    InstancesDistribution.type = Types::InstancesDistribution
    InvalidNextToken.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "message"))
    InvalidNextToken.type = Types::InvalidNextToken
    IrreversibleInstanceRefreshFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "message"))
    IrreversibleInstanceRefreshFault.type = Types::IrreversibleInstanceRefreshFault
    LaunchConfiguration.add_member(:launch_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "LaunchConfigurationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LaunchConfiguration.add_member(:launch_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "LaunchConfigurationARN"))
    LaunchConfiguration.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ImageId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LaunchConfiguration.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "KeyName"))
    LaunchConfiguration.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups"))
    LaunchConfiguration.add_member(:classic_link_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ClassicLinkVPCId"))
    LaunchConfiguration.add_member(:classic_link_vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ClassicLinkVPCSecurityGroups, name: "ClassicLinkVPCSecurityGroups"))
    LaunchConfiguration.add_member(:user_data, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringUserData, name: "UserData"))
    LaunchConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "InstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LaunchConfiguration.add_member(:kernel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "KernelId"))
    LaunchConfiguration.add_member(:ramdisk_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "RamdiskId"))
    LaunchConfiguration.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockDeviceMappings, name: "BlockDeviceMappings"))
    LaunchConfiguration.add_member(:instance_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMonitoring, name: "InstanceMonitoring"))
    LaunchConfiguration.add_member(:spot_price, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotPrice, name: "SpotPrice"))
    LaunchConfiguration.add_member(:iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen1600, name: "IamInstanceProfile"))
    LaunchConfiguration.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreatedTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LaunchConfiguration.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsOptimized, name: "EbsOptimized"))
    LaunchConfiguration.add_member(:associate_public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatePublicIpAddress, name: "AssociatePublicIpAddress"))
    LaunchConfiguration.add_member(:placement_tenancy, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen64, name: "PlacementTenancy"))
    LaunchConfiguration.add_member(:metadata_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataOptions, name: "MetadataOptions"))
    LaunchConfiguration.type = Types::LaunchConfiguration
    LaunchConfigurationNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    LaunchConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfiguration, name: "member"))
    LaunchInstancesError.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "InstanceType"))
    LaunchInstancesError.add_member(:market_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen64, name: "MarketType"))
    LaunchInstancesError.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "SubnetId"))
    LaunchInstancesError.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AvailabilityZone"))
    LaunchInstancesError.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AvailabilityZoneId"))
    LaunchInstancesError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen64, name: "ErrorCode"))
    LaunchInstancesError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ErrorMessage"))
    LaunchInstancesError.type = Types::LaunchInstancesError
    LaunchInstancesErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchInstancesError, name: "member"))
    LaunchInstancesRequest.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LaunchInstancesRequest.add_member(:requested_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedCapacity, name: "RequestedCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LaunchInstancesRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    LaunchInstancesRequest.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZonesLimit1, name: "AvailabilityZones"))
    LaunchInstancesRequest.add_member(:availability_zone_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneIdsLimit1, name: "AvailabilityZoneIds"))
    LaunchInstancesRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdsLimit1, name: "SubnetIds"))
    LaunchInstancesRequest.add_member(:retry_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryStrategy, name: "RetryStrategy"))
    LaunchInstancesRequest.type = Types::LaunchInstancesRequest
    LaunchInstancesResult.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName"))
    LaunchInstancesResult.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken"))
    LaunchInstancesResult.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCollections, name: "Instances"))
    LaunchInstancesResult.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchInstancesErrors, name: "Errors"))
    LaunchInstancesResult.type = Types::LaunchInstancesResult
    LaunchTemplate.add_member(:launch_template_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "LaunchTemplateSpecification"))
    LaunchTemplate.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: Overrides, name: "Overrides"))
    LaunchTemplate.type = Types::LaunchTemplate
    LaunchTemplateOverrides.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "InstanceType"))
    LaunchTemplateOverrides.add_member(:weighted_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen32, name: "WeightedCapacity"))
    LaunchTemplateOverrides.add_member(:launch_template_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "LaunchTemplateSpecification"))
    LaunchTemplateOverrides.add_member(:instance_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRequirements, name: "InstanceRequirements"))
    LaunchTemplateOverrides.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageId, name: "ImageId"))
    LaunchTemplateOverrides.type = Types::LaunchTemplateOverrides
    LaunchTemplateSpecification.add_member(:launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "LaunchTemplateId"))
    LaunchTemplateSpecification.add_member(:launch_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateName, name: "LaunchTemplateName"))
    LaunchTemplateSpecification.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Version"))
    LaunchTemplateSpecification.type = Types::LaunchTemplateSpecification
    LifecycleHook.add_member(:lifecycle_hook_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AsciiStringMaxLen255, name: "LifecycleHookName"))
    LifecycleHook.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName"))
    LifecycleHook.add_member(:lifecycle_transition, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleTransition, name: "LifecycleTransition"))
    LifecycleHook.add_member(:notification_target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTargetResourceName, name: "NotificationTargetARN"))
    LifecycleHook.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "RoleARN"))
    LifecycleHook.add_member(:notification_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyPrintableAsciiStringMaxLen4000, name: "NotificationMetadata"))
    LifecycleHook.add_member(:heartbeat_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: HeartbeatTimeout, name: "HeartbeatTimeout"))
    LifecycleHook.add_member(:global_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTimeout, name: "GlobalTimeout"))
    LifecycleHook.add_member(:default_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleActionResult, name: "DefaultResult"))
    LifecycleHook.type = Types::LifecycleHook
    LifecycleHookNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AsciiStringMaxLen255, name: "member"))
    LifecycleHookSpecification.add_member(:lifecycle_hook_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AsciiStringMaxLen255, name: "LifecycleHookName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LifecycleHookSpecification.add_member(:lifecycle_transition, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleTransition, name: "LifecycleTransition", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LifecycleHookSpecification.add_member(:notification_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyPrintableAsciiStringMaxLen4000, name: "NotificationMetadata"))
    LifecycleHookSpecification.add_member(:heartbeat_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: HeartbeatTimeout, name: "HeartbeatTimeout"))
    LifecycleHookSpecification.add_member(:default_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleActionResult, name: "DefaultResult"))
    LifecycleHookSpecification.add_member(:notification_target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTargetResourceName, name: "NotificationTargetARN"))
    LifecycleHookSpecification.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "RoleARN"))
    LifecycleHookSpecification.type = Types::LifecycleHookSpecification
    LifecycleHookSpecifications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleHookSpecification, name: "member"))
    LifecycleHooks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleHook, name: "member"))
    LifecycleState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    LifecycleState.add_member(:pending_wait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_WAIT", traits: {"smithy.api#enumValue" => "Pending:Wait"}))
    LifecycleState.add_member(:pending_proceed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_PROCEED", traits: {"smithy.api#enumValue" => "Pending:Proceed"}))
    LifecycleState.add_member(:quarantined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUARANTINED", traits: {"smithy.api#enumValue" => "Quarantined"}))
    LifecycleState.add_member(:in_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_SERVICE", traits: {"smithy.api#enumValue" => "InService"}))
    LifecycleState.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "Terminating"}))
    LifecycleState.add_member(:terminating_wait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING_WAIT", traits: {"smithy.api#enumValue" => "Terminating:Wait"}))
    LifecycleState.add_member(:terminating_proceed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING_PROCEED", traits: {"smithy.api#enumValue" => "Terminating:Proceed"}))
    LifecycleState.add_member(:terminating_retained, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING_RETAINED", traits: {"smithy.api#enumValue" => "Terminating:Retained"}))
    LifecycleState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "Terminated"}))
    LifecycleState.add_member(:detaching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETACHING", traits: {"smithy.api#enumValue" => "Detaching"}))
    LifecycleState.add_member(:detached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETACHED", traits: {"smithy.api#enumValue" => "Detached"}))
    LifecycleState.add_member(:entering_standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTERING_STANDBY", traits: {"smithy.api#enumValue" => "EnteringStandby"}))
    LifecycleState.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDBY", traits: {"smithy.api#enumValue" => "Standby"}))
    LifecycleState.add_member(:replacing_root_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACING_ROOT_VOLUME", traits: {"smithy.api#enumValue" => "ReplacingRootVolume"}))
    LifecycleState.add_member(:replacing_root_volume_wait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACING_ROOT_VOLUME_WAIT", traits: {"smithy.api#enumValue" => "ReplacingRootVolume:Wait"}))
    LifecycleState.add_member(:replacing_root_volume_proceed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACING_ROOT_VOLUME_PROCEED", traits: {"smithy.api#enumValue" => "ReplacingRootVolume:Proceed"}))
    LifecycleState.add_member(:root_volume_replaced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROOT_VOLUME_REPLACED", traits: {"smithy.api#enumValue" => "RootVolumeReplaced"}))
    LifecycleState.add_member(:warmed_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARMED_PENDING", traits: {"smithy.api#enumValue" => "Warmed:Pending"}))
    LifecycleState.add_member(:warmed_pending_wait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARMED_PENDING_WAIT", traits: {"smithy.api#enumValue" => "Warmed:Pending:Wait"}))
    LifecycleState.add_member(:warmed_pending_proceed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARMED_PENDING_PROCEED", traits: {"smithy.api#enumValue" => "Warmed:Pending:Proceed"}))
    LifecycleState.add_member(:warmed_pending_retained, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARMED_PENDING_RETAINED", traits: {"smithy.api#enumValue" => "Warmed:Pending:Retained"}))
    LifecycleState.add_member(:warmed_terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARMED_TERMINATING", traits: {"smithy.api#enumValue" => "Warmed:Terminating"}))
    LifecycleState.add_member(:warmed_terminating_wait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARMED_TERMINATING_WAIT", traits: {"smithy.api#enumValue" => "Warmed:Terminating:Wait"}))
    LifecycleState.add_member(:warmed_terminating_proceed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARMED_TERMINATING_PROCEED", traits: {"smithy.api#enumValue" => "Warmed:Terminating:Proceed"}))
    LifecycleState.add_member(:warmed_terminating_retained, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARMED_TERMINATING_RETAINED", traits: {"smithy.api#enumValue" => "Warmed:Terminating:Retained"}))
    LifecycleState.add_member(:warmed_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARMED_TERMINATED", traits: {"smithy.api#enumValue" => "Warmed:Terminated"}))
    LifecycleState.add_member(:warmed_stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARMED_STOPPED", traits: {"smithy.api#enumValue" => "Warmed:Stopped"}))
    LifecycleState.add_member(:warmed_running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARMED_RUNNING", traits: {"smithy.api#enumValue" => "Warmed:Running"}))
    LifecycleState.add_member(:warmed_hibernated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARMED_HIBERNATED", traits: {"smithy.api#enumValue" => "Warmed:Hibernated"}))
    LimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "message"))
    LimitExceededFault.type = Types::LimitExceededFault
    LoadBalancerNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    LoadBalancerState.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "LoadBalancerName"))
    LoadBalancerState.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "State"))
    LoadBalancerState.type = Types::LoadBalancerState
    LoadBalancerStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerState, name: "member"))
    LoadBalancerTargetGroupState.add_member(:load_balancer_target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen511, name: "LoadBalancerTargetGroupARN"))
    LoadBalancerTargetGroupState.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "State"))
    LoadBalancerTargetGroupState.type = Types::LoadBalancerTargetGroupState
    LoadBalancerTargetGroupStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerTargetGroupState, name: "member"))
    LoadForecast.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingForecastTimestamps, name: "Timestamps", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LoadForecast.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingForecastValues, name: "Values", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LoadForecast.add_member(:metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricSpecification, name: "MetricSpecification", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LoadForecast.type = Types::LoadForecast
    LoadForecasts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadForecast, name: "member"))
    LocalStorage.add_member(:included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUDED", traits: {"smithy.api#enumValue" => "included"}))
    LocalStorage.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDED", traits: {"smithy.api#enumValue" => "excluded"}))
    LocalStorage.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    LocalStorageType.add_member(:hdd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HDD", traits: {"smithy.api#enumValue" => "hdd"}))
    LocalStorageType.add_member(:ssd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSD", traits: {"smithy.api#enumValue" => "ssd"}))
    LocalStorageTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalStorageType, name: "member"))
    MemoryGiBPerVCpuRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveDouble, name: "Min"))
    MemoryGiBPerVCpuRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveDouble, name: "Max"))
    MemoryGiBPerVCpuRequest.type = Types::MemoryGiBPerVCpuRequest
    MemoryMiBRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "Min", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MemoryMiBRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "Max"))
    MemoryMiBRequest.type = Types::MemoryMiBRequest
    Metric.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNamespace, name: "Namespace", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Metric.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Metric.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensions, name: "Dimensions"))
    Metric.type = Types::Metric
    MetricCollectionType.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Metric"))
    MetricCollectionType.type = Types::MetricCollectionType
    MetricCollectionTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricCollectionType, name: "member"))
    MetricDataQueries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQuery, name: "member"))
    MetricDataQuery.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricDataQuery.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen1023, name: "Expression"))
    MetricDataQuery.add_member(:metric_stat, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStat, name: "MetricStat"))
    MetricDataQuery.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMetricLabel, name: "Label"))
    MetricDataQuery.add_member(:return_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnData, name: "ReturnData"))
    MetricDataQuery.type = Types::MetricDataQuery
    MetricDimension.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricDimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionValue, name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricDimension.type = Types::MetricDimension
    MetricDimensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimension, name: "member"))
    MetricGranularityType.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Granularity"))
    MetricGranularityType.type = Types::MetricGranularityType
    MetricGranularityTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGranularityType, name: "member"))
    MetricStat.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, name: "Metric", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStat.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMetricStat, name: "Stat", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MetricStat.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, name: "Unit"))
    MetricStat.type = Types::MetricStat
    MetricStatistic.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Average", traits: {"smithy.api#enumValue" => "Average"}))
    MetricStatistic.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Minimum", traits: {"smithy.api#enumValue" => "Minimum"}))
    MetricStatistic.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Maximum", traits: {"smithy.api#enumValue" => "Maximum"}))
    MetricStatistic.add_member(:sample_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SampleCount", traits: {"smithy.api#enumValue" => "SampleCount"}))
    MetricStatistic.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sum", traits: {"smithy.api#enumValue" => "Sum"}))
    MetricType.add_member(:asg_average_cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASGAverageCPUUtilization", traits: {"smithy.api#enumValue" => "ASGAverageCPUUtilization"}))
    MetricType.add_member(:asg_average_network_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASGAverageNetworkIn", traits: {"smithy.api#enumValue" => "ASGAverageNetworkIn"}))
    MetricType.add_member(:asg_average_network_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASGAverageNetworkOut", traits: {"smithy.api#enumValue" => "ASGAverageNetworkOut"}))
    MetricType.add_member(:alb_request_count_per_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALBRequestCountPerTarget", traits: {"smithy.api#enumValue" => "ALBRequestCountPerTarget"}))
    Metrics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    MixedInstancesPolicy.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplate, name: "LaunchTemplate"))
    MixedInstancesPolicy.add_member(:instances_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesDistribution, name: "InstancesDistribution"))
    MixedInstancesPolicy.type = Types::MixedInstancesPolicy
    NetworkBandwidthGbpsRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveDouble, name: "Min"))
    NetworkBandwidthGbpsRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveDouble, name: "Max"))
    NetworkBandwidthGbpsRequest.type = Types::NetworkBandwidthGbpsRequest
    NetworkInterfaceCountRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "Min"))
    NetworkInterfaceCountRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "Max"))
    NetworkInterfaceCountRequest.type = Types::NetworkInterfaceCountRequest
    NotificationConfiguration.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName"))
    NotificationConfiguration.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "TopicARN"))
    NotificationConfiguration.add_member(:notification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "NotificationType"))
    NotificationConfiguration.type = Types::NotificationConfiguration
    NotificationConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfiguration, name: "member"))
    Operator.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagerIdentifier, name: "Principal", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Operator.type = Types::Operator
    Overrides.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateOverrides, name: "member"))
    PerformanceFactorReferenceRequest.add_member(:instance_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceFamily"))
    PerformanceFactorReferenceRequest.type = Types::PerformanceFactorReferenceRequest
    PerformanceFactorReferenceSetRequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceFactorReferenceRequest, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    PolicyNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "member"))
    PolicyTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen64, name: "member"))
    PredefinedLoadMetricType.add_member(:asg_total_cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASGTotalCPUUtilization", traits: {"smithy.api#enumValue" => "ASGTotalCPUUtilization"}))
    PredefinedLoadMetricType.add_member(:asg_total_network_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASGTotalNetworkIn", traits: {"smithy.api#enumValue" => "ASGTotalNetworkIn"}))
    PredefinedLoadMetricType.add_member(:asg_total_network_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASGTotalNetworkOut", traits: {"smithy.api#enumValue" => "ASGTotalNetworkOut"}))
    PredefinedLoadMetricType.add_member(:alb_target_group_request_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALBTargetGroupRequestCount", traits: {"smithy.api#enumValue" => "ALBTargetGroupRequestCount"}))
    PredefinedMetricPairType.add_member(:asgcpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASGCPUUtilization", traits: {"smithy.api#enumValue" => "ASGCPUUtilization"}))
    PredefinedMetricPairType.add_member(:asg_network_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASGNetworkIn", traits: {"smithy.api#enumValue" => "ASGNetworkIn"}))
    PredefinedMetricPairType.add_member(:asg_network_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASGNetworkOut", traits: {"smithy.api#enumValue" => "ASGNetworkOut"}))
    PredefinedMetricPairType.add_member(:alb_request_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALBRequestCount", traits: {"smithy.api#enumValue" => "ALBRequestCount"}))
    PredefinedMetricSpecification.add_member(:predefined_metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricType, name: "PredefinedMetricType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PredefinedMetricSpecification.add_member(:resource_label, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen1023, name: "ResourceLabel"))
    PredefinedMetricSpecification.type = Types::PredefinedMetricSpecification
    PredefinedScalingMetricType.add_member(:asg_average_cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASGAverageCPUUtilization", traits: {"smithy.api#enumValue" => "ASGAverageCPUUtilization"}))
    PredefinedScalingMetricType.add_member(:asg_average_network_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASGAverageNetworkIn", traits: {"smithy.api#enumValue" => "ASGAverageNetworkIn"}))
    PredefinedScalingMetricType.add_member(:asg_average_network_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASGAverageNetworkOut", traits: {"smithy.api#enumValue" => "ASGAverageNetworkOut"}))
    PredefinedScalingMetricType.add_member(:alb_request_count_per_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALBRequestCountPerTarget", traits: {"smithy.api#enumValue" => "ALBRequestCountPerTarget"}))
    PredictiveScalingConfiguration.add_member(:metric_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricSpecifications, name: "MetricSpecifications", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PredictiveScalingConfiguration.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMode, name: "Mode"))
    PredictiveScalingConfiguration.add_member(:scheduling_buffer_time, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingSchedulingBufferTime, name: "SchedulingBufferTime"))
    PredictiveScalingConfiguration.add_member(:max_capacity_breach_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMaxCapacityBreachBehavior, name: "MaxCapacityBreachBehavior"))
    PredictiveScalingConfiguration.add_member(:max_capacity_buffer, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMaxCapacityBuffer, name: "MaxCapacityBuffer"))
    PredictiveScalingConfiguration.type = Types::PredictiveScalingConfiguration
    PredictiveScalingCustomizedCapacityMetric.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "MetricDataQueries", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PredictiveScalingCustomizedCapacityMetric.type = Types::PredictiveScalingCustomizedCapacityMetric
    PredictiveScalingCustomizedLoadMetric.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "MetricDataQueries", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PredictiveScalingCustomizedLoadMetric.type = Types::PredictiveScalingCustomizedLoadMetric
    PredictiveScalingCustomizedScalingMetric.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataQueries, name: "MetricDataQueries", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PredictiveScalingCustomizedScalingMetric.type = Types::PredictiveScalingCustomizedScalingMetric
    PredictiveScalingForecastTimestamps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "member"))
    PredictiveScalingForecastValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricScale, name: "member"))
    PredictiveScalingMaxCapacityBreachBehavior.add_member(:honor_max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HonorMaxCapacity", traits: {"smithy.api#enumValue" => "HonorMaxCapacity"}))
    PredictiveScalingMaxCapacityBreachBehavior.add_member(:increase_max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IncreaseMaxCapacity", traits: {"smithy.api#enumValue" => "IncreaseMaxCapacity"}))
    PredictiveScalingMetricSpecification.add_member(:target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricScale, name: "TargetValue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PredictiveScalingMetricSpecification.add_member(:predefined_metric_pair_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingPredefinedMetricPair, name: "PredefinedMetricPairSpecification"))
    PredictiveScalingMetricSpecification.add_member(:predefined_scaling_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingPredefinedScalingMetric, name: "PredefinedScalingMetricSpecification"))
    PredictiveScalingMetricSpecification.add_member(:predefined_load_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingPredefinedLoadMetric, name: "PredefinedLoadMetricSpecification"))
    PredictiveScalingMetricSpecification.add_member(:customized_scaling_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingCustomizedScalingMetric, name: "CustomizedScalingMetricSpecification"))
    PredictiveScalingMetricSpecification.add_member(:customized_load_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingCustomizedLoadMetric, name: "CustomizedLoadMetricSpecification"))
    PredictiveScalingMetricSpecification.add_member(:customized_capacity_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingCustomizedCapacityMetric, name: "CustomizedCapacityMetricSpecification"))
    PredictiveScalingMetricSpecification.type = Types::PredictiveScalingMetricSpecification
    PredictiveScalingMetricSpecifications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricSpecification, name: "member"))
    PredictiveScalingMode.add_member(:forecast_and_scale, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ForecastAndScale", traits: {"smithy.api#enumValue" => "ForecastAndScale"}))
    PredictiveScalingMode.add_member(:forecast_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ForecastOnly", traits: {"smithy.api#enumValue" => "ForecastOnly"}))
    PredictiveScalingPredefinedLoadMetric.add_member(:predefined_metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PredefinedLoadMetricType, name: "PredefinedMetricType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PredictiveScalingPredefinedLoadMetric.add_member(:resource_label, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen1023, name: "ResourceLabel"))
    PredictiveScalingPredefinedLoadMetric.type = Types::PredictiveScalingPredefinedLoadMetric
    PredictiveScalingPredefinedMetricPair.add_member(:predefined_metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PredefinedMetricPairType, name: "PredefinedMetricType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PredictiveScalingPredefinedMetricPair.add_member(:resource_label, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen1023, name: "ResourceLabel"))
    PredictiveScalingPredefinedMetricPair.type = Types::PredictiveScalingPredefinedMetricPair
    PredictiveScalingPredefinedScalingMetric.add_member(:predefined_metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PredefinedScalingMetricType, name: "PredefinedMetricType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PredictiveScalingPredefinedScalingMetric.add_member(:resource_label, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen1023, name: "ResourceLabel"))
    PredictiveScalingPredefinedScalingMetric.type = Types::PredictiveScalingPredefinedScalingMetric
    ProcessNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    ProcessType.add_member(:process_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ProcessName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ProcessType.type = Types::ProcessType
    Processes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessType, name: "member"))
    PutLifecycleHookInput.add_member(:lifecycle_hook_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AsciiStringMaxLen255, name: "LifecycleHookName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutLifecycleHookInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutLifecycleHookInput.add_member(:lifecycle_transition, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleTransition, name: "LifecycleTransition"))
    PutLifecycleHookInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "RoleARN"))
    PutLifecycleHookInput.add_member(:notification_target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTargetResourceName, name: "NotificationTargetARN"))
    PutLifecycleHookInput.add_member(:notification_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyPrintableAsciiStringMaxLen4000, name: "NotificationMetadata"))
    PutLifecycleHookInput.add_member(:heartbeat_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: HeartbeatTimeout, name: "HeartbeatTimeout"))
    PutLifecycleHookInput.add_member(:default_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleActionResult, name: "DefaultResult"))
    PutLifecycleHookInput.type = Types::PutLifecycleHookInput
    PutLifecycleHookOutput.type = Types::PutLifecycleHookOutput
    PutNotificationConfigurationInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutNotificationConfigurationInput.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "TopicARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutNotificationConfigurationInput.add_member(:notification_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingNotificationTypes, name: "NotificationTypes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutNotificationConfigurationInput.type = Types::PutNotificationConfigurationInput
    PutScalingPolicyInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutScalingPolicyInput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "PolicyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutScalingPolicyInput.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen64, name: "PolicyType"))
    PutScalingPolicyInput.add_member(:adjustment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AdjustmentType"))
    PutScalingPolicyInput.add_member(:min_adjustment_step, ::Smithy::Schema::Shapes::MemberShape.new(target: MinAdjustmentStep, name: "MinAdjustmentStep"))
    PutScalingPolicyInput.add_member(:min_adjustment_magnitude, ::Smithy::Schema::Shapes::MemberShape.new(target: MinAdjustmentMagnitude, name: "MinAdjustmentMagnitude"))
    PutScalingPolicyInput.add_member(:scaling_adjustment, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIncrement, name: "ScalingAdjustment"))
    PutScalingPolicyInput.add_member(:cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: Cooldown, name: "Cooldown"))
    PutScalingPolicyInput.add_member(:metric_aggregation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen32, name: "MetricAggregationType"))
    PutScalingPolicyInput.add_member(:step_adjustments, ::Smithy::Schema::Shapes::MemberShape.new(target: StepAdjustments, name: "StepAdjustments"))
    PutScalingPolicyInput.add_member(:estimated_instance_warmup, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedInstanceWarmup, name: "EstimatedInstanceWarmup"))
    PutScalingPolicyInput.add_member(:target_tracking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingConfiguration, name: "TargetTrackingConfiguration"))
    PutScalingPolicyInput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingPolicyEnabled, name: "Enabled"))
    PutScalingPolicyInput.add_member(:predictive_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingConfiguration, name: "PredictiveScalingConfiguration"))
    PutScalingPolicyInput.type = Types::PutScalingPolicyInput
    PutScalingPolicyOutput.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "PolicyARN"))
    PutScalingPolicyOutput.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: Alarms, name: "Alarms"))
    PutScalingPolicyOutput.type = Types::PutScalingPolicyOutput
    PutScheduledUpdateGroupActionInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutScheduledUpdateGroupActionInput.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ScheduledActionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutScheduledUpdateGroupActionInput.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "Time"))
    PutScheduledUpdateGroupActionInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartTime"))
    PutScheduledUpdateGroupActionInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndTime"))
    PutScheduledUpdateGroupActionInput.add_member(:recurrence, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Recurrence"))
    PutScheduledUpdateGroupActionInput.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupMinSize, name: "MinSize"))
    PutScheduledUpdateGroupActionInput.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupMaxSize, name: "MaxSize"))
    PutScheduledUpdateGroupActionInput.add_member(:desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupDesiredCapacity, name: "DesiredCapacity"))
    PutScheduledUpdateGroupActionInput.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "TimeZone"))
    PutScheduledUpdateGroupActionInput.type = Types::PutScheduledUpdateGroupActionInput
    PutWarmPoolInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutWarmPoolInput.add_member(:max_group_prepared_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxGroupPreparedCapacity, name: "MaxGroupPreparedCapacity"))
    PutWarmPoolInput.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmPoolMinSize, name: "MinSize"))
    PutWarmPoolInput.add_member(:pool_state, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmPoolState, name: "PoolState"))
    PutWarmPoolInput.add_member(:instance_reuse_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceReusePolicy, name: "InstanceReusePolicy"))
    PutWarmPoolInput.type = Types::PutWarmPoolInput
    PutWarmPoolOutput.type = Types::PutWarmPoolOutput
    RecordLifecycleActionHeartbeatInput.add_member(:lifecycle_hook_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AsciiStringMaxLen255, name: "LifecycleHookName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecordLifecycleActionHeartbeatInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecordLifecycleActionHeartbeatInput.add_member(:lifecycle_action_token, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleActionToken, name: "LifecycleActionToken"))
    RecordLifecycleActionHeartbeatInput.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen19, name: "InstanceId"))
    RecordLifecycleActionHeartbeatInput.type = Types::RecordLifecycleActionHeartbeatInput
    RecordLifecycleActionHeartbeatOutput.type = Types::RecordLifecycleActionHeartbeatOutput
    RefreshPreferences.add_member(:min_healthy_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntPercent, name: "MinHealthyPercentage"))
    RefreshPreferences.add_member(:instance_warmup, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshInstanceWarmup, name: "InstanceWarmup"))
    RefreshPreferences.add_member(:checkpoint_percentages, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckpointPercentages, name: "CheckpointPercentages"))
    RefreshPreferences.add_member(:checkpoint_delay, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckpointDelay, name: "CheckpointDelay"))
    RefreshPreferences.add_member(:skip_matching, ::Smithy::Schema::Shapes::MemberShape.new(target: SkipMatching, name: "SkipMatching"))
    RefreshPreferences.add_member(:auto_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRollback, name: "AutoRollback"))
    RefreshPreferences.add_member(:scale_in_protected_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleInProtectedInstances, name: "ScaleInProtectedInstances"))
    RefreshPreferences.add_member(:standby_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyInstances, name: "StandbyInstances"))
    RefreshPreferences.add_member(:alarm_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmSpecification, name: "AlarmSpecification"))
    RefreshPreferences.add_member(:max_healthy_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntPercent100To200, name: "MaxHealthyPercentage"))
    RefreshPreferences.add_member(:bake_time, ::Smithy::Schema::Shapes::MemberShape.new(target: BakeTime, name: "BakeTime"))
    RefreshPreferences.type = Types::RefreshPreferences
    RefreshStrategy.add_member(:rolling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Rolling", traits: {"smithy.api#enumValue" => "Rolling"}))
    RefreshStrategy.add_member(:replace_root_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReplaceRootVolume", traits: {"smithy.api#enumValue" => "ReplaceRootVolume"}))
    ResourceContentionFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "message"))
    ResourceContentionFault.type = Types::ResourceContentionFault
    ResourceInUseFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "message"))
    ResourceInUseFault.type = Types::ResourceInUseFault
    ResumeProcessesInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResumeProcessesInput.add_member(:scaling_processes, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessNames, name: "ScalingProcesses"))
    ResumeProcessesInput.type = Types::ResumeProcessesInput
    RetentionAction.add_member(:retain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Retain", traits: {"smithy.api#enumValue" => "retain"}))
    RetentionAction.add_member(:terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Terminate", traits: {"smithy.api#enumValue" => "terminate"}))
    RetentionTriggers.add_member(:terminate_hook_abandon, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionAction, name: "TerminateHookAbandon"))
    RetentionTriggers.type = Types::RetentionTriggers
    RetryStrategy.add_member(:retry_with_group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRY_WITH_GROUP_CONFIGURATION", traits: {"smithy.api#enumValue" => "retry-with-group-configuration"}))
    RetryStrategy.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    RollbackDetails.add_member(:rollback_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen1023, name: "RollbackReason"))
    RollbackDetails.add_member(:rollback_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "RollbackStartTime"))
    RollbackDetails.add_member(:percentage_complete_on_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: IntPercent, name: "PercentageCompleteOnRollback"))
    RollbackDetails.add_member(:instances_to_update_on_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesToUpdate, name: "InstancesToUpdateOnRollback"))
    RollbackDetails.add_member(:progress_details_on_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRefreshProgressDetails, name: "ProgressDetailsOnRollback"))
    RollbackDetails.type = Types::RollbackDetails
    RollbackInstanceRefreshInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RollbackInstanceRefreshInput.type = Types::RollbackInstanceRefreshInput
    RollbackInstanceRefreshOutput.add_member(:instance_refresh_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "InstanceRefreshId"))
    RollbackInstanceRefreshOutput.type = Types::RollbackInstanceRefreshOutput
    ScaleInProtectedInstances.add_member(:refresh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Refresh", traits: {"smithy.api#enumValue" => "Refresh"}))
    ScaleInProtectedInstances.add_member(:ignore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ignore", traits: {"smithy.api#enumValue" => "Ignore"}))
    ScaleInProtectedInstances.add_member(:wait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Wait", traits: {"smithy.api#enumValue" => "Wait"}))
    ScalingActivityInProgressFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "message"))
    ScalingActivityInProgressFault.type = Types::ScalingActivityInProgressFault
    ScalingActivityStatusCode.add_member(:pending_spot_bid_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingSpotBidPlacement", traits: {"smithy.api#enumValue" => "PendingSpotBidPlacement"}))
    ScalingActivityStatusCode.add_member(:waiting_for_spot_instance_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitingForSpotInstanceRequestId", traits: {"smithy.api#enumValue" => "WaitingForSpotInstanceRequestId"}))
    ScalingActivityStatusCode.add_member(:waiting_for_spot_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitingForSpotInstanceId", traits: {"smithy.api#enumValue" => "WaitingForSpotInstanceId"}))
    ScalingActivityStatusCode.add_member(:waiting_for_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitingForInstanceId", traits: {"smithy.api#enumValue" => "WaitingForInstanceId"}))
    ScalingActivityStatusCode.add_member(:pre_in_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PreInService", traits: {"smithy.api#enumValue" => "PreInService"}))
    ScalingActivityStatusCode.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    ScalingActivityStatusCode.add_member(:waiting_for_elb_connection_draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitingForELBConnectionDraining", traits: {"smithy.api#enumValue" => "WaitingForELBConnectionDraining"}))
    ScalingActivityStatusCode.add_member(:mid_lifecycle_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MidLifecycleAction", traits: {"smithy.api#enumValue" => "MidLifecycleAction"}))
    ScalingActivityStatusCode.add_member(:waiting_for_instance_warmup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitingForInstanceWarmup", traits: {"smithy.api#enumValue" => "WaitingForInstanceWarmup"}))
    ScalingActivityStatusCode.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Successful", traits: {"smithy.api#enumValue" => "Successful"}))
    ScalingActivityStatusCode.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    ScalingActivityStatusCode.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    ScalingActivityStatusCode.add_member(:waiting_for_connection_draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitingForConnectionDraining", traits: {"smithy.api#enumValue" => "WaitingForConnectionDraining"}))
    ScalingActivityStatusCode.add_member(:waiting_for_in_place_update_to_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitingForInPlaceUpdateToStart", traits: {"smithy.api#enumValue" => "WaitingForInPlaceUpdateToStart"}))
    ScalingActivityStatusCode.add_member(:waiting_for_in_place_update_to_finalize, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitingForInPlaceUpdateToFinalize", traits: {"smithy.api#enumValue" => "WaitingForInPlaceUpdateToFinalize"}))
    ScalingActivityStatusCode.add_member(:in_place_update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InPlaceUpdateInProgress", traits: {"smithy.api#enumValue" => "InPlaceUpdateInProgress"}))
    ScalingPolicies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingPolicy, name: "member"))
    ScalingPolicy.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName"))
    ScalingPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "PolicyName"))
    ScalingPolicy.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "PolicyARN"))
    ScalingPolicy.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen64, name: "PolicyType"))
    ScalingPolicy.add_member(:adjustment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AdjustmentType"))
    ScalingPolicy.add_member(:min_adjustment_step, ::Smithy::Schema::Shapes::MemberShape.new(target: MinAdjustmentStep, name: "MinAdjustmentStep"))
    ScalingPolicy.add_member(:min_adjustment_magnitude, ::Smithy::Schema::Shapes::MemberShape.new(target: MinAdjustmentMagnitude, name: "MinAdjustmentMagnitude"))
    ScalingPolicy.add_member(:scaling_adjustment, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIncrement, name: "ScalingAdjustment"))
    ScalingPolicy.add_member(:cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: Cooldown, name: "Cooldown"))
    ScalingPolicy.add_member(:step_adjustments, ::Smithy::Schema::Shapes::MemberShape.new(target: StepAdjustments, name: "StepAdjustments"))
    ScalingPolicy.add_member(:metric_aggregation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen32, name: "MetricAggregationType"))
    ScalingPolicy.add_member(:estimated_instance_warmup, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedInstanceWarmup, name: "EstimatedInstanceWarmup"))
    ScalingPolicy.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: Alarms, name: "Alarms"))
    ScalingPolicy.add_member(:target_tracking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingConfiguration, name: "TargetTrackingConfiguration"))
    ScalingPolicy.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingPolicyEnabled, name: "Enabled"))
    ScalingPolicy.add_member(:predictive_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingConfiguration, name: "PredictiveScalingConfiguration"))
    ScalingPolicy.type = Types::ScalingPolicy
    ScheduledActionNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    ScheduledUpdateGroupAction.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName"))
    ScheduledUpdateGroupAction.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ScheduledActionName"))
    ScheduledUpdateGroupAction.add_member(:scheduled_action_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ScheduledActionARN"))
    ScheduledUpdateGroupAction.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "Time"))
    ScheduledUpdateGroupAction.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartTime"))
    ScheduledUpdateGroupAction.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndTime"))
    ScheduledUpdateGroupAction.add_member(:recurrence, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Recurrence"))
    ScheduledUpdateGroupAction.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupMinSize, name: "MinSize"))
    ScheduledUpdateGroupAction.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupMaxSize, name: "MaxSize"))
    ScheduledUpdateGroupAction.add_member(:desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupDesiredCapacity, name: "DesiredCapacity"))
    ScheduledUpdateGroupAction.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "TimeZone"))
    ScheduledUpdateGroupAction.type = Types::ScheduledUpdateGroupAction
    ScheduledUpdateGroupActionRequest.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ScheduledActionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScheduledUpdateGroupActionRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartTime"))
    ScheduledUpdateGroupActionRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndTime"))
    ScheduledUpdateGroupActionRequest.add_member(:recurrence, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "Recurrence"))
    ScheduledUpdateGroupActionRequest.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupMinSize, name: "MinSize"))
    ScheduledUpdateGroupActionRequest.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupMaxSize, name: "MaxSize"))
    ScheduledUpdateGroupActionRequest.add_member(:desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupDesiredCapacity, name: "DesiredCapacity"))
    ScheduledUpdateGroupActionRequest.add_member(:time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "TimeZone"))
    ScheduledUpdateGroupActionRequest.type = Types::ScheduledUpdateGroupActionRequest
    ScheduledUpdateGroupActionRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledUpdateGroupActionRequest, name: "member"))
    ScheduledUpdateGroupActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledUpdateGroupAction, name: "member"))
    SecurityGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "member"))
    ServiceLinkedRoleFailure.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "message"))
    ServiceLinkedRoleFailure.type = Types::ServiceLinkedRoleFailure
    SetDesiredCapacityInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetDesiredCapacityInput.add_member(:desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupDesiredCapacity, name: "DesiredCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetDesiredCapacityInput.add_member(:honor_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: HonorCooldown, name: "HonorCooldown"))
    SetDesiredCapacityInput.type = Types::SetDesiredCapacityInput
    SetInstanceHealthInput.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen19, name: "InstanceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetInstanceHealthInput.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen32, name: "HealthStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetInstanceHealthInput.add_member(:should_respect_grace_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ShouldRespectGracePeriod, name: "ShouldRespectGracePeriod"))
    SetInstanceHealthInput.type = Types::SetInstanceHealthInput
    SetInstanceProtectionInput.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIds, name: "InstanceIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetInstanceProtectionInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetInstanceProtectionInput.add_member(:protected_from_scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedFromScaleIn, name: "ProtectedFromScaleIn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetInstanceProtectionInput.type = Types::SetInstanceProtectionInput
    SetInstanceProtectionOutput.type = Types::SetInstanceProtectionOutput
    StandbyInstances.add_member(:terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Terminate", traits: {"smithy.api#enumValue" => "Terminate"}))
    StandbyInstances.add_member(:ignore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ignore", traits: {"smithy.api#enumValue" => "Ignore"}))
    StandbyInstances.add_member(:wait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Wait", traits: {"smithy.api#enumValue" => "Wait"}))
    StartInstanceRefreshInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartInstanceRefreshInput.add_member(:strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshStrategy, name: "Strategy"))
    StartInstanceRefreshInput.add_member(:desired_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredConfiguration, name: "DesiredConfiguration"))
    StartInstanceRefreshInput.add_member(:preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshPreferences, name: "Preferences"))
    StartInstanceRefreshInput.type = Types::StartInstanceRefreshInput
    StartInstanceRefreshOutput.add_member(:instance_refresh_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "InstanceRefreshId"))
    StartInstanceRefreshOutput.type = Types::StartInstanceRefreshOutput
    StepAdjustment.add_member(:metric_interval_lower_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricScale, name: "MetricIntervalLowerBound"))
    StepAdjustment.add_member(:metric_interval_upper_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricScale, name: "MetricIntervalUpperBound"))
    StepAdjustment.add_member(:scaling_adjustment, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIncrement, name: "ScalingAdjustment", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepAdjustment.type = Types::StepAdjustment
    StepAdjustments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StepAdjustment, name: "member"))
    SubnetIdsLimit1.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "member"))
    SuspendProcessesInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SuspendProcessesInput.add_member(:scaling_processes, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessNames, name: "ScalingProcesses"))
    SuspendProcessesInput.type = Types::SuspendProcessesInput
    SuspendedProcess.add_member(:process_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "ProcessName"))
    SuspendedProcess.add_member(:suspension_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "SuspensionReason"))
    SuspendedProcess.type = Types::SuspendedProcess
    SuspendedProcesses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuspendedProcess, name: "member"))
    Tag.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ResourceId"))
    Tag.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ResourceType"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.add_member(:propagate_at_launch, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateAtLaunch, name: "PropagateAtLaunch"))
    Tag.type = Types::Tag
    TagDescription.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ResourceId"))
    TagDescription.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ResourceType"))
    TagDescription.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key"))
    TagDescription.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    TagDescription.add_member(:propagate_at_launch, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateAtLaunch, name: "PropagateAtLaunch"))
    TagDescription.type = Types::TagDescription
    TagDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagDescription, name: "member"))
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TargetCapacityType.add_member(:on_demand_capacity_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND_CAPACITY_RESERVATION", traits: {"smithy.api#enumValue" => "on-demand-capacity-reservation"}))
    TargetCapacityType.add_member(:capacity_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_BLOCK", traits: {"smithy.api#enumValue" => "capacity-block"}))
    TargetCapacityType.add_member(:interruptible_capacity_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERRUPTIBLE_CAPACITY_RESERVATION", traits: {"smithy.api#enumValue" => "interruptible-capacity-reservation"}))
    TargetCapacityType.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "on-demand"}))
    TargetCapacityTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetCapacityType, name: "member"))
    TargetGroupARNs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen511, name: "member"))
    TargetTrackingConfiguration.add_member(:predefined_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredefinedMetricSpecification, name: "PredefinedMetricSpecification"))
    TargetTrackingConfiguration.add_member(:customized_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomizedMetricSpecification, name: "CustomizedMetricSpecification"))
    TargetTrackingConfiguration.add_member(:target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricScale, name: "TargetValue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TargetTrackingConfiguration.add_member(:disable_scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: DisableScaleIn, name: "DisableScaleIn"))
    TargetTrackingConfiguration.type = Types::TargetTrackingConfiguration
    TargetTrackingMetricDataQueries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricDataQuery, name: "member"))
    TargetTrackingMetricDataQuery.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen64, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TargetTrackingMetricDataQuery.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen2047, name: "Expression"))
    TargetTrackingMetricDataQuery.add_member(:metric_stat, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricStat, name: "MetricStat"))
    TargetTrackingMetricDataQuery.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMetricLabel, name: "Label"))
    TargetTrackingMetricDataQuery.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGranularityInSeconds, name: "Period"))
    TargetTrackingMetricDataQuery.add_member(:return_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnData, name: "ReturnData"))
    TargetTrackingMetricDataQuery.type = Types::TargetTrackingMetricDataQuery
    TargetTrackingMetricStat.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, name: "Metric", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TargetTrackingMetricStat.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMetricStat, name: "Stat", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TargetTrackingMetricStat.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, name: "Unit"))
    TargetTrackingMetricStat.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGranularityInSeconds, name: "Period"))
    TargetTrackingMetricStat.type = Types::TargetTrackingMetricStat
    TerminateInstanceInAutoScalingGroupInput.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen19, name: "InstanceId"))
    TerminateInstanceInAutoScalingGroupInput.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationInstanceIds, name: "InstanceIds"))
    TerminateInstanceInAutoScalingGroupInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName"))
    TerminateInstanceInAutoScalingGroupInput.add_member(:should_decrement_desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ShouldDecrementDesiredCapacity, name: "ShouldDecrementDesiredCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateInstanceInAutoScalingGroupInput.type = Types::TerminateInstanceInAutoScalingGroupInput
    TerminateInstanceInAutoScalingGroupOutput.add_member(:activity, ::Smithy::Schema::Shapes::MemberShape.new(target: Activity, name: "Activity"))
    TerminateInstanceInAutoScalingGroupOutput.add_member(:activities, ::Smithy::Schema::Shapes::MemberShape.new(target: Activities, name: "Activities"))
    TerminateInstanceInAutoScalingGroupOutput.type = Types::TerminateInstanceInAutoScalingGroupOutput
    TerminationInstanceIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen19, name: "member"))
    TerminationPolicies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen1600, name: "member"))
    TotalLocalStorageGBRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveDouble, name: "Min"))
    TotalLocalStorageGBRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveDouble, name: "Max"))
    TotalLocalStorageGBRequest.type = Types::TotalLocalStorageGBRequest
    TrafficSourceIdentifier.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen511, name: "Identifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TrafficSourceIdentifier.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen511, name: "Type"))
    TrafficSourceIdentifier.type = Types::TrafficSourceIdentifier
    TrafficSourceState.add_member(:traffic_source, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen511, name: "TrafficSource", traits: {"smithy.api#deprecated" => {"message" => "TrafficSource has been replaced by Identifier"}}))
    TrafficSourceState.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "State"))
    TrafficSourceState.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen511, name: "Identifier"))
    TrafficSourceState.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen511, name: "Type"))
    TrafficSourceState.type = Types::TrafficSourceState
    TrafficSourceStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficSourceState, name: "member"))
    TrafficSources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficSourceIdentifier, name: "member"))
    UpdateAutoScalingGroupInput.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "AutoScalingGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateAutoScalingGroupInput.add_member(:launch_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "LaunchConfigurationName"))
    UpdateAutoScalingGroupInput.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "LaunchTemplate"))
    UpdateAutoScalingGroupInput.add_member(:mixed_instances_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: MixedInstancesPolicy, name: "MixedInstancesPolicy"))
    UpdateAutoScalingGroupInput.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupMinSize, name: "MinSize"))
    UpdateAutoScalingGroupInput.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupMaxSize, name: "MaxSize"))
    UpdateAutoScalingGroupInput.add_member(:desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupDesiredCapacity, name: "DesiredCapacity"))
    UpdateAutoScalingGroupInput.add_member(:default_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: Cooldown, name: "DefaultCooldown"))
    UpdateAutoScalingGroupInput.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    UpdateAutoScalingGroupInput.add_member(:availability_zone_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneIds, name: "AvailabilityZoneIds"))
    UpdateAutoScalingGroupInput.add_member(:health_check_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen32, name: "HealthCheckType"))
    UpdateAutoScalingGroupInput.add_member(:health_check_grace_period, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckGracePeriod, name: "HealthCheckGracePeriod"))
    UpdateAutoScalingGroupInput.add_member(:placement_group, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePlacementGroupParam, name: "PlacementGroup"))
    UpdateAutoScalingGroupInput.add_member(:vpc_zone_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen5000, name: "VPCZoneIdentifier"))
    UpdateAutoScalingGroupInput.add_member(:termination_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationPolicies, name: "TerminationPolicies"))
    UpdateAutoScalingGroupInput.add_member(:new_instances_protected_from_scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProtected, name: "NewInstancesProtectedFromScaleIn"))
    UpdateAutoScalingGroupInput.add_member(:service_linked_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ServiceLinkedRoleARN"))
    UpdateAutoScalingGroupInput.add_member(:max_instance_lifetime, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxInstanceLifetime, name: "MaxInstanceLifetime"))
    UpdateAutoScalingGroupInput.add_member(:capacity_rebalance, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityRebalanceEnabled, name: "CapacityRebalance"))
    UpdateAutoScalingGroupInput.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: Context, name: "Context"))
    UpdateAutoScalingGroupInput.add_member(:desired_capacity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen255, name: "DesiredCapacityType"))
    UpdateAutoScalingGroupInput.add_member(:default_instance_warmup, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultInstanceWarmup, name: "DefaultInstanceWarmup"))
    UpdateAutoScalingGroupInput.add_member(:instance_maintenance_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMaintenancePolicy, name: "InstanceMaintenancePolicy"))
    UpdateAutoScalingGroupInput.add_member(:availability_zone_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneDistribution, name: "AvailabilityZoneDistribution"))
    UpdateAutoScalingGroupInput.add_member(:availability_zone_impairment_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneImpairmentPolicy, name: "AvailabilityZoneImpairmentPolicy"))
    UpdateAutoScalingGroupInput.add_member(:skip_zonal_shift_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: SkipZonalShiftValidation, name: "SkipZonalShiftValidation"))
    UpdateAutoScalingGroupInput.add_member(:capacity_reservation_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationSpecification, name: "CapacityReservationSpecification"))
    UpdateAutoScalingGroupInput.add_member(:instance_lifecycle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceLifecyclePolicy, name: "InstanceLifecyclePolicy"))
    UpdateAutoScalingGroupInput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "DeletionProtection"))
    UpdateAutoScalingGroupInput.type = Types::UpdateAutoScalingGroupInput
    VCpuCountRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "Min", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VCpuCountRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePositiveInteger, name: "Max"))
    VCpuCountRequest.type = Types::VCpuCountRequest
    Values.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "member"))
    WarmPoolConfiguration.add_member(:max_group_prepared_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxGroupPreparedCapacity, name: "MaxGroupPreparedCapacity"))
    WarmPoolConfiguration.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmPoolMinSize, name: "MinSize"))
    WarmPoolConfiguration.add_member(:pool_state, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmPoolState, name: "PoolState"))
    WarmPoolConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmPoolStatus, name: "Status"))
    WarmPoolConfiguration.add_member(:instance_reuse_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceReusePolicy, name: "InstanceReusePolicy"))
    WarmPoolConfiguration.type = Types::WarmPoolConfiguration
    WarmPoolState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopped", traits: {"smithy.api#enumValue" => "Stopped"}))
    WarmPoolState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Running", traits: {"smithy.api#enumValue" => "Running"}))
    WarmPoolState.add_member(:hibernated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Hibernated", traits: {"smithy.api#enumValue" => "Hibernated"}))
    WarmPoolStatus.add_member(:pending_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingDelete", traits: {"smithy.api#enumValue" => "PendingDelete"}))

    AutoScaling20110101 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.autoscaling#AutoScaling_2011_01_01"
      service.name = "AutoScaling20110101"
      service.version = "2011-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Auto Scaling", "arnNamespace" => "autoscaling", "cloudFormationName" => "AutoScaling", "cloudTrailEventSource" => "autoscaling.amazonaws.com", "docId" => "autoscaling-2011-01-01", "endpointPrefix" => "autoscaling"}, "aws.auth#sigv4" => {"name" => "autoscaling"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Auto Scaling", "smithy.api#xmlNamespace" => {"uri" => "http://autoscaling.amazonaws.com/doc/2011-01-01/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://autoscaling-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://autoscaling.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://autoscaling-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://autoscaling.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://autoscaling.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAgAAAAGAAAABAAAAAcF9eELAAAABQX14QkF9eEKAAAABAAAAAsAAAAJAAAABgAAAAoF9eEIAAAABwX14QYF9eEHAAAABQAAAAwF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAOAAAABAX14QIF9eED"}}
      service.add_operation(:attach_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#AttachInstances"
        operation.name = "AttachInstances"
        operation.input = AttachInstancesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.errors << ServiceLinkedRoleFailure
        operation.traits = {}
      end)
      service.add_operation(:attach_load_balancer_target_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#AttachLoadBalancerTargetGroups"
        operation.name = "AttachLoadBalancerTargetGroups"
        operation.input = AttachLoadBalancerTargetGroupsInput
        operation.output = AttachLoadBalancerTargetGroupsOutput
        operation.errors << InstanceRefreshInProgressFault
        operation.errors << ResourceContentionFault
        operation.errors << ServiceLinkedRoleFailure
        operation.traits = {}
      end)
      service.add_operation(:attach_load_balancers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#AttachLoadBalancers"
        operation.name = "AttachLoadBalancers"
        operation.input = AttachLoadBalancersInput
        operation.output = AttachLoadBalancersOutput
        operation.errors << InstanceRefreshInProgressFault
        operation.errors << ResourceContentionFault
        operation.errors << ServiceLinkedRoleFailure
        operation.traits = {}
      end)
      service.add_operation(:attach_traffic_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#AttachTrafficSources"
        operation.name = "AttachTrafficSources"
        operation.input = AttachTrafficSourcesInput
        operation.output = AttachTrafficSourcesOutput
        operation.errors << InstanceRefreshInProgressFault
        operation.errors << ResourceContentionFault
        operation.errors << ServiceLinkedRoleFailure
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#BatchDeleteScheduledAction"
        operation.name = "BatchDeleteScheduledAction"
        operation.input = BatchDeleteScheduledActionInput
        operation.output = BatchDeleteScheduledActionOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:batch_put_scheduled_update_group_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#BatchPutScheduledUpdateGroupAction"
        operation.name = "BatchPutScheduledUpdateGroupAction"
        operation.input = BatchPutScheduledUpdateGroupActionInput
        operation.output = BatchPutScheduledUpdateGroupActionOutput
        operation.errors << AlreadyExistsFault
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:cancel_instance_refresh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#CancelInstanceRefresh"
        operation.name = "CancelInstanceRefresh"
        operation.input = CancelInstanceRefreshInput
        operation.output = CancelInstanceRefreshOutput
        operation.errors << ActiveInstanceRefreshNotFoundFault
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:complete_lifecycle_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#CompleteLifecycleAction"
        operation.name = "CompleteLifecycleAction"
        operation.input = CompleteLifecycleActionInput
        operation.output = CompleteLifecycleActionOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:create_auto_scaling_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#CreateAutoScalingGroup"
        operation.name = "CreateAutoScalingGroup"
        operation.input = CreateAutoScalingGroupInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AlreadyExistsFault
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.errors << ServiceLinkedRoleFailure
        operation.traits = {}
      end)
      service.add_operation(:create_launch_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#CreateLaunchConfiguration"
        operation.name = "CreateLaunchConfiguration"
        operation.input = CreateLaunchConfigurationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AlreadyExistsFault
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:create_or_update_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#CreateOrUpdateTags"
        operation.name = "CreateOrUpdateTags"
        operation.input = CreateOrUpdateTagsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AlreadyExistsFault
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.errors << ResourceInUseFault
        operation.traits = {}
      end)
      service.add_operation(:delete_auto_scaling_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DeleteAutoScalingGroup"
        operation.name = "DeleteAutoScalingGroup"
        operation.input = DeleteAutoScalingGroupInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.errors << ResourceInUseFault
        operation.errors << ScalingActivityInProgressFault
        operation.traits = {}
      end)
      service.add_operation(:delete_launch_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DeleteLaunchConfiguration"
        operation.name = "DeleteLaunchConfiguration"
        operation.input = DeleteLaunchConfigurationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.errors << ResourceInUseFault
        operation.traits = {}
      end)
      service.add_operation(:delete_lifecycle_hook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DeleteLifecycleHook"
        operation.name = "DeleteLifecycleHook"
        operation.input = DeleteLifecycleHookInput
        operation.output = DeleteLifecycleHookOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:delete_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DeleteNotificationConfiguration"
        operation.name = "DeleteNotificationConfiguration"
        operation.input = DeleteNotificationConfigurationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:delete_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = DeletePolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.errors << ServiceLinkedRoleFailure
        operation.traits = {}
      end)
      service.add_operation(:delete_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DeleteScheduledAction"
        operation.name = "DeleteScheduledAction"
        operation.input = DeleteScheduledActionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:delete_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = DeleteTagsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.errors << ResourceInUseFault
        operation.traits = {}
      end)
      service.add_operation(:delete_warm_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DeleteWarmPool"
        operation.name = "DeleteWarmPool"
        operation.input = DeleteWarmPoolInput
        operation.output = DeleteWarmPoolOutput
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.errors << ResourceInUseFault
        operation.errors << ScalingActivityInProgressFault
        operation.traits = {}
      end)
      service.add_operation(:describe_account_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeAccountLimits"
        operation.name = "DescribeAccountLimits"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DescribeAccountLimitsOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:describe_adjustment_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeAdjustmentTypes"
        operation.name = "DescribeAdjustmentTypes"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DescribeAdjustmentTypesOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:describe_auto_scaling_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeAutoScalingGroups"
        operation.name = "DescribeAutoScalingGroups"
        operation.input = DescribeAutoScalingGroupsInput
        operation.output = DescribeAutoScalingGroupsOutput
        operation.errors << InvalidNextToken
        operation.errors << ResourceContentionFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAutoScalingGroups.new
      end)
      service.add_operation(:describe_auto_scaling_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeAutoScalingInstances"
        operation.name = "DescribeAutoScalingInstances"
        operation.input = DescribeAutoScalingInstancesInput
        operation.output = DescribeAutoScalingInstancesOutput
        operation.errors << InvalidNextToken
        operation.errors << ResourceContentionFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAutoScalingInstances.new
      end)
      service.add_operation(:describe_auto_scaling_notification_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeAutoScalingNotificationTypes"
        operation.name = "DescribeAutoScalingNotificationTypes"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DescribeAutoScalingNotificationTypesOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:describe_instance_refreshes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeInstanceRefreshes"
        operation.name = "DescribeInstanceRefreshes"
        operation.input = DescribeInstanceRefreshesInput
        operation.output = DescribeInstanceRefreshesOutput
        operation.errors << InvalidNextToken
        operation.errors << ResourceContentionFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInstanceRefreshes.new
      end)
      service.add_operation(:describe_launch_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeLaunchConfigurations"
        operation.name = "DescribeLaunchConfigurations"
        operation.input = DescribeLaunchConfigurationsInput
        operation.output = DescribeLaunchConfigurationsOutput
        operation.errors << InvalidNextToken
        operation.errors << ResourceContentionFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeLaunchConfigurations.new
      end)
      service.add_operation(:describe_lifecycle_hook_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeLifecycleHookTypes"
        operation.name = "DescribeLifecycleHookTypes"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DescribeLifecycleHookTypesOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:describe_lifecycle_hooks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeLifecycleHooks"
        operation.name = "DescribeLifecycleHooks"
        operation.input = DescribeLifecycleHooksInput
        operation.output = DescribeLifecycleHooksOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:describe_load_balancer_target_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeLoadBalancerTargetGroups"
        operation.name = "DescribeLoadBalancerTargetGroups"
        operation.input = DescribeLoadBalancerTargetGroupsRequest
        operation.output = DescribeLoadBalancerTargetGroupsResponse
        operation.errors << InvalidNextToken
        operation.errors << ResourceContentionFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeLoadBalancerTargetGroups.new
      end)
      service.add_operation(:describe_load_balancers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeLoadBalancers"
        operation.name = "DescribeLoadBalancers"
        operation.input = DescribeLoadBalancersRequest
        operation.output = DescribeLoadBalancersResponse
        operation.errors << InvalidNextToken
        operation.errors << ResourceContentionFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeLoadBalancers.new
      end)
      service.add_operation(:describe_metric_collection_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeMetricCollectionTypes"
        operation.name = "DescribeMetricCollectionTypes"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DescribeMetricCollectionTypesOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:describe_notification_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeNotificationConfigurations"
        operation.name = "DescribeNotificationConfigurations"
        operation.input = DescribeNotificationConfigurationsInput
        operation.output = DescribeNotificationConfigurationsOutput
        operation.errors << InvalidNextToken
        operation.errors << ResourceContentionFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeNotificationConfigurations.new
      end)
      service.add_operation(:describe_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribePolicies"
        operation.name = "DescribePolicies"
        operation.input = DescribePoliciesInput
        operation.output = DescribePoliciesOutput
        operation.errors << InvalidNextToken
        operation.errors << ResourceContentionFault
        operation.errors << ServiceLinkedRoleFailure
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePolicies.new
      end)
      service.add_operation(:describe_scaling_activities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeScalingActivities"
        operation.name = "DescribeScalingActivities"
        operation.input = DescribeScalingActivitiesInput
        operation.output = DescribeScalingActivitiesOutput
        operation.errors << InvalidNextToken
        operation.errors << ResourceContentionFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeScalingActivities.new
      end)
      service.add_operation(:describe_scaling_process_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeScalingProcessTypes"
        operation.name = "DescribeScalingProcessTypes"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DescribeScalingProcessTypesOutput
        operation.errors << ResourceContentionFault
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeScalingProcessTypesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:describe_scheduled_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeScheduledActions"
        operation.name = "DescribeScheduledActions"
        operation.input = DescribeScheduledActionsInput
        operation.output = DescribeScheduledActionsOutput
        operation.errors << InvalidNextToken
        operation.errors << ResourceContentionFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeScheduledActions.new
      end)
      service.add_operation(:describe_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = DescribeTagsInput
        operation.output = DescribeTagsOutput
        operation.errors << InvalidNextToken
        operation.errors << ResourceContentionFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTags.new
      end)
      service.add_operation(:describe_termination_policy_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeTerminationPolicyTypes"
        operation.name = "DescribeTerminationPolicyTypes"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = DescribeTerminationPolicyTypesOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:describe_traffic_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeTrafficSources"
        operation.name = "DescribeTrafficSources"
        operation.input = DescribeTrafficSourcesRequest
        operation.output = DescribeTrafficSourcesResponse
        operation.errors << InvalidNextToken
        operation.errors << ResourceContentionFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTrafficSources.new
      end)
      service.add_operation(:describe_warm_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DescribeWarmPool"
        operation.name = "DescribeWarmPool"
        operation.input = DescribeWarmPoolInput
        operation.output = DescribeWarmPoolOutput
        operation.errors << InvalidNextToken
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeWarmPool.new
      end)
      service.add_operation(:detach_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DetachInstances"
        operation.name = "DetachInstances"
        operation.input = DetachInstancesInput
        operation.output = DetachInstancesOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:detach_load_balancer_target_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DetachLoadBalancerTargetGroups"
        operation.name = "DetachLoadBalancerTargetGroups"
        operation.input = DetachLoadBalancerTargetGroupsInput
        operation.output = DetachLoadBalancerTargetGroupsOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:detach_load_balancers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DetachLoadBalancers"
        operation.name = "DetachLoadBalancers"
        operation.input = DetachLoadBalancersInput
        operation.output = DetachLoadBalancersOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:detach_traffic_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DetachTrafficSources"
        operation.name = "DetachTrafficSources"
        operation.input = DetachTrafficSourcesInput
        operation.output = DetachTrafficSourcesOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:disable_metrics_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#DisableMetricsCollection"
        operation.name = "DisableMetricsCollection"
        operation.input = DisableMetricsCollectionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:enable_metrics_collection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#EnableMetricsCollection"
        operation.name = "EnableMetricsCollection"
        operation.input = EnableMetricsCollectionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:enter_standby, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#EnterStandby"
        operation.name = "EnterStandby"
        operation.input = EnterStandbyInput
        operation.output = EnterStandbyOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:execute_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#ExecutePolicy"
        operation.name = "ExecutePolicy"
        operation.input = ExecutePolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.errors << ScalingActivityInProgressFault
        operation.traits = {}
      end)
      service.add_operation(:exit_standby, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#ExitStandby"
        operation.name = "ExitStandby"
        operation.input = ExitStandbyInput
        operation.output = ExitStandbyOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:get_predictive_scaling_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#GetPredictiveScalingForecast"
        operation.name = "GetPredictiveScalingForecast"
        operation.input = GetPredictiveScalingForecastInput
        operation.output = GetPredictiveScalingForecastOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:launch_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#LaunchInstances"
        operation.name = "LaunchInstances"
        operation.input = LaunchInstancesRequest
        operation.output = LaunchInstancesResult
        operation.errors << IdempotentCallInProgressFault
        operation.errors << IdempotentParameterMismatchError
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:put_lifecycle_hook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#PutLifecycleHook"
        operation.name = "PutLifecycleHook"
        operation.input = PutLifecycleHookInput
        operation.output = PutLifecycleHookOutput
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:put_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#PutNotificationConfiguration"
        operation.name = "PutNotificationConfiguration"
        operation.input = PutNotificationConfigurationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.errors << ServiceLinkedRoleFailure
        operation.traits = {}
      end)
      service.add_operation(:put_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#PutScalingPolicy"
        operation.name = "PutScalingPolicy"
        operation.input = PutScalingPolicyInput
        operation.output = PutScalingPolicyOutput
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.errors << ServiceLinkedRoleFailure
        operation.traits = {}
      end)
      service.add_operation(:put_scheduled_update_group_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#PutScheduledUpdateGroupAction"
        operation.name = "PutScheduledUpdateGroupAction"
        operation.input = PutScheduledUpdateGroupActionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AlreadyExistsFault
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:put_warm_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#PutWarmPool"
        operation.name = "PutWarmPool"
        operation.input = PutWarmPoolInput
        operation.output = PutWarmPoolOutput
        operation.errors << InstanceRefreshInProgressFault
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:record_lifecycle_action_heartbeat, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#RecordLifecycleActionHeartbeat"
        operation.name = "RecordLifecycleActionHeartbeat"
        operation.input = RecordLifecycleActionHeartbeatInput
        operation.output = RecordLifecycleActionHeartbeatOutput
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:resume_processes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#ResumeProcesses"
        operation.name = "ResumeProcesses"
        operation.input = ResumeProcessesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.errors << ResourceInUseFault
        operation.traits = {}
      end)
      service.add_operation(:rollback_instance_refresh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#RollbackInstanceRefresh"
        operation.name = "RollbackInstanceRefresh"
        operation.input = RollbackInstanceRefreshInput
        operation.output = RollbackInstanceRefreshOutput
        operation.errors << ActiveInstanceRefreshNotFoundFault
        operation.errors << IrreversibleInstanceRefreshFault
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:set_desired_capacity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#SetDesiredCapacity"
        operation.name = "SetDesiredCapacity"
        operation.input = SetDesiredCapacityInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.errors << ScalingActivityInProgressFault
        operation.traits = {}
      end)
      service.add_operation(:set_instance_health, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#SetInstanceHealth"
        operation.name = "SetInstanceHealth"
        operation.input = SetInstanceHealthInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:set_instance_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#SetInstanceProtection"
        operation.name = "SetInstanceProtection"
        operation.input = SetInstanceProtectionInput
        operation.output = SetInstanceProtectionOutput
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:start_instance_refresh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#StartInstanceRefresh"
        operation.name = "StartInstanceRefresh"
        operation.input = StartInstanceRefreshInput
        operation.output = StartInstanceRefreshOutput
        operation.errors << InstanceRefreshInProgressFault
        operation.errors << LimitExceededFault
        operation.errors << ResourceContentionFault
        operation.traits = {}
      end)
      service.add_operation(:suspend_processes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#SuspendProcesses"
        operation.name = "SuspendProcesses"
        operation.input = SuspendProcessesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.errors << ResourceInUseFault
        operation.traits = {}
      end)
      service.add_operation(:terminate_instance_in_auto_scaling_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#TerminateInstanceInAutoScalingGroup"
        operation.name = "TerminateInstanceInAutoScalingGroup"
        operation.input = TerminateInstanceInAutoScalingGroupInput
        operation.output = TerminateInstanceInAutoScalingGroupOutput
        operation.errors << ResourceContentionFault
        operation.errors << ScalingActivityInProgressFault
        operation.traits = {}
      end)
      service.add_operation(:update_auto_scaling_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscaling#UpdateAutoScalingGroup"
        operation.name = "UpdateAutoScalingGroup"
        operation.input = UpdateAutoScalingGroupInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceContentionFault
        operation.errors << ScalingActivityInProgressFault
        operation.errors << ServiceLinkedRoleFailure
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
