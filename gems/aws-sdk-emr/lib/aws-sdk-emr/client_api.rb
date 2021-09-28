# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EMR
  # @api private
  module ClientApi

    include Seahorse::Model

    ActionOnFailure = Shapes::StringShape.new(name: 'ActionOnFailure')
    AddInstanceFleetInput = Shapes::StructureShape.new(name: 'AddInstanceFleetInput')
    AddInstanceFleetOutput = Shapes::StructureShape.new(name: 'AddInstanceFleetOutput')
    AddInstanceGroupsInput = Shapes::StructureShape.new(name: 'AddInstanceGroupsInput')
    AddInstanceGroupsOutput = Shapes::StructureShape.new(name: 'AddInstanceGroupsOutput')
    AddJobFlowStepsInput = Shapes::StructureShape.new(name: 'AddJobFlowStepsInput')
    AddJobFlowStepsOutput = Shapes::StructureShape.new(name: 'AddJobFlowStepsOutput')
    AddTagsInput = Shapes::StructureShape.new(name: 'AddTagsInput')
    AddTagsOutput = Shapes::StructureShape.new(name: 'AddTagsOutput')
    AdjustmentType = Shapes::StringShape.new(name: 'AdjustmentType')
    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationList = Shapes::ListShape.new(name: 'ApplicationList')
    ArnType = Shapes::StringShape.new(name: 'ArnType')
    AuthMode = Shapes::StringShape.new(name: 'AuthMode')
    AutoScalingPolicy = Shapes::StructureShape.new(name: 'AutoScalingPolicy')
    AutoScalingPolicyDescription = Shapes::StructureShape.new(name: 'AutoScalingPolicyDescription')
    AutoScalingPolicyState = Shapes::StringShape.new(name: 'AutoScalingPolicyState')
    AutoScalingPolicyStateChangeReason = Shapes::StructureShape.new(name: 'AutoScalingPolicyStateChangeReason')
    AutoScalingPolicyStateChangeReasonCode = Shapes::StringShape.new(name: 'AutoScalingPolicyStateChangeReasonCode')
    AutoScalingPolicyStatus = Shapes::StructureShape.new(name: 'AutoScalingPolicyStatus')
    AutoTerminationPolicy = Shapes::StructureShape.new(name: 'AutoTerminationPolicy')
    BlockPublicAccessConfiguration = Shapes::StructureShape.new(name: 'BlockPublicAccessConfiguration')
    BlockPublicAccessConfigurationMetadata = Shapes::StructureShape.new(name: 'BlockPublicAccessConfigurationMetadata')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    BootstrapActionConfig = Shapes::StructureShape.new(name: 'BootstrapActionConfig')
    BootstrapActionConfigList = Shapes::ListShape.new(name: 'BootstrapActionConfigList')
    BootstrapActionDetail = Shapes::StructureShape.new(name: 'BootstrapActionDetail')
    BootstrapActionDetailList = Shapes::ListShape.new(name: 'BootstrapActionDetailList')
    CancelStepsInfo = Shapes::StructureShape.new(name: 'CancelStepsInfo')
    CancelStepsInfoList = Shapes::ListShape.new(name: 'CancelStepsInfoList')
    CancelStepsInput = Shapes::StructureShape.new(name: 'CancelStepsInput')
    CancelStepsOutput = Shapes::StructureShape.new(name: 'CancelStepsOutput')
    CancelStepsRequestStatus = Shapes::StringShape.new(name: 'CancelStepsRequestStatus')
    CloudWatchAlarmDefinition = Shapes::StructureShape.new(name: 'CloudWatchAlarmDefinition')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterId = Shapes::StringShape.new(name: 'ClusterId')
    ClusterState = Shapes::StringShape.new(name: 'ClusterState')
    ClusterStateChangeReason = Shapes::StructureShape.new(name: 'ClusterStateChangeReason')
    ClusterStateChangeReasonCode = Shapes::StringShape.new(name: 'ClusterStateChangeReasonCode')
    ClusterStateList = Shapes::ListShape.new(name: 'ClusterStateList')
    ClusterStatus = Shapes::StructureShape.new(name: 'ClusterStatus')
    ClusterSummary = Shapes::StructureShape.new(name: 'ClusterSummary')
    ClusterSummaryList = Shapes::ListShape.new(name: 'ClusterSummaryList')
    ClusterTimeline = Shapes::StructureShape.new(name: 'ClusterTimeline')
    Command = Shapes::StructureShape.new(name: 'Command')
    CommandList = Shapes::ListShape.new(name: 'CommandList')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    ComputeLimits = Shapes::StructureShape.new(name: 'ComputeLimits')
    ComputeLimitsUnitType = Shapes::StringShape.new(name: 'ComputeLimitsUnitType')
    Configuration = Shapes::StructureShape.new(name: 'Configuration')
    ConfigurationList = Shapes::ListShape.new(name: 'ConfigurationList')
    CreateSecurityConfigurationInput = Shapes::StructureShape.new(name: 'CreateSecurityConfigurationInput')
    CreateSecurityConfigurationOutput = Shapes::StructureShape.new(name: 'CreateSecurityConfigurationOutput')
    CreateStudioInput = Shapes::StructureShape.new(name: 'CreateStudioInput')
    CreateStudioOutput = Shapes::StructureShape.new(name: 'CreateStudioOutput')
    CreateStudioSessionMappingInput = Shapes::StructureShape.new(name: 'CreateStudioSessionMappingInput')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteSecurityConfigurationInput = Shapes::StructureShape.new(name: 'DeleteSecurityConfigurationInput')
    DeleteSecurityConfigurationOutput = Shapes::StructureShape.new(name: 'DeleteSecurityConfigurationOutput')
    DeleteStudioInput = Shapes::StructureShape.new(name: 'DeleteStudioInput')
    DeleteStudioSessionMappingInput = Shapes::StructureShape.new(name: 'DeleteStudioSessionMappingInput')
    DescribeClusterInput = Shapes::StructureShape.new(name: 'DescribeClusterInput')
    DescribeClusterOutput = Shapes::StructureShape.new(name: 'DescribeClusterOutput')
    DescribeJobFlowsInput = Shapes::StructureShape.new(name: 'DescribeJobFlowsInput')
    DescribeJobFlowsOutput = Shapes::StructureShape.new(name: 'DescribeJobFlowsOutput')
    DescribeNotebookExecutionInput = Shapes::StructureShape.new(name: 'DescribeNotebookExecutionInput')
    DescribeNotebookExecutionOutput = Shapes::StructureShape.new(name: 'DescribeNotebookExecutionOutput')
    DescribeReleaseLabelInput = Shapes::StructureShape.new(name: 'DescribeReleaseLabelInput')
    DescribeReleaseLabelOutput = Shapes::StructureShape.new(name: 'DescribeReleaseLabelOutput')
    DescribeSecurityConfigurationInput = Shapes::StructureShape.new(name: 'DescribeSecurityConfigurationInput')
    DescribeSecurityConfigurationOutput = Shapes::StructureShape.new(name: 'DescribeSecurityConfigurationOutput')
    DescribeStepInput = Shapes::StructureShape.new(name: 'DescribeStepInput')
    DescribeStepOutput = Shapes::StructureShape.new(name: 'DescribeStepOutput')
    DescribeStudioInput = Shapes::StructureShape.new(name: 'DescribeStudioInput')
    DescribeStudioOutput = Shapes::StructureShape.new(name: 'DescribeStudioOutput')
    EC2InstanceIdsList = Shapes::ListShape.new(name: 'EC2InstanceIdsList')
    EC2InstanceIdsToTerminateList = Shapes::ListShape.new(name: 'EC2InstanceIdsToTerminateList')
    EbsBlockDevice = Shapes::StructureShape.new(name: 'EbsBlockDevice')
    EbsBlockDeviceConfig = Shapes::StructureShape.new(name: 'EbsBlockDeviceConfig')
    EbsBlockDeviceConfigList = Shapes::ListShape.new(name: 'EbsBlockDeviceConfigList')
    EbsBlockDeviceList = Shapes::ListShape.new(name: 'EbsBlockDeviceList')
    EbsConfiguration = Shapes::StructureShape.new(name: 'EbsConfiguration')
    EbsVolume = Shapes::StructureShape.new(name: 'EbsVolume')
    EbsVolumeList = Shapes::ListShape.new(name: 'EbsVolumeList')
    Ec2InstanceAttributes = Shapes::StructureShape.new(name: 'Ec2InstanceAttributes')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExecutionEngineConfig = Shapes::StructureShape.new(name: 'ExecutionEngineConfig')
    ExecutionEngineType = Shapes::StringShape.new(name: 'ExecutionEngineType')
    FailureDetails = Shapes::StructureShape.new(name: 'FailureDetails')
    GetAutoTerminationPolicyInput = Shapes::StructureShape.new(name: 'GetAutoTerminationPolicyInput')
    GetAutoTerminationPolicyOutput = Shapes::StructureShape.new(name: 'GetAutoTerminationPolicyOutput')
    GetBlockPublicAccessConfigurationInput = Shapes::StructureShape.new(name: 'GetBlockPublicAccessConfigurationInput')
    GetBlockPublicAccessConfigurationOutput = Shapes::StructureShape.new(name: 'GetBlockPublicAccessConfigurationOutput')
    GetManagedScalingPolicyInput = Shapes::StructureShape.new(name: 'GetManagedScalingPolicyInput')
    GetManagedScalingPolicyOutput = Shapes::StructureShape.new(name: 'GetManagedScalingPolicyOutput')
    GetStudioSessionMappingInput = Shapes::StructureShape.new(name: 'GetStudioSessionMappingInput')
    GetStudioSessionMappingOutput = Shapes::StructureShape.new(name: 'GetStudioSessionMappingOutput')
    HadoopJarStepConfig = Shapes::StructureShape.new(name: 'HadoopJarStepConfig')
    HadoopStepConfig = Shapes::StructureShape.new(name: 'HadoopStepConfig')
    IdentityType = Shapes::StringShape.new(name: 'IdentityType')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceCollectionType = Shapes::StringShape.new(name: 'InstanceCollectionType')
    InstanceFleet = Shapes::StructureShape.new(name: 'InstanceFleet')
    InstanceFleetConfig = Shapes::StructureShape.new(name: 'InstanceFleetConfig')
    InstanceFleetConfigList = Shapes::ListShape.new(name: 'InstanceFleetConfigList')
    InstanceFleetId = Shapes::StringShape.new(name: 'InstanceFleetId')
    InstanceFleetList = Shapes::ListShape.new(name: 'InstanceFleetList')
    InstanceFleetModifyConfig = Shapes::StructureShape.new(name: 'InstanceFleetModifyConfig')
    InstanceFleetProvisioningSpecifications = Shapes::StructureShape.new(name: 'InstanceFleetProvisioningSpecifications')
    InstanceFleetState = Shapes::StringShape.new(name: 'InstanceFleetState')
    InstanceFleetStateChangeReason = Shapes::StructureShape.new(name: 'InstanceFleetStateChangeReason')
    InstanceFleetStateChangeReasonCode = Shapes::StringShape.new(name: 'InstanceFleetStateChangeReasonCode')
    InstanceFleetStatus = Shapes::StructureShape.new(name: 'InstanceFleetStatus')
    InstanceFleetTimeline = Shapes::StructureShape.new(name: 'InstanceFleetTimeline')
    InstanceFleetType = Shapes::StringShape.new(name: 'InstanceFleetType')
    InstanceGroup = Shapes::StructureShape.new(name: 'InstanceGroup')
    InstanceGroupConfig = Shapes::StructureShape.new(name: 'InstanceGroupConfig')
    InstanceGroupConfigList = Shapes::ListShape.new(name: 'InstanceGroupConfigList')
    InstanceGroupDetail = Shapes::StructureShape.new(name: 'InstanceGroupDetail')
    InstanceGroupDetailList = Shapes::ListShape.new(name: 'InstanceGroupDetailList')
    InstanceGroupId = Shapes::StringShape.new(name: 'InstanceGroupId')
    InstanceGroupIdsList = Shapes::ListShape.new(name: 'InstanceGroupIdsList')
    InstanceGroupList = Shapes::ListShape.new(name: 'InstanceGroupList')
    InstanceGroupModifyConfig = Shapes::StructureShape.new(name: 'InstanceGroupModifyConfig')
    InstanceGroupModifyConfigList = Shapes::ListShape.new(name: 'InstanceGroupModifyConfigList')
    InstanceGroupState = Shapes::StringShape.new(name: 'InstanceGroupState')
    InstanceGroupStateChangeReason = Shapes::StructureShape.new(name: 'InstanceGroupStateChangeReason')
    InstanceGroupStateChangeReasonCode = Shapes::StringShape.new(name: 'InstanceGroupStateChangeReasonCode')
    InstanceGroupStatus = Shapes::StructureShape.new(name: 'InstanceGroupStatus')
    InstanceGroupTimeline = Shapes::StructureShape.new(name: 'InstanceGroupTimeline')
    InstanceGroupType = Shapes::StringShape.new(name: 'InstanceGroupType')
    InstanceGroupTypeList = Shapes::ListShape.new(name: 'InstanceGroupTypeList')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceList = Shapes::ListShape.new(name: 'InstanceList')
    InstanceResizePolicy = Shapes::StructureShape.new(name: 'InstanceResizePolicy')
    InstanceRoleType = Shapes::StringShape.new(name: 'InstanceRoleType')
    InstanceState = Shapes::StringShape.new(name: 'InstanceState')
    InstanceStateChangeReason = Shapes::StructureShape.new(name: 'InstanceStateChangeReason')
    InstanceStateChangeReasonCode = Shapes::StringShape.new(name: 'InstanceStateChangeReasonCode')
    InstanceStateList = Shapes::ListShape.new(name: 'InstanceStateList')
    InstanceStatus = Shapes::StructureShape.new(name: 'InstanceStatus')
    InstanceTimeline = Shapes::StructureShape.new(name: 'InstanceTimeline')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypeConfig = Shapes::StructureShape.new(name: 'InstanceTypeConfig')
    InstanceTypeConfigList = Shapes::ListShape.new(name: 'InstanceTypeConfigList')
    InstanceTypeSpecification = Shapes::StructureShape.new(name: 'InstanceTypeSpecification')
    InstanceTypeSpecificationList = Shapes::ListShape.new(name: 'InstanceTypeSpecificationList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    JobFlowDetail = Shapes::StructureShape.new(name: 'JobFlowDetail')
    JobFlowDetailList = Shapes::ListShape.new(name: 'JobFlowDetailList')
    JobFlowExecutionState = Shapes::StringShape.new(name: 'JobFlowExecutionState')
    JobFlowExecutionStateList = Shapes::ListShape.new(name: 'JobFlowExecutionStateList')
    JobFlowExecutionStatusDetail = Shapes::StructureShape.new(name: 'JobFlowExecutionStatusDetail')
    JobFlowInstancesConfig = Shapes::StructureShape.new(name: 'JobFlowInstancesConfig')
    JobFlowInstancesDetail = Shapes::StructureShape.new(name: 'JobFlowInstancesDetail')
    KerberosAttributes = Shapes::StructureShape.new(name: 'KerberosAttributes')
    KeyValue = Shapes::StructureShape.new(name: 'KeyValue')
    KeyValueList = Shapes::ListShape.new(name: 'KeyValueList')
    ListBootstrapActionsInput = Shapes::StructureShape.new(name: 'ListBootstrapActionsInput')
    ListBootstrapActionsOutput = Shapes::StructureShape.new(name: 'ListBootstrapActionsOutput')
    ListClustersInput = Shapes::StructureShape.new(name: 'ListClustersInput')
    ListClustersOutput = Shapes::StructureShape.new(name: 'ListClustersOutput')
    ListInstanceFleetsInput = Shapes::StructureShape.new(name: 'ListInstanceFleetsInput')
    ListInstanceFleetsOutput = Shapes::StructureShape.new(name: 'ListInstanceFleetsOutput')
    ListInstanceGroupsInput = Shapes::StructureShape.new(name: 'ListInstanceGroupsInput')
    ListInstanceGroupsOutput = Shapes::StructureShape.new(name: 'ListInstanceGroupsOutput')
    ListInstancesInput = Shapes::StructureShape.new(name: 'ListInstancesInput')
    ListInstancesOutput = Shapes::StructureShape.new(name: 'ListInstancesOutput')
    ListNotebookExecutionsInput = Shapes::StructureShape.new(name: 'ListNotebookExecutionsInput')
    ListNotebookExecutionsOutput = Shapes::StructureShape.new(name: 'ListNotebookExecutionsOutput')
    ListReleaseLabelsInput = Shapes::StructureShape.new(name: 'ListReleaseLabelsInput')
    ListReleaseLabelsOutput = Shapes::StructureShape.new(name: 'ListReleaseLabelsOutput')
    ListSecurityConfigurationsInput = Shapes::StructureShape.new(name: 'ListSecurityConfigurationsInput')
    ListSecurityConfigurationsOutput = Shapes::StructureShape.new(name: 'ListSecurityConfigurationsOutput')
    ListStepsInput = Shapes::StructureShape.new(name: 'ListStepsInput')
    ListStepsOutput = Shapes::StructureShape.new(name: 'ListStepsOutput')
    ListStudioSessionMappingsInput = Shapes::StructureShape.new(name: 'ListStudioSessionMappingsInput')
    ListStudioSessionMappingsOutput = Shapes::StructureShape.new(name: 'ListStudioSessionMappingsOutput')
    ListStudiosInput = Shapes::StructureShape.new(name: 'ListStudiosInput')
    ListStudiosOutput = Shapes::StructureShape.new(name: 'ListStudiosOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    ManagedScalingPolicy = Shapes::StructureShape.new(name: 'ManagedScalingPolicy')
    Marker = Shapes::StringShape.new(name: 'Marker')
    MarketType = Shapes::StringShape.new(name: 'MarketType')
    MaxResultsNumber = Shapes::IntegerShape.new(name: 'MaxResultsNumber')
    MetricDimension = Shapes::StructureShape.new(name: 'MetricDimension')
    MetricDimensionList = Shapes::ListShape.new(name: 'MetricDimensionList')
    ModifyClusterInput = Shapes::StructureShape.new(name: 'ModifyClusterInput')
    ModifyClusterOutput = Shapes::StructureShape.new(name: 'ModifyClusterOutput')
    ModifyInstanceFleetInput = Shapes::StructureShape.new(name: 'ModifyInstanceFleetInput')
    ModifyInstanceGroupsInput = Shapes::StructureShape.new(name: 'ModifyInstanceGroupsInput')
    NewSupportedProductsList = Shapes::ListShape.new(name: 'NewSupportedProductsList')
    NonNegativeDouble = Shapes::FloatShape.new(name: 'NonNegativeDouble')
    NotebookExecution = Shapes::StructureShape.new(name: 'NotebookExecution')
    NotebookExecutionStatus = Shapes::StringShape.new(name: 'NotebookExecutionStatus')
    NotebookExecutionSummary = Shapes::StructureShape.new(name: 'NotebookExecutionSummary')
    NotebookExecutionSummaryList = Shapes::ListShape.new(name: 'NotebookExecutionSummaryList')
    OnDemandCapacityReservationOptions = Shapes::StructureShape.new(name: 'OnDemandCapacityReservationOptions')
    OnDemandCapacityReservationPreference = Shapes::StringShape.new(name: 'OnDemandCapacityReservationPreference')
    OnDemandCapacityReservationUsageStrategy = Shapes::StringShape.new(name: 'OnDemandCapacityReservationUsageStrategy')
    OnDemandProvisioningAllocationStrategy = Shapes::StringShape.new(name: 'OnDemandProvisioningAllocationStrategy')
    OnDemandProvisioningSpecification = Shapes::StructureShape.new(name: 'OnDemandProvisioningSpecification')
    OptionalArnType = Shapes::StringShape.new(name: 'OptionalArnType')
    PlacementGroupConfig = Shapes::StructureShape.new(name: 'PlacementGroupConfig')
    PlacementGroupConfigList = Shapes::ListShape.new(name: 'PlacementGroupConfigList')
    PlacementGroupStrategy = Shapes::StringShape.new(name: 'PlacementGroupStrategy')
    PlacementType = Shapes::StructureShape.new(name: 'PlacementType')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PortRange = Shapes::StructureShape.new(name: 'PortRange')
    PortRanges = Shapes::ListShape.new(name: 'PortRanges')
    PutAutoScalingPolicyInput = Shapes::StructureShape.new(name: 'PutAutoScalingPolicyInput')
    PutAutoScalingPolicyOutput = Shapes::StructureShape.new(name: 'PutAutoScalingPolicyOutput')
    PutAutoTerminationPolicyInput = Shapes::StructureShape.new(name: 'PutAutoTerminationPolicyInput')
    PutAutoTerminationPolicyOutput = Shapes::StructureShape.new(name: 'PutAutoTerminationPolicyOutput')
    PutBlockPublicAccessConfigurationInput = Shapes::StructureShape.new(name: 'PutBlockPublicAccessConfigurationInput')
    PutBlockPublicAccessConfigurationOutput = Shapes::StructureShape.new(name: 'PutBlockPublicAccessConfigurationOutput')
    PutManagedScalingPolicyInput = Shapes::StructureShape.new(name: 'PutManagedScalingPolicyInput')
    PutManagedScalingPolicyOutput = Shapes::StructureShape.new(name: 'PutManagedScalingPolicyOutput')
    ReleaseLabelFilter = Shapes::StructureShape.new(name: 'ReleaseLabelFilter')
    RemoveAutoScalingPolicyInput = Shapes::StructureShape.new(name: 'RemoveAutoScalingPolicyInput')
    RemoveAutoScalingPolicyOutput = Shapes::StructureShape.new(name: 'RemoveAutoScalingPolicyOutput')
    RemoveAutoTerminationPolicyInput = Shapes::StructureShape.new(name: 'RemoveAutoTerminationPolicyInput')
    RemoveAutoTerminationPolicyOutput = Shapes::StructureShape.new(name: 'RemoveAutoTerminationPolicyOutput')
    RemoveManagedScalingPolicyInput = Shapes::StructureShape.new(name: 'RemoveManagedScalingPolicyInput')
    RemoveManagedScalingPolicyOutput = Shapes::StructureShape.new(name: 'RemoveManagedScalingPolicyOutput')
    RemoveTagsInput = Shapes::StructureShape.new(name: 'RemoveTagsInput')
    RemoveTagsOutput = Shapes::StructureShape.new(name: 'RemoveTagsOutput')
    RepoUpgradeOnBoot = Shapes::StringShape.new(name: 'RepoUpgradeOnBoot')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    RunJobFlowInput = Shapes::StructureShape.new(name: 'RunJobFlowInput')
    RunJobFlowOutput = Shapes::StructureShape.new(name: 'RunJobFlowOutput')
    ScaleDownBehavior = Shapes::StringShape.new(name: 'ScaleDownBehavior')
    ScalingAction = Shapes::StructureShape.new(name: 'ScalingAction')
    ScalingConstraints = Shapes::StructureShape.new(name: 'ScalingConstraints')
    ScalingRule = Shapes::StructureShape.new(name: 'ScalingRule')
    ScalingRuleList = Shapes::ListShape.new(name: 'ScalingRuleList')
    ScalingTrigger = Shapes::StructureShape.new(name: 'ScalingTrigger')
    ScriptBootstrapActionConfig = Shapes::StructureShape.new(name: 'ScriptBootstrapActionConfig')
    SecurityConfigurationList = Shapes::ListShape.new(name: 'SecurityConfigurationList')
    SecurityConfigurationSummary = Shapes::StructureShape.new(name: 'SecurityConfigurationSummary')
    SecurityGroupsList = Shapes::ListShape.new(name: 'SecurityGroupsList')
    SessionMappingDetail = Shapes::StructureShape.new(name: 'SessionMappingDetail')
    SessionMappingSummary = Shapes::StructureShape.new(name: 'SessionMappingSummary')
    SessionMappingSummaryList = Shapes::ListShape.new(name: 'SessionMappingSummaryList')
    SetTerminationProtectionInput = Shapes::StructureShape.new(name: 'SetTerminationProtectionInput')
    SetVisibleToAllUsersInput = Shapes::StructureShape.new(name: 'SetVisibleToAllUsersInput')
    ShrinkPolicy = Shapes::StructureShape.new(name: 'ShrinkPolicy')
    SimpleScalingPolicyConfiguration = Shapes::StructureShape.new(name: 'SimpleScalingPolicyConfiguration')
    SimplifiedApplication = Shapes::StructureShape.new(name: 'SimplifiedApplication')
    SimplifiedApplicationList = Shapes::ListShape.new(name: 'SimplifiedApplicationList')
    SpotProvisioningAllocationStrategy = Shapes::StringShape.new(name: 'SpotProvisioningAllocationStrategy')
    SpotProvisioningSpecification = Shapes::StructureShape.new(name: 'SpotProvisioningSpecification')
    SpotProvisioningTimeoutAction = Shapes::StringShape.new(name: 'SpotProvisioningTimeoutAction')
    StartNotebookExecutionInput = Shapes::StructureShape.new(name: 'StartNotebookExecutionInput')
    StartNotebookExecutionOutput = Shapes::StructureShape.new(name: 'StartNotebookExecutionOutput')
    Statistic = Shapes::StringShape.new(name: 'Statistic')
    Step = Shapes::StructureShape.new(name: 'Step')
    StepCancellationOption = Shapes::StringShape.new(name: 'StepCancellationOption')
    StepConfig = Shapes::StructureShape.new(name: 'StepConfig')
    StepConfigList = Shapes::ListShape.new(name: 'StepConfigList')
    StepDetail = Shapes::StructureShape.new(name: 'StepDetail')
    StepDetailList = Shapes::ListShape.new(name: 'StepDetailList')
    StepExecutionState = Shapes::StringShape.new(name: 'StepExecutionState')
    StepExecutionStatusDetail = Shapes::StructureShape.new(name: 'StepExecutionStatusDetail')
    StepId = Shapes::StringShape.new(name: 'StepId')
    StepIdsList = Shapes::ListShape.new(name: 'StepIdsList')
    StepState = Shapes::StringShape.new(name: 'StepState')
    StepStateChangeReason = Shapes::StructureShape.new(name: 'StepStateChangeReason')
    StepStateChangeReasonCode = Shapes::StringShape.new(name: 'StepStateChangeReasonCode')
    StepStateList = Shapes::ListShape.new(name: 'StepStateList')
    StepStatus = Shapes::StructureShape.new(name: 'StepStatus')
    StepSummary = Shapes::StructureShape.new(name: 'StepSummary')
    StepSummaryList = Shapes::ListShape.new(name: 'StepSummaryList')
    StepTimeline = Shapes::StructureShape.new(name: 'StepTimeline')
    StopNotebookExecutionInput = Shapes::StructureShape.new(name: 'StopNotebookExecutionInput')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    Studio = Shapes::StructureShape.new(name: 'Studio')
    StudioSummary = Shapes::StructureShape.new(name: 'StudioSummary')
    StudioSummaryList = Shapes::ListShape.new(name: 'StudioSummaryList')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    SupportedProductConfig = Shapes::StructureShape.new(name: 'SupportedProductConfig')
    SupportedProductsList = Shapes::ListShape.new(name: 'SupportedProductsList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TerminateJobFlowsInput = Shapes::StructureShape.new(name: 'TerminateJobFlowsInput')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UpdateStudioInput = Shapes::StructureShape.new(name: 'UpdateStudioInput')
    UpdateStudioSessionMappingInput = Shapes::StructureShape.new(name: 'UpdateStudioSessionMappingInput')
    VolumeSpecification = Shapes::StructureShape.new(name: 'VolumeSpecification')
    WholeNumber = Shapes::IntegerShape.new(name: 'WholeNumber')
    XmlString = Shapes::StringShape.new(name: 'XmlString')
    XmlStringList = Shapes::ListShape.new(name: 'XmlStringList')
    XmlStringMaxLen256 = Shapes::StringShape.new(name: 'XmlStringMaxLen256')
    XmlStringMaxLen256List = Shapes::ListShape.new(name: 'XmlStringMaxLen256List')

    AddInstanceFleetInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "ClusterId"))
    AddInstanceFleetInput.add_member(:instance_fleet, Shapes::ShapeRef.new(shape: InstanceFleetConfig, required: true, location_name: "InstanceFleet"))
    AddInstanceFleetInput.struct_class = Types::AddInstanceFleetInput

    AddInstanceFleetOutput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "ClusterId"))
    AddInstanceFleetOutput.add_member(:instance_fleet_id, Shapes::ShapeRef.new(shape: InstanceFleetId, location_name: "InstanceFleetId"))
    AddInstanceFleetOutput.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "ClusterArn"))
    AddInstanceFleetOutput.struct_class = Types::AddInstanceFleetOutput

    AddInstanceGroupsInput.add_member(:instance_groups, Shapes::ShapeRef.new(shape: InstanceGroupConfigList, required: true, location_name: "InstanceGroups"))
    AddInstanceGroupsInput.add_member(:job_flow_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "JobFlowId"))
    AddInstanceGroupsInput.struct_class = Types::AddInstanceGroupsInput

    AddInstanceGroupsOutput.add_member(:job_flow_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "JobFlowId"))
    AddInstanceGroupsOutput.add_member(:instance_group_ids, Shapes::ShapeRef.new(shape: InstanceGroupIdsList, location_name: "InstanceGroupIds"))
    AddInstanceGroupsOutput.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "ClusterArn"))
    AddInstanceGroupsOutput.struct_class = Types::AddInstanceGroupsOutput

    AddJobFlowStepsInput.add_member(:job_flow_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "JobFlowId"))
    AddJobFlowStepsInput.add_member(:steps, Shapes::ShapeRef.new(shape: StepConfigList, required: true, location_name: "Steps"))
    AddJobFlowStepsInput.struct_class = Types::AddJobFlowStepsInput

    AddJobFlowStepsOutput.add_member(:step_ids, Shapes::ShapeRef.new(shape: StepIdsList, location_name: "StepIds"))
    AddJobFlowStepsOutput.struct_class = Types::AddJobFlowStepsOutput

    AddTagsInput.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    AddTagsInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsInput.struct_class = Types::AddTagsInput

    AddTagsOutput.struct_class = Types::AddTagsOutput

    Application.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Application.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    Application.add_member(:args, Shapes::ShapeRef.new(shape: StringList, location_name: "Args"))
    Application.add_member(:additional_info, Shapes::ShapeRef.new(shape: StringMap, location_name: "AdditionalInfo"))
    Application.struct_class = Types::Application

    ApplicationList.member = Shapes::ShapeRef.new(shape: Application)

    AutoScalingPolicy.add_member(:constraints, Shapes::ShapeRef.new(shape: ScalingConstraints, required: true, location_name: "Constraints"))
    AutoScalingPolicy.add_member(:rules, Shapes::ShapeRef.new(shape: ScalingRuleList, required: true, location_name: "Rules"))
    AutoScalingPolicy.struct_class = Types::AutoScalingPolicy

    AutoScalingPolicyDescription.add_member(:status, Shapes::ShapeRef.new(shape: AutoScalingPolicyStatus, location_name: "Status"))
    AutoScalingPolicyDescription.add_member(:constraints, Shapes::ShapeRef.new(shape: ScalingConstraints, location_name: "Constraints"))
    AutoScalingPolicyDescription.add_member(:rules, Shapes::ShapeRef.new(shape: ScalingRuleList, location_name: "Rules"))
    AutoScalingPolicyDescription.struct_class = Types::AutoScalingPolicyDescription

    AutoScalingPolicyStateChangeReason.add_member(:code, Shapes::ShapeRef.new(shape: AutoScalingPolicyStateChangeReasonCode, location_name: "Code"))
    AutoScalingPolicyStateChangeReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AutoScalingPolicyStateChangeReason.struct_class = Types::AutoScalingPolicyStateChangeReason

    AutoScalingPolicyStatus.add_member(:state, Shapes::ShapeRef.new(shape: AutoScalingPolicyState, location_name: "State"))
    AutoScalingPolicyStatus.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: AutoScalingPolicyStateChangeReason, location_name: "StateChangeReason"))
    AutoScalingPolicyStatus.struct_class = Types::AutoScalingPolicyStatus

    AutoTerminationPolicy.add_member(:idle_timeout, Shapes::ShapeRef.new(shape: Long, location_name: "IdleTimeout"))
    AutoTerminationPolicy.struct_class = Types::AutoTerminationPolicy

    BlockPublicAccessConfiguration.add_member(:block_public_security_group_rules, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "BlockPublicSecurityGroupRules"))
    BlockPublicAccessConfiguration.add_member(:permitted_public_security_group_rule_ranges, Shapes::ShapeRef.new(shape: PortRanges, location_name: "PermittedPublicSecurityGroupRuleRanges"))
    BlockPublicAccessConfiguration.struct_class = Types::BlockPublicAccessConfiguration

    BlockPublicAccessConfigurationMetadata.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "CreationDateTime"))
    BlockPublicAccessConfigurationMetadata.add_member(:created_by_arn, Shapes::ShapeRef.new(shape: ArnType, required: true, location_name: "CreatedByArn"))
    BlockPublicAccessConfigurationMetadata.struct_class = Types::BlockPublicAccessConfigurationMetadata

    BootstrapActionConfig.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "Name"))
    BootstrapActionConfig.add_member(:script_bootstrap_action, Shapes::ShapeRef.new(shape: ScriptBootstrapActionConfig, required: true, location_name: "ScriptBootstrapAction"))
    BootstrapActionConfig.struct_class = Types::BootstrapActionConfig

    BootstrapActionConfigList.member = Shapes::ShapeRef.new(shape: BootstrapActionConfig)

    BootstrapActionDetail.add_member(:bootstrap_action_config, Shapes::ShapeRef.new(shape: BootstrapActionConfig, location_name: "BootstrapActionConfig"))
    BootstrapActionDetail.struct_class = Types::BootstrapActionDetail

    BootstrapActionDetailList.member = Shapes::ShapeRef.new(shape: BootstrapActionDetail)

    CancelStepsInfo.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, location_name: "StepId"))
    CancelStepsInfo.add_member(:status, Shapes::ShapeRef.new(shape: CancelStepsRequestStatus, location_name: "Status"))
    CancelStepsInfo.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "Reason"))
    CancelStepsInfo.struct_class = Types::CancelStepsInfo

    CancelStepsInfoList.member = Shapes::ShapeRef.new(shape: CancelStepsInfo)

    CancelStepsInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "ClusterId"))
    CancelStepsInput.add_member(:step_ids, Shapes::ShapeRef.new(shape: StepIdsList, required: true, location_name: "StepIds"))
    CancelStepsInput.add_member(:step_cancellation_option, Shapes::ShapeRef.new(shape: StepCancellationOption, location_name: "StepCancellationOption"))
    CancelStepsInput.struct_class = Types::CancelStepsInput

    CancelStepsOutput.add_member(:cancel_steps_info_list, Shapes::ShapeRef.new(shape: CancelStepsInfoList, location_name: "CancelStepsInfoList"))
    CancelStepsOutput.struct_class = Types::CancelStepsOutput

    CloudWatchAlarmDefinition.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    CloudWatchAlarmDefinition.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: Integer, location_name: "EvaluationPeriods"))
    CloudWatchAlarmDefinition.add_member(:metric_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MetricName"))
    CloudWatchAlarmDefinition.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "Namespace"))
    CloudWatchAlarmDefinition.add_member(:period, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Period"))
    CloudWatchAlarmDefinition.add_member(:statistic, Shapes::ShapeRef.new(shape: Statistic, location_name: "Statistic"))
    CloudWatchAlarmDefinition.add_member(:threshold, Shapes::ShapeRef.new(shape: NonNegativeDouble, required: true, location_name: "Threshold"))
    CloudWatchAlarmDefinition.add_member(:unit, Shapes::ShapeRef.new(shape: Unit, location_name: "Unit"))
    CloudWatchAlarmDefinition.add_member(:dimensions, Shapes::ShapeRef.new(shape: MetricDimensionList, location_name: "Dimensions"))
    CloudWatchAlarmDefinition.struct_class = Types::CloudWatchAlarmDefinition

    Cluster.add_member(:id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "Id"))
    Cluster.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Cluster.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "Status"))
    Cluster.add_member(:ec2_instance_attributes, Shapes::ShapeRef.new(shape: Ec2InstanceAttributes, location_name: "Ec2InstanceAttributes"))
    Cluster.add_member(:instance_collection_type, Shapes::ShapeRef.new(shape: InstanceCollectionType, location_name: "InstanceCollectionType"))
    Cluster.add_member(:log_uri, Shapes::ShapeRef.new(shape: String, location_name: "LogUri"))
    Cluster.add_member(:log_encryption_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "LogEncryptionKmsKeyId"))
    Cluster.add_member(:requested_ami_version, Shapes::ShapeRef.new(shape: String, location_name: "RequestedAmiVersion"))
    Cluster.add_member(:running_ami_version, Shapes::ShapeRef.new(shape: String, location_name: "RunningAmiVersion"))
    Cluster.add_member(:release_label, Shapes::ShapeRef.new(shape: String, location_name: "ReleaseLabel"))
    Cluster.add_member(:auto_terminate, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoTerminate"))
    Cluster.add_member(:termination_protected, Shapes::ShapeRef.new(shape: Boolean, location_name: "TerminationProtected"))
    Cluster.add_member(:visible_to_all_users, Shapes::ShapeRef.new(shape: Boolean, location_name: "VisibleToAllUsers"))
    Cluster.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationList, location_name: "Applications"))
    Cluster.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Cluster.add_member(:service_role, Shapes::ShapeRef.new(shape: String, location_name: "ServiceRole"))
    Cluster.add_member(:normalized_instance_hours, Shapes::ShapeRef.new(shape: Integer, location_name: "NormalizedInstanceHours"))
    Cluster.add_member(:master_public_dns_name, Shapes::ShapeRef.new(shape: String, location_name: "MasterPublicDnsName"))
    Cluster.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "Configurations"))
    Cluster.add_member(:security_configuration, Shapes::ShapeRef.new(shape: XmlString, location_name: "SecurityConfiguration"))
    Cluster.add_member(:auto_scaling_role, Shapes::ShapeRef.new(shape: XmlString, location_name: "AutoScalingRole"))
    Cluster.add_member(:scale_down_behavior, Shapes::ShapeRef.new(shape: ScaleDownBehavior, location_name: "ScaleDownBehavior"))
    Cluster.add_member(:custom_ami_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "CustomAmiId"))
    Cluster.add_member(:ebs_root_volume_size, Shapes::ShapeRef.new(shape: Integer, location_name: "EbsRootVolumeSize"))
    Cluster.add_member(:repo_upgrade_on_boot, Shapes::ShapeRef.new(shape: RepoUpgradeOnBoot, location_name: "RepoUpgradeOnBoot"))
    Cluster.add_member(:kerberos_attributes, Shapes::ShapeRef.new(shape: KerberosAttributes, location_name: "KerberosAttributes"))
    Cluster.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "ClusterArn"))
    Cluster.add_member(:outpost_arn, Shapes::ShapeRef.new(shape: OptionalArnType, location_name: "OutpostArn"))
    Cluster.add_member(:step_concurrency_level, Shapes::ShapeRef.new(shape: Integer, location_name: "StepConcurrencyLevel"))
    Cluster.add_member(:placement_groups, Shapes::ShapeRef.new(shape: PlacementGroupConfigList, location_name: "PlacementGroups"))
    Cluster.struct_class = Types::Cluster

    ClusterStateChangeReason.add_member(:code, Shapes::ShapeRef.new(shape: ClusterStateChangeReasonCode, location_name: "Code"))
    ClusterStateChangeReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ClusterStateChangeReason.struct_class = Types::ClusterStateChangeReason

    ClusterStateList.member = Shapes::ShapeRef.new(shape: ClusterState)

    ClusterStatus.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "State"))
    ClusterStatus.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: ClusterStateChangeReason, location_name: "StateChangeReason"))
    ClusterStatus.add_member(:timeline, Shapes::ShapeRef.new(shape: ClusterTimeline, location_name: "Timeline"))
    ClusterStatus.struct_class = Types::ClusterStatus

    ClusterSummary.add_member(:id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "Id"))
    ClusterSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ClusterSummary.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "Status"))
    ClusterSummary.add_member(:normalized_instance_hours, Shapes::ShapeRef.new(shape: Integer, location_name: "NormalizedInstanceHours"))
    ClusterSummary.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "ClusterArn"))
    ClusterSummary.add_member(:outpost_arn, Shapes::ShapeRef.new(shape: OptionalArnType, location_name: "OutpostArn"))
    ClusterSummary.struct_class = Types::ClusterSummary

    ClusterSummaryList.member = Shapes::ShapeRef.new(shape: ClusterSummary)

    ClusterTimeline.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    ClusterTimeline.add_member(:ready_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "ReadyDateTime"))
    ClusterTimeline.add_member(:end_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndDateTime"))
    ClusterTimeline.struct_class = Types::ClusterTimeline

    Command.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Command.add_member(:script_path, Shapes::ShapeRef.new(shape: String, location_name: "ScriptPath"))
    Command.add_member(:args, Shapes::ShapeRef.new(shape: StringList, location_name: "Args"))
    Command.struct_class = Types::Command

    CommandList.member = Shapes::ShapeRef.new(shape: Command)

    ComputeLimits.add_member(:unit_type, Shapes::ShapeRef.new(shape: ComputeLimitsUnitType, required: true, location_name: "UnitType"))
    ComputeLimits.add_member(:minimum_capacity_units, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MinimumCapacityUnits"))
    ComputeLimits.add_member(:maximum_capacity_units, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MaximumCapacityUnits"))
    ComputeLimits.add_member(:maximum_on_demand_capacity_units, Shapes::ShapeRef.new(shape: Integer, location_name: "MaximumOnDemandCapacityUnits"))
    ComputeLimits.add_member(:maximum_core_capacity_units, Shapes::ShapeRef.new(shape: Integer, location_name: "MaximumCoreCapacityUnits"))
    ComputeLimits.struct_class = Types::ComputeLimits

    Configuration.add_member(:classification, Shapes::ShapeRef.new(shape: String, location_name: "Classification"))
    Configuration.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "Configurations"))
    Configuration.add_member(:properties, Shapes::ShapeRef.new(shape: StringMap, location_name: "Properties"))
    Configuration.struct_class = Types::Configuration

    ConfigurationList.member = Shapes::ShapeRef.new(shape: Configuration)

    CreateSecurityConfigurationInput.add_member(:name, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "Name"))
    CreateSecurityConfigurationInput.add_member(:security_configuration, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SecurityConfiguration"))
    CreateSecurityConfigurationInput.struct_class = Types::CreateSecurityConfigurationInput

    CreateSecurityConfigurationOutput.add_member(:name, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "Name"))
    CreateSecurityConfigurationOutput.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "CreationDateTime"))
    CreateSecurityConfigurationOutput.struct_class = Types::CreateSecurityConfigurationOutput

    CreateStudioInput.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "Name"))
    CreateStudioInput.add_member(:description, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Description"))
    CreateStudioInput.add_member(:auth_mode, Shapes::ShapeRef.new(shape: AuthMode, required: true, location_name: "AuthMode"))
    CreateStudioInput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "VpcId"))
    CreateStudioInput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "SubnetIds"))
    CreateStudioInput.add_member(:service_role, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "ServiceRole"))
    CreateStudioInput.add_member(:user_role, Shapes::ShapeRef.new(shape: XmlString, location_name: "UserRole"))
    CreateStudioInput.add_member(:workspace_security_group_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "WorkspaceSecurityGroupId"))
    CreateStudioInput.add_member(:engine_security_group_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "EngineSecurityGroupId"))
    CreateStudioInput.add_member(:default_s3_location, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "DefaultS3Location"))
    CreateStudioInput.add_member(:idp_auth_url, Shapes::ShapeRef.new(shape: XmlString, location_name: "IdpAuthUrl"))
    CreateStudioInput.add_member(:idp_relay_state_parameter_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdpRelayStateParameterName"))
    CreateStudioInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateStudioInput.struct_class = Types::CreateStudioInput

    CreateStudioOutput.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "StudioId"))
    CreateStudioOutput.add_member(:url, Shapes::ShapeRef.new(shape: XmlString, location_name: "Url"))
    CreateStudioOutput.struct_class = Types::CreateStudioOutput

    CreateStudioSessionMappingInput.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "StudioId"))
    CreateStudioSessionMappingInput.add_member(:identity_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdentityId"))
    CreateStudioSessionMappingInput.add_member(:identity_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdentityName"))
    CreateStudioSessionMappingInput.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, required: true, location_name: "IdentityType"))
    CreateStudioSessionMappingInput.add_member(:session_policy_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "SessionPolicyArn"))
    CreateStudioSessionMappingInput.struct_class = Types::CreateStudioSessionMappingInput

    DeleteSecurityConfigurationInput.add_member(:name, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "Name"))
    DeleteSecurityConfigurationInput.struct_class = Types::DeleteSecurityConfigurationInput

    DeleteSecurityConfigurationOutput.struct_class = Types::DeleteSecurityConfigurationOutput

    DeleteStudioInput.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "StudioId"))
    DeleteStudioInput.struct_class = Types::DeleteStudioInput

    DeleteStudioSessionMappingInput.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "StudioId"))
    DeleteStudioSessionMappingInput.add_member(:identity_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdentityId"))
    DeleteStudioSessionMappingInput.add_member(:identity_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdentityName"))
    DeleteStudioSessionMappingInput.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, required: true, location_name: "IdentityType"))
    DeleteStudioSessionMappingInput.struct_class = Types::DeleteStudioSessionMappingInput

    DescribeClusterInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    DescribeClusterInput.struct_class = Types::DescribeClusterInput

    DescribeClusterOutput.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    DescribeClusterOutput.struct_class = Types::DescribeClusterOutput

    DescribeJobFlowsInput.add_member(:created_after, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedAfter"))
    DescribeJobFlowsInput.add_member(:created_before, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedBefore"))
    DescribeJobFlowsInput.add_member(:job_flow_ids, Shapes::ShapeRef.new(shape: XmlStringList, location_name: "JobFlowIds"))
    DescribeJobFlowsInput.add_member(:job_flow_states, Shapes::ShapeRef.new(shape: JobFlowExecutionStateList, location_name: "JobFlowStates"))
    DescribeJobFlowsInput.struct_class = Types::DescribeJobFlowsInput

    DescribeJobFlowsOutput.add_member(:job_flows, Shapes::ShapeRef.new(shape: JobFlowDetailList, location_name: "JobFlows"))
    DescribeJobFlowsOutput.struct_class = Types::DescribeJobFlowsOutput

    DescribeNotebookExecutionInput.add_member(:notebook_execution_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "NotebookExecutionId"))
    DescribeNotebookExecutionInput.struct_class = Types::DescribeNotebookExecutionInput

    DescribeNotebookExecutionOutput.add_member(:notebook_execution, Shapes::ShapeRef.new(shape: NotebookExecution, location_name: "NotebookExecution"))
    DescribeNotebookExecutionOutput.struct_class = Types::DescribeNotebookExecutionOutput

    DescribeReleaseLabelInput.add_member(:release_label, Shapes::ShapeRef.new(shape: String, location_name: "ReleaseLabel"))
    DescribeReleaseLabelInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeReleaseLabelInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsNumber, location_name: "MaxResults"))
    DescribeReleaseLabelInput.struct_class = Types::DescribeReleaseLabelInput

    DescribeReleaseLabelOutput.add_member(:release_label, Shapes::ShapeRef.new(shape: String, location_name: "ReleaseLabel"))
    DescribeReleaseLabelOutput.add_member(:applications, Shapes::ShapeRef.new(shape: SimplifiedApplicationList, location_name: "Applications"))
    DescribeReleaseLabelOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeReleaseLabelOutput.struct_class = Types::DescribeReleaseLabelOutput

    DescribeSecurityConfigurationInput.add_member(:name, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "Name"))
    DescribeSecurityConfigurationInput.struct_class = Types::DescribeSecurityConfigurationInput

    DescribeSecurityConfigurationOutput.add_member(:name, Shapes::ShapeRef.new(shape: XmlString, location_name: "Name"))
    DescribeSecurityConfigurationOutput.add_member(:security_configuration, Shapes::ShapeRef.new(shape: String, location_name: "SecurityConfiguration"))
    DescribeSecurityConfigurationOutput.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    DescribeSecurityConfigurationOutput.struct_class = Types::DescribeSecurityConfigurationOutput

    DescribeStepInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    DescribeStepInput.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location_name: "StepId"))
    DescribeStepInput.struct_class = Types::DescribeStepInput

    DescribeStepOutput.add_member(:step, Shapes::ShapeRef.new(shape: Step, location_name: "Step"))
    DescribeStepOutput.struct_class = Types::DescribeStepOutput

    DescribeStudioInput.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "StudioId"))
    DescribeStudioInput.struct_class = Types::DescribeStudioInput

    DescribeStudioOutput.add_member(:studio, Shapes::ShapeRef.new(shape: Studio, location_name: "Studio"))
    DescribeStudioOutput.struct_class = Types::DescribeStudioOutput

    EC2InstanceIdsList.member = Shapes::ShapeRef.new(shape: InstanceId)

    EC2InstanceIdsToTerminateList.member = Shapes::ShapeRef.new(shape: InstanceId)

    EbsBlockDevice.add_member(:volume_specification, Shapes::ShapeRef.new(shape: VolumeSpecification, location_name: "VolumeSpecification"))
    EbsBlockDevice.add_member(:device, Shapes::ShapeRef.new(shape: String, location_name: "Device"))
    EbsBlockDevice.struct_class = Types::EbsBlockDevice

    EbsBlockDeviceConfig.add_member(:volume_specification, Shapes::ShapeRef.new(shape: VolumeSpecification, required: true, location_name: "VolumeSpecification"))
    EbsBlockDeviceConfig.add_member(:volumes_per_instance, Shapes::ShapeRef.new(shape: Integer, location_name: "VolumesPerInstance"))
    EbsBlockDeviceConfig.struct_class = Types::EbsBlockDeviceConfig

    EbsBlockDeviceConfigList.member = Shapes::ShapeRef.new(shape: EbsBlockDeviceConfig)

    EbsBlockDeviceList.member = Shapes::ShapeRef.new(shape: EbsBlockDevice)

    EbsConfiguration.add_member(:ebs_block_device_configs, Shapes::ShapeRef.new(shape: EbsBlockDeviceConfigList, location_name: "EbsBlockDeviceConfigs"))
    EbsConfiguration.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EbsOptimized"))
    EbsConfiguration.struct_class = Types::EbsConfiguration

    EbsVolume.add_member(:device, Shapes::ShapeRef.new(shape: String, location_name: "Device"))
    EbsVolume.add_member(:volume_id, Shapes::ShapeRef.new(shape: String, location_name: "VolumeId"))
    EbsVolume.struct_class = Types::EbsVolume

    EbsVolumeList.member = Shapes::ShapeRef.new(shape: EbsVolume)

    Ec2InstanceAttributes.add_member(:ec2_key_name, Shapes::ShapeRef.new(shape: String, location_name: "Ec2KeyName"))
    Ec2InstanceAttributes.add_member(:ec2_subnet_id, Shapes::ShapeRef.new(shape: String, location_name: "Ec2SubnetId"))
    Ec2InstanceAttributes.add_member(:requested_ec2_subnet_ids, Shapes::ShapeRef.new(shape: XmlStringMaxLen256List, location_name: "RequestedEc2SubnetIds"))
    Ec2InstanceAttributes.add_member(:ec2_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "Ec2AvailabilityZone"))
    Ec2InstanceAttributes.add_member(:requested_ec2_availability_zones, Shapes::ShapeRef.new(shape: XmlStringMaxLen256List, location_name: "RequestedEc2AvailabilityZones"))
    Ec2InstanceAttributes.add_member(:iam_instance_profile, Shapes::ShapeRef.new(shape: String, location_name: "IamInstanceProfile"))
    Ec2InstanceAttributes.add_member(:emr_managed_master_security_group, Shapes::ShapeRef.new(shape: String, location_name: "EmrManagedMasterSecurityGroup"))
    Ec2InstanceAttributes.add_member(:emr_managed_slave_security_group, Shapes::ShapeRef.new(shape: String, location_name: "EmrManagedSlaveSecurityGroup"))
    Ec2InstanceAttributes.add_member(:service_access_security_group, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessSecurityGroup"))
    Ec2InstanceAttributes.add_member(:additional_master_security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "AdditionalMasterSecurityGroups"))
    Ec2InstanceAttributes.add_member(:additional_slave_security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "AdditionalSlaveSecurityGroups"))
    Ec2InstanceAttributes.struct_class = Types::Ec2InstanceAttributes

    ExecutionEngineConfig.add_member(:id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "Id"))
    ExecutionEngineConfig.add_member(:type, Shapes::ShapeRef.new(shape: ExecutionEngineType, location_name: "Type"))
    ExecutionEngineConfig.add_member(:master_instance_security_group_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "MasterInstanceSecurityGroupId"))
    ExecutionEngineConfig.struct_class = Types::ExecutionEngineConfig

    FailureDetails.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "Reason"))
    FailureDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    FailureDetails.add_member(:log_file, Shapes::ShapeRef.new(shape: String, location_name: "LogFile"))
    FailureDetails.struct_class = Types::FailureDetails

    GetAutoTerminationPolicyInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    GetAutoTerminationPolicyInput.struct_class = Types::GetAutoTerminationPolicyInput

    GetAutoTerminationPolicyOutput.add_member(:auto_termination_policy, Shapes::ShapeRef.new(shape: AutoTerminationPolicy, location_name: "AutoTerminationPolicy"))
    GetAutoTerminationPolicyOutput.struct_class = Types::GetAutoTerminationPolicyOutput

    GetBlockPublicAccessConfigurationInput.struct_class = Types::GetBlockPublicAccessConfigurationInput

    GetBlockPublicAccessConfigurationOutput.add_member(:block_public_access_configuration, Shapes::ShapeRef.new(shape: BlockPublicAccessConfiguration, required: true, location_name: "BlockPublicAccessConfiguration"))
    GetBlockPublicAccessConfigurationOutput.add_member(:block_public_access_configuration_metadata, Shapes::ShapeRef.new(shape: BlockPublicAccessConfigurationMetadata, required: true, location_name: "BlockPublicAccessConfigurationMetadata"))
    GetBlockPublicAccessConfigurationOutput.struct_class = Types::GetBlockPublicAccessConfigurationOutput

    GetManagedScalingPolicyInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    GetManagedScalingPolicyInput.struct_class = Types::GetManagedScalingPolicyInput

    GetManagedScalingPolicyOutput.add_member(:managed_scaling_policy, Shapes::ShapeRef.new(shape: ManagedScalingPolicy, location_name: "ManagedScalingPolicy"))
    GetManagedScalingPolicyOutput.struct_class = Types::GetManagedScalingPolicyOutput

    GetStudioSessionMappingInput.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "StudioId"))
    GetStudioSessionMappingInput.add_member(:identity_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdentityId"))
    GetStudioSessionMappingInput.add_member(:identity_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdentityName"))
    GetStudioSessionMappingInput.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, required: true, location_name: "IdentityType"))
    GetStudioSessionMappingInput.struct_class = Types::GetStudioSessionMappingInput

    GetStudioSessionMappingOutput.add_member(:session_mapping, Shapes::ShapeRef.new(shape: SessionMappingDetail, location_name: "SessionMapping"))
    GetStudioSessionMappingOutput.struct_class = Types::GetStudioSessionMappingOutput

    HadoopJarStepConfig.add_member(:properties, Shapes::ShapeRef.new(shape: KeyValueList, location_name: "Properties"))
    HadoopJarStepConfig.add_member(:jar, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "Jar"))
    HadoopJarStepConfig.add_member(:main_class, Shapes::ShapeRef.new(shape: XmlString, location_name: "MainClass"))
    HadoopJarStepConfig.add_member(:args, Shapes::ShapeRef.new(shape: XmlStringList, location_name: "Args"))
    HadoopJarStepConfig.struct_class = Types::HadoopJarStepConfig

    HadoopStepConfig.add_member(:jar, Shapes::ShapeRef.new(shape: String, location_name: "Jar"))
    HadoopStepConfig.add_member(:properties, Shapes::ShapeRef.new(shape: StringMap, location_name: "Properties"))
    HadoopStepConfig.add_member(:main_class, Shapes::ShapeRef.new(shape: String, location_name: "MainClass"))
    HadoopStepConfig.add_member(:args, Shapes::ShapeRef.new(shape: StringList, location_name: "Args"))
    HadoopStepConfig.struct_class = Types::HadoopStepConfig

    Instance.add_member(:id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "Id"))
    Instance.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "Ec2InstanceId"))
    Instance.add_member(:public_dns_name, Shapes::ShapeRef.new(shape: String, location_name: "PublicDnsName"))
    Instance.add_member(:public_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "PublicIpAddress"))
    Instance.add_member(:private_dns_name, Shapes::ShapeRef.new(shape: String, location_name: "PrivateDnsName"))
    Instance.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "PrivateIpAddress"))
    Instance.add_member(:status, Shapes::ShapeRef.new(shape: InstanceStatus, location_name: "Status"))
    Instance.add_member(:instance_group_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceGroupId"))
    Instance.add_member(:instance_fleet_id, Shapes::ShapeRef.new(shape: InstanceFleetId, location_name: "InstanceFleetId"))
    Instance.add_member(:market, Shapes::ShapeRef.new(shape: MarketType, location_name: "Market"))
    Instance.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    Instance.add_member(:ebs_volumes, Shapes::ShapeRef.new(shape: EbsVolumeList, location_name: "EbsVolumes"))
    Instance.struct_class = Types::Instance

    InstanceFleet.add_member(:id, Shapes::ShapeRef.new(shape: InstanceFleetId, location_name: "Id"))
    InstanceFleet.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Name"))
    InstanceFleet.add_member(:status, Shapes::ShapeRef.new(shape: InstanceFleetStatus, location_name: "Status"))
    InstanceFleet.add_member(:instance_fleet_type, Shapes::ShapeRef.new(shape: InstanceFleetType, location_name: "InstanceFleetType"))
    InstanceFleet.add_member(:target_on_demand_capacity, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "TargetOnDemandCapacity"))
    InstanceFleet.add_member(:target_spot_capacity, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "TargetSpotCapacity"))
    InstanceFleet.add_member(:provisioned_on_demand_capacity, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "ProvisionedOnDemandCapacity"))
    InstanceFleet.add_member(:provisioned_spot_capacity, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "ProvisionedSpotCapacity"))
    InstanceFleet.add_member(:instance_type_specifications, Shapes::ShapeRef.new(shape: InstanceTypeSpecificationList, location_name: "InstanceTypeSpecifications"))
    InstanceFleet.add_member(:launch_specifications, Shapes::ShapeRef.new(shape: InstanceFleetProvisioningSpecifications, location_name: "LaunchSpecifications"))
    InstanceFleet.struct_class = Types::InstanceFleet

    InstanceFleetConfig.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Name"))
    InstanceFleetConfig.add_member(:instance_fleet_type, Shapes::ShapeRef.new(shape: InstanceFleetType, required: true, location_name: "InstanceFleetType"))
    InstanceFleetConfig.add_member(:target_on_demand_capacity, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "TargetOnDemandCapacity"))
    InstanceFleetConfig.add_member(:target_spot_capacity, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "TargetSpotCapacity"))
    InstanceFleetConfig.add_member(:instance_type_configs, Shapes::ShapeRef.new(shape: InstanceTypeConfigList, location_name: "InstanceTypeConfigs"))
    InstanceFleetConfig.add_member(:launch_specifications, Shapes::ShapeRef.new(shape: InstanceFleetProvisioningSpecifications, location_name: "LaunchSpecifications"))
    InstanceFleetConfig.struct_class = Types::InstanceFleetConfig

    InstanceFleetConfigList.member = Shapes::ShapeRef.new(shape: InstanceFleetConfig)

    InstanceFleetList.member = Shapes::ShapeRef.new(shape: InstanceFleet)

    InstanceFleetModifyConfig.add_member(:instance_fleet_id, Shapes::ShapeRef.new(shape: InstanceFleetId, required: true, location_name: "InstanceFleetId"))
    InstanceFleetModifyConfig.add_member(:target_on_demand_capacity, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "TargetOnDemandCapacity"))
    InstanceFleetModifyConfig.add_member(:target_spot_capacity, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "TargetSpotCapacity"))
    InstanceFleetModifyConfig.struct_class = Types::InstanceFleetModifyConfig

    InstanceFleetProvisioningSpecifications.add_member(:spot_specification, Shapes::ShapeRef.new(shape: SpotProvisioningSpecification, location_name: "SpotSpecification"))
    InstanceFleetProvisioningSpecifications.add_member(:on_demand_specification, Shapes::ShapeRef.new(shape: OnDemandProvisioningSpecification, location_name: "OnDemandSpecification"))
    InstanceFleetProvisioningSpecifications.struct_class = Types::InstanceFleetProvisioningSpecifications

    InstanceFleetStateChangeReason.add_member(:code, Shapes::ShapeRef.new(shape: InstanceFleetStateChangeReasonCode, location_name: "Code"))
    InstanceFleetStateChangeReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InstanceFleetStateChangeReason.struct_class = Types::InstanceFleetStateChangeReason

    InstanceFleetStatus.add_member(:state, Shapes::ShapeRef.new(shape: InstanceFleetState, location_name: "State"))
    InstanceFleetStatus.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: InstanceFleetStateChangeReason, location_name: "StateChangeReason"))
    InstanceFleetStatus.add_member(:timeline, Shapes::ShapeRef.new(shape: InstanceFleetTimeline, location_name: "Timeline"))
    InstanceFleetStatus.struct_class = Types::InstanceFleetStatus

    InstanceFleetTimeline.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    InstanceFleetTimeline.add_member(:ready_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "ReadyDateTime"))
    InstanceFleetTimeline.add_member(:end_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndDateTime"))
    InstanceFleetTimeline.struct_class = Types::InstanceFleetTimeline

    InstanceGroup.add_member(:id, Shapes::ShapeRef.new(shape: InstanceGroupId, location_name: "Id"))
    InstanceGroup.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    InstanceGroup.add_member(:market, Shapes::ShapeRef.new(shape: MarketType, location_name: "Market"))
    InstanceGroup.add_member(:instance_group_type, Shapes::ShapeRef.new(shape: InstanceGroupType, location_name: "InstanceGroupType"))
    InstanceGroup.add_member(:bid_price, Shapes::ShapeRef.new(shape: String, location_name: "BidPrice"))
    InstanceGroup.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    InstanceGroup.add_member(:requested_instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "RequestedInstanceCount"))
    InstanceGroup.add_member(:running_instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "RunningInstanceCount"))
    InstanceGroup.add_member(:status, Shapes::ShapeRef.new(shape: InstanceGroupStatus, location_name: "Status"))
    InstanceGroup.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "Configurations"))
    InstanceGroup.add_member(:configurations_version, Shapes::ShapeRef.new(shape: Long, location_name: "ConfigurationsVersion"))
    InstanceGroup.add_member(:last_successfully_applied_configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "LastSuccessfullyAppliedConfigurations"))
    InstanceGroup.add_member(:last_successfully_applied_configurations_version, Shapes::ShapeRef.new(shape: Long, location_name: "LastSuccessfullyAppliedConfigurationsVersion"))
    InstanceGroup.add_member(:ebs_block_devices, Shapes::ShapeRef.new(shape: EbsBlockDeviceList, location_name: "EbsBlockDevices"))
    InstanceGroup.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EbsOptimized"))
    InstanceGroup.add_member(:shrink_policy, Shapes::ShapeRef.new(shape: ShrinkPolicy, location_name: "ShrinkPolicy"))
    InstanceGroup.add_member(:auto_scaling_policy, Shapes::ShapeRef.new(shape: AutoScalingPolicyDescription, location_name: "AutoScalingPolicy"))
    InstanceGroup.add_member(:custom_ami_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "CustomAmiId"))
    InstanceGroup.struct_class = Types::InstanceGroup

    InstanceGroupConfig.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Name"))
    InstanceGroupConfig.add_member(:market, Shapes::ShapeRef.new(shape: MarketType, location_name: "Market"))
    InstanceGroupConfig.add_member(:instance_role, Shapes::ShapeRef.new(shape: InstanceRoleType, required: true, location_name: "InstanceRole"))
    InstanceGroupConfig.add_member(:bid_price, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "BidPrice"))
    InstanceGroupConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "InstanceType"))
    InstanceGroupConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "InstanceCount"))
    InstanceGroupConfig.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "Configurations"))
    InstanceGroupConfig.add_member(:ebs_configuration, Shapes::ShapeRef.new(shape: EbsConfiguration, location_name: "EbsConfiguration"))
    InstanceGroupConfig.add_member(:auto_scaling_policy, Shapes::ShapeRef.new(shape: AutoScalingPolicy, location_name: "AutoScalingPolicy"))
    InstanceGroupConfig.add_member(:custom_ami_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "CustomAmiId"))
    InstanceGroupConfig.struct_class = Types::InstanceGroupConfig

    InstanceGroupConfigList.member = Shapes::ShapeRef.new(shape: InstanceGroupConfig)

    InstanceGroupDetail.add_member(:instance_group_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "InstanceGroupId"))
    InstanceGroupDetail.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Name"))
    InstanceGroupDetail.add_member(:market, Shapes::ShapeRef.new(shape: MarketType, required: true, location_name: "Market"))
    InstanceGroupDetail.add_member(:instance_role, Shapes::ShapeRef.new(shape: InstanceRoleType, required: true, location_name: "InstanceRole"))
    InstanceGroupDetail.add_member(:bid_price, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "BidPrice"))
    InstanceGroupDetail.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "InstanceType"))
    InstanceGroupDetail.add_member(:instance_request_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "InstanceRequestCount"))
    InstanceGroupDetail.add_member(:instance_running_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "InstanceRunningCount"))
    InstanceGroupDetail.add_member(:state, Shapes::ShapeRef.new(shape: InstanceGroupState, required: true, location_name: "State"))
    InstanceGroupDetail.add_member(:last_state_change_reason, Shapes::ShapeRef.new(shape: XmlString, location_name: "LastStateChangeReason"))
    InstanceGroupDetail.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "CreationDateTime"))
    InstanceGroupDetail.add_member(:start_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartDateTime"))
    InstanceGroupDetail.add_member(:ready_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "ReadyDateTime"))
    InstanceGroupDetail.add_member(:end_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndDateTime"))
    InstanceGroupDetail.add_member(:custom_ami_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "CustomAmiId"))
    InstanceGroupDetail.struct_class = Types::InstanceGroupDetail

    InstanceGroupDetailList.member = Shapes::ShapeRef.new(shape: InstanceGroupDetail)

    InstanceGroupIdsList.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen256)

    InstanceGroupList.member = Shapes::ShapeRef.new(shape: InstanceGroup)

    InstanceGroupModifyConfig.add_member(:instance_group_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "InstanceGroupId"))
    InstanceGroupModifyConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InstanceCount"))
    InstanceGroupModifyConfig.add_member(:ec2_instance_ids_to_terminate, Shapes::ShapeRef.new(shape: EC2InstanceIdsToTerminateList, location_name: "EC2InstanceIdsToTerminate"))
    InstanceGroupModifyConfig.add_member(:shrink_policy, Shapes::ShapeRef.new(shape: ShrinkPolicy, location_name: "ShrinkPolicy"))
    InstanceGroupModifyConfig.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "Configurations"))
    InstanceGroupModifyConfig.struct_class = Types::InstanceGroupModifyConfig

    InstanceGroupModifyConfigList.member = Shapes::ShapeRef.new(shape: InstanceGroupModifyConfig)

    InstanceGroupStateChangeReason.add_member(:code, Shapes::ShapeRef.new(shape: InstanceGroupStateChangeReasonCode, location_name: "Code"))
    InstanceGroupStateChangeReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InstanceGroupStateChangeReason.struct_class = Types::InstanceGroupStateChangeReason

    InstanceGroupStatus.add_member(:state, Shapes::ShapeRef.new(shape: InstanceGroupState, location_name: "State"))
    InstanceGroupStatus.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: InstanceGroupStateChangeReason, location_name: "StateChangeReason"))
    InstanceGroupStatus.add_member(:timeline, Shapes::ShapeRef.new(shape: InstanceGroupTimeline, location_name: "Timeline"))
    InstanceGroupStatus.struct_class = Types::InstanceGroupStatus

    InstanceGroupTimeline.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    InstanceGroupTimeline.add_member(:ready_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "ReadyDateTime"))
    InstanceGroupTimeline.add_member(:end_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndDateTime"))
    InstanceGroupTimeline.struct_class = Types::InstanceGroupTimeline

    InstanceGroupTypeList.member = Shapes::ShapeRef.new(shape: InstanceGroupType)

    InstanceList.member = Shapes::ShapeRef.new(shape: Instance)

    InstanceResizePolicy.add_member(:instances_to_terminate, Shapes::ShapeRef.new(shape: EC2InstanceIdsList, location_name: "InstancesToTerminate"))
    InstanceResizePolicy.add_member(:instances_to_protect, Shapes::ShapeRef.new(shape: EC2InstanceIdsList, location_name: "InstancesToProtect"))
    InstanceResizePolicy.add_member(:instance_termination_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "InstanceTerminationTimeout"))
    InstanceResizePolicy.struct_class = Types::InstanceResizePolicy

    InstanceStateChangeReason.add_member(:code, Shapes::ShapeRef.new(shape: InstanceStateChangeReasonCode, location_name: "Code"))
    InstanceStateChangeReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InstanceStateChangeReason.struct_class = Types::InstanceStateChangeReason

    InstanceStateList.member = Shapes::ShapeRef.new(shape: InstanceState)

    InstanceStatus.add_member(:state, Shapes::ShapeRef.new(shape: InstanceState, location_name: "State"))
    InstanceStatus.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: InstanceStateChangeReason, location_name: "StateChangeReason"))
    InstanceStatus.add_member(:timeline, Shapes::ShapeRef.new(shape: InstanceTimeline, location_name: "Timeline"))
    InstanceStatus.struct_class = Types::InstanceStatus

    InstanceTimeline.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    InstanceTimeline.add_member(:ready_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "ReadyDateTime"))
    InstanceTimeline.add_member(:end_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndDateTime"))
    InstanceTimeline.struct_class = Types::InstanceTimeline

    InstanceTypeConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "InstanceType"))
    InstanceTypeConfig.add_member(:weighted_capacity, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "WeightedCapacity"))
    InstanceTypeConfig.add_member(:bid_price, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "BidPrice"))
    InstanceTypeConfig.add_member(:bid_price_as_percentage_of_on_demand_price, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "BidPriceAsPercentageOfOnDemandPrice"))
    InstanceTypeConfig.add_member(:ebs_configuration, Shapes::ShapeRef.new(shape: EbsConfiguration, location_name: "EbsConfiguration"))
    InstanceTypeConfig.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "Configurations"))
    InstanceTypeConfig.add_member(:custom_ami_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "CustomAmiId"))
    InstanceTypeConfig.struct_class = Types::InstanceTypeConfig

    InstanceTypeConfigList.member = Shapes::ShapeRef.new(shape: InstanceTypeConfig)

    InstanceTypeSpecification.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    InstanceTypeSpecification.add_member(:weighted_capacity, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "WeightedCapacity"))
    InstanceTypeSpecification.add_member(:bid_price, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "BidPrice"))
    InstanceTypeSpecification.add_member(:bid_price_as_percentage_of_on_demand_price, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "BidPriceAsPercentageOfOnDemandPrice"))
    InstanceTypeSpecification.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "Configurations"))
    InstanceTypeSpecification.add_member(:ebs_block_devices, Shapes::ShapeRef.new(shape: EbsBlockDeviceList, location_name: "EbsBlockDevices"))
    InstanceTypeSpecification.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EbsOptimized"))
    InstanceTypeSpecification.add_member(:custom_ami_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "CustomAmiId"))
    InstanceTypeSpecification.struct_class = Types::InstanceTypeSpecification

    InstanceTypeSpecificationList.member = Shapes::ShapeRef.new(shape: InstanceTypeSpecification)

    InternalServerError.struct_class = Types::InternalServerError

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidRequestException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    JobFlowDetail.add_member(:job_flow_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "JobFlowId"))
    JobFlowDetail.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "Name"))
    JobFlowDetail.add_member(:log_uri, Shapes::ShapeRef.new(shape: XmlString, location_name: "LogUri"))
    JobFlowDetail.add_member(:log_encryption_kms_key_id, Shapes::ShapeRef.new(shape: XmlString, location_name: "LogEncryptionKmsKeyId"))
    JobFlowDetail.add_member(:ami_version, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "AmiVersion"))
    JobFlowDetail.add_member(:execution_status_detail, Shapes::ShapeRef.new(shape: JobFlowExecutionStatusDetail, required: true, location_name: "ExecutionStatusDetail"))
    JobFlowDetail.add_member(:instances, Shapes::ShapeRef.new(shape: JobFlowInstancesDetail, required: true, location_name: "Instances"))
    JobFlowDetail.add_member(:steps, Shapes::ShapeRef.new(shape: StepDetailList, location_name: "Steps"))
    JobFlowDetail.add_member(:bootstrap_actions, Shapes::ShapeRef.new(shape: BootstrapActionDetailList, location_name: "BootstrapActions"))
    JobFlowDetail.add_member(:supported_products, Shapes::ShapeRef.new(shape: SupportedProductsList, location_name: "SupportedProducts"))
    JobFlowDetail.add_member(:visible_to_all_users, Shapes::ShapeRef.new(shape: Boolean, location_name: "VisibleToAllUsers"))
    JobFlowDetail.add_member(:job_flow_role, Shapes::ShapeRef.new(shape: XmlString, location_name: "JobFlowRole"))
    JobFlowDetail.add_member(:service_role, Shapes::ShapeRef.new(shape: XmlString, location_name: "ServiceRole"))
    JobFlowDetail.add_member(:auto_scaling_role, Shapes::ShapeRef.new(shape: XmlString, location_name: "AutoScalingRole"))
    JobFlowDetail.add_member(:scale_down_behavior, Shapes::ShapeRef.new(shape: ScaleDownBehavior, location_name: "ScaleDownBehavior"))
    JobFlowDetail.struct_class = Types::JobFlowDetail

    JobFlowDetailList.member = Shapes::ShapeRef.new(shape: JobFlowDetail)

    JobFlowExecutionStateList.member = Shapes::ShapeRef.new(shape: JobFlowExecutionState)

    JobFlowExecutionStatusDetail.add_member(:state, Shapes::ShapeRef.new(shape: JobFlowExecutionState, required: true, location_name: "State"))
    JobFlowExecutionStatusDetail.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "CreationDateTime"))
    JobFlowExecutionStatusDetail.add_member(:start_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartDateTime"))
    JobFlowExecutionStatusDetail.add_member(:ready_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "ReadyDateTime"))
    JobFlowExecutionStatusDetail.add_member(:end_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndDateTime"))
    JobFlowExecutionStatusDetail.add_member(:last_state_change_reason, Shapes::ShapeRef.new(shape: XmlString, location_name: "LastStateChangeReason"))
    JobFlowExecutionStatusDetail.struct_class = Types::JobFlowExecutionStatusDetail

    JobFlowInstancesConfig.add_member(:master_instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "MasterInstanceType"))
    JobFlowInstancesConfig.add_member(:slave_instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "SlaveInstanceType"))
    JobFlowInstancesConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InstanceCount"))
    JobFlowInstancesConfig.add_member(:instance_groups, Shapes::ShapeRef.new(shape: InstanceGroupConfigList, location_name: "InstanceGroups"))
    JobFlowInstancesConfig.add_member(:instance_fleets, Shapes::ShapeRef.new(shape: InstanceFleetConfigList, location_name: "InstanceFleets"))
    JobFlowInstancesConfig.add_member(:ec2_key_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Ec2KeyName"))
    JobFlowInstancesConfig.add_member(:placement, Shapes::ShapeRef.new(shape: PlacementType, location_name: "Placement"))
    JobFlowInstancesConfig.add_member(:keep_job_flow_alive_when_no_steps, Shapes::ShapeRef.new(shape: Boolean, location_name: "KeepJobFlowAliveWhenNoSteps"))
    JobFlowInstancesConfig.add_member(:termination_protected, Shapes::ShapeRef.new(shape: Boolean, location_name: "TerminationProtected"))
    JobFlowInstancesConfig.add_member(:hadoop_version, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "HadoopVersion"))
    JobFlowInstancesConfig.add_member(:ec2_subnet_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Ec2SubnetId"))
    JobFlowInstancesConfig.add_member(:ec2_subnet_ids, Shapes::ShapeRef.new(shape: XmlStringMaxLen256List, location_name: "Ec2SubnetIds"))
    JobFlowInstancesConfig.add_member(:emr_managed_master_security_group, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "EmrManagedMasterSecurityGroup"))
    JobFlowInstancesConfig.add_member(:emr_managed_slave_security_group, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "EmrManagedSlaveSecurityGroup"))
    JobFlowInstancesConfig.add_member(:service_access_security_group, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "ServiceAccessSecurityGroup"))
    JobFlowInstancesConfig.add_member(:additional_master_security_groups, Shapes::ShapeRef.new(shape: SecurityGroupsList, location_name: "AdditionalMasterSecurityGroups"))
    JobFlowInstancesConfig.add_member(:additional_slave_security_groups, Shapes::ShapeRef.new(shape: SecurityGroupsList, location_name: "AdditionalSlaveSecurityGroups"))
    JobFlowInstancesConfig.struct_class = Types::JobFlowInstancesConfig

    JobFlowInstancesDetail.add_member(:master_instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "MasterInstanceType"))
    JobFlowInstancesDetail.add_member(:master_public_dns_name, Shapes::ShapeRef.new(shape: XmlString, location_name: "MasterPublicDnsName"))
    JobFlowInstancesDetail.add_member(:master_instance_id, Shapes::ShapeRef.new(shape: XmlString, location_name: "MasterInstanceId"))
    JobFlowInstancesDetail.add_member(:slave_instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "SlaveInstanceType"))
    JobFlowInstancesDetail.add_member(:instance_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "InstanceCount"))
    JobFlowInstancesDetail.add_member(:instance_groups, Shapes::ShapeRef.new(shape: InstanceGroupDetailList, location_name: "InstanceGroups"))
    JobFlowInstancesDetail.add_member(:normalized_instance_hours, Shapes::ShapeRef.new(shape: Integer, location_name: "NormalizedInstanceHours"))
    JobFlowInstancesDetail.add_member(:ec2_key_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Ec2KeyName"))
    JobFlowInstancesDetail.add_member(:ec2_subnet_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Ec2SubnetId"))
    JobFlowInstancesDetail.add_member(:placement, Shapes::ShapeRef.new(shape: PlacementType, location_name: "Placement"))
    JobFlowInstancesDetail.add_member(:keep_job_flow_alive_when_no_steps, Shapes::ShapeRef.new(shape: Boolean, location_name: "KeepJobFlowAliveWhenNoSteps"))
    JobFlowInstancesDetail.add_member(:termination_protected, Shapes::ShapeRef.new(shape: Boolean, location_name: "TerminationProtected"))
    JobFlowInstancesDetail.add_member(:hadoop_version, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "HadoopVersion"))
    JobFlowInstancesDetail.struct_class = Types::JobFlowInstancesDetail

    KerberosAttributes.add_member(:realm, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "Realm"))
    KerberosAttributes.add_member(:kdc_admin_password, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "KdcAdminPassword"))
    KerberosAttributes.add_member(:cross_realm_trust_principal_password, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "CrossRealmTrustPrincipalPassword"))
    KerberosAttributes.add_member(:ad_domain_join_user, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "ADDomainJoinUser"))
    KerberosAttributes.add_member(:ad_domain_join_password, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "ADDomainJoinPassword"))
    KerberosAttributes.struct_class = Types::KerberosAttributes

    KeyValue.add_member(:key, Shapes::ShapeRef.new(shape: XmlString, location_name: "Key"))
    KeyValue.add_member(:value, Shapes::ShapeRef.new(shape: XmlString, location_name: "Value"))
    KeyValue.struct_class = Types::KeyValue

    KeyValueList.member = Shapes::ShapeRef.new(shape: KeyValue)

    ListBootstrapActionsInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    ListBootstrapActionsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListBootstrapActionsInput.struct_class = Types::ListBootstrapActionsInput

    ListBootstrapActionsOutput.add_member(:bootstrap_actions, Shapes::ShapeRef.new(shape: CommandList, location_name: "BootstrapActions"))
    ListBootstrapActionsOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListBootstrapActionsOutput.struct_class = Types::ListBootstrapActionsOutput

    ListClustersInput.add_member(:created_after, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedAfter"))
    ListClustersInput.add_member(:created_before, Shapes::ShapeRef.new(shape: Date, location_name: "CreatedBefore"))
    ListClustersInput.add_member(:cluster_states, Shapes::ShapeRef.new(shape: ClusterStateList, location_name: "ClusterStates"))
    ListClustersInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListClustersInput.struct_class = Types::ListClustersInput

    ListClustersOutput.add_member(:clusters, Shapes::ShapeRef.new(shape: ClusterSummaryList, location_name: "Clusters"))
    ListClustersOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListClustersOutput.struct_class = Types::ListClustersOutput

    ListInstanceFleetsInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    ListInstanceFleetsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListInstanceFleetsInput.struct_class = Types::ListInstanceFleetsInput

    ListInstanceFleetsOutput.add_member(:instance_fleets, Shapes::ShapeRef.new(shape: InstanceFleetList, location_name: "InstanceFleets"))
    ListInstanceFleetsOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListInstanceFleetsOutput.struct_class = Types::ListInstanceFleetsOutput

    ListInstanceGroupsInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    ListInstanceGroupsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListInstanceGroupsInput.struct_class = Types::ListInstanceGroupsInput

    ListInstanceGroupsOutput.add_member(:instance_groups, Shapes::ShapeRef.new(shape: InstanceGroupList, location_name: "InstanceGroups"))
    ListInstanceGroupsOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListInstanceGroupsOutput.struct_class = Types::ListInstanceGroupsOutput

    ListInstancesInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    ListInstancesInput.add_member(:instance_group_id, Shapes::ShapeRef.new(shape: InstanceGroupId, location_name: "InstanceGroupId"))
    ListInstancesInput.add_member(:instance_group_types, Shapes::ShapeRef.new(shape: InstanceGroupTypeList, location_name: "InstanceGroupTypes"))
    ListInstancesInput.add_member(:instance_fleet_id, Shapes::ShapeRef.new(shape: InstanceFleetId, location_name: "InstanceFleetId"))
    ListInstancesInput.add_member(:instance_fleet_type, Shapes::ShapeRef.new(shape: InstanceFleetType, location_name: "InstanceFleetType"))
    ListInstancesInput.add_member(:instance_states, Shapes::ShapeRef.new(shape: InstanceStateList, location_name: "InstanceStates"))
    ListInstancesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListInstancesInput.struct_class = Types::ListInstancesInput

    ListInstancesOutput.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceList, location_name: "Instances"))
    ListInstancesOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListInstancesOutput.struct_class = Types::ListInstancesOutput

    ListNotebookExecutionsInput.add_member(:editor_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "EditorId"))
    ListNotebookExecutionsInput.add_member(:status, Shapes::ShapeRef.new(shape: NotebookExecutionStatus, location_name: "Status"))
    ListNotebookExecutionsInput.add_member(:from, Shapes::ShapeRef.new(shape: Date, location_name: "From"))
    ListNotebookExecutionsInput.add_member(:to, Shapes::ShapeRef.new(shape: Date, location_name: "To"))
    ListNotebookExecutionsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListNotebookExecutionsInput.struct_class = Types::ListNotebookExecutionsInput

    ListNotebookExecutionsOutput.add_member(:notebook_executions, Shapes::ShapeRef.new(shape: NotebookExecutionSummaryList, location_name: "NotebookExecutions"))
    ListNotebookExecutionsOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListNotebookExecutionsOutput.struct_class = Types::ListNotebookExecutionsOutput

    ListReleaseLabelsInput.add_member(:filters, Shapes::ShapeRef.new(shape: ReleaseLabelFilter, location_name: "Filters"))
    ListReleaseLabelsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListReleaseLabelsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsNumber, location_name: "MaxResults"))
    ListReleaseLabelsInput.struct_class = Types::ListReleaseLabelsInput

    ListReleaseLabelsOutput.add_member(:release_labels, Shapes::ShapeRef.new(shape: StringList, location_name: "ReleaseLabels"))
    ListReleaseLabelsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListReleaseLabelsOutput.struct_class = Types::ListReleaseLabelsOutput

    ListSecurityConfigurationsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListSecurityConfigurationsInput.struct_class = Types::ListSecurityConfigurationsInput

    ListSecurityConfigurationsOutput.add_member(:security_configurations, Shapes::ShapeRef.new(shape: SecurityConfigurationList, location_name: "SecurityConfigurations"))
    ListSecurityConfigurationsOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListSecurityConfigurationsOutput.struct_class = Types::ListSecurityConfigurationsOutput

    ListStepsInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    ListStepsInput.add_member(:step_states, Shapes::ShapeRef.new(shape: StepStateList, location_name: "StepStates"))
    ListStepsInput.add_member(:step_ids, Shapes::ShapeRef.new(shape: XmlStringList, location_name: "StepIds"))
    ListStepsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListStepsInput.struct_class = Types::ListStepsInput

    ListStepsOutput.add_member(:steps, Shapes::ShapeRef.new(shape: StepSummaryList, location_name: "Steps"))
    ListStepsOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListStepsOutput.struct_class = Types::ListStepsOutput

    ListStudioSessionMappingsInput.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "StudioId"))
    ListStudioSessionMappingsInput.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "IdentityType"))
    ListStudioSessionMappingsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListStudioSessionMappingsInput.struct_class = Types::ListStudioSessionMappingsInput

    ListStudioSessionMappingsOutput.add_member(:session_mappings, Shapes::ShapeRef.new(shape: SessionMappingSummaryList, location_name: "SessionMappings"))
    ListStudioSessionMappingsOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListStudioSessionMappingsOutput.struct_class = Types::ListStudioSessionMappingsOutput

    ListStudiosInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListStudiosInput.struct_class = Types::ListStudiosInput

    ListStudiosOutput.add_member(:studios, Shapes::ShapeRef.new(shape: StudioSummaryList, location_name: "Studios"))
    ListStudiosOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    ListStudiosOutput.struct_class = Types::ListStudiosOutput

    ManagedScalingPolicy.add_member(:compute_limits, Shapes::ShapeRef.new(shape: ComputeLimits, location_name: "ComputeLimits"))
    ManagedScalingPolicy.struct_class = Types::ManagedScalingPolicy

    MetricDimension.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    MetricDimension.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    MetricDimension.struct_class = Types::MetricDimension

    MetricDimensionList.member = Shapes::ShapeRef.new(shape: MetricDimension)

    ModifyClusterInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterId"))
    ModifyClusterInput.add_member(:step_concurrency_level, Shapes::ShapeRef.new(shape: Integer, location_name: "StepConcurrencyLevel"))
    ModifyClusterInput.struct_class = Types::ModifyClusterInput

    ModifyClusterOutput.add_member(:step_concurrency_level, Shapes::ShapeRef.new(shape: Integer, location_name: "StepConcurrencyLevel"))
    ModifyClusterOutput.struct_class = Types::ModifyClusterOutput

    ModifyInstanceFleetInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    ModifyInstanceFleetInput.add_member(:instance_fleet, Shapes::ShapeRef.new(shape: InstanceFleetModifyConfig, required: true, location_name: "InstanceFleet"))
    ModifyInstanceFleetInput.struct_class = Types::ModifyInstanceFleetInput

    ModifyInstanceGroupsInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "ClusterId"))
    ModifyInstanceGroupsInput.add_member(:instance_groups, Shapes::ShapeRef.new(shape: InstanceGroupModifyConfigList, location_name: "InstanceGroups"))
    ModifyInstanceGroupsInput.struct_class = Types::ModifyInstanceGroupsInput

    NewSupportedProductsList.member = Shapes::ShapeRef.new(shape: SupportedProductConfig)

    NotebookExecution.add_member(:notebook_execution_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "NotebookExecutionId"))
    NotebookExecution.add_member(:editor_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "EditorId"))
    NotebookExecution.add_member(:execution_engine, Shapes::ShapeRef.new(shape: ExecutionEngineConfig, location_name: "ExecutionEngine"))
    NotebookExecution.add_member(:notebook_execution_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "NotebookExecutionName"))
    NotebookExecution.add_member(:notebook_params, Shapes::ShapeRef.new(shape: XmlString, location_name: "NotebookParams"))
    NotebookExecution.add_member(:status, Shapes::ShapeRef.new(shape: NotebookExecutionStatus, location_name: "Status"))
    NotebookExecution.add_member(:start_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartTime"))
    NotebookExecution.add_member(:end_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndTime"))
    NotebookExecution.add_member(:arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Arn"))
    NotebookExecution.add_member(:output_notebook_uri, Shapes::ShapeRef.new(shape: XmlString, location_name: "OutputNotebookURI"))
    NotebookExecution.add_member(:last_state_change_reason, Shapes::ShapeRef.new(shape: XmlString, location_name: "LastStateChangeReason"))
    NotebookExecution.add_member(:notebook_instance_security_group_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "NotebookInstanceSecurityGroupId"))
    NotebookExecution.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    NotebookExecution.struct_class = Types::NotebookExecution

    NotebookExecutionSummary.add_member(:notebook_execution_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "NotebookExecutionId"))
    NotebookExecutionSummary.add_member(:editor_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "EditorId"))
    NotebookExecutionSummary.add_member(:notebook_execution_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "NotebookExecutionName"))
    NotebookExecutionSummary.add_member(:status, Shapes::ShapeRef.new(shape: NotebookExecutionStatus, location_name: "Status"))
    NotebookExecutionSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartTime"))
    NotebookExecutionSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndTime"))
    NotebookExecutionSummary.struct_class = Types::NotebookExecutionSummary

    NotebookExecutionSummaryList.member = Shapes::ShapeRef.new(shape: NotebookExecutionSummary)

    OnDemandCapacityReservationOptions.add_member(:usage_strategy, Shapes::ShapeRef.new(shape: OnDemandCapacityReservationUsageStrategy, location_name: "UsageStrategy"))
    OnDemandCapacityReservationOptions.add_member(:capacity_reservation_preference, Shapes::ShapeRef.new(shape: OnDemandCapacityReservationPreference, location_name: "CapacityReservationPreference"))
    OnDemandCapacityReservationOptions.add_member(:capacity_reservation_resource_group_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "CapacityReservationResourceGroupArn"))
    OnDemandCapacityReservationOptions.struct_class = Types::OnDemandCapacityReservationOptions

    OnDemandProvisioningSpecification.add_member(:allocation_strategy, Shapes::ShapeRef.new(shape: OnDemandProvisioningAllocationStrategy, required: true, location_name: "AllocationStrategy"))
    OnDemandProvisioningSpecification.add_member(:capacity_reservation_options, Shapes::ShapeRef.new(shape: OnDemandCapacityReservationOptions, location_name: "CapacityReservationOptions"))
    OnDemandProvisioningSpecification.struct_class = Types::OnDemandProvisioningSpecification

    PlacementGroupConfig.add_member(:instance_role, Shapes::ShapeRef.new(shape: InstanceRoleType, required: true, location_name: "InstanceRole"))
    PlacementGroupConfig.add_member(:placement_strategy, Shapes::ShapeRef.new(shape: PlacementGroupStrategy, location_name: "PlacementStrategy"))
    PlacementGroupConfig.struct_class = Types::PlacementGroupConfig

    PlacementGroupConfigList.member = Shapes::ShapeRef.new(shape: PlacementGroupConfig)

    PlacementType.add_member(:availability_zone, Shapes::ShapeRef.new(shape: XmlString, location_name: "AvailabilityZone"))
    PlacementType.add_member(:availability_zones, Shapes::ShapeRef.new(shape: XmlStringMaxLen256List, location_name: "AvailabilityZones"))
    PlacementType.struct_class = Types::PlacementType

    PortRange.add_member(:min_range, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "MinRange"))
    PortRange.add_member(:max_range, Shapes::ShapeRef.new(shape: Port, location_name: "MaxRange"))
    PortRange.struct_class = Types::PortRange

    PortRanges.member = Shapes::ShapeRef.new(shape: PortRange)

    PutAutoScalingPolicyInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    PutAutoScalingPolicyInput.add_member(:instance_group_id, Shapes::ShapeRef.new(shape: InstanceGroupId, required: true, location_name: "InstanceGroupId"))
    PutAutoScalingPolicyInput.add_member(:auto_scaling_policy, Shapes::ShapeRef.new(shape: AutoScalingPolicy, required: true, location_name: "AutoScalingPolicy"))
    PutAutoScalingPolicyInput.struct_class = Types::PutAutoScalingPolicyInput

    PutAutoScalingPolicyOutput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "ClusterId"))
    PutAutoScalingPolicyOutput.add_member(:instance_group_id, Shapes::ShapeRef.new(shape: InstanceGroupId, location_name: "InstanceGroupId"))
    PutAutoScalingPolicyOutput.add_member(:auto_scaling_policy, Shapes::ShapeRef.new(shape: AutoScalingPolicyDescription, location_name: "AutoScalingPolicy"))
    PutAutoScalingPolicyOutput.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "ClusterArn"))
    PutAutoScalingPolicyOutput.struct_class = Types::PutAutoScalingPolicyOutput

    PutAutoTerminationPolicyInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    PutAutoTerminationPolicyInput.add_member(:auto_termination_policy, Shapes::ShapeRef.new(shape: AutoTerminationPolicy, location_name: "AutoTerminationPolicy"))
    PutAutoTerminationPolicyInput.struct_class = Types::PutAutoTerminationPolicyInput

    PutAutoTerminationPolicyOutput.struct_class = Types::PutAutoTerminationPolicyOutput

    PutBlockPublicAccessConfigurationInput.add_member(:block_public_access_configuration, Shapes::ShapeRef.new(shape: BlockPublicAccessConfiguration, required: true, location_name: "BlockPublicAccessConfiguration"))
    PutBlockPublicAccessConfigurationInput.struct_class = Types::PutBlockPublicAccessConfigurationInput

    PutBlockPublicAccessConfigurationOutput.struct_class = Types::PutBlockPublicAccessConfigurationOutput

    PutManagedScalingPolicyInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    PutManagedScalingPolicyInput.add_member(:managed_scaling_policy, Shapes::ShapeRef.new(shape: ManagedScalingPolicy, required: true, location_name: "ManagedScalingPolicy"))
    PutManagedScalingPolicyInput.struct_class = Types::PutManagedScalingPolicyInput

    PutManagedScalingPolicyOutput.struct_class = Types::PutManagedScalingPolicyOutput

    ReleaseLabelFilter.add_member(:prefix, Shapes::ShapeRef.new(shape: String, location_name: "Prefix"))
    ReleaseLabelFilter.add_member(:application, Shapes::ShapeRef.new(shape: String, location_name: "Application"))
    ReleaseLabelFilter.struct_class = Types::ReleaseLabelFilter

    RemoveAutoScalingPolicyInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    RemoveAutoScalingPolicyInput.add_member(:instance_group_id, Shapes::ShapeRef.new(shape: InstanceGroupId, required: true, location_name: "InstanceGroupId"))
    RemoveAutoScalingPolicyInput.struct_class = Types::RemoveAutoScalingPolicyInput

    RemoveAutoScalingPolicyOutput.struct_class = Types::RemoveAutoScalingPolicyOutput

    RemoveAutoTerminationPolicyInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    RemoveAutoTerminationPolicyInput.struct_class = Types::RemoveAutoTerminationPolicyInput

    RemoveAutoTerminationPolicyOutput.struct_class = Types::RemoveAutoTerminationPolicyOutput

    RemoveManagedScalingPolicyInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
    RemoveManagedScalingPolicyInput.struct_class = Types::RemoveManagedScalingPolicyInput

    RemoveManagedScalingPolicyOutput.struct_class = Types::RemoveManagedScalingPolicyOutput

    RemoveTagsInput.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    RemoveTagsInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TagKeys"))
    RemoveTagsInput.struct_class = Types::RemoveTagsInput

    RemoveTagsOutput.struct_class = Types::RemoveTagsOutput

    RunJobFlowInput.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "Name"))
    RunJobFlowInput.add_member(:log_uri, Shapes::ShapeRef.new(shape: XmlString, location_name: "LogUri"))
    RunJobFlowInput.add_member(:log_encryption_kms_key_id, Shapes::ShapeRef.new(shape: XmlString, location_name: "LogEncryptionKmsKeyId"))
    RunJobFlowInput.add_member(:additional_info, Shapes::ShapeRef.new(shape: XmlString, location_name: "AdditionalInfo"))
    RunJobFlowInput.add_member(:ami_version, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "AmiVersion"))
    RunJobFlowInput.add_member(:release_label, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "ReleaseLabel"))
    RunJobFlowInput.add_member(:instances, Shapes::ShapeRef.new(shape: JobFlowInstancesConfig, required: true, location_name: "Instances"))
    RunJobFlowInput.add_member(:steps, Shapes::ShapeRef.new(shape: StepConfigList, location_name: "Steps"))
    RunJobFlowInput.add_member(:bootstrap_actions, Shapes::ShapeRef.new(shape: BootstrapActionConfigList, location_name: "BootstrapActions"))
    RunJobFlowInput.add_member(:supported_products, Shapes::ShapeRef.new(shape: SupportedProductsList, location_name: "SupportedProducts"))
    RunJobFlowInput.add_member(:new_supported_products, Shapes::ShapeRef.new(shape: NewSupportedProductsList, location_name: "NewSupportedProducts"))
    RunJobFlowInput.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationList, location_name: "Applications"))
    RunJobFlowInput.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "Configurations"))
    RunJobFlowInput.add_member(:visible_to_all_users, Shapes::ShapeRef.new(shape: Boolean, location_name: "VisibleToAllUsers"))
    RunJobFlowInput.add_member(:job_flow_role, Shapes::ShapeRef.new(shape: XmlString, location_name: "JobFlowRole"))
    RunJobFlowInput.add_member(:service_role, Shapes::ShapeRef.new(shape: XmlString, location_name: "ServiceRole"))
    RunJobFlowInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RunJobFlowInput.add_member(:security_configuration, Shapes::ShapeRef.new(shape: XmlString, location_name: "SecurityConfiguration"))
    RunJobFlowInput.add_member(:auto_scaling_role, Shapes::ShapeRef.new(shape: XmlString, location_name: "AutoScalingRole"))
    RunJobFlowInput.add_member(:scale_down_behavior, Shapes::ShapeRef.new(shape: ScaleDownBehavior, location_name: "ScaleDownBehavior"))
    RunJobFlowInput.add_member(:custom_ami_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "CustomAmiId"))
    RunJobFlowInput.add_member(:ebs_root_volume_size, Shapes::ShapeRef.new(shape: Integer, location_name: "EbsRootVolumeSize"))
    RunJobFlowInput.add_member(:repo_upgrade_on_boot, Shapes::ShapeRef.new(shape: RepoUpgradeOnBoot, location_name: "RepoUpgradeOnBoot"))
    RunJobFlowInput.add_member(:kerberos_attributes, Shapes::ShapeRef.new(shape: KerberosAttributes, location_name: "KerberosAttributes"))
    RunJobFlowInput.add_member(:step_concurrency_level, Shapes::ShapeRef.new(shape: Integer, location_name: "StepConcurrencyLevel"))
    RunJobFlowInput.add_member(:managed_scaling_policy, Shapes::ShapeRef.new(shape: ManagedScalingPolicy, location_name: "ManagedScalingPolicy"))
    RunJobFlowInput.add_member(:placement_group_configs, Shapes::ShapeRef.new(shape: PlacementGroupConfigList, location_name: "PlacementGroupConfigs"))
    RunJobFlowInput.add_member(:auto_termination_policy, Shapes::ShapeRef.new(shape: AutoTerminationPolicy, location_name: "AutoTerminationPolicy"))
    RunJobFlowInput.struct_class = Types::RunJobFlowInput

    RunJobFlowOutput.add_member(:job_flow_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "JobFlowId"))
    RunJobFlowOutput.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "ClusterArn"))
    RunJobFlowOutput.struct_class = Types::RunJobFlowOutput

    ScalingAction.add_member(:market, Shapes::ShapeRef.new(shape: MarketType, location_name: "Market"))
    ScalingAction.add_member(:simple_scaling_policy_configuration, Shapes::ShapeRef.new(shape: SimpleScalingPolicyConfiguration, required: true, location_name: "SimpleScalingPolicyConfiguration"))
    ScalingAction.struct_class = Types::ScalingAction

    ScalingConstraints.add_member(:min_capacity, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MinCapacity"))
    ScalingConstraints.add_member(:max_capacity, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MaxCapacity"))
    ScalingConstraints.struct_class = Types::ScalingConstraints

    ScalingRule.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ScalingRule.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ScalingRule.add_member(:action, Shapes::ShapeRef.new(shape: ScalingAction, required: true, location_name: "Action"))
    ScalingRule.add_member(:trigger, Shapes::ShapeRef.new(shape: ScalingTrigger, required: true, location_name: "Trigger"))
    ScalingRule.struct_class = Types::ScalingRule

    ScalingRuleList.member = Shapes::ShapeRef.new(shape: ScalingRule)

    ScalingTrigger.add_member(:cloud_watch_alarm_definition, Shapes::ShapeRef.new(shape: CloudWatchAlarmDefinition, required: true, location_name: "CloudWatchAlarmDefinition"))
    ScalingTrigger.struct_class = Types::ScalingTrigger

    ScriptBootstrapActionConfig.add_member(:path, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "Path"))
    ScriptBootstrapActionConfig.add_member(:args, Shapes::ShapeRef.new(shape: XmlStringList, location_name: "Args"))
    ScriptBootstrapActionConfig.struct_class = Types::ScriptBootstrapActionConfig

    SecurityConfigurationList.member = Shapes::ShapeRef.new(shape: SecurityConfigurationSummary)

    SecurityConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: XmlString, location_name: "Name"))
    SecurityConfigurationSummary.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    SecurityConfigurationSummary.struct_class = Types::SecurityConfigurationSummary

    SecurityGroupsList.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen256)

    SessionMappingDetail.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "StudioId"))
    SessionMappingDetail.add_member(:identity_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdentityId"))
    SessionMappingDetail.add_member(:identity_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdentityName"))
    SessionMappingDetail.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "IdentityType"))
    SessionMappingDetail.add_member(:session_policy_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "SessionPolicyArn"))
    SessionMappingDetail.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    SessionMappingDetail.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastModifiedTime"))
    SessionMappingDetail.struct_class = Types::SessionMappingDetail

    SessionMappingSummary.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "StudioId"))
    SessionMappingSummary.add_member(:identity_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdentityId"))
    SessionMappingSummary.add_member(:identity_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdentityName"))
    SessionMappingSummary.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "IdentityType"))
    SessionMappingSummary.add_member(:session_policy_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "SessionPolicyArn"))
    SessionMappingSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    SessionMappingSummary.struct_class = Types::SessionMappingSummary

    SessionMappingSummaryList.member = Shapes::ShapeRef.new(shape: SessionMappingSummary)

    SetTerminationProtectionInput.add_member(:job_flow_ids, Shapes::ShapeRef.new(shape: XmlStringList, required: true, location_name: "JobFlowIds"))
    SetTerminationProtectionInput.add_member(:termination_protected, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "TerminationProtected"))
    SetTerminationProtectionInput.struct_class = Types::SetTerminationProtectionInput

    SetVisibleToAllUsersInput.add_member(:job_flow_ids, Shapes::ShapeRef.new(shape: XmlStringList, required: true, location_name: "JobFlowIds"))
    SetVisibleToAllUsersInput.add_member(:visible_to_all_users, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "VisibleToAllUsers"))
    SetVisibleToAllUsersInput.struct_class = Types::SetVisibleToAllUsersInput

    ShrinkPolicy.add_member(:decommission_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "DecommissionTimeout"))
    ShrinkPolicy.add_member(:instance_resize_policy, Shapes::ShapeRef.new(shape: InstanceResizePolicy, location_name: "InstanceResizePolicy"))
    ShrinkPolicy.struct_class = Types::ShrinkPolicy

    SimpleScalingPolicyConfiguration.add_member(:adjustment_type, Shapes::ShapeRef.new(shape: AdjustmentType, location_name: "AdjustmentType"))
    SimpleScalingPolicyConfiguration.add_member(:scaling_adjustment, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ScalingAdjustment"))
    SimpleScalingPolicyConfiguration.add_member(:cool_down, Shapes::ShapeRef.new(shape: Integer, location_name: "CoolDown"))
    SimpleScalingPolicyConfiguration.struct_class = Types::SimpleScalingPolicyConfiguration

    SimplifiedApplication.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    SimplifiedApplication.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    SimplifiedApplication.struct_class = Types::SimplifiedApplication

    SimplifiedApplicationList.member = Shapes::ShapeRef.new(shape: SimplifiedApplication)

    SpotProvisioningSpecification.add_member(:timeout_duration_minutes, Shapes::ShapeRef.new(shape: WholeNumber, required: true, location_name: "TimeoutDurationMinutes"))
    SpotProvisioningSpecification.add_member(:timeout_action, Shapes::ShapeRef.new(shape: SpotProvisioningTimeoutAction, required: true, location_name: "TimeoutAction"))
    SpotProvisioningSpecification.add_member(:block_duration_minutes, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "BlockDurationMinutes"))
    SpotProvisioningSpecification.add_member(:allocation_strategy, Shapes::ShapeRef.new(shape: SpotProvisioningAllocationStrategy, location_name: "AllocationStrategy"))
    SpotProvisioningSpecification.struct_class = Types::SpotProvisioningSpecification

    StartNotebookExecutionInput.add_member(:editor_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "EditorId"))
    StartNotebookExecutionInput.add_member(:relative_path, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "RelativePath"))
    StartNotebookExecutionInput.add_member(:notebook_execution_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "NotebookExecutionName"))
    StartNotebookExecutionInput.add_member(:notebook_params, Shapes::ShapeRef.new(shape: XmlString, location_name: "NotebookParams"))
    StartNotebookExecutionInput.add_member(:execution_engine, Shapes::ShapeRef.new(shape: ExecutionEngineConfig, required: true, location_name: "ExecutionEngine"))
    StartNotebookExecutionInput.add_member(:service_role, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "ServiceRole"))
    StartNotebookExecutionInput.add_member(:notebook_instance_security_group_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "NotebookInstanceSecurityGroupId"))
    StartNotebookExecutionInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartNotebookExecutionInput.struct_class = Types::StartNotebookExecutionInput

    StartNotebookExecutionOutput.add_member(:notebook_execution_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "NotebookExecutionId"))
    StartNotebookExecutionOutput.struct_class = Types::StartNotebookExecutionOutput

    Step.add_member(:id, Shapes::ShapeRef.new(shape: StepId, location_name: "Id"))
    Step.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Step.add_member(:config, Shapes::ShapeRef.new(shape: HadoopStepConfig, location_name: "Config"))
    Step.add_member(:action_on_failure, Shapes::ShapeRef.new(shape: ActionOnFailure, location_name: "ActionOnFailure"))
    Step.add_member(:status, Shapes::ShapeRef.new(shape: StepStatus, location_name: "Status"))
    Step.struct_class = Types::Step

    StepConfig.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "Name"))
    StepConfig.add_member(:action_on_failure, Shapes::ShapeRef.new(shape: ActionOnFailure, location_name: "ActionOnFailure"))
    StepConfig.add_member(:hadoop_jar_step, Shapes::ShapeRef.new(shape: HadoopJarStepConfig, required: true, location_name: "HadoopJarStep"))
    StepConfig.struct_class = Types::StepConfig

    StepConfigList.member = Shapes::ShapeRef.new(shape: StepConfig)

    StepDetail.add_member(:step_config, Shapes::ShapeRef.new(shape: StepConfig, required: true, location_name: "StepConfig"))
    StepDetail.add_member(:execution_status_detail, Shapes::ShapeRef.new(shape: StepExecutionStatusDetail, required: true, location_name: "ExecutionStatusDetail"))
    StepDetail.struct_class = Types::StepDetail

    StepDetailList.member = Shapes::ShapeRef.new(shape: StepDetail)

    StepExecutionStatusDetail.add_member(:state, Shapes::ShapeRef.new(shape: StepExecutionState, required: true, location_name: "State"))
    StepExecutionStatusDetail.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "CreationDateTime"))
    StepExecutionStatusDetail.add_member(:start_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartDateTime"))
    StepExecutionStatusDetail.add_member(:end_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndDateTime"))
    StepExecutionStatusDetail.add_member(:last_state_change_reason, Shapes::ShapeRef.new(shape: XmlString, location_name: "LastStateChangeReason"))
    StepExecutionStatusDetail.struct_class = Types::StepExecutionStatusDetail

    StepIdsList.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen256)

    StepStateChangeReason.add_member(:code, Shapes::ShapeRef.new(shape: StepStateChangeReasonCode, location_name: "Code"))
    StepStateChangeReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    StepStateChangeReason.struct_class = Types::StepStateChangeReason

    StepStateList.member = Shapes::ShapeRef.new(shape: StepState)

    StepStatus.add_member(:state, Shapes::ShapeRef.new(shape: StepState, location_name: "State"))
    StepStatus.add_member(:state_change_reason, Shapes::ShapeRef.new(shape: StepStateChangeReason, location_name: "StateChangeReason"))
    StepStatus.add_member(:failure_details, Shapes::ShapeRef.new(shape: FailureDetails, location_name: "FailureDetails"))
    StepStatus.add_member(:timeline, Shapes::ShapeRef.new(shape: StepTimeline, location_name: "Timeline"))
    StepStatus.struct_class = Types::StepStatus

    StepSummary.add_member(:id, Shapes::ShapeRef.new(shape: StepId, location_name: "Id"))
    StepSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    StepSummary.add_member(:config, Shapes::ShapeRef.new(shape: HadoopStepConfig, location_name: "Config"))
    StepSummary.add_member(:action_on_failure, Shapes::ShapeRef.new(shape: ActionOnFailure, location_name: "ActionOnFailure"))
    StepSummary.add_member(:status, Shapes::ShapeRef.new(shape: StepStatus, location_name: "Status"))
    StepSummary.struct_class = Types::StepSummary

    StepSummaryList.member = Shapes::ShapeRef.new(shape: StepSummary)

    StepTimeline.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    StepTimeline.add_member(:start_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartDateTime"))
    StepTimeline.add_member(:end_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "EndDateTime"))
    StepTimeline.struct_class = Types::StepTimeline

    StopNotebookExecutionInput.add_member(:notebook_execution_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "NotebookExecutionId"))
    StopNotebookExecutionInput.struct_class = Types::StopNotebookExecutionInput

    StringList.member = Shapes::ShapeRef.new(shape: String)

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    Studio.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "StudioId"))
    Studio.add_member(:studio_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "StudioArn"))
    Studio.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Name"))
    Studio.add_member(:description, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Description"))
    Studio.add_member(:auth_mode, Shapes::ShapeRef.new(shape: AuthMode, location_name: "AuthMode"))
    Studio.add_member(:vpc_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "VpcId"))
    Studio.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "SubnetIds"))
    Studio.add_member(:service_role, Shapes::ShapeRef.new(shape: XmlString, location_name: "ServiceRole"))
    Studio.add_member(:user_role, Shapes::ShapeRef.new(shape: XmlString, location_name: "UserRole"))
    Studio.add_member(:workspace_security_group_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "WorkspaceSecurityGroupId"))
    Studio.add_member(:engine_security_group_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "EngineSecurityGroupId"))
    Studio.add_member(:url, Shapes::ShapeRef.new(shape: XmlString, location_name: "Url"))
    Studio.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    Studio.add_member(:default_s3_location, Shapes::ShapeRef.new(shape: XmlString, location_name: "DefaultS3Location"))
    Studio.add_member(:idp_auth_url, Shapes::ShapeRef.new(shape: XmlString, location_name: "IdpAuthUrl"))
    Studio.add_member(:idp_relay_state_parameter_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdpRelayStateParameterName"))
    Studio.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Studio.struct_class = Types::Studio

    StudioSummary.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "StudioId"))
    StudioSummary.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Name"))
    StudioSummary.add_member(:vpc_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "VpcId"))
    StudioSummary.add_member(:description, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Description"))
    StudioSummary.add_member(:url, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Url"))
    StudioSummary.add_member(:auth_mode, Shapes::ShapeRef.new(shape: AuthMode, location_name: "AuthMode"))
    StudioSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    StudioSummary.struct_class = Types::StudioSummary

    StudioSummaryList.member = Shapes::ShapeRef.new(shape: StudioSummary)

    SubnetIdList.member = Shapes::ShapeRef.new(shape: String)

    SupportedProductConfig.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Name"))
    SupportedProductConfig.add_member(:args, Shapes::ShapeRef.new(shape: XmlStringList, location_name: "Args"))
    SupportedProductConfig.struct_class = Types::SupportedProductConfig

    SupportedProductsList.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen256)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TerminateJobFlowsInput.add_member(:job_flow_ids, Shapes::ShapeRef.new(shape: XmlStringList, required: true, location_name: "JobFlowIds"))
    TerminateJobFlowsInput.struct_class = Types::TerminateJobFlowsInput

    UpdateStudioInput.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "StudioId"))
    UpdateStudioInput.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Name"))
    UpdateStudioInput.add_member(:description, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Description"))
    UpdateStudioInput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "SubnetIds"))
    UpdateStudioInput.add_member(:default_s3_location, Shapes::ShapeRef.new(shape: XmlString, location_name: "DefaultS3Location"))
    UpdateStudioInput.struct_class = Types::UpdateStudioInput

    UpdateStudioSessionMappingInput.add_member(:studio_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "StudioId"))
    UpdateStudioSessionMappingInput.add_member(:identity_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdentityId"))
    UpdateStudioSessionMappingInput.add_member(:identity_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "IdentityName"))
    UpdateStudioSessionMappingInput.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, required: true, location_name: "IdentityType"))
    UpdateStudioSessionMappingInput.add_member(:session_policy_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "SessionPolicyArn"))
    UpdateStudioSessionMappingInput.struct_class = Types::UpdateStudioSessionMappingInput

    VolumeSpecification.add_member(:volume_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VolumeType"))
    VolumeSpecification.add_member(:iops, Shapes::ShapeRef.new(shape: Integer, location_name: "Iops"))
    VolumeSpecification.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "SizeInGB"))
    VolumeSpecification.struct_class = Types::VolumeSpecification

    XmlStringList.member = Shapes::ShapeRef.new(shape: XmlString)

    XmlStringMaxLen256List.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen256)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2009-03-31"

      api.metadata = {
        "apiVersion" => "2009-03-31",
        "endpointPrefix" => "elasticmapreduce",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Amazon EMR",
        "serviceFullName" => "Amazon EMR",
        "serviceId" => "EMR",
        "signatureVersion" => "v4",
        "targetPrefix" => "ElasticMapReduce",
        "uid" => "elasticmapreduce-2009-03-31",
      }

      api.add_operation(:add_instance_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddInstanceFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddInstanceFleetInput)
        o.output = Shapes::ShapeRef.new(shape: AddInstanceFleetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:add_instance_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddInstanceGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddInstanceGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: AddInstanceGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:add_job_flow_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddJobFlowSteps"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddJobFlowStepsInput)
        o.output = Shapes::ShapeRef.new(shape: AddJobFlowStepsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:add_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsInput)
        o.output = Shapes::ShapeRef.new(shape: AddTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:cancel_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSteps"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelStepsInput)
        o.output = Shapes::ShapeRef.new(shape: CancelStepsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_security_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSecurityConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSecurityConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSecurityConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_studio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStudio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStudioInput)
        o.output = Shapes::ShapeRef.new(shape: CreateStudioOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:create_studio_session_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStudioSessionMapping"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStudioSessionMappingInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_security_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSecurityConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSecurityConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSecurityConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_studio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStudio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStudioInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_studio_session_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStudioSessionMapping"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStudioSessionMappingInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_job_flows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobFlows"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DescribeJobFlowsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobFlowsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_notebook_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNotebookExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeNotebookExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeNotebookExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_release_label, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReleaseLabel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReleaseLabelInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeReleaseLabelOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_security_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSecurityConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSecurityConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeSecurityConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStep"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStepInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStepOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_studio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStudio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStudioInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStudioOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_auto_termination_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutoTerminationPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAutoTerminationPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetAutoTerminationPolicyOutput)
      end)

      api.add_operation(:get_block_public_access_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBlockPublicAccessConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBlockPublicAccessConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: GetBlockPublicAccessConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_managed_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetManagedScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetManagedScalingPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetManagedScalingPolicyOutput)
      end)

      api.add_operation(:get_studio_session_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStudioSessionMapping"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetStudioSessionMappingInput)
        o.output = Shapes::ShapeRef.new(shape: GetStudioSessionMappingOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:list_bootstrap_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBootstrapActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBootstrapActionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBootstrapActionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListClustersInput)
        o.output = Shapes::ShapeRef.new(shape: ListClustersOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_instance_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstanceFleets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInstanceFleetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListInstanceFleetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_instance_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstanceGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInstanceGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListInstanceGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_notebook_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotebookExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListNotebookExecutionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListNotebookExecutionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_release_labels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReleaseLabels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListReleaseLabelsInput)
        o.output = Shapes::ShapeRef.new(shape: ListReleaseLabelsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_security_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityConfigurationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityConfigurationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSteps"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStepsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStepsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_studio_session_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStudioSessionMappings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStudioSessionMappingsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStudioSessionMappingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_studios, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStudios"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStudiosInput)
        o.output = Shapes::ShapeRef.new(shape: ListStudiosOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:modify_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyClusterInput)
        o.output = Shapes::ShapeRef.new(shape: ModifyClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:modify_instance_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyInstanceFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyInstanceFleetInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:modify_instance_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyInstanceGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyInstanceGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:put_auto_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAutoScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAutoScalingPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutAutoScalingPolicyOutput)
      end)

      api.add_operation(:put_auto_termination_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAutoTerminationPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAutoTerminationPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutAutoTerminationPolicyOutput)
      end)

      api.add_operation(:put_block_public_access_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutBlockPublicAccessConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutBlockPublicAccessConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: PutBlockPublicAccessConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:put_managed_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutManagedScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutManagedScalingPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutManagedScalingPolicyOutput)
      end)

      api.add_operation(:remove_auto_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveAutoScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveAutoScalingPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveAutoScalingPolicyOutput)
      end)

      api.add_operation(:remove_auto_termination_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveAutoTerminationPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveAutoTerminationPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveAutoTerminationPolicyOutput)
      end)

      api.add_operation(:remove_managed_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveManagedScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveManagedScalingPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveManagedScalingPolicyOutput)
      end)

      api.add_operation(:remove_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsInput)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:run_job_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RunJobFlow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RunJobFlowInput)
        o.output = Shapes::ShapeRef.new(shape: RunJobFlowOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:set_termination_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetTerminationProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetTerminationProtectionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:set_visible_to_all_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetVisibleToAllUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetVisibleToAllUsersInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:start_notebook_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartNotebookExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartNotebookExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: StartNotebookExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:stop_notebook_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopNotebookExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopNotebookExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:terminate_job_flows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateJobFlows"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateJobFlowsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_studio, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStudio"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStudioInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_studio_session_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStudioSessionMapping"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStudioSessionMappingInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)
    end

  end
end
