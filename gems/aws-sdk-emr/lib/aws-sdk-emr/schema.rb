# frozen_string_literal: true

# This is generated code!

module Aws::EMR
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActionOnFailure = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#ActionOnFailure', name: 'ActionOnFailure')
    AddInstanceFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AddInstanceFleetInput', name: 'AddInstanceFleetInput')
    AddInstanceFleetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AddInstanceFleetOutput', name: 'AddInstanceFleetOutput')
    AddInstanceGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AddInstanceGroupsInput', name: 'AddInstanceGroupsInput')
    AddInstanceGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AddInstanceGroupsOutput', name: 'AddInstanceGroupsOutput')
    AddJobFlowStepsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AddJobFlowStepsInput', name: 'AddJobFlowStepsInput')
    AddJobFlowStepsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AddJobFlowStepsOutput', name: 'AddJobFlowStepsOutput')
    AddTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AddTagsInput', name: 'AddTagsInput')
    AddTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AddTagsOutput', name: 'AddTagsOutput')
    AdjustmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#AdjustmentType', name: 'AdjustmentType')
    Application = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#Application', name: 'Application')
    ApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#ApplicationList', name: 'ApplicationList')
    ArnType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#ArnType', name: 'ArnType', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    AuthMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#AuthMode', name: 'AuthMode')
    AutoScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AutoScalingPolicy', name: 'AutoScalingPolicy')
    AutoScalingPolicyDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AutoScalingPolicyDescription', name: 'AutoScalingPolicyDescription')
    AutoScalingPolicyState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#AutoScalingPolicyState', name: 'AutoScalingPolicyState')
    AutoScalingPolicyStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AutoScalingPolicyStateChangeReason', name: 'AutoScalingPolicyStateChangeReason')
    AutoScalingPolicyStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#AutoScalingPolicyStateChangeReasonCode', name: 'AutoScalingPolicyStateChangeReasonCode')
    AutoScalingPolicyStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AutoScalingPolicyStatus', name: 'AutoScalingPolicyStatus')
    AutoTerminationPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#AutoTerminationPolicy', name: 'AutoTerminationPolicy')
    BlockPublicAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#BlockPublicAccessConfiguration', name: 'BlockPublicAccessConfiguration')
    BlockPublicAccessConfigurationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#BlockPublicAccessConfigurationMetadata', name: 'BlockPublicAccessConfigurationMetadata')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.emr#Boolean', name: 'Boolean')
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.emr#BooleanObject', name: 'BooleanObject')
    BootstrapActionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#BootstrapActionConfig', name: 'BootstrapActionConfig')
    BootstrapActionConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#BootstrapActionConfigList', name: 'BootstrapActionConfigList')
    BootstrapActionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#BootstrapActionDetail', name: 'BootstrapActionDetail')
    BootstrapActionDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#BootstrapActionDetailList', name: 'BootstrapActionDetailList')
    CancelStepsInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#CancelStepsInfo', name: 'CancelStepsInfo')
    CancelStepsInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#CancelStepsInfoList', name: 'CancelStepsInfoList')
    CancelStepsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#CancelStepsInput', name: 'CancelStepsInput')
    CancelStepsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#CancelStepsOutput', name: 'CancelStepsOutput')
    CancelStepsRequestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#CancelStepsRequestStatus', name: 'CancelStepsRequestStatus')
    CloudWatchAlarmDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#CloudWatchAlarmDefinition', name: 'CloudWatchAlarmDefinition')
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#Cluster', name: 'Cluster')
    ClusterId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#ClusterId', name: 'ClusterId')
    ClusterState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#ClusterState', name: 'ClusterState')
    ClusterStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ClusterStateChangeReason', name: 'ClusterStateChangeReason')
    ClusterStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#ClusterStateChangeReasonCode', name: 'ClusterStateChangeReasonCode')
    ClusterStateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#ClusterStateList', name: 'ClusterStateList')
    ClusterStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ClusterStatus', name: 'ClusterStatus')
    ClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ClusterSummary', name: 'ClusterSummary')
    ClusterSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#ClusterSummaryList', name: 'ClusterSummaryList')
    ClusterTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ClusterTimeline', name: 'ClusterTimeline')
    Command = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#Command', name: 'Command')
    CommandList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#CommandList', name: 'CommandList')
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#ComparisonOperator', name: 'ComparisonOperator')
    ComputeLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ComputeLimits', name: 'ComputeLimits')
    ComputeLimitsUnitType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#ComputeLimitsUnitType', name: 'ComputeLimitsUnitType')
    Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#Configuration', name: 'Configuration')
    ConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#ConfigurationList', name: 'ConfigurationList')
    CreatePersistentAppUIInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#CreatePersistentAppUIInput', name: 'CreatePersistentAppUIInput')
    CreatePersistentAppUIOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#CreatePersistentAppUIOutput', name: 'CreatePersistentAppUIOutput')
    CreateSecurityConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#CreateSecurityConfigurationInput', name: 'CreateSecurityConfigurationInput')
    CreateSecurityConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#CreateSecurityConfigurationOutput', name: 'CreateSecurityConfigurationOutput')
    CreateStudioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#CreateStudioInput', name: 'CreateStudioInput')
    CreateStudioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#CreateStudioOutput', name: 'CreateStudioOutput')
    CreateStudioSessionMappingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#CreateStudioSessionMappingInput', name: 'CreateStudioSessionMappingInput')
    Credentials = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.emr#Credentials', name: 'Credentials')
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.emr#Date', name: 'Date')
    DeleteSecurityConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DeleteSecurityConfigurationInput', name: 'DeleteSecurityConfigurationInput')
    DeleteSecurityConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DeleteSecurityConfigurationOutput', name: 'DeleteSecurityConfigurationOutput')
    DeleteStudioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DeleteStudioInput', name: 'DeleteStudioInput')
    DeleteStudioSessionMappingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DeleteStudioSessionMappingInput', name: 'DeleteStudioSessionMappingInput')
    DescribeClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeClusterInput', name: 'DescribeClusterInput')
    DescribeClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeClusterOutput', name: 'DescribeClusterOutput')
    DescribeJobFlowsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeJobFlowsInput', name: 'DescribeJobFlowsInput')
    DescribeJobFlowsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeJobFlowsOutput', name: 'DescribeJobFlowsOutput')
    DescribeNotebookExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeNotebookExecutionInput', name: 'DescribeNotebookExecutionInput')
    DescribeNotebookExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeNotebookExecutionOutput', name: 'DescribeNotebookExecutionOutput')
    DescribePersistentAppUIInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribePersistentAppUIInput', name: 'DescribePersistentAppUIInput')
    DescribePersistentAppUIOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribePersistentAppUIOutput', name: 'DescribePersistentAppUIOutput')
    DescribeReleaseLabelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeReleaseLabelInput', name: 'DescribeReleaseLabelInput')
    DescribeReleaseLabelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeReleaseLabelOutput', name: 'DescribeReleaseLabelOutput')
    DescribeSecurityConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeSecurityConfigurationInput', name: 'DescribeSecurityConfigurationInput')
    DescribeSecurityConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeSecurityConfigurationOutput', name: 'DescribeSecurityConfigurationOutput')
    DescribeStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeStepInput', name: 'DescribeStepInput')
    DescribeStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeStepOutput', name: 'DescribeStepOutput')
    DescribeStudioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeStudioInput', name: 'DescribeStudioInput')
    DescribeStudioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#DescribeStudioOutput', name: 'DescribeStudioOutput')
    EC2InstanceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#EC2InstanceIdsList', name: 'EC2InstanceIdsList')
    EC2InstanceIdsToTerminateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#EC2InstanceIdsToTerminateList', name: 'EC2InstanceIdsToTerminateList')
    EMRContainersConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#EMRContainersConfig', name: 'EMRContainersConfig')
    EbsBlockDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#EbsBlockDevice', name: 'EbsBlockDevice')
    EbsBlockDeviceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#EbsBlockDeviceConfig', name: 'EbsBlockDeviceConfig')
    EbsBlockDeviceConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#EbsBlockDeviceConfigList', name: 'EbsBlockDeviceConfigList')
    EbsBlockDeviceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#EbsBlockDeviceList', name: 'EbsBlockDeviceList')
    EbsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#EbsConfiguration', name: 'EbsConfiguration')
    EbsVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#EbsVolume', name: 'EbsVolume')
    EbsVolumeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#EbsVolumeList', name: 'EbsVolumeList')
    Ec2InstanceAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#Ec2InstanceAttributes', name: 'Ec2InstanceAttributes')
    EnvironmentVariablesMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.emr#EnvironmentVariablesMap', name: 'EnvironmentVariablesMap')
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ErrorData = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#ErrorData', name: 'ErrorData')
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ErrorDetail', name: 'ErrorDetail')
    ErrorDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#ErrorDetailList', name: 'ErrorDetailList')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#ErrorMessage', name: 'ErrorMessage')
    ExecutionEngineConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ExecutionEngineConfig', name: 'ExecutionEngineConfig')
    ExecutionEngineType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#ExecutionEngineType', name: 'ExecutionEngineType')
    FailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#FailureDetails', name: 'FailureDetails')
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.emr#Float', name: 'Float')
    GetAutoTerminationPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetAutoTerminationPolicyInput', name: 'GetAutoTerminationPolicyInput')
    GetAutoTerminationPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetAutoTerminationPolicyOutput', name: 'GetAutoTerminationPolicyOutput')
    GetBlockPublicAccessConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetBlockPublicAccessConfigurationInput', name: 'GetBlockPublicAccessConfigurationInput')
    GetBlockPublicAccessConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetBlockPublicAccessConfigurationOutput', name: 'GetBlockPublicAccessConfigurationOutput')
    GetClusterSessionCredentialsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetClusterSessionCredentialsInput', name: 'GetClusterSessionCredentialsInput')
    GetClusterSessionCredentialsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetClusterSessionCredentialsOutput', name: 'GetClusterSessionCredentialsOutput')
    GetManagedScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetManagedScalingPolicyInput', name: 'GetManagedScalingPolicyInput')
    GetManagedScalingPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetManagedScalingPolicyOutput', name: 'GetManagedScalingPolicyOutput')
    GetOnClusterAppUIPresignedURLInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetOnClusterAppUIPresignedURLInput', name: 'GetOnClusterAppUIPresignedURLInput')
    GetOnClusterAppUIPresignedURLOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetOnClusterAppUIPresignedURLOutput', name: 'GetOnClusterAppUIPresignedURLOutput')
    GetPersistentAppUIPresignedURLInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetPersistentAppUIPresignedURLInput', name: 'GetPersistentAppUIPresignedURLInput')
    GetPersistentAppUIPresignedURLOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetPersistentAppUIPresignedURLOutput', name: 'GetPersistentAppUIPresignedURLOutput')
    GetStudioSessionMappingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetStudioSessionMappingInput', name: 'GetStudioSessionMappingInput')
    GetStudioSessionMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#GetStudioSessionMappingOutput', name: 'GetStudioSessionMappingOutput')
    HadoopJarStepConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#HadoopJarStepConfig', name: 'HadoopJarStepConfig')
    HadoopStepConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#HadoopStepConfig', name: 'HadoopStepConfig')
    IAMRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#IAMRoleArn', name: 'IAMRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):iam::(\\d{12})?:(role((\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F))[\\w+=,.@-]+)$"})
    IdcUserAssignment = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#IdcUserAssignment', name: 'IdcUserAssignment')
    IdentityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#IdentityType', name: 'IdentityType')
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#Instance', name: 'Instance')
    InstanceCollectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#InstanceCollectionType', name: 'InstanceCollectionType')
    InstanceFleet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceFleet', name: 'InstanceFleet')
    InstanceFleetConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceFleetConfig', name: 'InstanceFleetConfig')
    InstanceFleetConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#InstanceFleetConfigList', name: 'InstanceFleetConfigList')
    InstanceFleetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#InstanceFleetId', name: 'InstanceFleetId')
    InstanceFleetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#InstanceFleetList', name: 'InstanceFleetList')
    InstanceFleetModifyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceFleetModifyConfig', name: 'InstanceFleetModifyConfig')
    InstanceFleetProvisioningSpecifications = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceFleetProvisioningSpecifications', name: 'InstanceFleetProvisioningSpecifications')
    InstanceFleetResizingSpecifications = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceFleetResizingSpecifications', name: 'InstanceFleetResizingSpecifications')
    InstanceFleetState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#InstanceFleetState', name: 'InstanceFleetState')
    InstanceFleetStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceFleetStateChangeReason', name: 'InstanceFleetStateChangeReason')
    InstanceFleetStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#InstanceFleetStateChangeReasonCode', name: 'InstanceFleetStateChangeReasonCode')
    InstanceFleetStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceFleetStatus', name: 'InstanceFleetStatus')
    InstanceFleetTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceFleetTimeline', name: 'InstanceFleetTimeline')
    InstanceFleetType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#InstanceFleetType', name: 'InstanceFleetType')
    InstanceGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceGroup', name: 'InstanceGroup')
    InstanceGroupConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceGroupConfig', name: 'InstanceGroupConfig')
    InstanceGroupConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#InstanceGroupConfigList', name: 'InstanceGroupConfigList')
    InstanceGroupDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceGroupDetail', name: 'InstanceGroupDetail')
    InstanceGroupDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#InstanceGroupDetailList', name: 'InstanceGroupDetailList')
    InstanceGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#InstanceGroupId', name: 'InstanceGroupId')
    InstanceGroupIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#InstanceGroupIdsList', name: 'InstanceGroupIdsList')
    InstanceGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#InstanceGroupList', name: 'InstanceGroupList')
    InstanceGroupModifyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceGroupModifyConfig', name: 'InstanceGroupModifyConfig')
    InstanceGroupModifyConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#InstanceGroupModifyConfigList', name: 'InstanceGroupModifyConfigList')
    InstanceGroupState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#InstanceGroupState', name: 'InstanceGroupState')
    InstanceGroupStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceGroupStateChangeReason', name: 'InstanceGroupStateChangeReason')
    InstanceGroupStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#InstanceGroupStateChangeReasonCode', name: 'InstanceGroupStateChangeReasonCode')
    InstanceGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceGroupStatus', name: 'InstanceGroupStatus')
    InstanceGroupTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceGroupTimeline', name: 'InstanceGroupTimeline')
    InstanceGroupType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#InstanceGroupType', name: 'InstanceGroupType')
    InstanceGroupTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#InstanceGroupTypeList', name: 'InstanceGroupTypeList')
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#InstanceId', name: 'InstanceId')
    InstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#InstanceList', name: 'InstanceList')
    InstanceResizePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceResizePolicy', name: 'InstanceResizePolicy')
    InstanceRoleType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#InstanceRoleType', name: 'InstanceRoleType')
    InstanceState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#InstanceState', name: 'InstanceState')
    InstanceStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceStateChangeReason', name: 'InstanceStateChangeReason')
    InstanceStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#InstanceStateChangeReasonCode', name: 'InstanceStateChangeReasonCode')
    InstanceStateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#InstanceStateList', name: 'InstanceStateList')
    InstanceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceStatus', name: 'InstanceStatus')
    InstanceTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceTimeline', name: 'InstanceTimeline')
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#InstanceType', name: 'InstanceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    InstanceTypeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceTypeConfig', name: 'InstanceTypeConfig')
    InstanceTypeConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#InstanceTypeConfigList', name: 'InstanceTypeConfigList')
    InstanceTypeSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InstanceTypeSpecification', name: 'InstanceTypeSpecification')
    InstanceTypeSpecificationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#InstanceTypeSpecificationList', name: 'InstanceTypeSpecificationList')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emr#Integer', name: 'Integer')
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InternalServerError', name: 'InternalServerError', traits: {"aws.protocols#awsQueryError" => {"code" => "InternalFailure", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client"})
    JobFlowDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#JobFlowDetail', name: 'JobFlowDetail')
    JobFlowDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#JobFlowDetailList', name: 'JobFlowDetailList')
    JobFlowExecutionState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#JobFlowExecutionState', name: 'JobFlowExecutionState')
    JobFlowExecutionStateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#JobFlowExecutionStateList', name: 'JobFlowExecutionStateList')
    JobFlowExecutionStatusDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#JobFlowExecutionStatusDetail', name: 'JobFlowExecutionStatusDetail')
    JobFlowInstancesConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#JobFlowInstancesConfig', name: 'JobFlowInstancesConfig')
    JobFlowInstancesDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#JobFlowInstancesDetail', name: 'JobFlowInstancesDetail')
    KerberosAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#KerberosAttributes', name: 'KerberosAttributes')
    KeyValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#KeyValue', name: 'KeyValue')
    KeyValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#KeyValueList', name: 'KeyValueList')
    ListBootstrapActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListBootstrapActionsInput', name: 'ListBootstrapActionsInput')
    ListBootstrapActionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListBootstrapActionsOutput', name: 'ListBootstrapActionsOutput')
    ListClustersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListClustersInput', name: 'ListClustersInput')
    ListClustersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListClustersOutput', name: 'ListClustersOutput')
    ListInstanceFleetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListInstanceFleetsInput', name: 'ListInstanceFleetsInput')
    ListInstanceFleetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListInstanceFleetsOutput', name: 'ListInstanceFleetsOutput')
    ListInstanceGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListInstanceGroupsInput', name: 'ListInstanceGroupsInput')
    ListInstanceGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListInstanceGroupsOutput', name: 'ListInstanceGroupsOutput')
    ListInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListInstancesInput', name: 'ListInstancesInput')
    ListInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListInstancesOutput', name: 'ListInstancesOutput')
    ListNotebookExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListNotebookExecutionsInput', name: 'ListNotebookExecutionsInput')
    ListNotebookExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListNotebookExecutionsOutput', name: 'ListNotebookExecutionsOutput')
    ListReleaseLabelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListReleaseLabelsInput', name: 'ListReleaseLabelsInput')
    ListReleaseLabelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListReleaseLabelsOutput', name: 'ListReleaseLabelsOutput')
    ListSecurityConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListSecurityConfigurationsInput', name: 'ListSecurityConfigurationsInput')
    ListSecurityConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListSecurityConfigurationsOutput', name: 'ListSecurityConfigurationsOutput')
    ListStepsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListStepsInput', name: 'ListStepsInput')
    ListStepsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListStepsOutput', name: 'ListStepsOutput')
    ListStudioSessionMappingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListStudioSessionMappingsInput', name: 'ListStudioSessionMappingsInput')
    ListStudioSessionMappingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListStudioSessionMappingsOutput', name: 'ListStudioSessionMappingsOutput')
    ListStudiosInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListStudiosInput', name: 'ListStudiosInput')
    ListStudiosOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListStudiosOutput', name: 'ListStudiosOutput')
    ListSupportedInstanceTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListSupportedInstanceTypesInput', name: 'ListSupportedInstanceTypesInput')
    ListSupportedInstanceTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ListSupportedInstanceTypesOutput', name: 'ListSupportedInstanceTypesOutput')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emr#Long', name: 'Long')
    ManagedScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ManagedScalingPolicy', name: 'ManagedScalingPolicy')
    Marker = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#Marker', name: 'Marker')
    MarketType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#MarketType', name: 'MarketType')
    MaxResultsNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emr#MaxResultsNumber', name: 'MaxResultsNumber', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#MetricDimension', name: 'MetricDimension')
    MetricDimensionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#MetricDimensionList', name: 'MetricDimensionList')
    ModifyClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ModifyClusterInput', name: 'ModifyClusterInput')
    ModifyClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ModifyClusterOutput', name: 'ModifyClusterOutput')
    ModifyInstanceFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ModifyInstanceFleetInput', name: 'ModifyInstanceFleetInput')
    ModifyInstanceGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ModifyInstanceGroupsInput', name: 'ModifyInstanceGroupsInput')
    NewSupportedProductsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#NewSupportedProductsList', name: 'NewSupportedProductsList')
    NonNegativeDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.emr#NonNegativeDouble', name: 'NonNegativeDouble', traits: {"smithy.api#range" => {"min" => 0.0}})
    NotebookExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#NotebookExecution', name: 'NotebookExecution')
    NotebookExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#NotebookExecutionStatus', name: 'NotebookExecutionStatus')
    NotebookExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#NotebookExecutionSummary', name: 'NotebookExecutionSummary')
    NotebookExecutionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#NotebookExecutionSummaryList', name: 'NotebookExecutionSummaryList')
    NotebookS3LocationForOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#NotebookS3LocationForOutput', name: 'NotebookS3LocationForOutput')
    NotebookS3LocationFromInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#NotebookS3LocationFromInput', name: 'NotebookS3LocationFromInput')
    OSRelease = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#OSRelease', name: 'OSRelease')
    OSReleaseList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#OSReleaseList', name: 'OSReleaseList')
    OnClusterAppUIType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#OnClusterAppUIType', name: 'OnClusterAppUIType')
    OnDemandCapacityReservationOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#OnDemandCapacityReservationOptions', name: 'OnDemandCapacityReservationOptions')
    OnDemandCapacityReservationPreference = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#OnDemandCapacityReservationPreference', name: 'OnDemandCapacityReservationPreference')
    OnDemandCapacityReservationUsageStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#OnDemandCapacityReservationUsageStrategy', name: 'OnDemandCapacityReservationUsageStrategy')
    OnDemandProvisioningAllocationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#OnDemandProvisioningAllocationStrategy', name: 'OnDemandProvisioningAllocationStrategy')
    OnDemandProvisioningSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#OnDemandProvisioningSpecification', name: 'OnDemandProvisioningSpecification')
    OnDemandResizingSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#OnDemandResizingSpecification', name: 'OnDemandResizingSpecification')
    OptionalArnType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#OptionalArnType', name: 'OptionalArnType', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    OutputNotebookFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#OutputNotebookFormat', name: 'OutputNotebookFormat')
    OutputNotebookS3LocationForOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#OutputNotebookS3LocationForOutput', name: 'OutputNotebookS3LocationForOutput')
    OutputNotebookS3LocationFromInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#OutputNotebookS3LocationFromInput', name: 'OutputNotebookS3LocationFromInput')
    PersistentAppUI = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#PersistentAppUI', name: 'PersistentAppUI')
    PersistentAppUIType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#PersistentAppUIType', name: 'PersistentAppUIType')
    PersistentAppUITypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#PersistentAppUITypeList', name: 'PersistentAppUITypeList')
    PlacementGroupConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#PlacementGroupConfig', name: 'PlacementGroupConfig')
    PlacementGroupConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#PlacementGroupConfigList', name: 'PlacementGroupConfigList')
    PlacementGroupStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#PlacementGroupStrategy', name: 'PlacementGroupStrategy')
    PlacementType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#PlacementType', name: 'PlacementType')
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emr#Port', name: 'Port', traits: {"smithy.api#range" => {"min" => -1, "max" => 65535}})
    PortRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#PortRange', name: 'PortRange')
    PortRanges = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#PortRanges', name: 'PortRanges')
    ProfilerType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#ProfilerType', name: 'ProfilerType')
    PutAutoScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#PutAutoScalingPolicyInput', name: 'PutAutoScalingPolicyInput')
    PutAutoScalingPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#PutAutoScalingPolicyOutput', name: 'PutAutoScalingPolicyOutput')
    PutAutoTerminationPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#PutAutoTerminationPolicyInput', name: 'PutAutoTerminationPolicyInput')
    PutAutoTerminationPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#PutAutoTerminationPolicyOutput', name: 'PutAutoTerminationPolicyOutput')
    PutBlockPublicAccessConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#PutBlockPublicAccessConfigurationInput', name: 'PutBlockPublicAccessConfigurationInput')
    PutBlockPublicAccessConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#PutBlockPublicAccessConfigurationOutput', name: 'PutBlockPublicAccessConfigurationOutput')
    PutManagedScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#PutManagedScalingPolicyInput', name: 'PutManagedScalingPolicyInput')
    PutManagedScalingPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#PutManagedScalingPolicyOutput', name: 'PutManagedScalingPolicyOutput')
    ReconfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#ReconfigurationType', name: 'ReconfigurationType')
    ReleaseLabelFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ReleaseLabelFilter', name: 'ReleaseLabelFilter')
    RemoveAutoScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#RemoveAutoScalingPolicyInput', name: 'RemoveAutoScalingPolicyInput')
    RemoveAutoScalingPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#RemoveAutoScalingPolicyOutput', name: 'RemoveAutoScalingPolicyOutput')
    RemoveAutoTerminationPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#RemoveAutoTerminationPolicyInput', name: 'RemoveAutoTerminationPolicyInput')
    RemoveAutoTerminationPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#RemoveAutoTerminationPolicyOutput', name: 'RemoveAutoTerminationPolicyOutput')
    RemoveManagedScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#RemoveManagedScalingPolicyInput', name: 'RemoveManagedScalingPolicyInput')
    RemoveManagedScalingPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#RemoveManagedScalingPolicyOutput', name: 'RemoveManagedScalingPolicyOutput')
    RemoveTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#RemoveTagsInput', name: 'RemoveTagsInput')
    RemoveTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#RemoveTagsOutput', name: 'RemoveTagsOutput')
    RepoUpgradeOnBoot = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#RepoUpgradeOnBoot', name: 'RepoUpgradeOnBoot')
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#ResourceId', name: 'ResourceId')
    RunJobFlowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#RunJobFlowInput', name: 'RunJobFlowInput')
    RunJobFlowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#RunJobFlowOutput', name: 'RunJobFlowOutput')
    ScaleDownBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#ScaleDownBehavior', name: 'ScaleDownBehavior')
    ScalingAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ScalingAction', name: 'ScalingAction')
    ScalingConstraints = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ScalingConstraints', name: 'ScalingConstraints')
    ScalingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ScalingRule', name: 'ScalingRule')
    ScalingRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#ScalingRuleList', name: 'ScalingRuleList')
    ScalingStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#ScalingStrategy', name: 'ScalingStrategy')
    ScalingTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ScalingTrigger', name: 'ScalingTrigger')
    ScriptBootstrapActionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ScriptBootstrapActionConfig', name: 'ScriptBootstrapActionConfig')
    SecurityConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#SecurityConfigurationList', name: 'SecurityConfigurationList')
    SecurityConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SecurityConfigurationSummary', name: 'SecurityConfigurationSummary')
    SecurityGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#SecurityGroupsList', name: 'SecurityGroupsList')
    SessionMappingDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SessionMappingDetail', name: 'SessionMappingDetail')
    SessionMappingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SessionMappingSummary', name: 'SessionMappingSummary')
    SessionMappingSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#SessionMappingSummaryList', name: 'SessionMappingSummaryList')
    SetKeepJobFlowAliveWhenNoStepsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SetKeepJobFlowAliveWhenNoStepsInput', name: 'SetKeepJobFlowAliveWhenNoStepsInput')
    SetTerminationProtectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SetTerminationProtectionInput', name: 'SetTerminationProtectionInput')
    SetUnhealthyNodeReplacementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SetUnhealthyNodeReplacementInput', name: 'SetUnhealthyNodeReplacementInput')
    SetVisibleToAllUsersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SetVisibleToAllUsersInput', name: 'SetVisibleToAllUsersInput')
    ShrinkPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#ShrinkPolicy', name: 'ShrinkPolicy')
    SimpleScalingPolicyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SimpleScalingPolicyConfiguration', name: 'SimpleScalingPolicyConfiguration')
    SimplifiedApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SimplifiedApplication', name: 'SimplifiedApplication')
    SimplifiedApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#SimplifiedApplicationList', name: 'SimplifiedApplicationList')
    SpotProvisioningAllocationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#SpotProvisioningAllocationStrategy', name: 'SpotProvisioningAllocationStrategy')
    SpotProvisioningSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SpotProvisioningSpecification', name: 'SpotProvisioningSpecification')
    SpotProvisioningTimeoutAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#SpotProvisioningTimeoutAction', name: 'SpotProvisioningTimeoutAction')
    SpotResizingSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SpotResizingSpecification', name: 'SpotResizingSpecification')
    StartNotebookExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#StartNotebookExecutionInput', name: 'StartNotebookExecutionInput')
    StartNotebookExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#StartNotebookExecutionOutput', name: 'StartNotebookExecutionOutput')
    Statistic = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#Statistic', name: 'Statistic')
    Step = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#Step', name: 'Step')
    StepCancellationOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#StepCancellationOption', name: 'StepCancellationOption')
    StepConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#StepConfig', name: 'StepConfig')
    StepConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#StepConfigList', name: 'StepConfigList')
    StepDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#StepDetail', name: 'StepDetail')
    StepDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#StepDetailList', name: 'StepDetailList')
    StepExecutionState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#StepExecutionState', name: 'StepExecutionState')
    StepExecutionStatusDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#StepExecutionStatusDetail', name: 'StepExecutionStatusDetail')
    StepId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#StepId', name: 'StepId')
    StepIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#StepIdsList', name: 'StepIdsList')
    StepState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#StepState', name: 'StepState')
    StepStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#StepStateChangeReason', name: 'StepStateChangeReason')
    StepStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#StepStateChangeReasonCode', name: 'StepStateChangeReasonCode')
    StepStateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#StepStateList', name: 'StepStateList')
    StepStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#StepStatus', name: 'StepStatus')
    StepSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#StepSummary', name: 'StepSummary')
    StepSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#StepSummaryList', name: 'StepSummaryList')
    StepTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#StepTimeline', name: 'StepTimeline')
    StopNotebookExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#StopNotebookExecutionInput', name: 'StopNotebookExecutionInput')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#String', name: 'String')
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#StringList', name: 'StringList')
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.emr#StringMap', name: 'StringMap')
    Studio = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#Studio', name: 'Studio')
    StudioSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#StudioSummary', name: 'StudioSummary')
    StudioSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#StudioSummaryList', name: 'StudioSummaryList')
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#SubnetIdList', name: 'SubnetIdList')
    SupportedInstanceType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SupportedInstanceType', name: 'SupportedInstanceType')
    SupportedInstanceTypesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#SupportedInstanceTypesList', name: 'SupportedInstanceTypesList')
    SupportedProductConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#SupportedProductConfig', name: 'SupportedProductConfig')
    SupportedProductsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#SupportedProductsList', name: 'SupportedProductsList')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#Tag', name: 'Tag')
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#TagList', name: 'TagList')
    TerminateJobFlowsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#TerminateJobFlowsInput', name: 'TerminateJobFlowsInput')
    ThroughputVal = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emr#ThroughputVal', name: 'ThroughputVal', traits: {"smithy.api#range" => {"min" => 0}})
    Unit = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.emr#Unit', name: 'Unit')
    UpdateStudioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#UpdateStudioInput', name: 'UpdateStudioInput')
    UpdateStudioSessionMappingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#UpdateStudioSessionMappingInput', name: 'UpdateStudioSessionMappingInput')
    UriString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#UriString', name: 'UriString', traits: {"smithy.api#length" => {"min" => 1, "max" => 10280}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\r\\n\\t]*$"})
    UsernamePassword = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#UsernamePassword', name: 'UsernamePassword', traits: {"smithy.api#sensitive" => {}})
    UtilizationPerformanceIndexInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emr#UtilizationPerformanceIndexInteger', name: 'UtilizationPerformanceIndexInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    VolumeSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.emr#VolumeSpecification', name: 'VolumeSpecification')
    WholeNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.emr#WholeNumber', name: 'WholeNumber', traits: {"smithy.api#range" => {"min" => 0}})
    XmlString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#XmlString', name: 'XmlString', traits: {"smithy.api#length" => {"min" => 0, "max" => 10280}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#XmlStringList', name: 'XmlStringList')
    XmlStringMaxLen256 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.emr#XmlStringMaxLen256', name: 'XmlStringMaxLen256', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen256List = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.emr#XmlStringMaxLen256List', name: 'XmlStringMaxLen256List')

    ActionOnFailure.add_member(:terminate_job_flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATE_JOB_FLOW', traits: {"smithy.api#enumValue" => "TERMINATE_JOB_FLOW"}))
    ActionOnFailure.add_member(:terminate_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATE_CLUSTER', traits: {"smithy.api#enumValue" => "TERMINATE_CLUSTER"}))
    ActionOnFailure.add_member(:cancel_and_wait, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL_AND_WAIT', traits: {"smithy.api#enumValue" => "CANCEL_AND_WAIT"}))
    ActionOnFailure.add_member(:continue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTINUE', traits: {"smithy.api#enumValue" => "CONTINUE"}))
    AddInstanceFleetInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddInstanceFleetInput.add_member(:instance_fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetConfig, location_name: 'InstanceFleet', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddInstanceFleetInput.type = Types::AddInstanceFleetInput
    AddInstanceFleetOutput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'ClusterId'))
    AddInstanceFleetOutput.add_member(:instance_fleet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetId, location_name: 'InstanceFleetId'))
    AddInstanceFleetOutput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ClusterArn'))
    AddInstanceFleetOutput.type = Types::AddInstanceFleetOutput
    AddInstanceGroupsInput.add_member(:instance_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupConfigList, location_name: 'InstanceGroups', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddInstanceGroupsInput.add_member(:job_flow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'JobFlowId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddInstanceGroupsInput.type = Types::AddInstanceGroupsInput
    AddInstanceGroupsOutput.add_member(:job_flow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'JobFlowId'))
    AddInstanceGroupsOutput.add_member(:instance_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupIdsList, location_name: 'InstanceGroupIds'))
    AddInstanceGroupsOutput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ClusterArn'))
    AddInstanceGroupsOutput.type = Types::AddInstanceGroupsOutput
    AddJobFlowStepsInput.add_member(:job_flow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'JobFlowId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddJobFlowStepsInput.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepConfigList, location_name: 'Steps', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddJobFlowStepsInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ExecutionRoleArn'))
    AddJobFlowStepsInput.type = Types::AddJobFlowStepsInput
    AddJobFlowStepsOutput.add_member(:step_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepIdsList, location_name: 'StepIds'))
    AddJobFlowStepsOutput.type = Types::AddJobFlowStepsOutput
    AddTagsInput.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsInput.type = Types::AddTagsInput
    AddTagsOutput.type = Types::AddTagsOutput
    AdjustmentType.add_member(:change_in_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHANGE_IN_CAPACITY', traits: {"smithy.api#enumValue" => "CHANGE_IN_CAPACITY"}))
    AdjustmentType.add_member(:percent_change_in_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERCENT_CHANGE_IN_CAPACITY', traits: {"smithy.api#enumValue" => "PERCENT_CHANGE_IN_CAPACITY"}))
    AdjustmentType.add_member(:exact_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXACT_CAPACITY', traits: {"smithy.api#enumValue" => "EXACT_CAPACITY"}))
    Application.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Application.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    Application.add_member(:args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Args'))
    Application.add_member(:additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'AdditionalInfo'))
    Application.type = Types::Application
    ApplicationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Application)
    AuthMode.add_member(:sso, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSO', traits: {"smithy.api#enumValue" => "SSO"}))
    AuthMode.add_member(:iam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "IAM"}))
    AutoScalingPolicy.add_member(:constraints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConstraints, location_name: 'Constraints', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingPolicy.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingRuleList, location_name: 'Rules', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingPolicy.type = Types::AutoScalingPolicy
    AutoScalingPolicyDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicyStatus, location_name: 'Status'))
    AutoScalingPolicyDescription.add_member(:constraints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConstraints, location_name: 'Constraints'))
    AutoScalingPolicyDescription.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingRuleList, location_name: 'Rules'))
    AutoScalingPolicyDescription.type = Types::AutoScalingPolicyDescription
    AutoScalingPolicyState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    AutoScalingPolicyState.add_member(:attaching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTACHING', traits: {"smithy.api#enumValue" => "ATTACHING"}))
    AutoScalingPolicyState.add_member(:attached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTACHED', traits: {"smithy.api#enumValue" => "ATTACHED"}))
    AutoScalingPolicyState.add_member(:detaching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETACHING', traits: {"smithy.api#enumValue" => "DETACHING"}))
    AutoScalingPolicyState.add_member(:detached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DETACHED', traits: {"smithy.api#enumValue" => "DETACHED"}))
    AutoScalingPolicyState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AutoScalingPolicyStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicyStateChangeReasonCode, location_name: 'Code'))
    AutoScalingPolicyStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    AutoScalingPolicyStateChangeReason.type = Types::AutoScalingPolicyStateChangeReason
    AutoScalingPolicyStateChangeReasonCode.add_member(:user_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_REQUEST', traits: {"smithy.api#enumValue" => "USER_REQUEST"}))
    AutoScalingPolicyStateChangeReasonCode.add_member(:provision_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISION_FAILURE', traits: {"smithy.api#enumValue" => "PROVISION_FAILURE"}))
    AutoScalingPolicyStateChangeReasonCode.add_member(:cleanup_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLEANUP_FAILURE', traits: {"smithy.api#enumValue" => "CLEANUP_FAILURE"}))
    AutoScalingPolicyStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicyState, location_name: 'State'))
    AutoScalingPolicyStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicyStateChangeReason, location_name: 'StateChangeReason'))
    AutoScalingPolicyStatus.type = Types::AutoScalingPolicyStatus
    AutoTerminationPolicy.add_member(:idle_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'IdleTimeout'))
    AutoTerminationPolicy.type = Types::AutoTerminationPolicy
    BlockPublicAccessConfiguration.add_member(:block_public_security_group_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'BlockPublicSecurityGroupRules', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BlockPublicAccessConfiguration.add_member(:permitted_public_security_group_rule_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRanges, location_name: 'PermittedPublicSecurityGroupRuleRanges'))
    BlockPublicAccessConfiguration.add_member(:classification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Classification'))
    BlockPublicAccessConfiguration.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'Configurations'))
    BlockPublicAccessConfiguration.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'Properties'))
    BlockPublicAccessConfiguration.type = Types::BlockPublicAccessConfiguration
    BlockPublicAccessConfigurationMetadata.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BlockPublicAccessConfigurationMetadata.add_member(:created_by_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'CreatedByArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BlockPublicAccessConfigurationMetadata.type = Types::BlockPublicAccessConfigurationMetadata
    BootstrapActionConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BootstrapActionConfig.add_member(:script_bootstrap_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptBootstrapActionConfig, location_name: 'ScriptBootstrapAction', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BootstrapActionConfig.type = Types::BootstrapActionConfig
    BootstrapActionConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BootstrapActionConfig)
    BootstrapActionDetail.add_member(:bootstrap_action_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BootstrapActionConfig, location_name: 'BootstrapActionConfig'))
    BootstrapActionDetail.type = Types::BootstrapActionDetail
    BootstrapActionDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BootstrapActionDetail)
    CancelStepsInfo.add_member(:step_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'StepId'))
    CancelStepsInfo.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelStepsRequestStatus, location_name: 'Status'))
    CancelStepsInfo.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason'))
    CancelStepsInfo.type = Types::CancelStepsInfo
    CancelStepsInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelStepsInfo)
    CancelStepsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelStepsInput.add_member(:step_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepIdsList, location_name: 'StepIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelStepsInput.add_member(:step_cancellation_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepCancellationOption, location_name: 'StepCancellationOption'))
    CancelStepsInput.type = Types::CancelStepsInput
    CancelStepsOutput.add_member(:cancel_steps_info_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelStepsInfoList, location_name: 'CancelStepsInfoList'))
    CancelStepsOutput.type = Types::CancelStepsOutput
    CancelStepsRequestStatus.add_member(:submitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBMITTED', traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    CancelStepsRequestStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CloudWatchAlarmDefinition.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'ComparisonOperator', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CloudWatchAlarmDefinition.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EvaluationPeriods'))
    CloudWatchAlarmDefinition.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MetricName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CloudWatchAlarmDefinition.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Namespace'))
    CloudWatchAlarmDefinition.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Period', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CloudWatchAlarmDefinition.add_member(:statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statistic, location_name: 'Statistic'))
    CloudWatchAlarmDefinition.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: 'Threshold', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CloudWatchAlarmDefinition.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Unit, location_name: 'Unit'))
    CloudWatchAlarmDefinition.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionList, location_name: 'Dimensions'))
    CloudWatchAlarmDefinition.type = Types::CloudWatchAlarmDefinition
    Cluster.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'Id'))
    Cluster.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Cluster.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStatus, location_name: 'Status'))
    Cluster.add_member(:ec2_instance_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2InstanceAttributes, location_name: 'Ec2InstanceAttributes'))
    Cluster.add_member(:instance_collection_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCollectionType, location_name: 'InstanceCollectionType'))
    Cluster.add_member(:log_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogUri'))
    Cluster.add_member(:log_encryption_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogEncryptionKmsKeyId'))
    Cluster.add_member(:requested_ami_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestedAmiVersion'))
    Cluster.add_member(:running_ami_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RunningAmiVersion'))
    Cluster.add_member(:release_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReleaseLabel'))
    Cluster.add_member(:auto_terminate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoTerminate'))
    Cluster.add_member(:termination_protected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'TerminationProtected'))
    Cluster.add_member(:unhealthy_node_replacement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'UnhealthyNodeReplacement'))
    Cluster.add_member(:visible_to_all_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'VisibleToAllUsers'))
    Cluster.add_member(:applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationList, location_name: 'Applications'))
    Cluster.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    Cluster.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRole'))
    Cluster.add_member(:normalized_instance_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NormalizedInstanceHours'))
    Cluster.add_member(:master_public_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPublicDnsName'))
    Cluster.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'Configurations'))
    Cluster.add_member(:security_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'SecurityConfiguration'))
    Cluster.add_member(:auto_scaling_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'AutoScalingRole'))
    Cluster.add_member(:scale_down_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScaleDownBehavior, location_name: 'ScaleDownBehavior'))
    Cluster.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'CustomAmiId'))
    Cluster.add_member(:ebs_root_volume_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EbsRootVolumeSize'))
    Cluster.add_member(:repo_upgrade_on_boot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepoUpgradeOnBoot, location_name: 'RepoUpgradeOnBoot'))
    Cluster.add_member(:kerberos_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosAttributes, location_name: 'KerberosAttributes'))
    Cluster.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ClusterArn'))
    Cluster.add_member(:outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalArnType, location_name: 'OutpostArn'))
    Cluster.add_member(:step_concurrency_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StepConcurrencyLevel'))
    Cluster.add_member(:placement_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementGroupConfigList, location_name: 'PlacementGroups'))
    Cluster.add_member(:os_release_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OSReleaseLabel'))
    Cluster.add_member(:ebs_root_volume_iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EbsRootVolumeIops'))
    Cluster.add_member(:ebs_root_volume_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EbsRootVolumeThroughput'))
    Cluster.add_member(:extended_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'ExtendedSupport'))
    Cluster.type = Types::Cluster
    ClusterState.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    ClusterState.add_member(:bootstrapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOTSTRAPPING', traits: {"smithy.api#enumValue" => "BOOTSTRAPPING"}))
    ClusterState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ClusterState.add_member(:waiting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAITING', traits: {"smithy.api#enumValue" => "WAITING"}))
    ClusterState.add_member(:terminating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATING', traits: {"smithy.api#enumValue" => "TERMINATING"}))
    ClusterState.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    ClusterState.add_member(:terminated_with_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED_WITH_ERRORS', traits: {"smithy.api#enumValue" => "TERMINATED_WITH_ERRORS"}))
    ClusterStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStateChangeReasonCode, location_name: 'Code'))
    ClusterStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ClusterStateChangeReason.type = Types::ClusterStateChangeReason
    ClusterStateChangeReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ClusterStateChangeReasonCode.add_member(:validation_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_ERROR', traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    ClusterStateChangeReasonCode.add_member(:instance_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_FAILURE', traits: {"smithy.api#enumValue" => "INSTANCE_FAILURE"}))
    ClusterStateChangeReasonCode.add_member(:instance_fleet_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_FLEET_TIMEOUT', traits: {"smithy.api#enumValue" => "INSTANCE_FLEET_TIMEOUT"}))
    ClusterStateChangeReasonCode.add_member(:bootstrap_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOTSTRAP_FAILURE', traits: {"smithy.api#enumValue" => "BOOTSTRAP_FAILURE"}))
    ClusterStateChangeReasonCode.add_member(:user_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_REQUEST', traits: {"smithy.api#enumValue" => "USER_REQUEST"}))
    ClusterStateChangeReasonCode.add_member(:step_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STEP_FAILURE', traits: {"smithy.api#enumValue" => "STEP_FAILURE"}))
    ClusterStateChangeReasonCode.add_member(:all_steps_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_STEPS_COMPLETED', traits: {"smithy.api#enumValue" => "ALL_STEPS_COMPLETED"}))
    ClusterStateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterState)
    ClusterStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterState, location_name: 'State'))
    ClusterStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStateChangeReason, location_name: 'StateChangeReason'))
    ClusterStatus.add_member(:timeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterTimeline, location_name: 'Timeline'))
    ClusterStatus.add_member(:error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetailList, location_name: 'ErrorDetails'))
    ClusterStatus.type = Types::ClusterStatus
    ClusterSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'Id'))
    ClusterSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    ClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStatus, location_name: 'Status'))
    ClusterSummary.add_member(:normalized_instance_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NormalizedInstanceHours'))
    ClusterSummary.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ClusterArn'))
    ClusterSummary.add_member(:outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalArnType, location_name: 'OutpostArn'))
    ClusterSummary.type = Types::ClusterSummary
    ClusterSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSummary)
    ClusterTimeline.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime'))
    ClusterTimeline.add_member(:ready_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'ReadyDateTime'))
    ClusterTimeline.add_member(:end_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndDateTime'))
    ClusterTimeline.type = Types::ClusterTimeline
    Command.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Command.add_member(:script_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScriptPath'))
    Command.add_member(:args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Args'))
    Command.type = Types::Command
    CommandList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Command)
    ComparisonOperator.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUAL', traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    ComparisonOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN', traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ComparisonOperator.add_member(:less_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN', traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    ComparisonOperator.add_member(:less_than_or_equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_OR_EQUAL', traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL"}))
    ComputeLimits.add_member(:unit_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeLimitsUnitType, location_name: 'UnitType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeLimits.add_member(:minimum_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MinimumCapacityUnits', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeLimits.add_member(:maximum_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaximumCapacityUnits', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeLimits.add_member(:maximum_on_demand_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaximumOnDemandCapacityUnits'))
    ComputeLimits.add_member(:maximum_core_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaximumCoreCapacityUnits'))
    ComputeLimits.type = Types::ComputeLimits
    ComputeLimitsUnitType.add_member(:instance_fleet_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InstanceFleetUnits', traits: {"smithy.api#enumValue" => "InstanceFleetUnits"}))
    ComputeLimitsUnitType.add_member(:instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Instances', traits: {"smithy.api#enumValue" => "Instances"}))
    ComputeLimitsUnitType.add_member(:vcpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VCPU', traits: {"smithy.api#enumValue" => "VCPU"}))
    Configuration.add_member(:classification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Classification'))
    Configuration.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'Configurations'))
    Configuration.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'Properties'))
    Configuration.type = Types::Configuration
    ConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration)
    CreatePersistentAppUIInput.add_member(:target_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'TargetResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreatePersistentAppUIInput.add_member(:emr_containers_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EMRContainersConfig, location_name: 'EMRContainersConfig'))
    CreatePersistentAppUIInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreatePersistentAppUIInput.add_member(:x_referer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'XReferer'))
    CreatePersistentAppUIInput.add_member(:profiler_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProfilerType, location_name: 'ProfilerType'))
    CreatePersistentAppUIInput.type = Types::CreatePersistentAppUIInput
    CreatePersistentAppUIOutput.add_member(:persistent_app_ui_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'PersistentAppUIId'))
    CreatePersistentAppUIOutput.add_member(:runtime_role_enabled_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RuntimeRoleEnabledCluster'))
    CreatePersistentAppUIOutput.type = Types::CreatePersistentAppUIOutput
    CreateSecurityConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSecurityConfigurationInput.add_member(:security_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecurityConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSecurityConfigurationInput.type = Types::CreateSecurityConfigurationInput
    CreateSecurityConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSecurityConfigurationOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSecurityConfigurationOutput.type = Types::CreateSecurityConfigurationOutput
    CreateStudioInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Description'))
    CreateStudioInput.add_member(:auth_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthMode, location_name: 'AuthMode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'VpcId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'SubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'ServiceRole', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:user_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'UserRole'))
    CreateStudioInput.add_member(:workspace_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'WorkspaceSecurityGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:engine_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'EngineSecurityGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:default_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'DefaultS3Location', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:idp_auth_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'IdpAuthUrl'))
    CreateStudioInput.add_member(:idp_relay_state_parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdpRelayStateParameterName'))
    CreateStudioInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateStudioInput.add_member(:trusted_identity_propagation_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'TrustedIdentityPropagationEnabled'))
    CreateStudioInput.add_member(:idc_user_assignment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdcUserAssignment, location_name: 'IdcUserAssignment'))
    CreateStudioInput.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'IdcInstanceArn'))
    CreateStudioInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'EncryptionKeyArn'))
    CreateStudioInput.type = Types::CreateStudioInput
    CreateStudioOutput.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId'))
    CreateStudioOutput.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'Url'))
    CreateStudioOutput.type = Types::CreateStudioOutput
    CreateStudioSessionMappingInput.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioSessionMappingInput.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdentityId'))
    CreateStudioSessionMappingInput.add_member(:identity_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdentityName'))
    CreateStudioSessionMappingInput.add_member(:identity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioSessionMappingInput.add_member(:session_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'SessionPolicyArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioSessionMappingInput.type = Types::CreateStudioSessionMappingInput
    Credentials.add_member(:username_password, Types::Credentials::UsernamePassword, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsernamePassword, location_name: 'UsernamePassword'))
    Credentials.add_member(:unknown, Types::Credentials::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Credentials.type = Types::Credentials
    DeleteSecurityConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSecurityConfigurationInput.type = Types::DeleteSecurityConfigurationInput
    DeleteSecurityConfigurationOutput.type = Types::DeleteSecurityConfigurationOutput
    DeleteStudioInput.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStudioInput.type = Types::DeleteStudioInput
    DeleteStudioSessionMappingInput.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStudioSessionMappingInput.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdentityId'))
    DeleteStudioSessionMappingInput.add_member(:identity_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdentityName'))
    DeleteStudioSessionMappingInput.add_member(:identity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStudioSessionMappingInput.type = Types::DeleteStudioSessionMappingInput
    DescribeClusterInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeClusterInput.type = Types::DescribeClusterInput
    DescribeClusterOutput.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    DescribeClusterOutput.type = Types::DescribeClusterOutput
    DescribeJobFlowsInput.add_member(:created_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedAfter'))
    DescribeJobFlowsInput.add_member(:created_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedBefore'))
    DescribeJobFlowsInput.add_member(:job_flow_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringList, location_name: 'JobFlowIds'))
    DescribeJobFlowsInput.add_member(:job_flow_states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobFlowExecutionStateList, location_name: 'JobFlowStates'))
    DescribeJobFlowsInput.type = Types::DescribeJobFlowsInput
    DescribeJobFlowsOutput.add_member(:job_flows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobFlowDetailList, location_name: 'JobFlows'))
    DescribeJobFlowsOutput.type = Types::DescribeJobFlowsOutput
    DescribeNotebookExecutionInput.add_member(:notebook_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'NotebookExecutionId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeNotebookExecutionInput.type = Types::DescribeNotebookExecutionInput
    DescribeNotebookExecutionOutput.add_member(:notebook_execution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookExecution, location_name: 'NotebookExecution'))
    DescribeNotebookExecutionOutput.type = Types::DescribeNotebookExecutionOutput
    DescribePersistentAppUIInput.add_member(:persistent_app_ui_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'PersistentAppUIId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribePersistentAppUIInput.type = Types::DescribePersistentAppUIInput
    DescribePersistentAppUIOutput.add_member(:persistent_app_ui, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersistentAppUI, location_name: 'PersistentAppUI'))
    DescribePersistentAppUIOutput.type = Types::DescribePersistentAppUIOutput
    DescribeReleaseLabelInput.add_member(:release_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReleaseLabel'))
    DescribeReleaseLabelInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeReleaseLabelInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsNumber, location_name: 'MaxResults'))
    DescribeReleaseLabelInput.type = Types::DescribeReleaseLabelInput
    DescribeReleaseLabelOutput.add_member(:release_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReleaseLabel'))
    DescribeReleaseLabelOutput.add_member(:applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimplifiedApplicationList, location_name: 'Applications'))
    DescribeReleaseLabelOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeReleaseLabelOutput.add_member(:available_os_releases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OSReleaseList, location_name: 'AvailableOSReleases'))
    DescribeReleaseLabelOutput.type = Types::DescribeReleaseLabelOutput
    DescribeSecurityConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeSecurityConfigurationInput.type = Types::DescribeSecurityConfigurationInput
    DescribeSecurityConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'Name'))
    DescribeSecurityConfigurationOutput.add_member(:security_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecurityConfiguration'))
    DescribeSecurityConfigurationOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime'))
    DescribeSecurityConfigurationOutput.type = Types::DescribeSecurityConfigurationOutput
    DescribeStepInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStepInput.add_member(:step_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'StepId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStepInput.type = Types::DescribeStepInput
    DescribeStepOutput.add_member(:step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Step, location_name: 'Step'))
    DescribeStepOutput.type = Types::DescribeStepOutput
    DescribeStudioInput.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStudioInput.type = Types::DescribeStudioInput
    DescribeStudioOutput.add_member(:studio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Studio, location_name: 'Studio'))
    DescribeStudioOutput.type = Types::DescribeStudioOutput
    EC2InstanceIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId)
    EC2InstanceIdsToTerminateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId)
    EMRContainersConfig.add_member(:job_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'JobRunId'))
    EMRContainersConfig.type = Types::EMRContainersConfig
    EbsBlockDevice.add_member(:volume_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSpecification, location_name: 'VolumeSpecification'))
    EbsBlockDevice.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Device'))
    EbsBlockDevice.type = Types::EbsBlockDevice
    EbsBlockDeviceConfig.add_member(:volume_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeSpecification, location_name: 'VolumeSpecification', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EbsBlockDeviceConfig.add_member(:volumes_per_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VolumesPerInstance'))
    EbsBlockDeviceConfig.type = Types::EbsBlockDeviceConfig
    EbsBlockDeviceConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsBlockDeviceConfig)
    EbsBlockDeviceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsBlockDevice)
    EbsConfiguration.add_member(:ebs_block_device_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsBlockDeviceConfigList, location_name: 'EbsBlockDeviceConfigs'))
    EbsConfiguration.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EbsOptimized'))
    EbsConfiguration.type = Types::EbsConfiguration
    EbsVolume.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Device'))
    EbsVolume.add_member(:volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId'))
    EbsVolume.type = Types::EbsVolume
    EbsVolumeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsVolume)
    Ec2InstanceAttributes.add_member(:ec2_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ec2KeyName'))
    Ec2InstanceAttributes.add_member(:ec2_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ec2SubnetId'))
    Ec2InstanceAttributes.add_member(:requested_ec2_subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256List, location_name: 'RequestedEc2SubnetIds'))
    Ec2InstanceAttributes.add_member(:ec2_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ec2AvailabilityZone'))
    Ec2InstanceAttributes.add_member(:requested_ec2_availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256List, location_name: 'RequestedEc2AvailabilityZones'))
    Ec2InstanceAttributes.add_member(:iam_instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamInstanceProfile'))
    Ec2InstanceAttributes.add_member(:emr_managed_master_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EmrManagedMasterSecurityGroup'))
    Ec2InstanceAttributes.add_member(:emr_managed_slave_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EmrManagedSlaveSecurityGroup'))
    Ec2InstanceAttributes.add_member(:service_access_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceAccessSecurityGroup'))
    Ec2InstanceAttributes.add_member(:additional_master_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'AdditionalMasterSecurityGroups'))
    Ec2InstanceAttributes.add_member(:additional_slave_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'AdditionalSlaveSecurityGroups'))
    Ec2InstanceAttributes.type = Types::Ec2InstanceAttributes
    EnvironmentVariablesMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256)
    EnvironmentVariablesMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString)
    ErrorData.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap)
    ErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode'))
    ErrorDetail.add_member(:error_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorData, location_name: 'ErrorData'))
    ErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage'))
    ErrorDetail.type = Types::ErrorDetail
    ErrorDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail)
    ExecutionEngineConfig.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExecutionEngineConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionEngineType, location_name: 'Type'))
    ExecutionEngineConfig.add_member(:master_instance_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'MasterInstanceSecurityGroupId'))
    ExecutionEngineConfig.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: 'ExecutionRoleArn'))
    ExecutionEngineConfig.type = Types::ExecutionEngineConfig
    ExecutionEngineType.add_member(:emr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMR', traits: {"smithy.api#enumValue" => "EMR"}))
    FailureDetails.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason'))
    FailureDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    FailureDetails.add_member(:log_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogFile'))
    FailureDetails.type = Types::FailureDetails
    GetAutoTerminationPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetAutoTerminationPolicyInput.type = Types::GetAutoTerminationPolicyInput
    GetAutoTerminationPolicyOutput.add_member(:auto_termination_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTerminationPolicy, location_name: 'AutoTerminationPolicy'))
    GetAutoTerminationPolicyOutput.type = Types::GetAutoTerminationPolicyOutput
    GetBlockPublicAccessConfigurationInput.type = Types::GetBlockPublicAccessConfigurationInput
    GetBlockPublicAccessConfigurationOutput.add_member(:block_public_access_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockPublicAccessConfiguration, location_name: 'BlockPublicAccessConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetBlockPublicAccessConfigurationOutput.add_member(:block_public_access_configuration_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockPublicAccessConfigurationMetadata, location_name: 'BlockPublicAccessConfigurationMetadata', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetBlockPublicAccessConfigurationOutput.type = Types::GetBlockPublicAccessConfigurationOutput
    GetClusterSessionCredentialsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetClusterSessionCredentialsInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ExecutionRoleArn'))
    GetClusterSessionCredentialsInput.type = Types::GetClusterSessionCredentialsInput
    GetClusterSessionCredentialsOutput.add_member(:credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Credentials, location_name: 'Credentials'))
    GetClusterSessionCredentialsOutput.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'ExpiresAt'))
    GetClusterSessionCredentialsOutput.type = Types::GetClusterSessionCredentialsOutput
    GetManagedScalingPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetManagedScalingPolicyInput.type = Types::GetManagedScalingPolicyInput
    GetManagedScalingPolicyOutput.add_member(:managed_scaling_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedScalingPolicy, location_name: 'ManagedScalingPolicy'))
    GetManagedScalingPolicyOutput.type = Types::GetManagedScalingPolicyOutput
    GetOnClusterAppUIPresignedURLInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetOnClusterAppUIPresignedURLInput.add_member(:on_cluster_app_ui_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnClusterAppUIType, location_name: 'OnClusterAppUIType'))
    GetOnClusterAppUIPresignedURLInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'ApplicationId'))
    GetOnClusterAppUIPresignedURLInput.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'DryRun'))
    GetOnClusterAppUIPresignedURLInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ExecutionRoleArn'))
    GetOnClusterAppUIPresignedURLInput.type = Types::GetOnClusterAppUIPresignedURLInput
    GetOnClusterAppUIPresignedURLOutput.add_member(:presigned_url_ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PresignedURLReady'))
    GetOnClusterAppUIPresignedURLOutput.add_member(:presigned_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'PresignedURL'))
    GetOnClusterAppUIPresignedURLOutput.type = Types::GetOnClusterAppUIPresignedURLOutput
    GetPersistentAppUIPresignedURLInput.add_member(:persistent_app_ui_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'PersistentAppUIId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetPersistentAppUIPresignedURLInput.add_member(:persistent_app_ui_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersistentAppUIType, location_name: 'PersistentAppUIType'))
    GetPersistentAppUIPresignedURLInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'ApplicationId'))
    GetPersistentAppUIPresignedURLInput.add_member(:auth_proxy_call, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'AuthProxyCall'))
    GetPersistentAppUIPresignedURLInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ExecutionRoleArn'))
    GetPersistentAppUIPresignedURLInput.type = Types::GetPersistentAppUIPresignedURLInput
    GetPersistentAppUIPresignedURLOutput.add_member(:presigned_url_ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PresignedURLReady'))
    GetPersistentAppUIPresignedURLOutput.add_member(:presigned_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'PresignedURL'))
    GetPersistentAppUIPresignedURLOutput.type = Types::GetPersistentAppUIPresignedURLOutput
    GetStudioSessionMappingInput.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetStudioSessionMappingInput.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdentityId'))
    GetStudioSessionMappingInput.add_member(:identity_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdentityName'))
    GetStudioSessionMappingInput.add_member(:identity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetStudioSessionMappingInput.type = Types::GetStudioSessionMappingInput
    GetStudioSessionMappingOutput.add_member(:session_mapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionMappingDetail, location_name: 'SessionMapping'))
    GetStudioSessionMappingOutput.type = Types::GetStudioSessionMappingOutput
    HadoopJarStepConfig.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValueList, location_name: 'Properties'))
    HadoopJarStepConfig.add_member(:jar, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'Jar', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    HadoopJarStepConfig.add_member(:main_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'MainClass'))
    HadoopJarStepConfig.add_member(:args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringList, location_name: 'Args'))
    HadoopJarStepConfig.type = Types::HadoopJarStepConfig
    HadoopStepConfig.add_member(:jar, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Jar'))
    HadoopStepConfig.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'Properties'))
    HadoopStepConfig.add_member(:main_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MainClass'))
    HadoopStepConfig.add_member(:args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Args'))
    HadoopStepConfig.type = Types::HadoopStepConfig
    IdcUserAssignment.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRED', traits: {"smithy.api#enumValue" => "REQUIRED"}))
    IdcUserAssignment.add_member(:optional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONAL', traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    IdentityType.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    IdentityType.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GROUP', traits: {"smithy.api#enumValue" => "GROUP"}))
    Instance.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'Id'))
    Instance.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'Ec2InstanceId'))
    Instance.add_member(:public_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicDnsName'))
    Instance.add_member(:public_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicIpAddress'))
    Instance.add_member(:private_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateDnsName'))
    Instance.add_member(:private_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateIpAddress'))
    Instance.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStatus, location_name: 'Status'))
    Instance.add_member(:instance_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceGroupId'))
    Instance.add_member(:instance_fleet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetId, location_name: 'InstanceFleetId'))
    Instance.add_member(:market, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketType, location_name: 'Market'))
    Instance.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'InstanceType'))
    Instance.add_member(:ebs_volumes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsVolumeList, location_name: 'EbsVolumes'))
    Instance.type = Types::Instance
    InstanceCollectionType.add_member(:instance_fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_FLEET', traits: {"smithy.api#enumValue" => "INSTANCE_FLEET"}))
    InstanceCollectionType.add_member(:instance_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_GROUP', traits: {"smithy.api#enumValue" => "INSTANCE_GROUP"}))
    InstanceFleet.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetId, location_name: 'Id'))
    InstanceFleet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name'))
    InstanceFleet.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetStatus, location_name: 'Status'))
    InstanceFleet.add_member(:instance_fleet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetType, location_name: 'InstanceFleetType'))
    InstanceFleet.add_member(:target_on_demand_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'TargetOnDemandCapacity'))
    InstanceFleet.add_member(:target_spot_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'TargetSpotCapacity'))
    InstanceFleet.add_member(:provisioned_on_demand_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'ProvisionedOnDemandCapacity'))
    InstanceFleet.add_member(:provisioned_spot_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'ProvisionedSpotCapacity'))
    InstanceFleet.add_member(:instance_type_specifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeSpecificationList, location_name: 'InstanceTypeSpecifications'))
    InstanceFleet.add_member(:launch_specifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetProvisioningSpecifications, location_name: 'LaunchSpecifications'))
    InstanceFleet.add_member(:resize_specifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetResizingSpecifications, location_name: 'ResizeSpecifications'))
    InstanceFleet.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Context'))
    InstanceFleet.type = Types::InstanceFleet
    InstanceFleetConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name'))
    InstanceFleetConfig.add_member(:instance_fleet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetType, location_name: 'InstanceFleetType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceFleetConfig.add_member(:target_on_demand_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'TargetOnDemandCapacity'))
    InstanceFleetConfig.add_member(:target_spot_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'TargetSpotCapacity'))
    InstanceFleetConfig.add_member(:instance_type_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeConfigList, location_name: 'InstanceTypeConfigs'))
    InstanceFleetConfig.add_member(:launch_specifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetProvisioningSpecifications, location_name: 'LaunchSpecifications'))
    InstanceFleetConfig.add_member(:resize_specifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetResizingSpecifications, location_name: 'ResizeSpecifications'))
    InstanceFleetConfig.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Context'))
    InstanceFleetConfig.type = Types::InstanceFleetConfig
    InstanceFleetConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetConfig)
    InstanceFleetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleet)
    InstanceFleetModifyConfig.add_member(:instance_fleet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetId, location_name: 'InstanceFleetId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceFleetModifyConfig.add_member(:target_on_demand_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'TargetOnDemandCapacity'))
    InstanceFleetModifyConfig.add_member(:target_spot_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'TargetSpotCapacity'))
    InstanceFleetModifyConfig.add_member(:resize_specifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetResizingSpecifications, location_name: 'ResizeSpecifications'))
    InstanceFleetModifyConfig.add_member(:instance_type_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeConfigList, location_name: 'InstanceTypeConfigs'))
    InstanceFleetModifyConfig.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Context'))
    InstanceFleetModifyConfig.type = Types::InstanceFleetModifyConfig
    InstanceFleetProvisioningSpecifications.add_member(:spot_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpotProvisioningSpecification, location_name: 'SpotSpecification'))
    InstanceFleetProvisioningSpecifications.add_member(:on_demand_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandProvisioningSpecification, location_name: 'OnDemandSpecification'))
    InstanceFleetProvisioningSpecifications.type = Types::InstanceFleetProvisioningSpecifications
    InstanceFleetResizingSpecifications.add_member(:spot_resize_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpotResizingSpecification, location_name: 'SpotResizeSpecification'))
    InstanceFleetResizingSpecifications.add_member(:on_demand_resize_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandResizingSpecification, location_name: 'OnDemandResizeSpecification'))
    InstanceFleetResizingSpecifications.type = Types::InstanceFleetResizingSpecifications
    InstanceFleetState.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONING', traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    InstanceFleetState.add_member(:bootstrapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOTSTRAPPING', traits: {"smithy.api#enumValue" => "BOOTSTRAPPING"}))
    InstanceFleetState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    InstanceFleetState.add_member(:resizing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESIZING', traits: {"smithy.api#enumValue" => "RESIZING"}))
    InstanceFleetState.add_member(:suspended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    InstanceFleetState.add_member(:terminating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATING', traits: {"smithy.api#enumValue" => "TERMINATING"}))
    InstanceFleetState.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    InstanceFleetStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetStateChangeReasonCode, location_name: 'Code'))
    InstanceFleetStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InstanceFleetStateChangeReason.type = Types::InstanceFleetStateChangeReason
    InstanceFleetStateChangeReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    InstanceFleetStateChangeReasonCode.add_member(:validation_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_ERROR', traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    InstanceFleetStateChangeReasonCode.add_member(:instance_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_FAILURE', traits: {"smithy.api#enumValue" => "INSTANCE_FAILURE"}))
    InstanceFleetStateChangeReasonCode.add_member(:cluster_terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_TERMINATED', traits: {"smithy.api#enumValue" => "CLUSTER_TERMINATED"}))
    InstanceFleetStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetState, location_name: 'State'))
    InstanceFleetStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetStateChangeReason, location_name: 'StateChangeReason'))
    InstanceFleetStatus.add_member(:timeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetTimeline, location_name: 'Timeline'))
    InstanceFleetStatus.type = Types::InstanceFleetStatus
    InstanceFleetTimeline.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime'))
    InstanceFleetTimeline.add_member(:ready_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'ReadyDateTime'))
    InstanceFleetTimeline.add_member(:end_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndDateTime'))
    InstanceFleetTimeline.type = Types::InstanceFleetTimeline
    InstanceFleetType.add_member(:master, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER', traits: {"smithy.api#enumValue" => "MASTER"}))
    InstanceFleetType.add_member(:core, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORE', traits: {"smithy.api#enumValue" => "CORE"}))
    InstanceFleetType.add_member(:task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TASK', traits: {"smithy.api#enumValue" => "TASK"}))
    InstanceGroup.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupId, location_name: 'Id'))
    InstanceGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    InstanceGroup.add_member(:market, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketType, location_name: 'Market'))
    InstanceGroup.add_member(:instance_group_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupType, location_name: 'InstanceGroupType'))
    InstanceGroup.add_member(:bid_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BidPrice'))
    InstanceGroup.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'InstanceType'))
    InstanceGroup.add_member(:requested_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RequestedInstanceCount'))
    InstanceGroup.add_member(:running_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RunningInstanceCount'))
    InstanceGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupStatus, location_name: 'Status'))
    InstanceGroup.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'Configurations'))
    InstanceGroup.add_member(:configurations_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ConfigurationsVersion'))
    InstanceGroup.add_member(:last_successfully_applied_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'LastSuccessfullyAppliedConfigurations'))
    InstanceGroup.add_member(:last_successfully_applied_configurations_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'LastSuccessfullyAppliedConfigurationsVersion'))
    InstanceGroup.add_member(:ebs_block_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsBlockDeviceList, location_name: 'EbsBlockDevices'))
    InstanceGroup.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EbsOptimized'))
    InstanceGroup.add_member(:shrink_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShrinkPolicy, location_name: 'ShrinkPolicy'))
    InstanceGroup.add_member(:auto_scaling_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicyDescription, location_name: 'AutoScalingPolicy'))
    InstanceGroup.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'CustomAmiId'))
    InstanceGroup.type = Types::InstanceGroup
    InstanceGroupConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name'))
    InstanceGroupConfig.add_member(:market, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketType, location_name: 'Market'))
    InstanceGroupConfig.add_member(:instance_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceRoleType, location_name: 'InstanceRole', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupConfig.add_member(:bid_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'BidPrice'))
    InstanceGroupConfig.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'InstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupConfig.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InstanceCount', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupConfig.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'Configurations'))
    InstanceGroupConfig.add_member(:ebs_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsConfiguration, location_name: 'EbsConfiguration'))
    InstanceGroupConfig.add_member(:auto_scaling_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicy, location_name: 'AutoScalingPolicy'))
    InstanceGroupConfig.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'CustomAmiId'))
    InstanceGroupConfig.type = Types::InstanceGroupConfig
    InstanceGroupConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupConfig)
    InstanceGroupDetail.add_member(:instance_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'InstanceGroupId'))
    InstanceGroupDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name'))
    InstanceGroupDetail.add_member(:market, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketType, location_name: 'Market', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:instance_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceRoleType, location_name: 'InstanceRole', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:bid_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'BidPrice'))
    InstanceGroupDetail.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'InstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:instance_request_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InstanceRequestCount', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:instance_running_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InstanceRunningCount', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupState, location_name: 'State', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:last_state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'LastStateChangeReason'))
    InstanceGroupDetail.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:start_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartDateTime'))
    InstanceGroupDetail.add_member(:ready_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'ReadyDateTime'))
    InstanceGroupDetail.add_member(:end_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndDateTime'))
    InstanceGroupDetail.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'CustomAmiId'))
    InstanceGroupDetail.type = Types::InstanceGroupDetail
    InstanceGroupDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupDetail)
    InstanceGroupIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256)
    InstanceGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroup)
    InstanceGroupModifyConfig.add_member(:instance_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'InstanceGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupModifyConfig.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InstanceCount'))
    InstanceGroupModifyConfig.add_member(:ec2_instance_ids_to_terminate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceIdsToTerminateList, location_name: 'EC2InstanceIdsToTerminate'))
    InstanceGroupModifyConfig.add_member(:shrink_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShrinkPolicy, location_name: 'ShrinkPolicy'))
    InstanceGroupModifyConfig.add_member(:reconfiguration_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReconfigurationType, location_name: 'ReconfigurationType'))
    InstanceGroupModifyConfig.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'Configurations'))
    InstanceGroupModifyConfig.type = Types::InstanceGroupModifyConfig
    InstanceGroupModifyConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupModifyConfig)
    InstanceGroupState.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONING', traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    InstanceGroupState.add_member(:bootstrapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOTSTRAPPING', traits: {"smithy.api#enumValue" => "BOOTSTRAPPING"}))
    InstanceGroupState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    InstanceGroupState.add_member(:reconfiguring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECONFIGURING', traits: {"smithy.api#enumValue" => "RECONFIGURING"}))
    InstanceGroupState.add_member(:resizing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESIZING', traits: {"smithy.api#enumValue" => "RESIZING"}))
    InstanceGroupState.add_member(:suspended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    InstanceGroupState.add_member(:terminating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATING', traits: {"smithy.api#enumValue" => "TERMINATING"}))
    InstanceGroupState.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    InstanceGroupState.add_member(:arrested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARRESTED', traits: {"smithy.api#enumValue" => "ARRESTED"}))
    InstanceGroupState.add_member(:shutting_down, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHUTTING_DOWN', traits: {"smithy.api#enumValue" => "SHUTTING_DOWN"}))
    InstanceGroupState.add_member(:ended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDED', traits: {"smithy.api#enumValue" => "ENDED"}))
    InstanceGroupStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupStateChangeReasonCode, location_name: 'Code'))
    InstanceGroupStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InstanceGroupStateChangeReason.type = Types::InstanceGroupStateChangeReason
    InstanceGroupStateChangeReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    InstanceGroupStateChangeReasonCode.add_member(:validation_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_ERROR', traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    InstanceGroupStateChangeReasonCode.add_member(:instance_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_FAILURE', traits: {"smithy.api#enumValue" => "INSTANCE_FAILURE"}))
    InstanceGroupStateChangeReasonCode.add_member(:cluster_terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_TERMINATED', traits: {"smithy.api#enumValue" => "CLUSTER_TERMINATED"}))
    InstanceGroupStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupState, location_name: 'State'))
    InstanceGroupStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupStateChangeReason, location_name: 'StateChangeReason'))
    InstanceGroupStatus.add_member(:timeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupTimeline, location_name: 'Timeline'))
    InstanceGroupStatus.type = Types::InstanceGroupStatus
    InstanceGroupTimeline.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime'))
    InstanceGroupTimeline.add_member(:ready_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'ReadyDateTime'))
    InstanceGroupTimeline.add_member(:end_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndDateTime'))
    InstanceGroupTimeline.type = Types::InstanceGroupTimeline
    InstanceGroupType.add_member(:master, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER', traits: {"smithy.api#enumValue" => "MASTER"}))
    InstanceGroupType.add_member(:core, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORE', traits: {"smithy.api#enumValue" => "CORE"}))
    InstanceGroupType.add_member(:task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TASK', traits: {"smithy.api#enumValue" => "TASK"}))
    InstanceGroupTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupType)
    InstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instance)
    InstanceResizePolicy.add_member(:instances_to_terminate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceIdsList, location_name: 'InstancesToTerminate'))
    InstanceResizePolicy.add_member(:instances_to_protect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceIdsList, location_name: 'InstancesToProtect'))
    InstanceResizePolicy.add_member(:instance_termination_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InstanceTerminationTimeout'))
    InstanceResizePolicy.type = Types::InstanceResizePolicy
    InstanceRoleType.add_member(:master, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASTER', traits: {"smithy.api#enumValue" => "MASTER"}))
    InstanceRoleType.add_member(:core, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CORE', traits: {"smithy.api#enumValue" => "CORE"}))
    InstanceRoleType.add_member(:task, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TASK', traits: {"smithy.api#enumValue" => "TASK"}))
    InstanceState.add_member(:awaiting_fulfillment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWAITING_FULFILLMENT', traits: {"smithy.api#enumValue" => "AWAITING_FULFILLMENT"}))
    InstanceState.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONING', traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    InstanceState.add_member(:bootstrapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOTSTRAPPING', traits: {"smithy.api#enumValue" => "BOOTSTRAPPING"}))
    InstanceState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    InstanceState.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    InstanceStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStateChangeReasonCode, location_name: 'Code'))
    InstanceStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InstanceStateChangeReason.type = Types::InstanceStateChangeReason
    InstanceStateChangeReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    InstanceStateChangeReasonCode.add_member(:validation_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_ERROR', traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    InstanceStateChangeReasonCode.add_member(:instance_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_FAILURE', traits: {"smithy.api#enumValue" => "INSTANCE_FAILURE"}))
    InstanceStateChangeReasonCode.add_member(:bootstrap_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOTSTRAP_FAILURE', traits: {"smithy.api#enumValue" => "BOOTSTRAP_FAILURE"}))
    InstanceStateChangeReasonCode.add_member(:cluster_terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_TERMINATED', traits: {"smithy.api#enumValue" => "CLUSTER_TERMINATED"}))
    InstanceStateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceState)
    InstanceStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceState, location_name: 'State'))
    InstanceStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStateChangeReason, location_name: 'StateChangeReason'))
    InstanceStatus.add_member(:timeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTimeline, location_name: 'Timeline'))
    InstanceStatus.type = Types::InstanceStatus
    InstanceTimeline.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime'))
    InstanceTimeline.add_member(:ready_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'ReadyDateTime'))
    InstanceTimeline.add_member(:end_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndDateTime'))
    InstanceTimeline.type = Types::InstanceTimeline
    InstanceTypeConfig.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'InstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceTypeConfig.add_member(:weighted_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'WeightedCapacity'))
    InstanceTypeConfig.add_member(:bid_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'BidPrice'))
    InstanceTypeConfig.add_member(:bid_price_as_percentage_of_on_demand_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: 'BidPriceAsPercentageOfOnDemandPrice'))
    InstanceTypeConfig.add_member(:ebs_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsConfiguration, location_name: 'EbsConfiguration'))
    InstanceTypeConfig.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'Configurations'))
    InstanceTypeConfig.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'CustomAmiId'))
    InstanceTypeConfig.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: 'Priority'))
    InstanceTypeConfig.type = Types::InstanceTypeConfig
    InstanceTypeConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeConfig)
    InstanceTypeSpecification.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'InstanceType'))
    InstanceTypeSpecification.add_member(:weighted_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'WeightedCapacity'))
    InstanceTypeSpecification.add_member(:bid_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'BidPrice'))
    InstanceTypeSpecification.add_member(:bid_price_as_percentage_of_on_demand_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: 'BidPriceAsPercentageOfOnDemandPrice'))
    InstanceTypeSpecification.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'Configurations'))
    InstanceTypeSpecification.add_member(:ebs_block_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsBlockDeviceList, location_name: 'EbsBlockDevices'))
    InstanceTypeSpecification.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EbsOptimized'))
    InstanceTypeSpecification.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'CustomAmiId'))
    InstanceTypeSpecification.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: 'Priority'))
    InstanceTypeSpecification.type = Types::InstanceTypeSpecification
    InstanceTypeSpecificationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeSpecification)
    InternalServerError.type = Types::InternalServerError
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    InvalidRequestException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    JobFlowDetail.add_member(:job_flow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'JobFlowId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowDetail.add_member(:log_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'LogUri'))
    JobFlowDetail.add_member(:log_encryption_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'LogEncryptionKmsKeyId'))
    JobFlowDetail.add_member(:ami_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'AmiVersion'))
    JobFlowDetail.add_member(:execution_status_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobFlowExecutionStatusDetail, location_name: 'ExecutionStatusDetail', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowDetail.add_member(:instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobFlowInstancesDetail, location_name: 'Instances', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowDetail.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepDetailList, location_name: 'Steps'))
    JobFlowDetail.add_member(:bootstrap_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BootstrapActionDetailList, location_name: 'BootstrapActions'))
    JobFlowDetail.add_member(:supported_products, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedProductsList, location_name: 'SupportedProducts'))
    JobFlowDetail.add_member(:visible_to_all_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'VisibleToAllUsers'))
    JobFlowDetail.add_member(:job_flow_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'JobFlowRole'))
    JobFlowDetail.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'ServiceRole'))
    JobFlowDetail.add_member(:auto_scaling_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'AutoScalingRole'))
    JobFlowDetail.add_member(:scale_down_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScaleDownBehavior, location_name: 'ScaleDownBehavior'))
    JobFlowDetail.type = Types::JobFlowDetail
    JobFlowDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobFlowDetail)
    JobFlowExecutionState.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    JobFlowExecutionState.add_member(:bootstrapping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOTSTRAPPING', traits: {"smithy.api#enumValue" => "BOOTSTRAPPING"}))
    JobFlowExecutionState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobFlowExecutionState.add_member(:waiting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAITING', traits: {"smithy.api#enumValue" => "WAITING"}))
    JobFlowExecutionState.add_member(:shutting_down, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHUTTING_DOWN', traits: {"smithy.api#enumValue" => "SHUTTING_DOWN"}))
    JobFlowExecutionState.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    JobFlowExecutionState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobFlowExecutionState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobFlowExecutionStateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobFlowExecutionState)
    JobFlowExecutionStatusDetail.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobFlowExecutionState, location_name: 'State', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowExecutionStatusDetail.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowExecutionStatusDetail.add_member(:start_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartDateTime'))
    JobFlowExecutionStatusDetail.add_member(:ready_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'ReadyDateTime'))
    JobFlowExecutionStatusDetail.add_member(:end_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndDateTime'))
    JobFlowExecutionStatusDetail.add_member(:last_state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'LastStateChangeReason'))
    JobFlowExecutionStatusDetail.type = Types::JobFlowExecutionStatusDetail
    JobFlowInstancesConfig.add_member(:master_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'MasterInstanceType'))
    JobFlowInstancesConfig.add_member(:slave_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'SlaveInstanceType'))
    JobFlowInstancesConfig.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InstanceCount'))
    JobFlowInstancesConfig.add_member(:instance_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupConfigList, location_name: 'InstanceGroups'))
    JobFlowInstancesConfig.add_member(:instance_fleets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetConfigList, location_name: 'InstanceFleets'))
    JobFlowInstancesConfig.add_member(:ec2_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Ec2KeyName'))
    JobFlowInstancesConfig.add_member(:placement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementType, location_name: 'Placement'))
    JobFlowInstancesConfig.add_member(:keep_job_flow_alive_when_no_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KeepJobFlowAliveWhenNoSteps'))
    JobFlowInstancesConfig.add_member(:termination_protected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'TerminationProtected'))
    JobFlowInstancesConfig.add_member(:unhealthy_node_replacement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'UnhealthyNodeReplacement'))
    JobFlowInstancesConfig.add_member(:hadoop_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'HadoopVersion'))
    JobFlowInstancesConfig.add_member(:ec2_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Ec2SubnetId'))
    JobFlowInstancesConfig.add_member(:ec2_subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256List, location_name: 'Ec2SubnetIds'))
    JobFlowInstancesConfig.add_member(:emr_managed_master_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'EmrManagedMasterSecurityGroup'))
    JobFlowInstancesConfig.add_member(:emr_managed_slave_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'EmrManagedSlaveSecurityGroup'))
    JobFlowInstancesConfig.add_member(:service_access_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'ServiceAccessSecurityGroup'))
    JobFlowInstancesConfig.add_member(:additional_master_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupsList, location_name: 'AdditionalMasterSecurityGroups'))
    JobFlowInstancesConfig.add_member(:additional_slave_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupsList, location_name: 'AdditionalSlaveSecurityGroups'))
    JobFlowInstancesConfig.type = Types::JobFlowInstancesConfig
    JobFlowInstancesDetail.add_member(:master_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'MasterInstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowInstancesDetail.add_member(:master_public_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'MasterPublicDnsName'))
    JobFlowInstancesDetail.add_member(:master_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'MasterInstanceId'))
    JobFlowInstancesDetail.add_member(:slave_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'SlaveInstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowInstancesDetail.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InstanceCount', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowInstancesDetail.add_member(:instance_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupDetailList, location_name: 'InstanceGroups'))
    JobFlowInstancesDetail.add_member(:normalized_instance_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NormalizedInstanceHours'))
    JobFlowInstancesDetail.add_member(:ec2_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Ec2KeyName'))
    JobFlowInstancesDetail.add_member(:ec2_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Ec2SubnetId'))
    JobFlowInstancesDetail.add_member(:placement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementType, location_name: 'Placement'))
    JobFlowInstancesDetail.add_member(:keep_job_flow_alive_when_no_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KeepJobFlowAliveWhenNoSteps'))
    JobFlowInstancesDetail.add_member(:termination_protected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'TerminationProtected'))
    JobFlowInstancesDetail.add_member(:unhealthy_node_replacement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'UnhealthyNodeReplacement'))
    JobFlowInstancesDetail.add_member(:hadoop_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'HadoopVersion'))
    JobFlowInstancesDetail.type = Types::JobFlowInstancesDetail
    KerberosAttributes.add_member(:realm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Realm', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    KerberosAttributes.add_member(:kdc_admin_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'KdcAdminPassword', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    KerberosAttributes.add_member(:cross_realm_trust_principal_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'CrossRealmTrustPrincipalPassword'))
    KerberosAttributes.add_member(:ad_domain_join_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'ADDomainJoinUser'))
    KerberosAttributes.add_member(:ad_domain_join_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'ADDomainJoinPassword'))
    KerberosAttributes.type = Types::KerberosAttributes
    KeyValue.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'Key'))
    KeyValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'Value'))
    KeyValue.type = Types::KeyValue
    KeyValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValue)
    ListBootstrapActionsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListBootstrapActionsInput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListBootstrapActionsInput.type = Types::ListBootstrapActionsInput
    ListBootstrapActionsOutput.add_member(:bootstrap_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandList, location_name: 'BootstrapActions'))
    ListBootstrapActionsOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListBootstrapActionsOutput.type = Types::ListBootstrapActionsOutput
    ListClustersInput.add_member(:created_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedAfter'))
    ListClustersInput.add_member(:created_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreatedBefore'))
    ListClustersInput.add_member(:cluster_states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStateList, location_name: 'ClusterStates'))
    ListClustersInput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListClustersInput.type = Types::ListClustersInput
    ListClustersOutput.add_member(:clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSummaryList, location_name: 'Clusters'))
    ListClustersOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListClustersOutput.type = Types::ListClustersOutput
    ListInstanceFleetsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListInstanceFleetsInput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListInstanceFleetsInput.type = Types::ListInstanceFleetsInput
    ListInstanceFleetsOutput.add_member(:instance_fleets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetList, location_name: 'InstanceFleets'))
    ListInstanceFleetsOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListInstanceFleetsOutput.type = Types::ListInstanceFleetsOutput
    ListInstanceGroupsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListInstanceGroupsInput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListInstanceGroupsInput.type = Types::ListInstanceGroupsInput
    ListInstanceGroupsOutput.add_member(:instance_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupList, location_name: 'InstanceGroups'))
    ListInstanceGroupsOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListInstanceGroupsOutput.type = Types::ListInstanceGroupsOutput
    ListInstancesInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListInstancesInput.add_member(:instance_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupId, location_name: 'InstanceGroupId'))
    ListInstancesInput.add_member(:instance_group_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupTypeList, location_name: 'InstanceGroupTypes'))
    ListInstancesInput.add_member(:instance_fleet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetId, location_name: 'InstanceFleetId'))
    ListInstancesInput.add_member(:instance_fleet_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetType, location_name: 'InstanceFleetType'))
    ListInstancesInput.add_member(:instance_states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStateList, location_name: 'InstanceStates'))
    ListInstancesInput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListInstancesInput.type = Types::ListInstancesInput
    ListInstancesOutput.add_member(:instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceList, location_name: 'Instances'))
    ListInstancesOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListInstancesOutput.type = Types::ListInstancesOutput
    ListNotebookExecutionsInput.add_member(:editor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'EditorId'))
    ListNotebookExecutionsInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookExecutionStatus, location_name: 'Status'))
    ListNotebookExecutionsInput.add_member(:from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'From'))
    ListNotebookExecutionsInput.add_member(:to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'To'))
    ListNotebookExecutionsInput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListNotebookExecutionsInput.add_member(:execution_engine_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'ExecutionEngineId'))
    ListNotebookExecutionsInput.type = Types::ListNotebookExecutionsInput
    ListNotebookExecutionsOutput.add_member(:notebook_executions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookExecutionSummaryList, location_name: 'NotebookExecutions'))
    ListNotebookExecutionsOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListNotebookExecutionsOutput.type = Types::ListNotebookExecutionsOutput
    ListReleaseLabelsInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReleaseLabelFilter, location_name: 'Filters'))
    ListReleaseLabelsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListReleaseLabelsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsNumber, location_name: 'MaxResults'))
    ListReleaseLabelsInput.type = Types::ListReleaseLabelsInput
    ListReleaseLabelsOutput.add_member(:release_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ReleaseLabels'))
    ListReleaseLabelsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListReleaseLabelsOutput.type = Types::ListReleaseLabelsOutput
    ListSecurityConfigurationsInput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListSecurityConfigurationsInput.type = Types::ListSecurityConfigurationsInput
    ListSecurityConfigurationsOutput.add_member(:security_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigurationList, location_name: 'SecurityConfigurations'))
    ListSecurityConfigurationsOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListSecurityConfigurationsOutput.type = Types::ListSecurityConfigurationsOutput
    ListStepsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStepsInput.add_member(:step_states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepStateList, location_name: 'StepStates'))
    ListStepsInput.add_member(:step_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringList, location_name: 'StepIds'))
    ListStepsInput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListStepsInput.type = Types::ListStepsInput
    ListStepsOutput.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepSummaryList, location_name: 'Steps'))
    ListStepsOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListStepsOutput.type = Types::ListStepsOutput
    ListStudioSessionMappingsInput.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId'))
    ListStudioSessionMappingsInput.add_member(:identity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType'))
    ListStudioSessionMappingsInput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListStudioSessionMappingsInput.type = Types::ListStudioSessionMappingsInput
    ListStudioSessionMappingsOutput.add_member(:session_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionMappingSummaryList, location_name: 'SessionMappings'))
    ListStudioSessionMappingsOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListStudioSessionMappingsOutput.type = Types::ListStudioSessionMappingsOutput
    ListStudiosInput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListStudiosInput.type = Types::ListStudiosInput
    ListStudiosOutput.add_member(:studios, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StudioSummaryList, location_name: 'Studios'))
    ListStudiosOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    ListStudiosOutput.type = Types::ListStudiosOutput
    ListSupportedInstanceTypesInput.add_member(:release_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReleaseLabel', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListSupportedInstanceTypesInput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ListSupportedInstanceTypesInput.type = Types::ListSupportedInstanceTypesInput
    ListSupportedInstanceTypesOutput.add_member(:supported_instance_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedInstanceTypesList, location_name: 'SupportedInstanceTypes'))
    ListSupportedInstanceTypesOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ListSupportedInstanceTypesOutput.type = Types::ListSupportedInstanceTypesOutput
    ManagedScalingPolicy.add_member(:compute_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeLimits, location_name: 'ComputeLimits'))
    ManagedScalingPolicy.add_member(:utilization_performance_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UtilizationPerformanceIndexInteger, location_name: 'UtilizationPerformanceIndex'))
    ManagedScalingPolicy.add_member(:scaling_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingStrategy, location_name: 'ScalingStrategy'))
    ManagedScalingPolicy.type = Types::ManagedScalingPolicy
    MarketType.add_member(:on_demand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEMAND', traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    MarketType.add_member(:spot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPOT', traits: {"smithy.api#enumValue" => "SPOT"}))
    MetricDimension.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key'))
    MetricDimension.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    MetricDimension.type = Types::MetricDimension
    MetricDimensionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimension)
    ModifyClusterInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterInput.add_member(:step_concurrency_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StepConcurrencyLevel'))
    ModifyClusterInput.add_member(:extended_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'ExtendedSupport'))
    ModifyClusterInput.type = Types::ModifyClusterInput
    ModifyClusterOutput.add_member(:step_concurrency_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StepConcurrencyLevel'))
    ModifyClusterOutput.add_member(:extended_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'ExtendedSupport'))
    ModifyClusterOutput.type = Types::ModifyClusterOutput
    ModifyInstanceFleetInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyInstanceFleetInput.add_member(:instance_fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceFleetModifyConfig, location_name: 'InstanceFleet', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyInstanceFleetInput.type = Types::ModifyInstanceFleetInput
    ModifyInstanceGroupsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId'))
    ModifyInstanceGroupsInput.add_member(:instance_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupModifyConfigList, location_name: 'InstanceGroups'))
    ModifyInstanceGroupsInput.type = Types::ModifyInstanceGroupsInput
    NewSupportedProductsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedProductConfig)
    NotebookExecution.add_member(:notebook_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'NotebookExecutionId'))
    NotebookExecution.add_member(:editor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'EditorId'))
    NotebookExecution.add_member(:execution_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionEngineConfig, location_name: 'ExecutionEngine'))
    NotebookExecution.add_member(:notebook_execution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'NotebookExecutionName'))
    NotebookExecution.add_member(:notebook_params, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'NotebookParams'))
    NotebookExecution.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookExecutionStatus, location_name: 'Status'))
    NotebookExecution.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartTime'))
    NotebookExecution.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndTime'))
    NotebookExecution.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Arn'))
    NotebookExecution.add_member(:output_notebook_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'OutputNotebookURI'))
    NotebookExecution.add_member(:last_state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'LastStateChangeReason'))
    NotebookExecution.add_member(:notebook_instance_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'NotebookInstanceSecurityGroupId'))
    NotebookExecution.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    NotebookExecution.add_member(:notebook_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookS3LocationForOutput, location_name: 'NotebookS3Location'))
    NotebookExecution.add_member(:output_notebook_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputNotebookS3LocationForOutput, location_name: 'OutputNotebookS3Location'))
    NotebookExecution.add_member(:output_notebook_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputNotebookFormat, location_name: 'OutputNotebookFormat'))
    NotebookExecution.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: 'EnvironmentVariables'))
    NotebookExecution.type = Types::NotebookExecution
    NotebookExecutionStatus.add_member(:start_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_PENDING', traits: {"smithy.api#enumValue" => "START_PENDING"}))
    NotebookExecutionStatus.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    NotebookExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    NotebookExecutionStatus.add_member(:finishing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINISHING', traits: {"smithy.api#enumValue" => "FINISHING"}))
    NotebookExecutionStatus.add_member(:finished, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINISHED', traits: {"smithy.api#enumValue" => "FINISHED"}))
    NotebookExecutionStatus.add_member(:failing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILING', traits: {"smithy.api#enumValue" => "FAILING"}))
    NotebookExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    NotebookExecutionStatus.add_member(:stop_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_PENDING', traits: {"smithy.api#enumValue" => "STOP_PENDING"}))
    NotebookExecutionStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    NotebookExecutionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    NotebookExecutionSummary.add_member(:notebook_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'NotebookExecutionId'))
    NotebookExecutionSummary.add_member(:editor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'EditorId'))
    NotebookExecutionSummary.add_member(:notebook_execution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'NotebookExecutionName'))
    NotebookExecutionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookExecutionStatus, location_name: 'Status'))
    NotebookExecutionSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartTime'))
    NotebookExecutionSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndTime'))
    NotebookExecutionSummary.add_member(:notebook_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookS3LocationForOutput, location_name: 'NotebookS3Location'))
    NotebookExecutionSummary.add_member(:execution_engine_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'ExecutionEngineId'))
    NotebookExecutionSummary.type = Types::NotebookExecutionSummary
    NotebookExecutionSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookExecutionSummary)
    NotebookS3LocationForOutput.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Bucket'))
    NotebookS3LocationForOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UriString, location_name: 'Key'))
    NotebookS3LocationForOutput.type = Types::NotebookS3LocationForOutput
    NotebookS3LocationFromInput.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Bucket'))
    NotebookS3LocationFromInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UriString, location_name: 'Key'))
    NotebookS3LocationFromInput.type = Types::NotebookS3LocationFromInput
    OSRelease.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Label'))
    OSRelease.type = Types::OSRelease
    OSReleaseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OSRelease)
    OnClusterAppUIType.add_member(:spark_history_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SparkHistoryServer', traits: {"smithy.api#enumValue" => "SparkHistoryServer"}))
    OnClusterAppUIType.add_member(:yarn_timeline_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YarnTimelineService', traits: {"smithy.api#enumValue" => "YarnTimelineService"}))
    OnClusterAppUIType.add_member(:tez_ui, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TezUI', traits: {"smithy.api#enumValue" => "TezUI"}))
    OnClusterAppUIType.add_member(:application_master, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ApplicationMaster', traits: {"smithy.api#enumValue" => "ApplicationMaster"}))
    OnClusterAppUIType.add_member(:job_history_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JobHistoryServer', traits: {"smithy.api#enumValue" => "JobHistoryServer"}))
    OnClusterAppUIType.add_member(:resource_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceManager', traits: {"smithy.api#enumValue" => "ResourceManager"}))
    OnDemandCapacityReservationOptions.add_member(:usage_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandCapacityReservationUsageStrategy, location_name: 'UsageStrategy'))
    OnDemandCapacityReservationOptions.add_member(:capacity_reservation_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandCapacityReservationPreference, location_name: 'CapacityReservationPreference'))
    OnDemandCapacityReservationOptions.add_member(:capacity_reservation_resource_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'CapacityReservationResourceGroupArn'))
    OnDemandCapacityReservationOptions.type = Types::OnDemandCapacityReservationOptions
    OnDemandCapacityReservationPreference.add_member(:open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "open"}))
    OnDemandCapacityReservationPreference.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "none"}))
    OnDemandCapacityReservationUsageStrategy.add_member(:use_capacity_reservations_first, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USE_CAPACITY_RESERVATIONS_FIRST', traits: {"smithy.api#enumValue" => "use-capacity-reservations-first"}))
    OnDemandProvisioningAllocationStrategy.add_member(:lowest_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOWEST_PRICE', traits: {"smithy.api#enumValue" => "lowest-price"}))
    OnDemandProvisioningAllocationStrategy.add_member(:prioritized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIORITIZED', traits: {"smithy.api#enumValue" => "prioritized"}))
    OnDemandProvisioningSpecification.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandProvisioningAllocationStrategy, location_name: 'AllocationStrategy', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OnDemandProvisioningSpecification.add_member(:capacity_reservation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandCapacityReservationOptions, location_name: 'CapacityReservationOptions'))
    OnDemandProvisioningSpecification.type = Types::OnDemandProvisioningSpecification
    OnDemandResizingSpecification.add_member(:timeout_duration_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'TimeoutDurationMinutes'))
    OnDemandResizingSpecification.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandProvisioningAllocationStrategy, location_name: 'AllocationStrategy'))
    OnDemandResizingSpecification.add_member(:capacity_reservation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandCapacityReservationOptions, location_name: 'CapacityReservationOptions'))
    OnDemandResizingSpecification.type = Types::OnDemandResizingSpecification
    OutputNotebookFormat.add_member(:html, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTML', traits: {"smithy.api#enumValue" => "HTML"}))
    OutputNotebookS3LocationForOutput.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Bucket'))
    OutputNotebookS3LocationForOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UriString, location_name: 'Key'))
    OutputNotebookS3LocationForOutput.type = Types::OutputNotebookS3LocationForOutput
    OutputNotebookS3LocationFromInput.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Bucket'))
    OutputNotebookS3LocationFromInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UriString, location_name: 'Key'))
    OutputNotebookS3LocationFromInput.type = Types::OutputNotebookS3LocationFromInput
    PersistentAppUI.add_member(:persistent_app_ui_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'PersistentAppUIId'))
    PersistentAppUI.add_member(:persistent_app_ui_type_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersistentAppUITypeList, location_name: 'PersistentAppUITypeList'))
    PersistentAppUI.add_member(:persistent_app_ui_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'PersistentAppUIStatus'))
    PersistentAppUI.add_member(:author_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'AuthorId'))
    PersistentAppUI.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime'))
    PersistentAppUI.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedTime'))
    PersistentAppUI.add_member(:last_state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'LastStateChangeReason'))
    PersistentAppUI.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    PersistentAppUI.type = Types::PersistentAppUI
    PersistentAppUIType.add_member(:shs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHS', traits: {"smithy.api#enumValue" => "SHS"}))
    PersistentAppUIType.add_member(:tez, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEZ', traits: {"smithy.api#enumValue" => "TEZ"}))
    PersistentAppUIType.add_member(:yts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YTS', traits: {"smithy.api#enumValue" => "YTS"}))
    PersistentAppUITypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PersistentAppUIType)
    PlacementGroupConfig.add_member(:instance_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceRoleType, location_name: 'InstanceRole', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PlacementGroupConfig.add_member(:placement_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementGroupStrategy, location_name: 'PlacementStrategy'))
    PlacementGroupConfig.type = Types::PlacementGroupConfig
    PlacementGroupConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementGroupConfig)
    PlacementGroupStrategy.add_member(:spread, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPREAD', traits: {"smithy.api#enumValue" => "SPREAD"}))
    PlacementGroupStrategy.add_member(:partition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTITION', traits: {"smithy.api#enumValue" => "PARTITION"}))
    PlacementGroupStrategy.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER', traits: {"smithy.api#enumValue" => "CLUSTER"}))
    PlacementGroupStrategy.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    PlacementType.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'AvailabilityZone'))
    PlacementType.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256List, location_name: 'AvailabilityZones'))
    PlacementType.type = Types::PlacementType
    PortRange.add_member(:min_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'MinRange', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PortRange.add_member(:max_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Port, location_name: 'MaxRange'))
    PortRange.type = Types::PortRange
    PortRanges.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortRange)
    ProfilerType.add_member(:shs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHS', traits: {"smithy.api#enumValue" => "SHS"}))
    ProfilerType.add_member(:tezui, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEZUI', traits: {"smithy.api#enumValue" => "TEZUI"}))
    ProfilerType.add_member(:yts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YTS', traits: {"smithy.api#enumValue" => "YTS"}))
    PutAutoScalingPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutAutoScalingPolicyInput.add_member(:instance_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupId, location_name: 'InstanceGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutAutoScalingPolicyInput.add_member(:auto_scaling_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicy, location_name: 'AutoScalingPolicy', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutAutoScalingPolicyInput.type = Types::PutAutoScalingPolicyInput
    PutAutoScalingPolicyOutput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId'))
    PutAutoScalingPolicyOutput.add_member(:instance_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupId, location_name: 'InstanceGroupId'))
    PutAutoScalingPolicyOutput.add_member(:auto_scaling_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicyDescription, location_name: 'AutoScalingPolicy'))
    PutAutoScalingPolicyOutput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ClusterArn'))
    PutAutoScalingPolicyOutput.type = Types::PutAutoScalingPolicyOutput
    PutAutoTerminationPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutAutoTerminationPolicyInput.add_member(:auto_termination_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTerminationPolicy, location_name: 'AutoTerminationPolicy'))
    PutAutoTerminationPolicyInput.type = Types::PutAutoTerminationPolicyInput
    PutAutoTerminationPolicyOutput.type = Types::PutAutoTerminationPolicyOutput
    PutBlockPublicAccessConfigurationInput.add_member(:block_public_access_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockPublicAccessConfiguration, location_name: 'BlockPublicAccessConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutBlockPublicAccessConfigurationInput.type = Types::PutBlockPublicAccessConfigurationInput
    PutBlockPublicAccessConfigurationOutput.type = Types::PutBlockPublicAccessConfigurationOutput
    PutManagedScalingPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutManagedScalingPolicyInput.add_member(:managed_scaling_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedScalingPolicy, location_name: 'ManagedScalingPolicy', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutManagedScalingPolicyInput.type = Types::PutManagedScalingPolicyInput
    PutManagedScalingPolicyOutput.type = Types::PutManagedScalingPolicyOutput
    ReconfigurationType.add_member(:overwrite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERWRITE', traits: {"smithy.api#enumValue" => "OVERWRITE"}))
    ReconfigurationType.add_member(:merge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGE', traits: {"smithy.api#enumValue" => "MERGE"}))
    ReleaseLabelFilter.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Prefix'))
    ReleaseLabelFilter.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Application'))
    ReleaseLabelFilter.type = Types::ReleaseLabelFilter
    RemoveAutoScalingPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveAutoScalingPolicyInput.add_member(:instance_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceGroupId, location_name: 'InstanceGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveAutoScalingPolicyInput.type = Types::RemoveAutoScalingPolicyInput
    RemoveAutoScalingPolicyOutput.type = Types::RemoveAutoScalingPolicyOutput
    RemoveAutoTerminationPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveAutoTerminationPolicyInput.type = Types::RemoveAutoTerminationPolicyInput
    RemoveAutoTerminationPolicyOutput.type = Types::RemoveAutoTerminationPolicyOutput
    RemoveManagedScalingPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterId, location_name: 'ClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveManagedScalingPolicyInput.type = Types::RemoveManagedScalingPolicyInput
    RemoveManagedScalingPolicyOutput.type = Types::RemoveManagedScalingPolicyOutput
    RemoveTagsInput.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsInput.type = Types::RemoveTagsInput
    RemoveTagsOutput.type = Types::RemoveTagsOutput
    RepoUpgradeOnBoot.add_member(:security, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY', traits: {"smithy.api#enumValue" => "SECURITY"}))
    RepoUpgradeOnBoot.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    RunJobFlowInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RunJobFlowInput.add_member(:log_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'LogUri'))
    RunJobFlowInput.add_member(:log_encryption_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'LogEncryptionKmsKeyId'))
    RunJobFlowInput.add_member(:additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'AdditionalInfo'))
    RunJobFlowInput.add_member(:ami_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'AmiVersion'))
    RunJobFlowInput.add_member(:release_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'ReleaseLabel'))
    RunJobFlowInput.add_member(:instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobFlowInstancesConfig, location_name: 'Instances', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RunJobFlowInput.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepConfigList, location_name: 'Steps'))
    RunJobFlowInput.add_member(:bootstrap_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BootstrapActionConfigList, location_name: 'BootstrapActions'))
    RunJobFlowInput.add_member(:supported_products, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedProductsList, location_name: 'SupportedProducts'))
    RunJobFlowInput.add_member(:new_supported_products, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NewSupportedProductsList, location_name: 'NewSupportedProducts'))
    RunJobFlowInput.add_member(:applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationList, location_name: 'Applications'))
    RunJobFlowInput.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationList, location_name: 'Configurations'))
    RunJobFlowInput.add_member(:visible_to_all_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'VisibleToAllUsers'))
    RunJobFlowInput.add_member(:job_flow_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'JobFlowRole'))
    RunJobFlowInput.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'ServiceRole'))
    RunJobFlowInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    RunJobFlowInput.add_member(:security_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'SecurityConfiguration'))
    RunJobFlowInput.add_member(:auto_scaling_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'AutoScalingRole'))
    RunJobFlowInput.add_member(:scale_down_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScaleDownBehavior, location_name: 'ScaleDownBehavior'))
    RunJobFlowInput.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'CustomAmiId'))
    RunJobFlowInput.add_member(:ebs_root_volume_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EbsRootVolumeSize'))
    RunJobFlowInput.add_member(:repo_upgrade_on_boot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepoUpgradeOnBoot, location_name: 'RepoUpgradeOnBoot'))
    RunJobFlowInput.add_member(:kerberos_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosAttributes, location_name: 'KerberosAttributes'))
    RunJobFlowInput.add_member(:step_concurrency_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StepConcurrencyLevel'))
    RunJobFlowInput.add_member(:managed_scaling_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedScalingPolicy, location_name: 'ManagedScalingPolicy'))
    RunJobFlowInput.add_member(:placement_group_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementGroupConfigList, location_name: 'PlacementGroupConfigs'))
    RunJobFlowInput.add_member(:auto_termination_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoTerminationPolicy, location_name: 'AutoTerminationPolicy'))
    RunJobFlowInput.add_member(:os_release_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'OSReleaseLabel'))
    RunJobFlowInput.add_member(:ebs_root_volume_iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EbsRootVolumeIops'))
    RunJobFlowInput.add_member(:ebs_root_volume_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EbsRootVolumeThroughput'))
    RunJobFlowInput.add_member(:extended_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'ExtendedSupport'))
    RunJobFlowInput.type = Types::RunJobFlowInput
    RunJobFlowOutput.add_member(:job_flow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'JobFlowId'))
    RunJobFlowOutput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'ClusterArn'))
    RunJobFlowOutput.type = Types::RunJobFlowOutput
    ScaleDownBehavior.add_member(:terminate_at_instance_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATE_AT_INSTANCE_HOUR', traits: {"smithy.api#enumValue" => "TERMINATE_AT_INSTANCE_HOUR"}))
    ScaleDownBehavior.add_member(:terminate_at_task_completion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATE_AT_TASK_COMPLETION', traits: {"smithy.api#enumValue" => "TERMINATE_AT_TASK_COMPLETION"}))
    ScalingAction.add_member(:market, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketType, location_name: 'Market'))
    ScalingAction.add_member(:simple_scaling_policy_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleScalingPolicyConfiguration, location_name: 'SimpleScalingPolicyConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingAction.type = Types::ScalingAction
    ScalingConstraints.add_member(:min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MinCapacity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingConstraints.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxCapacity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingConstraints.type = Types::ScalingConstraints
    ScalingRule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingRule.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    ScalingRule.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingAction, location_name: 'Action', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingRule.add_member(:trigger, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingTrigger, location_name: 'Trigger', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingRule.type = Types::ScalingRule
    ScalingRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingRule)
    ScalingStrategy.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ScalingStrategy.add_member(:advanced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADVANCED', traits: {"smithy.api#enumValue" => "ADVANCED"}))
    ScalingTrigger.add_member(:cloud_watch_alarm_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchAlarmDefinition, location_name: 'CloudWatchAlarmDefinition', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingTrigger.type = Types::ScalingTrigger
    ScriptBootstrapActionConfig.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'Path', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScriptBootstrapActionConfig.add_member(:args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringList, location_name: 'Args'))
    ScriptBootstrapActionConfig.type = Types::ScriptBootstrapActionConfig
    SecurityConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityConfigurationSummary)
    SecurityConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'Name'))
    SecurityConfigurationSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime'))
    SecurityConfigurationSummary.type = Types::SecurityConfigurationSummary
    SecurityGroupsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256)
    SessionMappingDetail.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId'))
    SessionMappingDetail.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdentityId'))
    SessionMappingDetail.add_member(:identity_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdentityName'))
    SessionMappingDetail.add_member(:identity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType'))
    SessionMappingDetail.add_member(:session_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'SessionPolicyArn'))
    SessionMappingDetail.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime'))
    SessionMappingDetail.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'LastModifiedTime'))
    SessionMappingDetail.type = Types::SessionMappingDetail
    SessionMappingSummary.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId'))
    SessionMappingSummary.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdentityId'))
    SessionMappingSummary.add_member(:identity_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdentityName'))
    SessionMappingSummary.add_member(:identity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType'))
    SessionMappingSummary.add_member(:session_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'SessionPolicyArn'))
    SessionMappingSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime'))
    SessionMappingSummary.type = Types::SessionMappingSummary
    SessionMappingSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionMappingSummary)
    SetKeepJobFlowAliveWhenNoStepsInput.add_member(:job_flow_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringList, location_name: 'JobFlowIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetKeepJobFlowAliveWhenNoStepsInput.add_member(:keep_job_flow_alive_when_no_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KeepJobFlowAliveWhenNoSteps', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetKeepJobFlowAliveWhenNoStepsInput.type = Types::SetKeepJobFlowAliveWhenNoStepsInput
    SetTerminationProtectionInput.add_member(:job_flow_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringList, location_name: 'JobFlowIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetTerminationProtectionInput.add_member(:termination_protected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'TerminationProtected', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetTerminationProtectionInput.type = Types::SetTerminationProtectionInput
    SetUnhealthyNodeReplacementInput.add_member(:job_flow_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringList, location_name: 'JobFlowIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetUnhealthyNodeReplacementInput.add_member(:unhealthy_node_replacement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'UnhealthyNodeReplacement', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetUnhealthyNodeReplacementInput.type = Types::SetUnhealthyNodeReplacementInput
    SetVisibleToAllUsersInput.add_member(:job_flow_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringList, location_name: 'JobFlowIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetVisibleToAllUsersInput.add_member(:visible_to_all_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'VisibleToAllUsers', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetVisibleToAllUsersInput.type = Types::SetVisibleToAllUsersInput
    ShrinkPolicy.add_member(:decommission_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DecommissionTimeout'))
    ShrinkPolicy.add_member(:instance_resize_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceResizePolicy, location_name: 'InstanceResizePolicy'))
    ShrinkPolicy.type = Types::ShrinkPolicy
    SimpleScalingPolicyConfiguration.add_member(:adjustment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdjustmentType, location_name: 'AdjustmentType'))
    SimpleScalingPolicyConfiguration.add_member(:scaling_adjustment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ScalingAdjustment', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SimpleScalingPolicyConfiguration.add_member(:cool_down, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'CoolDown'))
    SimpleScalingPolicyConfiguration.type = Types::SimpleScalingPolicyConfiguration
    SimplifiedApplication.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    SimplifiedApplication.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    SimplifiedApplication.type = Types::SimplifiedApplication
    SimplifiedApplicationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimplifiedApplication)
    SpotProvisioningAllocationStrategy.add_member(:capacity_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAPACITY_OPTIMIZED', traits: {"smithy.api#enumValue" => "capacity-optimized"}))
    SpotProvisioningAllocationStrategy.add_member(:price_capacity_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRICE_CAPACITY_OPTIMIZED', traits: {"smithy.api#enumValue" => "price-capacity-optimized"}))
    SpotProvisioningAllocationStrategy.add_member(:lowest_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOWEST_PRICE', traits: {"smithy.api#enumValue" => "lowest-price"}))
    SpotProvisioningAllocationStrategy.add_member(:diversified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIVERSIFIED', traits: {"smithy.api#enumValue" => "diversified"}))
    SpotProvisioningAllocationStrategy.add_member(:capacity_optimized_prioritized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAPACITY_OPTIMIZED_PRIORITIZED', traits: {"smithy.api#enumValue" => "capacity-optimized-prioritized"}))
    SpotProvisioningSpecification.add_member(:timeout_duration_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'TimeoutDurationMinutes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SpotProvisioningSpecification.add_member(:timeout_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpotProvisioningTimeoutAction, location_name: 'TimeoutAction', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SpotProvisioningSpecification.add_member(:block_duration_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'BlockDurationMinutes'))
    SpotProvisioningSpecification.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpotProvisioningAllocationStrategy, location_name: 'AllocationStrategy'))
    SpotProvisioningSpecification.type = Types::SpotProvisioningSpecification
    SpotProvisioningTimeoutAction.add_member(:switch_to_on_demand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SWITCH_TO_ON_DEMAND', traits: {"smithy.api#enumValue" => "SWITCH_TO_ON_DEMAND"}))
    SpotProvisioningTimeoutAction.add_member(:terminate_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATE_CLUSTER', traits: {"smithy.api#enumValue" => "TERMINATE_CLUSTER"}))
    SpotResizingSpecification.add_member(:timeout_duration_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WholeNumber, location_name: 'TimeoutDurationMinutes'))
    SpotResizingSpecification.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpotProvisioningAllocationStrategy, location_name: 'AllocationStrategy'))
    SpotResizingSpecification.type = Types::SpotResizingSpecification
    StartNotebookExecutionInput.add_member(:editor_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'EditorId'))
    StartNotebookExecutionInput.add_member(:relative_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'RelativePath'))
    StartNotebookExecutionInput.add_member(:notebook_execution_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'NotebookExecutionName'))
    StartNotebookExecutionInput.add_member(:notebook_params, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'NotebookParams'))
    StartNotebookExecutionInput.add_member(:execution_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionEngineConfig, location_name: 'ExecutionEngine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartNotebookExecutionInput.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'ServiceRole', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartNotebookExecutionInput.add_member(:notebook_instance_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'NotebookInstanceSecurityGroupId'))
    StartNotebookExecutionInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    StartNotebookExecutionInput.add_member(:notebook_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotebookS3LocationFromInput, location_name: 'NotebookS3Location'))
    StartNotebookExecutionInput.add_member(:output_notebook_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputNotebookS3LocationFromInput, location_name: 'OutputNotebookS3Location'))
    StartNotebookExecutionInput.add_member(:output_notebook_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputNotebookFormat, location_name: 'OutputNotebookFormat'))
    StartNotebookExecutionInput.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: 'EnvironmentVariables'))
    StartNotebookExecutionInput.type = Types::StartNotebookExecutionInput
    StartNotebookExecutionOutput.add_member(:notebook_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'NotebookExecutionId'))
    StartNotebookExecutionOutput.type = Types::StartNotebookExecutionOutput
    Statistic.add_member(:sample_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAMPLE_COUNT', traits: {"smithy.api#enumValue" => "SAMPLE_COUNT"}))
    Statistic.add_member(:average, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVERAGE', traits: {"smithy.api#enumValue" => "AVERAGE"}))
    Statistic.add_member(:sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUM', traits: {"smithy.api#enumValue" => "SUM"}))
    Statistic.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MINIMUM', traits: {"smithy.api#enumValue" => "MINIMUM"}))
    Statistic.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAXIMUM', traits: {"smithy.api#enumValue" => "MAXIMUM"}))
    Step.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'Id'))
    Step.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Step.add_member(:config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HadoopStepConfig, location_name: 'Config'))
    Step.add_member(:action_on_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionOnFailure, location_name: 'ActionOnFailure'))
    Step.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepStatus, location_name: 'Status'))
    Step.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalArnType, location_name: 'ExecutionRoleArn'))
    Step.type = Types::Step
    StepCancellationOption.add_member(:send_interrupt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND_INTERRUPT', traits: {"smithy.api#enumValue" => "SEND_INTERRUPT"}))
    StepCancellationOption.add_member(:terminate_process, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATE_PROCESS', traits: {"smithy.api#enumValue" => "TERMINATE_PROCESS"}))
    StepConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepConfig.add_member(:action_on_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionOnFailure, location_name: 'ActionOnFailure'))
    StepConfig.add_member(:hadoop_jar_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HadoopJarStepConfig, location_name: 'HadoopJarStep', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepConfig.type = Types::StepConfig
    StepConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepConfig)
    StepDetail.add_member(:step_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepConfig, location_name: 'StepConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepDetail.add_member(:execution_status_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepExecutionStatusDetail, location_name: 'ExecutionStatusDetail', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepDetail.type = Types::StepDetail
    StepDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepDetail)
    StepExecutionState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    StepExecutionState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    StepExecutionState.add_member(:continue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTINUE', traits: {"smithy.api#enumValue" => "CONTINUE"}))
    StepExecutionState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    StepExecutionState.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    StepExecutionState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    StepExecutionState.add_member(:interrupted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERRUPTED', traits: {"smithy.api#enumValue" => "INTERRUPTED"}))
    StepExecutionStatusDetail.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepExecutionState, location_name: 'State', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepExecutionStatusDetail.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepExecutionStatusDetail.add_member(:start_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartDateTime'))
    StepExecutionStatusDetail.add_member(:end_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndDateTime'))
    StepExecutionStatusDetail.add_member(:last_state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'LastStateChangeReason'))
    StepExecutionStatusDetail.type = Types::StepExecutionStatusDetail
    StepIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256)
    StepState.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    StepState.add_member(:cancel_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCEL_PENDING', traits: {"smithy.api#enumValue" => "CANCEL_PENDING"}))
    StepState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    StepState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    StepState.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    StepState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    StepState.add_member(:interrupted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERRUPTED', traits: {"smithy.api#enumValue" => "INTERRUPTED"}))
    StepStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepStateChangeReasonCode, location_name: 'Code'))
    StepStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    StepStateChangeReason.type = Types::StepStateChangeReason
    StepStateChangeReasonCode.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    StepStateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepState)
    StepStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepState, location_name: 'State'))
    StepStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepStateChangeReason, location_name: 'StateChangeReason'))
    StepStatus.add_member(:failure_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureDetails, location_name: 'FailureDetails'))
    StepStatus.add_member(:timeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepTimeline, location_name: 'Timeline'))
    StepStatus.type = Types::StepStatus
    StepSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepId, location_name: 'Id'))
    StepSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    StepSummary.add_member(:config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HadoopStepConfig, location_name: 'Config'))
    StepSummary.add_member(:action_on_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionOnFailure, location_name: 'ActionOnFailure'))
    StepSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepStatus, location_name: 'Status'))
    StepSummary.type = Types::StepSummary
    StepSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepSummary)
    StepTimeline.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationDateTime'))
    StepTimeline.add_member(:start_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'StartDateTime'))
    StepTimeline.add_member(:end_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'EndDateTime'))
    StepTimeline.type = Types::StepTimeline
    StopNotebookExecutionInput.add_member(:notebook_execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'NotebookExecutionId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopNotebookExecutionInput.type = Types::StopNotebookExecutionInput
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    StringMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    StringMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Studio.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId'))
    Studio.add_member(:studio_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioArn'))
    Studio.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name'))
    Studio.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Description'))
    Studio.add_member(:auth_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthMode, location_name: 'AuthMode'))
    Studio.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'VpcId'))
    Studio.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'SubnetIds'))
    Studio.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'ServiceRole'))
    Studio.add_member(:user_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'UserRole'))
    Studio.add_member(:workspace_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'WorkspaceSecurityGroupId'))
    Studio.add_member(:engine_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'EngineSecurityGroupId'))
    Studio.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'Url'))
    Studio.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime'))
    Studio.add_member(:default_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'DefaultS3Location'))
    Studio.add_member(:idp_auth_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'IdpAuthUrl'))
    Studio.add_member(:idp_relay_state_parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdpRelayStateParameterName'))
    Studio.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    Studio.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnType, location_name: 'IdcInstanceArn'))
    Studio.add_member(:trusted_identity_propagation_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'TrustedIdentityPropagationEnabled'))
    Studio.add_member(:idc_user_assignment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdcUserAssignment, location_name: 'IdcUserAssignment'))
    Studio.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'EncryptionKeyArn'))
    Studio.type = Types::Studio
    StudioSummary.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId'))
    StudioSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name'))
    StudioSummary.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'VpcId'))
    StudioSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Description'))
    StudioSummary.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Url'))
    StudioSummary.add_member(:auth_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthMode, location_name: 'AuthMode'))
    StudioSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationTime'))
    StudioSummary.type = Types::StudioSummary
    StudioSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StudioSummary)
    SubnetIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SupportedInstanceType.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    SupportedInstanceType.add_member(:memory_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'MemoryGB'))
    SupportedInstanceType.add_member(:storage_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StorageGB'))
    SupportedInstanceType.add_member(:vcpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VCPU'))
    SupportedInstanceType.add_member(:is64_bits_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Is64BitsOnly'))
    SupportedInstanceType.add_member(:instance_family_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceFamilyId'))
    SupportedInstanceType.add_member(:ebs_optimized_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EbsOptimizedAvailable'))
    SupportedInstanceType.add_member(:ebs_optimized_by_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EbsOptimizedByDefault'))
    SupportedInstanceType.add_member(:number_of_disks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfDisks'))
    SupportedInstanceType.add_member(:ebs_storage_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EbsStorageOnly'))
    SupportedInstanceType.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Architecture'))
    SupportedInstanceType.type = Types::SupportedInstanceType
    SupportedInstanceTypesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedInstanceType)
    SupportedProductConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name'))
    SupportedProductConfig.add_member(:args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringList, location_name: 'Args'))
    SupportedProductConfig.type = Types::SupportedProductConfig
    SupportedProductsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key'))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TerminateJobFlowsInput.add_member(:job_flow_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringList, location_name: 'JobFlowIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobFlowsInput.type = Types::TerminateJobFlowsInput
    Unit.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    Unit.add_member(:seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECONDS', traits: {"smithy.api#enumValue" => "SECONDS"}))
    Unit.add_member(:micro_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICRO_SECONDS', traits: {"smithy.api#enumValue" => "MICRO_SECONDS"}))
    Unit.add_member(:milli_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MILLI_SECONDS', traits: {"smithy.api#enumValue" => "MILLI_SECONDS"}))
    Unit.add_member(:bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTES', traits: {"smithy.api#enumValue" => "BYTES"}))
    Unit.add_member(:kilo_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILO_BYTES', traits: {"smithy.api#enumValue" => "KILO_BYTES"}))
    Unit.add_member(:mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEGA_BYTES', traits: {"smithy.api#enumValue" => "MEGA_BYTES"}))
    Unit.add_member(:giga_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIGA_BYTES', traits: {"smithy.api#enumValue" => "GIGA_BYTES"}))
    Unit.add_member(:tera_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERA_BYTES', traits: {"smithy.api#enumValue" => "TERA_BYTES"}))
    Unit.add_member(:bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BITS', traits: {"smithy.api#enumValue" => "BITS"}))
    Unit.add_member(:kilo_bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILO_BITS', traits: {"smithy.api#enumValue" => "KILO_BITS"}))
    Unit.add_member(:mega_bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEGA_BITS', traits: {"smithy.api#enumValue" => "MEGA_BITS"}))
    Unit.add_member(:giga_bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIGA_BITS', traits: {"smithy.api#enumValue" => "GIGA_BITS"}))
    Unit.add_member(:tera_bits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERA_BITS', traits: {"smithy.api#enumValue" => "TERA_BITS"}))
    Unit.add_member(:percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERCENT', traits: {"smithy.api#enumValue" => "PERCENT"}))
    Unit.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT', traits: {"smithy.api#enumValue" => "COUNT"}))
    Unit.add_member(:bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "BYTES_PER_SECOND"}))
    Unit.add_member(:kilo_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILO_BYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "KILO_BYTES_PER_SECOND"}))
    Unit.add_member(:mega_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEGA_BYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "MEGA_BYTES_PER_SECOND"}))
    Unit.add_member(:giga_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIGA_BYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "GIGA_BYTES_PER_SECOND"}))
    Unit.add_member(:tera_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERA_BYTES_PER_SECOND', traits: {"smithy.api#enumValue" => "TERA_BYTES_PER_SECOND"}))
    Unit.add_member(:bits_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BITS_PER_SECOND', traits: {"smithy.api#enumValue" => "BITS_PER_SECOND"}))
    Unit.add_member(:kilo_bits_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILO_BITS_PER_SECOND', traits: {"smithy.api#enumValue" => "KILO_BITS_PER_SECOND"}))
    Unit.add_member(:mega_bits_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEGA_BITS_PER_SECOND', traits: {"smithy.api#enumValue" => "MEGA_BITS_PER_SECOND"}))
    Unit.add_member(:giga_bits_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIGA_BITS_PER_SECOND', traits: {"smithy.api#enumValue" => "GIGA_BITS_PER_SECOND"}))
    Unit.add_member(:tera_bits_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERA_BITS_PER_SECOND', traits: {"smithy.api#enumValue" => "TERA_BITS_PER_SECOND"}))
    Unit.add_member(:count_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COUNT_PER_SECOND', traits: {"smithy.api#enumValue" => "COUNT_PER_SECOND"}))
    UpdateStudioInput.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStudioInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Name'))
    UpdateStudioInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Description'))
    UpdateStudioInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'SubnetIds'))
    UpdateStudioInput.add_member(:default_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'DefaultS3Location'))
    UpdateStudioInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'EncryptionKeyArn'))
    UpdateStudioInput.type = Types::UpdateStudioInput
    UpdateStudioSessionMappingInput.add_member(:studio_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'StudioId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStudioSessionMappingInput.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdentityId'))
    UpdateStudioSessionMappingInput.add_member(:identity_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'IdentityName'))
    UpdateStudioSessionMappingInput.add_member(:identity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStudioSessionMappingInput.add_member(:session_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'SessionPolicyArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStudioSessionMappingInput.type = Types::UpdateStudioSessionMappingInput
    UsernamePassword.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Username'))
    UsernamePassword.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: 'Password'))
    UsernamePassword.type = Types::UsernamePassword
    VolumeSpecification.add_member(:volume_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VolumeSpecification.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Iops'))
    VolumeSpecification.add_member(:size_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SizeInGB', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VolumeSpecification.add_member(:throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputVal, location_name: 'Throughput'))
    VolumeSpecification.type = Types::VolumeSpecification
    XmlStringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString)
    XmlStringMaxLen256List.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256)

    ElasticMapReduce = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.emr#ElasticMapReduce"
      service.name = "ElasticMapReduce"
      service.version = "2009-03-31"
      service.traits = {"aws.api#service" => {"sdkId" => "EMR", "arnNamespace" => "elasticmapreduce", "cloudFormationName" => "EMR", "cloudTrailEventSource" => "elasticmapreduce.amazonaws.com", "docId" => "elasticmapreduce-2009-03-31", "endpointPrefix" => "elasticmapreduce"}, "aws.auth#sigv4" => {"name" => "elasticmapreduce"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon EMR", "smithy.api#xmlNamespace" => {"uri" => "http://elasticmapreduce.amazonaws.com/doc/2009-03-31"}}
      service.add_operation(:add_instance_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#AddInstanceFleet"
        operation.name = "AddInstanceFleet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddInstanceFleetInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddInstanceFleetOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:add_instance_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#AddInstanceGroups"
        operation.name = "AddInstanceGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddInstanceGroupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddInstanceGroupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:add_job_flow_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#AddJobFlowSteps"
        operation.name = "AddJobFlowSteps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddJobFlowStepsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddJobFlowStepsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:add_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#AddTags"
        operation.name = "AddTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:cancel_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#CancelSteps"
        operation.name = "CancelSteps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelStepsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelStepsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_persistent_app_ui, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#CreatePersistentAppUI"
        operation.name = "CreatePersistentAppUI"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePersistentAppUIInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePersistentAppUIOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_security_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#CreateSecurityConfiguration"
        operation.name = "CreateSecurityConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSecurityConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSecurityConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_studio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#CreateStudio"
        operation.name = "CreateStudio"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStudioInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStudioOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_studio_session_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#CreateStudioSessionMapping"
        operation.name = "CreateStudioSessionMapping"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStudioSessionMappingInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_security_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DeleteSecurityConfiguration"
        operation.name = "DeleteSecurityConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSecurityConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSecurityConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_studio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DeleteStudio"
        operation.name = "DeleteStudio"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStudioInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_studio_session_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DeleteStudioSessionMapping"
        operation.name = "DeleteStudioSessionMapping"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStudioSessionMappingInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeCluster"
        operation.name = "DescribeCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeClusterFailure", "params" => {"ClusterId" => "fake_cluster"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:describe_job_flows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeJobFlows"
        operation.name = "DescribeJobFlows"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobFlowsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobFlowsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#deprecated" => {}}
      end)
      service.add_operation(:describe_notebook_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeNotebookExecution"
        operation.name = "DescribeNotebookExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNotebookExecutionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNotebookExecutionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_persistent_app_ui, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribePersistentAppUI"
        operation.name = "DescribePersistentAppUI"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePersistentAppUIInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePersistentAppUIOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_release_label, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeReleaseLabel"
        operation.name = "DescribeReleaseLabel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReleaseLabelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReleaseLabelOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_security_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeSecurityConfiguration"
        operation.name = "DescribeSecurityConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSecurityConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSecurityConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeStep"
        operation.name = "DescribeStep"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStepInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStepOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_studio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeStudio"
        operation.name = "DescribeStudio"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStudioInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStudioOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_auto_termination_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetAutoTerminationPolicy"
        operation.name = "GetAutoTerminationPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutoTerminationPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutoTerminationPolicyOutput)
        operation.traits = {}
      end)
      service.add_operation(:get_block_public_access_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetBlockPublicAccessConfiguration"
        operation.name = "GetBlockPublicAccessConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBlockPublicAccessConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBlockPublicAccessConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_cluster_session_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetClusterSessionCredentials"
        operation.name = "GetClusterSessionCredentials"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterSessionCredentialsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterSessionCredentialsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_managed_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetManagedScalingPolicy"
        operation.name = "GetManagedScalingPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedScalingPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetManagedScalingPolicyOutput)
        operation.traits = {}
      end)
      service.add_operation(:get_on_cluster_app_ui_presigned_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetOnClusterAppUIPresignedURL"
        operation.name = "GetOnClusterAppUIPresignedURL"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOnClusterAppUIPresignedURLInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOnClusterAppUIPresignedURLOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_persistent_app_ui_presigned_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetPersistentAppUIPresignedURL"
        operation.name = "GetPersistentAppUIPresignedURL"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPersistentAppUIPresignedURLInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPersistentAppUIPresignedURLOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:get_studio_session_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetStudioSessionMapping"
        operation.name = "GetStudioSessionMapping"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStudioSessionMappingInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStudioSessionMappingOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:list_bootstrap_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListBootstrapActions"
        operation.name = "ListBootstrapActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBootstrapActionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBootstrapActionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListBootstrapActions.new
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListClusters"
        operation.name = "ListClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListClustersSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_instance_fleets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListInstanceFleets"
        operation.name = "ListInstanceFleets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceFleetsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceFleetsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListInstanceFleets.new
      end)
      service.add_operation(:list_instance_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListInstanceGroups"
        operation.name = "ListInstanceGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceGroupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstanceGroupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListInstanceGroups.new
      end)
      service.add_operation(:list_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListInstances"
        operation.name = "ListInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstancesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInstancesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListInstances.new
      end)
      service.add_operation(:list_notebook_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListNotebookExecutions"
        operation.name = "ListNotebookExecutions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotebookExecutionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNotebookExecutionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListNotebookExecutions.new
      end)
      service.add_operation(:list_release_labels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListReleaseLabels"
        operation.name = "ListReleaseLabels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReleaseLabelsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReleaseLabelsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListReleaseLabels.new
      end)
      service.add_operation(:list_security_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListSecurityConfigurations"
        operation.name = "ListSecurityConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSecurityConfigurationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSecurityConfigurationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSecurityConfigurations.new
      end)
      service.add_operation(:list_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListSteps"
        operation.name = "ListSteps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStepsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStepsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSteps.new
      end)
      service.add_operation(:list_studio_session_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListStudioSessionMappings"
        operation.name = "ListStudioSessionMappings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStudioSessionMappingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStudioSessionMappingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListStudioSessionMappings.new
      end)
      service.add_operation(:list_studios, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListStudios"
        operation.name = "ListStudios"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStudiosInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStudiosOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListStudios.new
      end)
      service.add_operation(:list_supported_instance_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListSupportedInstanceTypes"
        operation.name = "ListSupportedInstanceTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupportedInstanceTypesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSupportedInstanceTypesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSupportedInstanceTypes.new
      end)
      service.add_operation(:modify_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ModifyCluster"
        operation.name = "ModifyCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:modify_instance_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ModifyInstanceFleet"
        operation.name = "ModifyInstanceFleet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyInstanceFleetInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:modify_instance_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ModifyInstanceGroups"
        operation.name = "ModifyInstanceGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyInstanceGroupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:put_auto_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#PutAutoScalingPolicy"
        operation.name = "PutAutoScalingPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAutoScalingPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAutoScalingPolicyOutput)
        operation.traits = {}
      end)
      service.add_operation(:put_auto_termination_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#PutAutoTerminationPolicy"
        operation.name = "PutAutoTerminationPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAutoTerminationPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAutoTerminationPolicyOutput)
        operation.traits = {}
      end)
      service.add_operation(:put_block_public_access_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#PutBlockPublicAccessConfiguration"
        operation.name = "PutBlockPublicAccessConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBlockPublicAccessConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBlockPublicAccessConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:put_managed_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#PutManagedScalingPolicy"
        operation.name = "PutManagedScalingPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutManagedScalingPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutManagedScalingPolicyOutput)
        operation.traits = {}
      end)
      service.add_operation(:remove_auto_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#RemoveAutoScalingPolicy"
        operation.name = "RemoveAutoScalingPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAutoScalingPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAutoScalingPolicyOutput)
        operation.traits = {}
      end)
      service.add_operation(:remove_auto_termination_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#RemoveAutoTerminationPolicy"
        operation.name = "RemoveAutoTerminationPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAutoTerminationPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveAutoTerminationPolicyOutput)
        operation.traits = {}
      end)
      service.add_operation(:remove_managed_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#RemoveManagedScalingPolicy"
        operation.name = "RemoveManagedScalingPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveManagedScalingPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveManagedScalingPolicyOutput)
        operation.traits = {}
      end)
      service.add_operation(:remove_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#RemoveTags"
        operation.name = "RemoveTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:run_job_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#RunJobFlow"
        operation.name = "RunJobFlow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RunJobFlowInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RunJobFlowOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:set_keep_job_flow_alive_when_no_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#SetKeepJobFlowAliveWhenNoSteps"
        operation.name = "SetKeepJobFlowAliveWhenNoSteps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetKeepJobFlowAliveWhenNoStepsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:set_termination_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#SetTerminationProtection"
        operation.name = "SetTerminationProtection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetTerminationProtectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:set_unhealthy_node_replacement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#SetUnhealthyNodeReplacement"
        operation.name = "SetUnhealthyNodeReplacement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetUnhealthyNodeReplacementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:set_visible_to_all_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#SetVisibleToAllUsers"
        operation.name = "SetVisibleToAllUsers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetVisibleToAllUsersInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:start_notebook_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#StartNotebookExecution"
        operation.name = "StartNotebookExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartNotebookExecutionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartNotebookExecutionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:stop_notebook_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#StopNotebookExecution"
        operation.name = "StopNotebookExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopNotebookExecutionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:terminate_job_flows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#TerminateJobFlows"
        operation.name = "TerminateJobFlows"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateJobFlowsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:update_studio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#UpdateStudio"
        operation.name = "UpdateStudio"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStudioInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_studio_session_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#UpdateStudioSessionMapping"
        operation.name = "UpdateStudioSessionMapping"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStudioSessionMappingInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
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
