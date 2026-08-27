# frozen_string_literal: true

# This is generated code!

module Aws::EMR
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActionOnFailure = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#ActionOnFailure", name: "ActionOnFailure")
    AddInstanceFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AddInstanceFleetInput", name: "AddInstanceFleetInput")
    AddInstanceFleetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AddInstanceFleetOutput", name: "AddInstanceFleetOutput")
    AddInstanceGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AddInstanceGroupsInput", name: "AddInstanceGroupsInput")
    AddInstanceGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AddInstanceGroupsOutput", name: "AddInstanceGroupsOutput")
    AddJobFlowStepsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AddJobFlowStepsInput", name: "AddJobFlowStepsInput")
    AddJobFlowStepsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AddJobFlowStepsOutput", name: "AddJobFlowStepsOutput")
    AddTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AddTagsInput", name: "AddTagsInput")
    AddTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AddTagsOutput", name: "AddTagsOutput")
    AdjustmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#AdjustmentType", name: "AdjustmentType")
    Application = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#Application", name: "Application")
    ApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#ApplicationList", name: "ApplicationList")
    ArnType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#ArnType", name: "ArnType", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    AuthMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#AuthMode", name: "AuthMode")
    AutoScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AutoScalingPolicy", name: "AutoScalingPolicy")
    AutoScalingPolicyDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AutoScalingPolicyDescription", name: "AutoScalingPolicyDescription")
    AutoScalingPolicyState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#AutoScalingPolicyState", name: "AutoScalingPolicyState")
    AutoScalingPolicyStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AutoScalingPolicyStateChangeReason", name: "AutoScalingPolicyStateChangeReason")
    AutoScalingPolicyStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#AutoScalingPolicyStateChangeReasonCode", name: "AutoScalingPolicyStateChangeReasonCode")
    AutoScalingPolicyStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AutoScalingPolicyStatus", name: "AutoScalingPolicyStatus")
    AutoTerminationPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#AutoTerminationPolicy", name: "AutoTerminationPolicy")
    BlockPublicAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#BlockPublicAccessConfiguration", name: "BlockPublicAccessConfiguration")
    BlockPublicAccessConfigurationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#BlockPublicAccessConfigurationMetadata", name: "BlockPublicAccessConfigurationMetadata")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.emr#Boolean", name: "Boolean")
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.emr#BooleanObject", name: "BooleanObject")
    BootstrapActionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#BootstrapActionConfig", name: "BootstrapActionConfig")
    BootstrapActionConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#BootstrapActionConfigList", name: "BootstrapActionConfigList")
    BootstrapActionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#BootstrapActionDetail", name: "BootstrapActionDetail")
    BootstrapActionDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#BootstrapActionDetailList", name: "BootstrapActionDetailList")
    CancelStepsInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#CancelStepsInfo", name: "CancelStepsInfo")
    CancelStepsInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#CancelStepsInfoList", name: "CancelStepsInfoList")
    CancelStepsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#CancelStepsInput", name: "CancelStepsInput")
    CancelStepsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#CancelStepsOutput", name: "CancelStepsOutput")
    CancelStepsRequestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#CancelStepsRequestStatus", name: "CancelStepsRequestStatus")
    CloudWatchAlarmDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#CloudWatchAlarmDefinition", name: "CloudWatchAlarmDefinition")
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#Cluster", name: "Cluster")
    ClusterId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#ClusterId", name: "ClusterId")
    ClusterState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#ClusterState", name: "ClusterState")
    ClusterStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ClusterStateChangeReason", name: "ClusterStateChangeReason")
    ClusterStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#ClusterStateChangeReasonCode", name: "ClusterStateChangeReasonCode")
    ClusterStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#ClusterStateList", name: "ClusterStateList")
    ClusterStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ClusterStatus", name: "ClusterStatus")
    ClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ClusterSummary", name: "ClusterSummary")
    ClusterSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#ClusterSummaryList", name: "ClusterSummaryList")
    ClusterTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ClusterTimeline", name: "ClusterTimeline")
    Command = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#Command", name: "Command")
    CommandList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#CommandList", name: "CommandList")
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#ComparisonOperator", name: "ComparisonOperator")
    ComputeLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ComputeLimits", name: "ComputeLimits")
    ComputeLimitsUnitType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#ComputeLimitsUnitType", name: "ComputeLimitsUnitType")
    Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#Configuration", name: "Configuration")
    ConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#ConfigurationList", name: "ConfigurationList")
    CreatePersistentAppUIInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#CreatePersistentAppUIInput", name: "CreatePersistentAppUIInput")
    CreatePersistentAppUIOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#CreatePersistentAppUIOutput", name: "CreatePersistentAppUIOutput")
    CreateSecurityConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#CreateSecurityConfigurationInput", name: "CreateSecurityConfigurationInput")
    CreateSecurityConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#CreateSecurityConfigurationOutput", name: "CreateSecurityConfigurationOutput")
    CreateStudioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#CreateStudioInput", name: "CreateStudioInput")
    CreateStudioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#CreateStudioOutput", name: "CreateStudioOutput")
    CreateStudioSessionMappingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#CreateStudioSessionMappingInput", name: "CreateStudioSessionMappingInput")
    Credentials = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.emr#Credentials", name: "Credentials")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.emr#Date", name: "Date")
    DeleteSecurityConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DeleteSecurityConfigurationInput", name: "DeleteSecurityConfigurationInput")
    DeleteSecurityConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DeleteSecurityConfigurationOutput", name: "DeleteSecurityConfigurationOutput")
    DeleteStudioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DeleteStudioInput", name: "DeleteStudioInput")
    DeleteStudioSessionMappingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DeleteStudioSessionMappingInput", name: "DeleteStudioSessionMappingInput")
    DescribeClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeClusterInput", name: "DescribeClusterInput")
    DescribeClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeClusterOutput", name: "DescribeClusterOutput")
    DescribeJobFlowsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeJobFlowsInput", name: "DescribeJobFlowsInput")
    DescribeJobFlowsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeJobFlowsOutput", name: "DescribeJobFlowsOutput")
    DescribeNotebookExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeNotebookExecutionInput", name: "DescribeNotebookExecutionInput")
    DescribeNotebookExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeNotebookExecutionOutput", name: "DescribeNotebookExecutionOutput")
    DescribePersistentAppUIInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribePersistentAppUIInput", name: "DescribePersistentAppUIInput")
    DescribePersistentAppUIOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribePersistentAppUIOutput", name: "DescribePersistentAppUIOutput")
    DescribeReleaseLabelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeReleaseLabelInput", name: "DescribeReleaseLabelInput")
    DescribeReleaseLabelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeReleaseLabelOutput", name: "DescribeReleaseLabelOutput")
    DescribeSecurityConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeSecurityConfigurationInput", name: "DescribeSecurityConfigurationInput")
    DescribeSecurityConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeSecurityConfigurationOutput", name: "DescribeSecurityConfigurationOutput")
    DescribeStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeStepInput", name: "DescribeStepInput")
    DescribeStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeStepOutput", name: "DescribeStepOutput")
    DescribeStudioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeStudioInput", name: "DescribeStudioInput")
    DescribeStudioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#DescribeStudioOutput", name: "DescribeStudioOutput")
    EC2InstanceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#EC2InstanceIdsList", name: "EC2InstanceIdsList")
    EC2InstanceIdsToTerminateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#EC2InstanceIdsToTerminateList", name: "EC2InstanceIdsToTerminateList")
    EMRContainersConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#EMRContainersConfig", name: "EMRContainersConfig")
    EbsBlockDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#EbsBlockDevice", name: "EbsBlockDevice")
    EbsBlockDeviceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#EbsBlockDeviceConfig", name: "EbsBlockDeviceConfig")
    EbsBlockDeviceConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#EbsBlockDeviceConfigList", name: "EbsBlockDeviceConfigList")
    EbsBlockDeviceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#EbsBlockDeviceList", name: "EbsBlockDeviceList")
    EbsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#EbsConfiguration", name: "EbsConfiguration")
    EbsVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#EbsVolume", name: "EbsVolume")
    EbsVolumeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#EbsVolumeList", name: "EbsVolumeList")
    Ec2InstanceAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#Ec2InstanceAttributes", name: "Ec2InstanceAttributes")
    EnvironmentVariablesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.emr#EnvironmentVariablesMap", name: "EnvironmentVariablesMap")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#ErrorCode", name: "ErrorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ErrorData = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#ErrorData", name: "ErrorData")
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ErrorDetail", name: "ErrorDetail")
    ErrorDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#ErrorDetailList", name: "ErrorDetailList")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#ErrorMessage", name: "ErrorMessage")
    ExecutionEngineConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ExecutionEngineConfig", name: "ExecutionEngineConfig")
    ExecutionEngineType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#ExecutionEngineType", name: "ExecutionEngineType")
    FailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#FailureDetails", name: "FailureDetails")
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.emr#Float", name: "Float")
    GetAutoTerminationPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetAutoTerminationPolicyInput", name: "GetAutoTerminationPolicyInput")
    GetAutoTerminationPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetAutoTerminationPolicyOutput", name: "GetAutoTerminationPolicyOutput")
    GetBlockPublicAccessConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetBlockPublicAccessConfigurationInput", name: "GetBlockPublicAccessConfigurationInput")
    GetBlockPublicAccessConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetBlockPublicAccessConfigurationOutput", name: "GetBlockPublicAccessConfigurationOutput")
    GetClusterSessionCredentialsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetClusterSessionCredentialsInput", name: "GetClusterSessionCredentialsInput")
    GetClusterSessionCredentialsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetClusterSessionCredentialsOutput", name: "GetClusterSessionCredentialsOutput")
    GetManagedScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetManagedScalingPolicyInput", name: "GetManagedScalingPolicyInput")
    GetManagedScalingPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetManagedScalingPolicyOutput", name: "GetManagedScalingPolicyOutput")
    GetOnClusterAppUIPresignedURLInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetOnClusterAppUIPresignedURLInput", name: "GetOnClusterAppUIPresignedURLInput")
    GetOnClusterAppUIPresignedURLOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetOnClusterAppUIPresignedURLOutput", name: "GetOnClusterAppUIPresignedURLOutput")
    GetPersistentAppUIPresignedURLInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetPersistentAppUIPresignedURLInput", name: "GetPersistentAppUIPresignedURLInput")
    GetPersistentAppUIPresignedURLOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetPersistentAppUIPresignedURLOutput", name: "GetPersistentAppUIPresignedURLOutput")
    GetStudioSessionMappingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetStudioSessionMappingInput", name: "GetStudioSessionMappingInput")
    GetStudioSessionMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#GetStudioSessionMappingOutput", name: "GetStudioSessionMappingOutput")
    HadoopJarStepConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#HadoopJarStepConfig", name: "HadoopJarStepConfig")
    HadoopStepConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#HadoopStepConfig", name: "HadoopStepConfig")
    IAMRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#IAMRoleArn", name: "IAMRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):iam::(\\d{12})?:(role((\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F))[\\w+=,.@-]+)$"})
    IdcUserAssignment = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#IdcUserAssignment", name: "IdcUserAssignment")
    IdentityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#IdentityType", name: "IdentityType")
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#Instance", name: "Instance")
    InstanceCollectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#InstanceCollectionType", name: "InstanceCollectionType")
    InstanceFleet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceFleet", name: "InstanceFleet")
    InstanceFleetConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceFleetConfig", name: "InstanceFleetConfig")
    InstanceFleetConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#InstanceFleetConfigList", name: "InstanceFleetConfigList")
    InstanceFleetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#InstanceFleetId", name: "InstanceFleetId")
    InstanceFleetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#InstanceFleetList", name: "InstanceFleetList")
    InstanceFleetModifyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceFleetModifyConfig", name: "InstanceFleetModifyConfig")
    InstanceFleetProvisioningSpecifications = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceFleetProvisioningSpecifications", name: "InstanceFleetProvisioningSpecifications")
    InstanceFleetResizingSpecifications = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceFleetResizingSpecifications", name: "InstanceFleetResizingSpecifications")
    InstanceFleetState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#InstanceFleetState", name: "InstanceFleetState")
    InstanceFleetStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceFleetStateChangeReason", name: "InstanceFleetStateChangeReason")
    InstanceFleetStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#InstanceFleetStateChangeReasonCode", name: "InstanceFleetStateChangeReasonCode")
    InstanceFleetStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceFleetStatus", name: "InstanceFleetStatus")
    InstanceFleetTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceFleetTimeline", name: "InstanceFleetTimeline")
    InstanceFleetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#InstanceFleetType", name: "InstanceFleetType")
    InstanceGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceGroup", name: "InstanceGroup")
    InstanceGroupConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceGroupConfig", name: "InstanceGroupConfig")
    InstanceGroupConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#InstanceGroupConfigList", name: "InstanceGroupConfigList")
    InstanceGroupDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceGroupDetail", name: "InstanceGroupDetail")
    InstanceGroupDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#InstanceGroupDetailList", name: "InstanceGroupDetailList")
    InstanceGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#InstanceGroupId", name: "InstanceGroupId")
    InstanceGroupIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#InstanceGroupIdsList", name: "InstanceGroupIdsList")
    InstanceGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#InstanceGroupList", name: "InstanceGroupList")
    InstanceGroupModifyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceGroupModifyConfig", name: "InstanceGroupModifyConfig")
    InstanceGroupModifyConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#InstanceGroupModifyConfigList", name: "InstanceGroupModifyConfigList")
    InstanceGroupState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#InstanceGroupState", name: "InstanceGroupState")
    InstanceGroupStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceGroupStateChangeReason", name: "InstanceGroupStateChangeReason")
    InstanceGroupStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#InstanceGroupStateChangeReasonCode", name: "InstanceGroupStateChangeReasonCode")
    InstanceGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceGroupStatus", name: "InstanceGroupStatus")
    InstanceGroupTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceGroupTimeline", name: "InstanceGroupTimeline")
    InstanceGroupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#InstanceGroupType", name: "InstanceGroupType")
    InstanceGroupTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#InstanceGroupTypeList", name: "InstanceGroupTypeList")
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#InstanceId", name: "InstanceId")
    InstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#InstanceList", name: "InstanceList")
    InstanceResizePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceResizePolicy", name: "InstanceResizePolicy")
    InstanceRoleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#InstanceRoleType", name: "InstanceRoleType")
    InstanceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#InstanceState", name: "InstanceState")
    InstanceStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceStateChangeReason", name: "InstanceStateChangeReason")
    InstanceStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#InstanceStateChangeReasonCode", name: "InstanceStateChangeReasonCode")
    InstanceStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#InstanceStateList", name: "InstanceStateList")
    InstanceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceStatus", name: "InstanceStatus")
    InstanceTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceTimeline", name: "InstanceTimeline")
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#InstanceType", name: "InstanceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    InstanceTypeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceTypeConfig", name: "InstanceTypeConfig")
    InstanceTypeConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#InstanceTypeConfigList", name: "InstanceTypeConfigList")
    InstanceTypeSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InstanceTypeSpecification", name: "InstanceTypeSpecification")
    InstanceTypeSpecificationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#InstanceTypeSpecificationList", name: "InstanceTypeSpecificationList")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emr#Integer", name: "Integer")
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InternalServerError", name: "InternalServerError", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalFailure", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    JobFlowDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#JobFlowDetail", name: "JobFlowDetail")
    JobFlowDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#JobFlowDetailList", name: "JobFlowDetailList")
    JobFlowExecutionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#JobFlowExecutionState", name: "JobFlowExecutionState")
    JobFlowExecutionStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#JobFlowExecutionStateList", name: "JobFlowExecutionStateList")
    JobFlowExecutionStatusDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#JobFlowExecutionStatusDetail", name: "JobFlowExecutionStatusDetail")
    JobFlowInstancesConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#JobFlowInstancesConfig", name: "JobFlowInstancesConfig")
    JobFlowInstancesDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#JobFlowInstancesDetail", name: "JobFlowInstancesDetail")
    KerberosAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#KerberosAttributes", name: "KerberosAttributes")
    KeyValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#KeyValue", name: "KeyValue")
    KeyValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#KeyValueList", name: "KeyValueList")
    ListBootstrapActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListBootstrapActionsInput", name: "ListBootstrapActionsInput")
    ListBootstrapActionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListBootstrapActionsOutput", name: "ListBootstrapActionsOutput")
    ListClustersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListClustersInput", name: "ListClustersInput")
    ListClustersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListClustersOutput", name: "ListClustersOutput")
    ListInstanceFleetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListInstanceFleetsInput", name: "ListInstanceFleetsInput")
    ListInstanceFleetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListInstanceFleetsOutput", name: "ListInstanceFleetsOutput")
    ListInstanceGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListInstanceGroupsInput", name: "ListInstanceGroupsInput")
    ListInstanceGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListInstanceGroupsOutput", name: "ListInstanceGroupsOutput")
    ListInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListInstancesInput", name: "ListInstancesInput")
    ListInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListInstancesOutput", name: "ListInstancesOutput")
    ListNotebookExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListNotebookExecutionsInput", name: "ListNotebookExecutionsInput")
    ListNotebookExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListNotebookExecutionsOutput", name: "ListNotebookExecutionsOutput")
    ListReleaseLabelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListReleaseLabelsInput", name: "ListReleaseLabelsInput")
    ListReleaseLabelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListReleaseLabelsOutput", name: "ListReleaseLabelsOutput")
    ListSecurityConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListSecurityConfigurationsInput", name: "ListSecurityConfigurationsInput")
    ListSecurityConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListSecurityConfigurationsOutput", name: "ListSecurityConfigurationsOutput")
    ListStepsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListStepsInput", name: "ListStepsInput")
    ListStepsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListStepsOutput", name: "ListStepsOutput")
    ListStudioSessionMappingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListStudioSessionMappingsInput", name: "ListStudioSessionMappingsInput")
    ListStudioSessionMappingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListStudioSessionMappingsOutput", name: "ListStudioSessionMappingsOutput")
    ListStudiosInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListStudiosInput", name: "ListStudiosInput")
    ListStudiosOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListStudiosOutput", name: "ListStudiosOutput")
    ListSupportedInstanceTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListSupportedInstanceTypesInput", name: "ListSupportedInstanceTypesInput")
    ListSupportedInstanceTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ListSupportedInstanceTypesOutput", name: "ListSupportedInstanceTypesOutput")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emr#Long", name: "Long")
    ManagedScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ManagedScalingPolicy", name: "ManagedScalingPolicy")
    Marker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#Marker", name: "Marker")
    MarketType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#MarketType", name: "MarketType")
    MaxResultsNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emr#MaxResultsNumber", name: "MaxResultsNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#MetricDimension", name: "MetricDimension")
    MetricDimensionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#MetricDimensionList", name: "MetricDimensionList")
    ModifyClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ModifyClusterInput", name: "ModifyClusterInput")
    ModifyClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ModifyClusterOutput", name: "ModifyClusterOutput")
    ModifyInstanceFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ModifyInstanceFleetInput", name: "ModifyInstanceFleetInput")
    ModifyInstanceGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ModifyInstanceGroupsInput", name: "ModifyInstanceGroupsInput")
    NewSupportedProductsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#NewSupportedProductsList", name: "NewSupportedProductsList")
    NonNegativeDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.emr#NonNegativeDouble", name: "NonNegativeDouble", traits: {"smithy.api#range" => {"min" => 0.0}})
    NotebookExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#NotebookExecution", name: "NotebookExecution")
    NotebookExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#NotebookExecutionStatus", name: "NotebookExecutionStatus")
    NotebookExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#NotebookExecutionSummary", name: "NotebookExecutionSummary")
    NotebookExecutionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#NotebookExecutionSummaryList", name: "NotebookExecutionSummaryList")
    NotebookS3LocationForOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#NotebookS3LocationForOutput", name: "NotebookS3LocationForOutput")
    NotebookS3LocationFromInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#NotebookS3LocationFromInput", name: "NotebookS3LocationFromInput")
    OSRelease = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#OSRelease", name: "OSRelease")
    OSReleaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#OSReleaseList", name: "OSReleaseList")
    OnClusterAppUIType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#OnClusterAppUIType", name: "OnClusterAppUIType")
    OnDemandCapacityReservationOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#OnDemandCapacityReservationOptions", name: "OnDemandCapacityReservationOptions")
    OnDemandCapacityReservationPreference = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#OnDemandCapacityReservationPreference", name: "OnDemandCapacityReservationPreference")
    OnDemandCapacityReservationUsageStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#OnDemandCapacityReservationUsageStrategy", name: "OnDemandCapacityReservationUsageStrategy")
    OnDemandProvisioningAllocationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#OnDemandProvisioningAllocationStrategy", name: "OnDemandProvisioningAllocationStrategy")
    OnDemandProvisioningSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#OnDemandProvisioningSpecification", name: "OnDemandProvisioningSpecification")
    OnDemandResizingSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#OnDemandResizingSpecification", name: "OnDemandResizingSpecification")
    OptionalArnType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#OptionalArnType", name: "OptionalArnType", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    OutputNotebookFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#OutputNotebookFormat", name: "OutputNotebookFormat")
    OutputNotebookS3LocationForOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#OutputNotebookS3LocationForOutput", name: "OutputNotebookS3LocationForOutput")
    OutputNotebookS3LocationFromInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#OutputNotebookS3LocationFromInput", name: "OutputNotebookS3LocationFromInput")
    PersistentAppUI = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#PersistentAppUI", name: "PersistentAppUI")
    PersistentAppUIType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#PersistentAppUIType", name: "PersistentAppUIType")
    PersistentAppUITypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#PersistentAppUITypeList", name: "PersistentAppUITypeList")
    PlacementGroupConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#PlacementGroupConfig", name: "PlacementGroupConfig")
    PlacementGroupConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#PlacementGroupConfigList", name: "PlacementGroupConfigList")
    PlacementGroupStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#PlacementGroupStrategy", name: "PlacementGroupStrategy")
    PlacementType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#PlacementType", name: "PlacementType")
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emr#Port", name: "Port", traits: {"smithy.api#range" => {"min" => -1, "max" => 65535}})
    PortRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#PortRange", name: "PortRange")
    PortRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#PortRanges", name: "PortRanges")
    ProfilerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#ProfilerType", name: "ProfilerType")
    PutAutoScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#PutAutoScalingPolicyInput", name: "PutAutoScalingPolicyInput")
    PutAutoScalingPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#PutAutoScalingPolicyOutput", name: "PutAutoScalingPolicyOutput")
    PutAutoTerminationPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#PutAutoTerminationPolicyInput", name: "PutAutoTerminationPolicyInput")
    PutAutoTerminationPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#PutAutoTerminationPolicyOutput", name: "PutAutoTerminationPolicyOutput")
    PutBlockPublicAccessConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#PutBlockPublicAccessConfigurationInput", name: "PutBlockPublicAccessConfigurationInput")
    PutBlockPublicAccessConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#PutBlockPublicAccessConfigurationOutput", name: "PutBlockPublicAccessConfigurationOutput")
    PutManagedScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#PutManagedScalingPolicyInput", name: "PutManagedScalingPolicyInput")
    PutManagedScalingPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#PutManagedScalingPolicyOutput", name: "PutManagedScalingPolicyOutput")
    ReconfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#ReconfigurationType", name: "ReconfigurationType")
    ReleaseLabelFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ReleaseLabelFilter", name: "ReleaseLabelFilter")
    RemoveAutoScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#RemoveAutoScalingPolicyInput", name: "RemoveAutoScalingPolicyInput")
    RemoveAutoScalingPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#RemoveAutoScalingPolicyOutput", name: "RemoveAutoScalingPolicyOutput")
    RemoveAutoTerminationPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#RemoveAutoTerminationPolicyInput", name: "RemoveAutoTerminationPolicyInput")
    RemoveAutoTerminationPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#RemoveAutoTerminationPolicyOutput", name: "RemoveAutoTerminationPolicyOutput")
    RemoveManagedScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#RemoveManagedScalingPolicyInput", name: "RemoveManagedScalingPolicyInput")
    RemoveManagedScalingPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#RemoveManagedScalingPolicyOutput", name: "RemoveManagedScalingPolicyOutput")
    RemoveTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#RemoveTagsInput", name: "RemoveTagsInput")
    RemoveTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#RemoveTagsOutput", name: "RemoveTagsOutput")
    RepoUpgradeOnBoot = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#RepoUpgradeOnBoot", name: "RepoUpgradeOnBoot")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#ResourceId", name: "ResourceId")
    RunJobFlowInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#RunJobFlowInput", name: "RunJobFlowInput")
    RunJobFlowOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#RunJobFlowOutput", name: "RunJobFlowOutput")
    ScaleDownBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#ScaleDownBehavior", name: "ScaleDownBehavior")
    ScalingAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ScalingAction", name: "ScalingAction")
    ScalingConstraints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ScalingConstraints", name: "ScalingConstraints")
    ScalingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ScalingRule", name: "ScalingRule")
    ScalingRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#ScalingRuleList", name: "ScalingRuleList")
    ScalingStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#ScalingStrategy", name: "ScalingStrategy")
    ScalingTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ScalingTrigger", name: "ScalingTrigger")
    ScriptBootstrapActionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ScriptBootstrapActionConfig", name: "ScriptBootstrapActionConfig")
    SecurityConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#SecurityConfigurationList", name: "SecurityConfigurationList")
    SecurityConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SecurityConfigurationSummary", name: "SecurityConfigurationSummary")
    SecurityGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#SecurityGroupsList", name: "SecurityGroupsList")
    SessionMappingDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SessionMappingDetail", name: "SessionMappingDetail")
    SessionMappingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SessionMappingSummary", name: "SessionMappingSummary")
    SessionMappingSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#SessionMappingSummaryList", name: "SessionMappingSummaryList")
    SetKeepJobFlowAliveWhenNoStepsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SetKeepJobFlowAliveWhenNoStepsInput", name: "SetKeepJobFlowAliveWhenNoStepsInput")
    SetTerminationProtectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SetTerminationProtectionInput", name: "SetTerminationProtectionInput")
    SetUnhealthyNodeReplacementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SetUnhealthyNodeReplacementInput", name: "SetUnhealthyNodeReplacementInput")
    SetVisibleToAllUsersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SetVisibleToAllUsersInput", name: "SetVisibleToAllUsersInput")
    ShrinkPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#ShrinkPolicy", name: "ShrinkPolicy")
    SimpleScalingPolicyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SimpleScalingPolicyConfiguration", name: "SimpleScalingPolicyConfiguration")
    SimplifiedApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SimplifiedApplication", name: "SimplifiedApplication")
    SimplifiedApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#SimplifiedApplicationList", name: "SimplifiedApplicationList")
    SpotProvisioningAllocationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#SpotProvisioningAllocationStrategy", name: "SpotProvisioningAllocationStrategy")
    SpotProvisioningSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SpotProvisioningSpecification", name: "SpotProvisioningSpecification")
    SpotProvisioningTimeoutAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#SpotProvisioningTimeoutAction", name: "SpotProvisioningTimeoutAction")
    SpotResizingSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SpotResizingSpecification", name: "SpotResizingSpecification")
    StartNotebookExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#StartNotebookExecutionInput", name: "StartNotebookExecutionInput")
    StartNotebookExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#StartNotebookExecutionOutput", name: "StartNotebookExecutionOutput")
    Statistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#Statistic", name: "Statistic")
    Step = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#Step", name: "Step")
    StepCancellationOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#StepCancellationOption", name: "StepCancellationOption")
    StepConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#StepConfig", name: "StepConfig")
    StepConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#StepConfigList", name: "StepConfigList")
    StepDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#StepDetail", name: "StepDetail")
    StepDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#StepDetailList", name: "StepDetailList")
    StepExecutionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#StepExecutionState", name: "StepExecutionState")
    StepExecutionStatusDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#StepExecutionStatusDetail", name: "StepExecutionStatusDetail")
    StepId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#StepId", name: "StepId")
    StepIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#StepIdsList", name: "StepIdsList")
    StepState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#StepState", name: "StepState")
    StepStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#StepStateChangeReason", name: "StepStateChangeReason")
    StepStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#StepStateChangeReasonCode", name: "StepStateChangeReasonCode")
    StepStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#StepStateList", name: "StepStateList")
    StepStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#StepStatus", name: "StepStatus")
    StepSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#StepSummary", name: "StepSummary")
    StepSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#StepSummaryList", name: "StepSummaryList")
    StepTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#StepTimeline", name: "StepTimeline")
    StopNotebookExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#StopNotebookExecutionInput", name: "StopNotebookExecutionInput")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#StringList", name: "StringList")
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.emr#StringMap", name: "StringMap")
    Studio = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#Studio", name: "Studio")
    StudioSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#StudioSummary", name: "StudioSummary")
    StudioSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#StudioSummaryList", name: "StudioSummaryList")
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#SubnetIdList", name: "SubnetIdList")
    SupportedInstanceType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SupportedInstanceType", name: "SupportedInstanceType")
    SupportedInstanceTypesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#SupportedInstanceTypesList", name: "SupportedInstanceTypesList")
    SupportedProductConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#SupportedProductConfig", name: "SupportedProductConfig")
    SupportedProductsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#SupportedProductsList", name: "SupportedProductsList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#Tag", name: "Tag")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#TagList", name: "TagList")
    TerminateJobFlowsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#TerminateJobFlowsInput", name: "TerminateJobFlowsInput")
    ThroughputVal = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emr#ThroughputVal", name: "ThroughputVal", traits: {"smithy.api#range" => {"min" => 0}})
    Unit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.emr#Unit", name: "Unit")
    UpdateStudioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#UpdateStudioInput", name: "UpdateStudioInput")
    UpdateStudioSessionMappingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#UpdateStudioSessionMappingInput", name: "UpdateStudioSessionMappingInput")
    UriString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#UriString", name: "UriString", traits: {"smithy.api#length" => {"min" => 1, "max" => 10280}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\r\\n\\t]*$"})
    UsernamePassword = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#UsernamePassword", name: "UsernamePassword", traits: {"smithy.api#sensitive" => {}})
    UtilizationPerformanceIndexInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emr#UtilizationPerformanceIndexInteger", name: "UtilizationPerformanceIndexInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    VolumeSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emr#VolumeSpecification", name: "VolumeSpecification")
    WholeNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emr#WholeNumber", name: "WholeNumber", traits: {"smithy.api#range" => {"min" => 0}})
    XmlString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#XmlString", name: "XmlString", traits: {"smithy.api#length" => {"min" => 0, "max" => 10280}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#XmlStringList", name: "XmlStringList")
    XmlStringMaxLen256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emr#XmlStringMaxLen256", name: "XmlStringMaxLen256", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen256List = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emr#XmlStringMaxLen256List", name: "XmlStringMaxLen256List")

    ActionOnFailure.add_member(:terminate_job_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE_JOB_FLOW", traits: {"smithy.api#enumValue" => "TERMINATE_JOB_FLOW"}))
    ActionOnFailure.add_member(:terminate_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE_CLUSTER", traits: {"smithy.api#enumValue" => "TERMINATE_CLUSTER"}))
    ActionOnFailure.add_member(:cancel_and_wait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCEL_AND_WAIT", traits: {"smithy.api#enumValue" => "CANCEL_AND_WAIT"}))
    ActionOnFailure.add_member(:continue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUE", traits: {"smithy.api#enumValue" => "CONTINUE"}))
    AddInstanceFleetInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddInstanceFleetInput.add_member(:instance_fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetConfig, name: "InstanceFleet", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddInstanceFleetInput.type = Types::AddInstanceFleetInput
    AddInstanceFleetOutput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "ClusterId"))
    AddInstanceFleetOutput.add_member(:instance_fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetId, name: "InstanceFleetId"))
    AddInstanceFleetOutput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ClusterArn"))
    AddInstanceFleetOutput.type = Types::AddInstanceFleetOutput
    AddInstanceGroupsInput.add_member(:instance_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupConfigList, name: "InstanceGroups", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddInstanceGroupsInput.add_member(:job_flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "JobFlowId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddInstanceGroupsInput.type = Types::AddInstanceGroupsInput
    AddInstanceGroupsOutput.add_member(:job_flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "JobFlowId"))
    AddInstanceGroupsOutput.add_member(:instance_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupIdsList, name: "InstanceGroupIds"))
    AddInstanceGroupsOutput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ClusterArn"))
    AddInstanceGroupsOutput.type = Types::AddInstanceGroupsOutput
    AddJobFlowStepsInput.add_member(:job_flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "JobFlowId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddJobFlowStepsInput.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: StepConfigList, name: "Steps", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddJobFlowStepsInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ExecutionRoleArn"))
    AddJobFlowStepsInput.type = Types::AddJobFlowStepsInput
    AddJobFlowStepsOutput.add_member(:step_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StepIdsList, name: "StepIds"))
    AddJobFlowStepsOutput.type = Types::AddJobFlowStepsOutput
    AddTagsInput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsInput.type = Types::AddTagsInput
    AddTagsOutput.type = Types::AddTagsOutput
    AdjustmentType.add_member(:change_in_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_IN_CAPACITY", traits: {"smithy.api#enumValue" => "CHANGE_IN_CAPACITY"}))
    AdjustmentType.add_member(:percent_change_in_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERCENT_CHANGE_IN_CAPACITY", traits: {"smithy.api#enumValue" => "PERCENT_CHANGE_IN_CAPACITY"}))
    AdjustmentType.add_member(:exact_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXACT_CAPACITY", traits: {"smithy.api#enumValue" => "EXACT_CAPACITY"}))
    Application.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    Application.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    Application.add_member(:args, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Args"))
    Application.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "AdditionalInfo"))
    Application.type = Types::Application
    ApplicationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "member")
    AuthMode.add_member(:sso, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSO", traits: {"smithy.api#enumValue" => "SSO"}))
    AuthMode.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "IAM"}))
    AutoScalingPolicy.add_member(:constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConstraints, name: "Constraints", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingPolicy.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingRuleList, name: "Rules", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AutoScalingPolicy.type = Types::AutoScalingPolicy
    AutoScalingPolicyDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicyStatus, name: "Status"))
    AutoScalingPolicyDescription.add_member(:constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConstraints, name: "Constraints"))
    AutoScalingPolicyDescription.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingRuleList, name: "Rules"))
    AutoScalingPolicyDescription.type = Types::AutoScalingPolicyDescription
    AutoScalingPolicyState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    AutoScalingPolicyState.add_member(:attaching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHING", traits: {"smithy.api#enumValue" => "ATTACHING"}))
    AutoScalingPolicyState.add_member(:attached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHED", traits: {"smithy.api#enumValue" => "ATTACHED"}))
    AutoScalingPolicyState.add_member(:detaching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETACHING", traits: {"smithy.api#enumValue" => "DETACHING"}))
    AutoScalingPolicyState.add_member(:detached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETACHED", traits: {"smithy.api#enumValue" => "DETACHED"}))
    AutoScalingPolicyState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AutoScalingPolicyStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicyStateChangeReasonCode, name: "Code"))
    AutoScalingPolicyStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AutoScalingPolicyStateChangeReason.type = Types::AutoScalingPolicyStateChangeReason
    AutoScalingPolicyStateChangeReasonCode.add_member(:user_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_REQUEST", traits: {"smithy.api#enumValue" => "USER_REQUEST"}))
    AutoScalingPolicyStateChangeReasonCode.add_member(:provision_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISION_FAILURE", traits: {"smithy.api#enumValue" => "PROVISION_FAILURE"}))
    AutoScalingPolicyStateChangeReasonCode.add_member(:cleanup_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLEANUP_FAILURE", traits: {"smithy.api#enumValue" => "CLEANUP_FAILURE"}))
    AutoScalingPolicyStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicyState, name: "State"))
    AutoScalingPolicyStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicyStateChangeReason, name: "StateChangeReason"))
    AutoScalingPolicyStatus.type = Types::AutoScalingPolicyStatus
    AutoTerminationPolicy.add_member(:idle_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "IdleTimeout"))
    AutoTerminationPolicy.type = Types::AutoTerminationPolicy
    BlockPublicAccessConfiguration.add_member(:block_public_security_group_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "BlockPublicSecurityGroupRules", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BlockPublicAccessConfiguration.add_member(:permitted_public_security_group_rule_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRanges, name: "PermittedPublicSecurityGroupRuleRanges"))
    BlockPublicAccessConfiguration.add_member(:classification, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Classification"))
    BlockPublicAccessConfiguration.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "Configurations"))
    BlockPublicAccessConfiguration.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "Properties"))
    BlockPublicAccessConfiguration.type = Types::BlockPublicAccessConfiguration
    BlockPublicAccessConfigurationMetadata.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BlockPublicAccessConfigurationMetadata.add_member(:created_by_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "CreatedByArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BlockPublicAccessConfigurationMetadata.type = Types::BlockPublicAccessConfigurationMetadata
    BootstrapActionConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BootstrapActionConfig.add_member(:script_bootstrap_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptBootstrapActionConfig, name: "ScriptBootstrapAction", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BootstrapActionConfig.type = Types::BootstrapActionConfig
    BootstrapActionConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BootstrapActionConfig, name: "member")
    BootstrapActionDetail.add_member(:bootstrap_action_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BootstrapActionConfig, name: "BootstrapActionConfig"))
    BootstrapActionDetail.type = Types::BootstrapActionDetail
    BootstrapActionDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BootstrapActionDetail, name: "member")
    CancelStepsInfo.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "StepId"))
    CancelStepsInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelStepsRequestStatus, name: "Status"))
    CancelStepsInfo.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason"))
    CancelStepsInfo.type = Types::CancelStepsInfo
    CancelStepsInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CancelStepsInfo, name: "member")
    CancelStepsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelStepsInput.add_member(:step_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StepIdsList, name: "StepIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelStepsInput.add_member(:step_cancellation_option, ::Smithy::Schema::Shapes::MemberShape.new(target: StepCancellationOption, name: "StepCancellationOption"))
    CancelStepsInput.type = Types::CancelStepsInput
    CancelStepsOutput.add_member(:cancel_steps_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CancelStepsInfoList, name: "CancelStepsInfoList"))
    CancelStepsOutput.type = Types::CancelStepsOutput
    CancelStepsRequestStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    CancelStepsRequestStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CloudWatchAlarmDefinition.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "ComparisonOperator", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CloudWatchAlarmDefinition.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EvaluationPeriods"))
    CloudWatchAlarmDefinition.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CloudWatchAlarmDefinition.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Namespace"))
    CloudWatchAlarmDefinition.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Period", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CloudWatchAlarmDefinition.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistic, name: "Statistic"))
    CloudWatchAlarmDefinition.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeDouble, name: "Threshold", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CloudWatchAlarmDefinition.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: Unit, name: "Unit"))
    CloudWatchAlarmDefinition.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionList, name: "Dimensions"))
    CloudWatchAlarmDefinition.type = Types::CloudWatchAlarmDefinition
    Cluster.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "Id"))
    Cluster.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    Cluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "Status"))
    Cluster.add_member(:ec2_instance_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceAttributes, name: "Ec2InstanceAttributes"))
    Cluster.add_member(:instance_collection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCollectionType, name: "InstanceCollectionType"))
    Cluster.add_member(:log_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogUri"))
    Cluster.add_member(:log_encryption_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogEncryptionKmsKeyId"))
    Cluster.add_member(:requested_ami_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestedAmiVersion"))
    Cluster.add_member(:running_ami_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RunningAmiVersion"))
    Cluster.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReleaseLabel"))
    Cluster.add_member(:auto_terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoTerminate"))
    Cluster.add_member(:termination_protected, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "TerminationProtected"))
    Cluster.add_member(:unhealthy_node_replacement, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "UnhealthyNodeReplacement"))
    Cluster.add_member(:visible_to_all_users, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "VisibleToAllUsers"))
    Cluster.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationList, name: "Applications"))
    Cluster.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Cluster.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceRole"))
    Cluster.add_member(:normalized_instance_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NormalizedInstanceHours"))
    Cluster.add_member(:master_public_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterPublicDnsName"))
    Cluster.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "Configurations"))
    Cluster.add_member(:security_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "SecurityConfiguration"))
    Cluster.add_member(:auto_scaling_role, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "AutoScalingRole"))
    Cluster.add_member(:scale_down_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleDownBehavior, name: "ScaleDownBehavior"))
    Cluster.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "CustomAmiId"))
    Cluster.add_member(:ebs_root_volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EbsRootVolumeSize"))
    Cluster.add_member(:repo_upgrade_on_boot, ::Smithy::Schema::Shapes::MemberShape.new(target: RepoUpgradeOnBoot, name: "RepoUpgradeOnBoot"))
    Cluster.add_member(:kerberos_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosAttributes, name: "KerberosAttributes"))
    Cluster.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ClusterArn"))
    Cluster.add_member(:outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalArnType, name: "OutpostArn"))
    Cluster.add_member(:step_concurrency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StepConcurrencyLevel"))
    Cluster.add_member(:placement_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementGroupConfigList, name: "PlacementGroups"))
    Cluster.add_member(:os_release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OSReleaseLabel"))
    Cluster.add_member(:ebs_root_volume_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EbsRootVolumeIops"))
    Cluster.add_member(:ebs_root_volume_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EbsRootVolumeThroughput"))
    Cluster.add_member(:extended_support, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "ExtendedSupport"))
    Cluster.type = Types::Cluster
    ClusterState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    ClusterState.add_member(:bootstrapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOTSTRAPPING", traits: {"smithy.api#enumValue" => "BOOTSTRAPPING"}))
    ClusterState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ClusterState.add_member(:waiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAITING", traits: {"smithy.api#enumValue" => "WAITING"}))
    ClusterState.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    ClusterState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    ClusterState.add_member(:terminated_with_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED_WITH_ERRORS", traits: {"smithy.api#enumValue" => "TERMINATED_WITH_ERRORS"}))
    ClusterStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStateChangeReasonCode, name: "Code"))
    ClusterStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ClusterStateChangeReason.type = Types::ClusterStateChangeReason
    ClusterStateChangeReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ClusterStateChangeReasonCode.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_ERROR", traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    ClusterStateChangeReasonCode.add_member(:instance_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_FAILURE", traits: {"smithy.api#enumValue" => "INSTANCE_FAILURE"}))
    ClusterStateChangeReasonCode.add_member(:instance_fleet_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_FLEET_TIMEOUT", traits: {"smithy.api#enumValue" => "INSTANCE_FLEET_TIMEOUT"}))
    ClusterStateChangeReasonCode.add_member(:bootstrap_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOTSTRAP_FAILURE", traits: {"smithy.api#enumValue" => "BOOTSTRAP_FAILURE"}))
    ClusterStateChangeReasonCode.add_member(:user_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_REQUEST", traits: {"smithy.api#enumValue" => "USER_REQUEST"}))
    ClusterStateChangeReasonCode.add_member(:step_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEP_FAILURE", traits: {"smithy.api#enumValue" => "STEP_FAILURE"}))
    ClusterStateChangeReasonCode.add_member(:all_steps_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_STEPS_COMPLETED", traits: {"smithy.api#enumValue" => "ALL_STEPS_COMPLETED"}))
    ClusterStateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterState, name: "member")
    ClusterStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterState, name: "State"))
    ClusterStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStateChangeReason, name: "StateChangeReason"))
    ClusterStatus.add_member(:timeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterTimeline, name: "Timeline"))
    ClusterStatus.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetailList, name: "ErrorDetails"))
    ClusterStatus.type = Types::ClusterStatus
    ClusterSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "Id"))
    ClusterSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    ClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "Status"))
    ClusterSummary.add_member(:normalized_instance_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NormalizedInstanceHours"))
    ClusterSummary.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ClusterArn"))
    ClusterSummary.add_member(:outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalArnType, name: "OutpostArn"))
    ClusterSummary.type = Types::ClusterSummary
    ClusterSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSummary, name: "member")
    ClusterTimeline.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime"))
    ClusterTimeline.add_member(:ready_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ReadyDateTime"))
    ClusterTimeline.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EndDateTime"))
    ClusterTimeline.type = Types::ClusterTimeline
    Command.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    Command.add_member(:script_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScriptPath"))
    Command.add_member(:args, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Args"))
    Command.type = Types::Command
    CommandList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Command, name: "member")
    ComparisonOperator.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    ComparisonOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    ComparisonOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    ComparisonOperator.add_member(:less_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL"}))
    ComputeLimits.add_member(:unit_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeLimitsUnitType, name: "UnitType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeLimits.add_member(:minimum_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MinimumCapacityUnits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeLimits.add_member(:maximum_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaximumCapacityUnits", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeLimits.add_member(:maximum_on_demand_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaximumOnDemandCapacityUnits"))
    ComputeLimits.add_member(:maximum_core_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaximumCoreCapacityUnits"))
    ComputeLimits.type = Types::ComputeLimits
    ComputeLimitsUnitType.add_member(:instance_fleet_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InstanceFleetUnits", traits: {"smithy.api#enumValue" => "InstanceFleetUnits"}))
    ComputeLimitsUnitType.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Instances", traits: {"smithy.api#enumValue" => "Instances"}))
    ComputeLimitsUnitType.add_member(:vcpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VCPU", traits: {"smithy.api#enumValue" => "VCPU"}))
    Configuration.add_member(:classification, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Classification"))
    Configuration.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "Configurations"))
    Configuration.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "Properties"))
    Configuration.type = Types::Configuration
    ConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "member")
    CreatePersistentAppUIInput.add_member(:target_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "TargetResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreatePersistentAppUIInput.add_member(:emr_containers_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EMRContainersConfig, name: "EMRContainersConfig"))
    CreatePersistentAppUIInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreatePersistentAppUIInput.add_member(:x_referer, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "XReferer"))
    CreatePersistentAppUIInput.add_member(:profiler_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilerType, name: "ProfilerType"))
    CreatePersistentAppUIInput.type = Types::CreatePersistentAppUIInput
    CreatePersistentAppUIOutput.add_member(:persistent_app_ui_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "PersistentAppUIId"))
    CreatePersistentAppUIOutput.add_member(:runtime_role_enabled_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RuntimeRoleEnabledCluster"))
    CreatePersistentAppUIOutput.type = Types::CreatePersistentAppUIOutput
    CreateSecurityConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSecurityConfigurationInput.add_member(:security_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecurityConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSecurityConfigurationInput.type = Types::CreateSecurityConfigurationInput
    CreateSecurityConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSecurityConfigurationOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSecurityConfigurationOutput.type = Types::CreateSecurityConfigurationOutput
    CreateStudioInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Description"))
    CreateStudioInput.add_member(:auth_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthMode, name: "AuthMode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "VpcId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ServiceRole", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:user_role, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "UserRole"))
    CreateStudioInput.add_member(:workspace_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "WorkspaceSecurityGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:engine_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "EngineSecurityGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:default_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "DefaultS3Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioInput.add_member(:idp_auth_url, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "IdpAuthUrl"))
    CreateStudioInput.add_member(:idp_relay_state_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdpRelayStateParameterName"))
    CreateStudioInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateStudioInput.add_member(:trusted_identity_propagation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "TrustedIdentityPropagationEnabled"))
    CreateStudioInput.add_member(:idc_user_assignment, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcUserAssignment, name: "IdcUserAssignment"))
    CreateStudioInput.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "IdcInstanceArn"))
    CreateStudioInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "EncryptionKeyArn"))
    CreateStudioInput.type = Types::CreateStudioInput
    CreateStudioOutput.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId"))
    CreateStudioOutput.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Url"))
    CreateStudioOutput.type = Types::CreateStudioOutput
    CreateStudioSessionMappingInput.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioSessionMappingInput.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdentityId"))
    CreateStudioSessionMappingInput.add_member(:identity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdentityName"))
    CreateStudioSessionMappingInput.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioSessionMappingInput.add_member(:session_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "SessionPolicyArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStudioSessionMappingInput.type = Types::CreateStudioSessionMappingInput
    Credentials.add_member(:username_password, Types::Credentials::UsernamePassword, ::Smithy::Schema::Shapes::MemberShape.new(target: UsernamePassword, name: "UsernamePassword"))
    Credentials.add_member(:unknown, Types::Credentials::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Credentials.type = Types::Credentials
    DeleteSecurityConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSecurityConfigurationInput.type = Types::DeleteSecurityConfigurationInput
    DeleteSecurityConfigurationOutput.type = Types::DeleteSecurityConfigurationOutput
    DeleteStudioInput.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStudioInput.type = Types::DeleteStudioInput
    DeleteStudioSessionMappingInput.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStudioSessionMappingInput.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdentityId"))
    DeleteStudioSessionMappingInput.add_member(:identity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdentityName"))
    DeleteStudioSessionMappingInput.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStudioSessionMappingInput.type = Types::DeleteStudioSessionMappingInput
    DescribeClusterInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeClusterInput.type = Types::DescribeClusterInput
    DescribeClusterOutput.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    DescribeClusterOutput.type = Types::DescribeClusterOutput
    DescribeJobFlowsInput.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedAfter"))
    DescribeJobFlowsInput.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedBefore"))
    DescribeJobFlowsInput.add_member(:job_flow_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringList, name: "JobFlowIds"))
    DescribeJobFlowsInput.add_member(:job_flow_states, ::Smithy::Schema::Shapes::MemberShape.new(target: JobFlowExecutionStateList, name: "JobFlowStates"))
    DescribeJobFlowsInput.type = Types::DescribeJobFlowsInput
    DescribeJobFlowsOutput.add_member(:job_flows, ::Smithy::Schema::Shapes::MemberShape.new(target: JobFlowDetailList, name: "JobFlows"))
    DescribeJobFlowsOutput.type = Types::DescribeJobFlowsOutput
    DescribeNotebookExecutionInput.add_member(:notebook_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "NotebookExecutionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeNotebookExecutionInput.type = Types::DescribeNotebookExecutionInput
    DescribeNotebookExecutionOutput.add_member(:notebook_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookExecution, name: "NotebookExecution"))
    DescribeNotebookExecutionOutput.type = Types::DescribeNotebookExecutionOutput
    DescribePersistentAppUIInput.add_member(:persistent_app_ui_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "PersistentAppUIId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribePersistentAppUIInput.type = Types::DescribePersistentAppUIInput
    DescribePersistentAppUIOutput.add_member(:persistent_app_ui, ::Smithy::Schema::Shapes::MemberShape.new(target: PersistentAppUI, name: "PersistentAppUI"))
    DescribePersistentAppUIOutput.type = Types::DescribePersistentAppUIOutput
    DescribeReleaseLabelInput.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReleaseLabel"))
    DescribeReleaseLabelInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeReleaseLabelInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsNumber, name: "MaxResults"))
    DescribeReleaseLabelInput.type = Types::DescribeReleaseLabelInput
    DescribeReleaseLabelOutput.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReleaseLabel"))
    DescribeReleaseLabelOutput.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: SimplifiedApplicationList, name: "Applications"))
    DescribeReleaseLabelOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeReleaseLabelOutput.add_member(:available_os_releases, ::Smithy::Schema::Shapes::MemberShape.new(target: OSReleaseList, name: "AvailableOSReleases"))
    DescribeReleaseLabelOutput.type = Types::DescribeReleaseLabelOutput
    DescribeSecurityConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeSecurityConfigurationInput.type = Types::DescribeSecurityConfigurationInput
    DescribeSecurityConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Name"))
    DescribeSecurityConfigurationOutput.add_member(:security_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecurityConfiguration"))
    DescribeSecurityConfigurationOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime"))
    DescribeSecurityConfigurationOutput.type = Types::DescribeSecurityConfigurationOutput
    DescribeStepInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStepInput.add_member(:step_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "StepId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStepInput.type = Types::DescribeStepInput
    DescribeStepOutput.add_member(:step, ::Smithy::Schema::Shapes::MemberShape.new(target: Step, name: "Step"))
    DescribeStepOutput.type = Types::DescribeStepOutput
    DescribeStudioInput.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeStudioInput.type = Types::DescribeStudioInput
    DescribeStudioOutput.add_member(:studio, ::Smithy::Schema::Shapes::MemberShape.new(target: Studio, name: "Studio"))
    DescribeStudioOutput.type = Types::DescribeStudioOutput
    EC2InstanceIdsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "member")
    EC2InstanceIdsToTerminateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "member")
    EMRContainersConfig.add_member(:job_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "JobRunId"))
    EMRContainersConfig.type = Types::EMRContainersConfig
    EbsBlockDevice.add_member(:volume_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeSpecification, name: "VolumeSpecification"))
    EbsBlockDevice.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Device"))
    EbsBlockDevice.type = Types::EbsBlockDevice
    EbsBlockDeviceConfig.add_member(:volume_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeSpecification, name: "VolumeSpecification", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EbsBlockDeviceConfig.add_member(:volumes_per_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VolumesPerInstance"))
    EbsBlockDeviceConfig.type = Types::EbsBlockDeviceConfig
    EbsBlockDeviceConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EbsBlockDeviceConfig, name: "member")
    EbsBlockDeviceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EbsBlockDevice, name: "member")
    EbsConfiguration.add_member(:ebs_block_device_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsBlockDeviceConfigList, name: "EbsBlockDeviceConfigs"))
    EbsConfiguration.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EbsOptimized"))
    EbsConfiguration.type = Types::EbsConfiguration
    EbsVolume.add_member(:device, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Device"))
    EbsVolume.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VolumeId"))
    EbsVolume.type = Types::EbsVolume
    EbsVolumeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolume, name: "member")
    Ec2InstanceAttributes.add_member(:ec2_key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Ec2KeyName"))
    Ec2InstanceAttributes.add_member(:ec2_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Ec2SubnetId"))
    Ec2InstanceAttributes.add_member(:requested_ec2_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256List, name: "RequestedEc2SubnetIds"))
    Ec2InstanceAttributes.add_member(:ec2_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Ec2AvailabilityZone"))
    Ec2InstanceAttributes.add_member(:requested_ec2_availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256List, name: "RequestedEc2AvailabilityZones"))
    Ec2InstanceAttributes.add_member(:iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamInstanceProfile"))
    Ec2InstanceAttributes.add_member(:emr_managed_master_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EmrManagedMasterSecurityGroup"))
    Ec2InstanceAttributes.add_member(:emr_managed_slave_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EmrManagedSlaveSecurityGroup"))
    Ec2InstanceAttributes.add_member(:service_access_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccessSecurityGroup"))
    Ec2InstanceAttributes.add_member(:additional_master_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "AdditionalMasterSecurityGroups"))
    Ec2InstanceAttributes.add_member(:additional_slave_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "AdditionalSlaveSecurityGroups"))
    Ec2InstanceAttributes.type = Types::Ec2InstanceAttributes
    EnvironmentVariablesMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "key")
    EnvironmentVariablesMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "value")
    ErrorData.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "member")
    ErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    ErrorDetail.add_member(:error_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorData, name: "ErrorData"))
    ErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    ErrorDetail.type = Types::ErrorDetail
    ErrorDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "member")
    ExecutionEngineConfig.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExecutionEngineConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionEngineType, name: "Type"))
    ExecutionEngineConfig.add_member(:master_instance_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "MasterInstanceSecurityGroupId"))
    ExecutionEngineConfig.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "ExecutionRoleArn"))
    ExecutionEngineConfig.type = Types::ExecutionEngineConfig
    ExecutionEngineType.add_member(:emr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMR", traits: {"smithy.api#enumValue" => "EMR"}))
    FailureDetails.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason"))
    FailureDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    FailureDetails.add_member(:log_file, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogFile"))
    FailureDetails.type = Types::FailureDetails
    GetAutoTerminationPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetAutoTerminationPolicyInput.type = Types::GetAutoTerminationPolicyInput
    GetAutoTerminationPolicyOutput.add_member(:auto_termination_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoTerminationPolicy, name: "AutoTerminationPolicy"))
    GetAutoTerminationPolicyOutput.type = Types::GetAutoTerminationPolicyOutput
    GetBlockPublicAccessConfigurationInput.type = Types::GetBlockPublicAccessConfigurationInput
    GetBlockPublicAccessConfigurationOutput.add_member(:block_public_access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockPublicAccessConfiguration, name: "BlockPublicAccessConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetBlockPublicAccessConfigurationOutput.add_member(:block_public_access_configuration_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockPublicAccessConfigurationMetadata, name: "BlockPublicAccessConfigurationMetadata", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetBlockPublicAccessConfigurationOutput.type = Types::GetBlockPublicAccessConfigurationOutput
    GetClusterSessionCredentialsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetClusterSessionCredentialsInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ExecutionRoleArn"))
    GetClusterSessionCredentialsInput.type = Types::GetClusterSessionCredentialsInput
    GetClusterSessionCredentialsOutput.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Credentials, name: "Credentials"))
    GetClusterSessionCredentialsOutput.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ExpiresAt"))
    GetClusterSessionCredentialsOutput.type = Types::GetClusterSessionCredentialsOutput
    GetManagedScalingPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetManagedScalingPolicyInput.type = Types::GetManagedScalingPolicyInput
    GetManagedScalingPolicyOutput.add_member(:managed_scaling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingPolicy, name: "ManagedScalingPolicy"))
    GetManagedScalingPolicyOutput.type = Types::GetManagedScalingPolicyOutput
    GetOnClusterAppUIPresignedURLInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetOnClusterAppUIPresignedURLInput.add_member(:on_cluster_app_ui_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OnClusterAppUIType, name: "OnClusterAppUIType"))
    GetOnClusterAppUIPresignedURLInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "ApplicationId"))
    GetOnClusterAppUIPresignedURLInput.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "DryRun"))
    GetOnClusterAppUIPresignedURLInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ExecutionRoleArn"))
    GetOnClusterAppUIPresignedURLInput.type = Types::GetOnClusterAppUIPresignedURLInput
    GetOnClusterAppUIPresignedURLOutput.add_member(:presigned_url_ready, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "PresignedURLReady"))
    GetOnClusterAppUIPresignedURLOutput.add_member(:presigned_url, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "PresignedURL"))
    GetOnClusterAppUIPresignedURLOutput.type = Types::GetOnClusterAppUIPresignedURLOutput
    GetPersistentAppUIPresignedURLInput.add_member(:persistent_app_ui_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "PersistentAppUIId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetPersistentAppUIPresignedURLInput.add_member(:persistent_app_ui_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PersistentAppUIType, name: "PersistentAppUIType"))
    GetPersistentAppUIPresignedURLInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "ApplicationId"))
    GetPersistentAppUIPresignedURLInput.add_member(:auth_proxy_call, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "AuthProxyCall"))
    GetPersistentAppUIPresignedURLInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ExecutionRoleArn"))
    GetPersistentAppUIPresignedURLInput.type = Types::GetPersistentAppUIPresignedURLInput
    GetPersistentAppUIPresignedURLOutput.add_member(:presigned_url_ready, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "PresignedURLReady"))
    GetPersistentAppUIPresignedURLOutput.add_member(:presigned_url, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "PresignedURL"))
    GetPersistentAppUIPresignedURLOutput.type = Types::GetPersistentAppUIPresignedURLOutput
    GetStudioSessionMappingInput.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetStudioSessionMappingInput.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdentityId"))
    GetStudioSessionMappingInput.add_member(:identity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdentityName"))
    GetStudioSessionMappingInput.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetStudioSessionMappingInput.type = Types::GetStudioSessionMappingInput
    GetStudioSessionMappingOutput.add_member(:session_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionMappingDetail, name: "SessionMapping"))
    GetStudioSessionMappingOutput.type = Types::GetStudioSessionMappingOutput
    HadoopJarStepConfig.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValueList, name: "Properties"))
    HadoopJarStepConfig.add_member(:jar, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Jar", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    HadoopJarStepConfig.add_member(:main_class, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "MainClass"))
    HadoopJarStepConfig.add_member(:args, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringList, name: "Args"))
    HadoopJarStepConfig.type = Types::HadoopJarStepConfig
    HadoopStepConfig.add_member(:jar, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Jar"))
    HadoopStepConfig.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "Properties"))
    HadoopStepConfig.add_member(:main_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MainClass"))
    HadoopStepConfig.add_member(:args, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Args"))
    HadoopStepConfig.type = Types::HadoopStepConfig
    IdcUserAssignment.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "REQUIRED"}))
    IdcUserAssignment.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIONAL", traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    IdentityType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    IdentityType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    Instance.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "Id"))
    Instance.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "Ec2InstanceId"))
    Instance.add_member(:public_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PublicDnsName"))
    Instance.add_member(:public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PublicIpAddress"))
    Instance.add_member(:private_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrivateDnsName"))
    Instance.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrivateIpAddress"))
    Instance.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStatus, name: "Status"))
    Instance.add_member(:instance_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceGroupId"))
    Instance.add_member(:instance_fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetId, name: "InstanceFleetId"))
    Instance.add_member(:market, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketType, name: "Market"))
    Instance.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "InstanceType"))
    Instance.add_member(:ebs_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeList, name: "EbsVolumes"))
    Instance.type = Types::Instance
    InstanceCollectionType.add_member(:instance_fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_FLEET", traits: {"smithy.api#enumValue" => "INSTANCE_FLEET"}))
    InstanceCollectionType.add_member(:instance_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_GROUP", traits: {"smithy.api#enumValue" => "INSTANCE_GROUP"}))
    InstanceFleet.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetId, name: "Id"))
    InstanceFleet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name"))
    InstanceFleet.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetStatus, name: "Status"))
    InstanceFleet.add_member(:instance_fleet_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetType, name: "InstanceFleetType"))
    InstanceFleet.add_member(:target_on_demand_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "TargetOnDemandCapacity"))
    InstanceFleet.add_member(:target_spot_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "TargetSpotCapacity"))
    InstanceFleet.add_member(:provisioned_on_demand_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "ProvisionedOnDemandCapacity"))
    InstanceFleet.add_member(:provisioned_spot_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "ProvisionedSpotCapacity"))
    InstanceFleet.add_member(:instance_type_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeSpecificationList, name: "InstanceTypeSpecifications"))
    InstanceFleet.add_member(:launch_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetProvisioningSpecifications, name: "LaunchSpecifications"))
    InstanceFleet.add_member(:resize_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetResizingSpecifications, name: "ResizeSpecifications"))
    InstanceFleet.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Context"))
    InstanceFleet.type = Types::InstanceFleet
    InstanceFleetConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name"))
    InstanceFleetConfig.add_member(:instance_fleet_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetType, name: "InstanceFleetType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceFleetConfig.add_member(:target_on_demand_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "TargetOnDemandCapacity"))
    InstanceFleetConfig.add_member(:target_spot_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "TargetSpotCapacity"))
    InstanceFleetConfig.add_member(:instance_type_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeConfigList, name: "InstanceTypeConfigs"))
    InstanceFleetConfig.add_member(:launch_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetProvisioningSpecifications, name: "LaunchSpecifications"))
    InstanceFleetConfig.add_member(:resize_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetResizingSpecifications, name: "ResizeSpecifications"))
    InstanceFleetConfig.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Context"))
    InstanceFleetConfig.type = Types::InstanceFleetConfig
    InstanceFleetConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetConfig, name: "member")
    InstanceFleetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleet, name: "member")
    InstanceFleetModifyConfig.add_member(:instance_fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetId, name: "InstanceFleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceFleetModifyConfig.add_member(:target_on_demand_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "TargetOnDemandCapacity"))
    InstanceFleetModifyConfig.add_member(:target_spot_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "TargetSpotCapacity"))
    InstanceFleetModifyConfig.add_member(:resize_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetResizingSpecifications, name: "ResizeSpecifications"))
    InstanceFleetModifyConfig.add_member(:instance_type_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeConfigList, name: "InstanceTypeConfigs"))
    InstanceFleetModifyConfig.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Context"))
    InstanceFleetModifyConfig.type = Types::InstanceFleetModifyConfig
    InstanceFleetProvisioningSpecifications.add_member(:spot_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotProvisioningSpecification, name: "SpotSpecification"))
    InstanceFleetProvisioningSpecifications.add_member(:on_demand_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandProvisioningSpecification, name: "OnDemandSpecification"))
    InstanceFleetProvisioningSpecifications.type = Types::InstanceFleetProvisioningSpecifications
    InstanceFleetResizingSpecifications.add_member(:spot_resize_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotResizingSpecification, name: "SpotResizeSpecification"))
    InstanceFleetResizingSpecifications.add_member(:on_demand_resize_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandResizingSpecification, name: "OnDemandResizeSpecification"))
    InstanceFleetResizingSpecifications.type = Types::InstanceFleetResizingSpecifications
    InstanceFleetState.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    InstanceFleetState.add_member(:bootstrapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOTSTRAPPING", traits: {"smithy.api#enumValue" => "BOOTSTRAPPING"}))
    InstanceFleetState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    InstanceFleetState.add_member(:resizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESIZING", traits: {"smithy.api#enumValue" => "RESIZING"}))
    InstanceFleetState.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    InstanceFleetState.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    InstanceFleetState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    InstanceFleetStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetStateChangeReasonCode, name: "Code"))
    InstanceFleetStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InstanceFleetStateChangeReason.type = Types::InstanceFleetStateChangeReason
    InstanceFleetStateChangeReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    InstanceFleetStateChangeReasonCode.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_ERROR", traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    InstanceFleetStateChangeReasonCode.add_member(:instance_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_FAILURE", traits: {"smithy.api#enumValue" => "INSTANCE_FAILURE"}))
    InstanceFleetStateChangeReasonCode.add_member(:cluster_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_TERMINATED", traits: {"smithy.api#enumValue" => "CLUSTER_TERMINATED"}))
    InstanceFleetStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetState, name: "State"))
    InstanceFleetStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetStateChangeReason, name: "StateChangeReason"))
    InstanceFleetStatus.add_member(:timeline, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetTimeline, name: "Timeline"))
    InstanceFleetStatus.type = Types::InstanceFleetStatus
    InstanceFleetTimeline.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime"))
    InstanceFleetTimeline.add_member(:ready_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ReadyDateTime"))
    InstanceFleetTimeline.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EndDateTime"))
    InstanceFleetTimeline.type = Types::InstanceFleetTimeline
    InstanceFleetType.add_member(:master, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASTER", traits: {"smithy.api#enumValue" => "MASTER"}))
    InstanceFleetType.add_member(:core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CORE", traits: {"smithy.api#enumValue" => "CORE"}))
    InstanceFleetType.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK", traits: {"smithy.api#enumValue" => "TASK"}))
    InstanceGroup.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupId, name: "Id"))
    InstanceGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    InstanceGroup.add_member(:market, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketType, name: "Market"))
    InstanceGroup.add_member(:instance_group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupType, name: "InstanceGroupType"))
    InstanceGroup.add_member(:bid_price, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BidPrice"))
    InstanceGroup.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "InstanceType"))
    InstanceGroup.add_member(:requested_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RequestedInstanceCount"))
    InstanceGroup.add_member(:running_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RunningInstanceCount"))
    InstanceGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupStatus, name: "Status"))
    InstanceGroup.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "Configurations"))
    InstanceGroup.add_member(:configurations_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ConfigurationsVersion"))
    InstanceGroup.add_member(:last_successfully_applied_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "LastSuccessfullyAppliedConfigurations"))
    InstanceGroup.add_member(:last_successfully_applied_configurations_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "LastSuccessfullyAppliedConfigurationsVersion"))
    InstanceGroup.add_member(:ebs_block_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsBlockDeviceList, name: "EbsBlockDevices"))
    InstanceGroup.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EbsOptimized"))
    InstanceGroup.add_member(:shrink_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ShrinkPolicy, name: "ShrinkPolicy"))
    InstanceGroup.add_member(:auto_scaling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicyDescription, name: "AutoScalingPolicy"))
    InstanceGroup.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "CustomAmiId"))
    InstanceGroup.type = Types::InstanceGroup
    InstanceGroupConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name"))
    InstanceGroupConfig.add_member(:market, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketType, name: "Market"))
    InstanceGroupConfig.add_member(:instance_role, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRoleType, name: "InstanceRole", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupConfig.add_member(:bid_price, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "BidPrice"))
    InstanceGroupConfig.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "InstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupConfig.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstanceCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupConfig.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "Configurations"))
    InstanceGroupConfig.add_member(:ebs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsConfiguration, name: "EbsConfiguration"))
    InstanceGroupConfig.add_member(:auto_scaling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicy, name: "AutoScalingPolicy"))
    InstanceGroupConfig.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "CustomAmiId"))
    InstanceGroupConfig.type = Types::InstanceGroupConfig
    InstanceGroupConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupConfig, name: "member")
    InstanceGroupDetail.add_member(:instance_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "InstanceGroupId"))
    InstanceGroupDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name"))
    InstanceGroupDetail.add_member(:market, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketType, name: "Market", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:instance_role, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRoleType, name: "InstanceRole", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:bid_price, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "BidPrice"))
    InstanceGroupDetail.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "InstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:instance_request_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstanceRequestCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:instance_running_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstanceRunningCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupState, name: "State", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:last_state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "LastStateChangeReason"))
    InstanceGroupDetail.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupDetail.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartDateTime"))
    InstanceGroupDetail.add_member(:ready_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ReadyDateTime"))
    InstanceGroupDetail.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EndDateTime"))
    InstanceGroupDetail.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "CustomAmiId"))
    InstanceGroupDetail.type = Types::InstanceGroupDetail
    InstanceGroupDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupDetail, name: "member")
    InstanceGroupIdsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "member")
    InstanceGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroup, name: "member")
    InstanceGroupModifyConfig.add_member(:instance_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "InstanceGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceGroupModifyConfig.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstanceCount"))
    InstanceGroupModifyConfig.add_member(:ec2_instance_ids_to_terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceIdsToTerminateList, name: "EC2InstanceIdsToTerminate"))
    InstanceGroupModifyConfig.add_member(:shrink_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ShrinkPolicy, name: "ShrinkPolicy"))
    InstanceGroupModifyConfig.add_member(:reconfiguration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReconfigurationType, name: "ReconfigurationType"))
    InstanceGroupModifyConfig.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "Configurations"))
    InstanceGroupModifyConfig.type = Types::InstanceGroupModifyConfig
    InstanceGroupModifyConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupModifyConfig, name: "member")
    InstanceGroupState.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    InstanceGroupState.add_member(:bootstrapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOTSTRAPPING", traits: {"smithy.api#enumValue" => "BOOTSTRAPPING"}))
    InstanceGroupState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    InstanceGroupState.add_member(:reconfiguring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECONFIGURING", traits: {"smithy.api#enumValue" => "RECONFIGURING"}))
    InstanceGroupState.add_member(:resizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESIZING", traits: {"smithy.api#enumValue" => "RESIZING"}))
    InstanceGroupState.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    InstanceGroupState.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    InstanceGroupState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    InstanceGroupState.add_member(:arrested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARRESTED", traits: {"smithy.api#enumValue" => "ARRESTED"}))
    InstanceGroupState.add_member(:shutting_down, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHUTTING_DOWN", traits: {"smithy.api#enumValue" => "SHUTTING_DOWN"}))
    InstanceGroupState.add_member(:ended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDED", traits: {"smithy.api#enumValue" => "ENDED"}))
    InstanceGroupStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupStateChangeReasonCode, name: "Code"))
    InstanceGroupStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InstanceGroupStateChangeReason.type = Types::InstanceGroupStateChangeReason
    InstanceGroupStateChangeReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    InstanceGroupStateChangeReasonCode.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_ERROR", traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    InstanceGroupStateChangeReasonCode.add_member(:instance_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_FAILURE", traits: {"smithy.api#enumValue" => "INSTANCE_FAILURE"}))
    InstanceGroupStateChangeReasonCode.add_member(:cluster_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_TERMINATED", traits: {"smithy.api#enumValue" => "CLUSTER_TERMINATED"}))
    InstanceGroupStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupState, name: "State"))
    InstanceGroupStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupStateChangeReason, name: "StateChangeReason"))
    InstanceGroupStatus.add_member(:timeline, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupTimeline, name: "Timeline"))
    InstanceGroupStatus.type = Types::InstanceGroupStatus
    InstanceGroupTimeline.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime"))
    InstanceGroupTimeline.add_member(:ready_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ReadyDateTime"))
    InstanceGroupTimeline.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EndDateTime"))
    InstanceGroupTimeline.type = Types::InstanceGroupTimeline
    InstanceGroupType.add_member(:master, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASTER", traits: {"smithy.api#enumValue" => "MASTER"}))
    InstanceGroupType.add_member(:core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CORE", traits: {"smithy.api#enumValue" => "CORE"}))
    InstanceGroupType.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK", traits: {"smithy.api#enumValue" => "TASK"}))
    InstanceGroupTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupType, name: "member")
    InstanceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, name: "member")
    InstanceResizePolicy.add_member(:instances_to_terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceIdsList, name: "InstancesToTerminate"))
    InstanceResizePolicy.add_member(:instances_to_protect, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceIdsList, name: "InstancesToProtect"))
    InstanceResizePolicy.add_member(:instance_termination_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstanceTerminationTimeout"))
    InstanceResizePolicy.type = Types::InstanceResizePolicy
    InstanceRoleType.add_member(:master, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASTER", traits: {"smithy.api#enumValue" => "MASTER"}))
    InstanceRoleType.add_member(:core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CORE", traits: {"smithy.api#enumValue" => "CORE"}))
    InstanceRoleType.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK", traits: {"smithy.api#enumValue" => "TASK"}))
    InstanceState.add_member(:awaiting_fulfillment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWAITING_FULFILLMENT", traits: {"smithy.api#enumValue" => "AWAITING_FULFILLMENT"}))
    InstanceState.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    InstanceState.add_member(:bootstrapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOTSTRAPPING", traits: {"smithy.api#enumValue" => "BOOTSTRAPPING"}))
    InstanceState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    InstanceState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    InstanceStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStateChangeReasonCode, name: "Code"))
    InstanceStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InstanceStateChangeReason.type = Types::InstanceStateChangeReason
    InstanceStateChangeReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    InstanceStateChangeReasonCode.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_ERROR", traits: {"smithy.api#enumValue" => "VALIDATION_ERROR"}))
    InstanceStateChangeReasonCode.add_member(:instance_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_FAILURE", traits: {"smithy.api#enumValue" => "INSTANCE_FAILURE"}))
    InstanceStateChangeReasonCode.add_member(:bootstrap_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOTSTRAP_FAILURE", traits: {"smithy.api#enumValue" => "BOOTSTRAP_FAILURE"}))
    InstanceStateChangeReasonCode.add_member(:cluster_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_TERMINATED", traits: {"smithy.api#enumValue" => "CLUSTER_TERMINATED"}))
    InstanceStateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, name: "member")
    InstanceStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, name: "State"))
    InstanceStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStateChangeReason, name: "StateChangeReason"))
    InstanceStatus.add_member(:timeline, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTimeline, name: "Timeline"))
    InstanceStatus.type = Types::InstanceStatus
    InstanceTimeline.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime"))
    InstanceTimeline.add_member(:ready_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ReadyDateTime"))
    InstanceTimeline.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EndDateTime"))
    InstanceTimeline.type = Types::InstanceTimeline
    InstanceTypeConfig.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "InstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceTypeConfig.add_member(:weighted_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "WeightedCapacity"))
    InstanceTypeConfig.add_member(:bid_price, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "BidPrice"))
    InstanceTypeConfig.add_member(:bid_price_as_percentage_of_on_demand_price, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeDouble, name: "BidPriceAsPercentageOfOnDemandPrice"))
    InstanceTypeConfig.add_member(:ebs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsConfiguration, name: "EbsConfiguration"))
    InstanceTypeConfig.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "Configurations"))
    InstanceTypeConfig.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "CustomAmiId"))
    InstanceTypeConfig.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeDouble, name: "Priority"))
    InstanceTypeConfig.type = Types::InstanceTypeConfig
    InstanceTypeConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeConfig, name: "member")
    InstanceTypeSpecification.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "InstanceType"))
    InstanceTypeSpecification.add_member(:weighted_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "WeightedCapacity"))
    InstanceTypeSpecification.add_member(:bid_price, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "BidPrice"))
    InstanceTypeSpecification.add_member(:bid_price_as_percentage_of_on_demand_price, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeDouble, name: "BidPriceAsPercentageOfOnDemandPrice"))
    InstanceTypeSpecification.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "Configurations"))
    InstanceTypeSpecification.add_member(:ebs_block_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsBlockDeviceList, name: "EbsBlockDevices"))
    InstanceTypeSpecification.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EbsOptimized"))
    InstanceTypeSpecification.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "CustomAmiId"))
    InstanceTypeSpecification.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeDouble, name: "Priority"))
    InstanceTypeSpecification.type = Types::InstanceTypeSpecification
    InstanceTypeSpecificationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeSpecification, name: "member")
    InternalServerError.type = Types::InternalServerError
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    InvalidRequestException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    JobFlowDetail.add_member(:job_flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "JobFlowId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowDetail.add_member(:log_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "LogUri"))
    JobFlowDetail.add_member(:log_encryption_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "LogEncryptionKmsKeyId"))
    JobFlowDetail.add_member(:ami_version, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "AmiVersion"))
    JobFlowDetail.add_member(:execution_status_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: JobFlowExecutionStatusDetail, name: "ExecutionStatusDetail", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowDetail.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: JobFlowInstancesDetail, name: "Instances", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowDetail.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: StepDetailList, name: "Steps"))
    JobFlowDetail.add_member(:bootstrap_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: BootstrapActionDetailList, name: "BootstrapActions"))
    JobFlowDetail.add_member(:supported_products, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedProductsList, name: "SupportedProducts"))
    JobFlowDetail.add_member(:visible_to_all_users, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "VisibleToAllUsers"))
    JobFlowDetail.add_member(:job_flow_role, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "JobFlowRole"))
    JobFlowDetail.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ServiceRole"))
    JobFlowDetail.add_member(:auto_scaling_role, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "AutoScalingRole"))
    JobFlowDetail.add_member(:scale_down_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleDownBehavior, name: "ScaleDownBehavior"))
    JobFlowDetail.type = Types::JobFlowDetail
    JobFlowDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobFlowDetail, name: "member")
    JobFlowExecutionState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    JobFlowExecutionState.add_member(:bootstrapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOTSTRAPPING", traits: {"smithy.api#enumValue" => "BOOTSTRAPPING"}))
    JobFlowExecutionState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobFlowExecutionState.add_member(:waiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAITING", traits: {"smithy.api#enumValue" => "WAITING"}))
    JobFlowExecutionState.add_member(:shutting_down, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHUTTING_DOWN", traits: {"smithy.api#enumValue" => "SHUTTING_DOWN"}))
    JobFlowExecutionState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    JobFlowExecutionState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobFlowExecutionState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobFlowExecutionStateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobFlowExecutionState, name: "member")
    JobFlowExecutionStatusDetail.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JobFlowExecutionState, name: "State", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowExecutionStatusDetail.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowExecutionStatusDetail.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartDateTime"))
    JobFlowExecutionStatusDetail.add_member(:ready_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ReadyDateTime"))
    JobFlowExecutionStatusDetail.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EndDateTime"))
    JobFlowExecutionStatusDetail.add_member(:last_state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "LastStateChangeReason"))
    JobFlowExecutionStatusDetail.type = Types::JobFlowExecutionStatusDetail
    JobFlowInstancesConfig.add_member(:master_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "MasterInstanceType"))
    JobFlowInstancesConfig.add_member(:slave_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "SlaveInstanceType"))
    JobFlowInstancesConfig.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstanceCount"))
    JobFlowInstancesConfig.add_member(:instance_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupConfigList, name: "InstanceGroups"))
    JobFlowInstancesConfig.add_member(:instance_fleets, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetConfigList, name: "InstanceFleets"))
    JobFlowInstancesConfig.add_member(:ec2_key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Ec2KeyName"))
    JobFlowInstancesConfig.add_member(:placement, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementType, name: "Placement"))
    JobFlowInstancesConfig.add_member(:keep_job_flow_alive_when_no_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KeepJobFlowAliveWhenNoSteps"))
    JobFlowInstancesConfig.add_member(:termination_protected, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "TerminationProtected"))
    JobFlowInstancesConfig.add_member(:unhealthy_node_replacement, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "UnhealthyNodeReplacement"))
    JobFlowInstancesConfig.add_member(:hadoop_version, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "HadoopVersion"))
    JobFlowInstancesConfig.add_member(:ec2_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Ec2SubnetId"))
    JobFlowInstancesConfig.add_member(:ec2_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256List, name: "Ec2SubnetIds"))
    JobFlowInstancesConfig.add_member(:emr_managed_master_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "EmrManagedMasterSecurityGroup"))
    JobFlowInstancesConfig.add_member(:emr_managed_slave_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "EmrManagedSlaveSecurityGroup"))
    JobFlowInstancesConfig.add_member(:service_access_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "ServiceAccessSecurityGroup"))
    JobFlowInstancesConfig.add_member(:additional_master_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupsList, name: "AdditionalMasterSecurityGroups"))
    JobFlowInstancesConfig.add_member(:additional_slave_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupsList, name: "AdditionalSlaveSecurityGroups"))
    JobFlowInstancesConfig.type = Types::JobFlowInstancesConfig
    JobFlowInstancesDetail.add_member(:master_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "MasterInstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowInstancesDetail.add_member(:master_public_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "MasterPublicDnsName"))
    JobFlowInstancesDetail.add_member(:master_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "MasterInstanceId"))
    JobFlowInstancesDetail.add_member(:slave_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "SlaveInstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowInstancesDetail.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InstanceCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    JobFlowInstancesDetail.add_member(:instance_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupDetailList, name: "InstanceGroups"))
    JobFlowInstancesDetail.add_member(:normalized_instance_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NormalizedInstanceHours"))
    JobFlowInstancesDetail.add_member(:ec2_key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Ec2KeyName"))
    JobFlowInstancesDetail.add_member(:ec2_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Ec2SubnetId"))
    JobFlowInstancesDetail.add_member(:placement, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementType, name: "Placement"))
    JobFlowInstancesDetail.add_member(:keep_job_flow_alive_when_no_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KeepJobFlowAliveWhenNoSteps"))
    JobFlowInstancesDetail.add_member(:termination_protected, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "TerminationProtected"))
    JobFlowInstancesDetail.add_member(:unhealthy_node_replacement, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "UnhealthyNodeReplacement"))
    JobFlowInstancesDetail.add_member(:hadoop_version, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "HadoopVersion"))
    JobFlowInstancesDetail.type = Types::JobFlowInstancesDetail
    KerberosAttributes.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Realm", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    KerberosAttributes.add_member(:kdc_admin_password, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "KdcAdminPassword", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    KerberosAttributes.add_member(:cross_realm_trust_principal_password, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "CrossRealmTrustPrincipalPassword"))
    KerberosAttributes.add_member(:ad_domain_join_user, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "ADDomainJoinUser"))
    KerberosAttributes.add_member(:ad_domain_join_password, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "ADDomainJoinPassword"))
    KerberosAttributes.type = Types::KerberosAttributes
    KeyValue.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Key"))
    KeyValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Value"))
    KeyValue.type = Types::KeyValue
    KeyValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValue, name: "member")
    ListBootstrapActionsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListBootstrapActionsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListBootstrapActionsInput.type = Types::ListBootstrapActionsInput
    ListBootstrapActionsOutput.add_member(:bootstrap_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandList, name: "BootstrapActions"))
    ListBootstrapActionsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListBootstrapActionsOutput.type = Types::ListBootstrapActionsOutput
    ListClustersInput.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedAfter"))
    ListClustersInput.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreatedBefore"))
    ListClustersInput.add_member(:cluster_states, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStateList, name: "ClusterStates"))
    ListClustersInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListClustersInput.type = Types::ListClustersInput
    ListClustersOutput.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSummaryList, name: "Clusters"))
    ListClustersOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListClustersOutput.type = Types::ListClustersOutput
    ListInstanceFleetsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListInstanceFleetsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListInstanceFleetsInput.type = Types::ListInstanceFleetsInput
    ListInstanceFleetsOutput.add_member(:instance_fleets, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetList, name: "InstanceFleets"))
    ListInstanceFleetsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListInstanceFleetsOutput.type = Types::ListInstanceFleetsOutput
    ListInstanceGroupsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListInstanceGroupsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListInstanceGroupsInput.type = Types::ListInstanceGroupsInput
    ListInstanceGroupsOutput.add_member(:instance_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupList, name: "InstanceGroups"))
    ListInstanceGroupsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListInstanceGroupsOutput.type = Types::ListInstanceGroupsOutput
    ListInstancesInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListInstancesInput.add_member(:instance_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupId, name: "InstanceGroupId"))
    ListInstancesInput.add_member(:instance_group_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupTypeList, name: "InstanceGroupTypes"))
    ListInstancesInput.add_member(:instance_fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetId, name: "InstanceFleetId"))
    ListInstancesInput.add_member(:instance_fleet_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetType, name: "InstanceFleetType"))
    ListInstancesInput.add_member(:instance_states, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStateList, name: "InstanceStates"))
    ListInstancesInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListInstancesInput.type = Types::ListInstancesInput
    ListInstancesOutput.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceList, name: "Instances"))
    ListInstancesOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListInstancesOutput.type = Types::ListInstancesOutput
    ListNotebookExecutionsInput.add_member(:editor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "EditorId"))
    ListNotebookExecutionsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookExecutionStatus, name: "Status"))
    ListNotebookExecutionsInput.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "From"))
    ListNotebookExecutionsInput.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "To"))
    ListNotebookExecutionsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListNotebookExecutionsInput.add_member(:execution_engine_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ExecutionEngineId"))
    ListNotebookExecutionsInput.type = Types::ListNotebookExecutionsInput
    ListNotebookExecutionsOutput.add_member(:notebook_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookExecutionSummaryList, name: "NotebookExecutions"))
    ListNotebookExecutionsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListNotebookExecutionsOutput.type = Types::ListNotebookExecutionsOutput
    ListReleaseLabelsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseLabelFilter, name: "Filters"))
    ListReleaseLabelsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListReleaseLabelsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsNumber, name: "MaxResults"))
    ListReleaseLabelsInput.type = Types::ListReleaseLabelsInput
    ListReleaseLabelsOutput.add_member(:release_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ReleaseLabels"))
    ListReleaseLabelsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListReleaseLabelsOutput.type = Types::ListReleaseLabelsOutput
    ListSecurityConfigurationsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListSecurityConfigurationsInput.type = Types::ListSecurityConfigurationsInput
    ListSecurityConfigurationsOutput.add_member(:security_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigurationList, name: "SecurityConfigurations"))
    ListSecurityConfigurationsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListSecurityConfigurationsOutput.type = Types::ListSecurityConfigurationsOutput
    ListStepsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListStepsInput.add_member(:step_states, ::Smithy::Schema::Shapes::MemberShape.new(target: StepStateList, name: "StepStates"))
    ListStepsInput.add_member(:step_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringList, name: "StepIds"))
    ListStepsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListStepsInput.type = Types::ListStepsInput
    ListStepsOutput.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: StepSummaryList, name: "Steps"))
    ListStepsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListStepsOutput.type = Types::ListStepsOutput
    ListStudioSessionMappingsInput.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId"))
    ListStudioSessionMappingsInput.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType"))
    ListStudioSessionMappingsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListStudioSessionMappingsInput.type = Types::ListStudioSessionMappingsInput
    ListStudioSessionMappingsOutput.add_member(:session_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionMappingSummaryList, name: "SessionMappings"))
    ListStudioSessionMappingsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListStudioSessionMappingsOutput.type = Types::ListStudioSessionMappingsOutput
    ListStudiosInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListStudiosInput.type = Types::ListStudiosInput
    ListStudiosOutput.add_member(:studios, ::Smithy::Schema::Shapes::MemberShape.new(target: StudioSummaryList, name: "Studios"))
    ListStudiosOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListStudiosOutput.type = Types::ListStudiosOutput
    ListSupportedInstanceTypesInput.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReleaseLabel", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListSupportedInstanceTypesInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListSupportedInstanceTypesInput.type = Types::ListSupportedInstanceTypesInput
    ListSupportedInstanceTypesOutput.add_member(:supported_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedInstanceTypesList, name: "SupportedInstanceTypes"))
    ListSupportedInstanceTypesOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListSupportedInstanceTypesOutput.type = Types::ListSupportedInstanceTypesOutput
    ManagedScalingPolicy.add_member(:compute_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeLimits, name: "ComputeLimits"))
    ManagedScalingPolicy.add_member(:utilization_performance_index, ::Smithy::Schema::Shapes::MemberShape.new(target: UtilizationPerformanceIndexInteger, name: "UtilizationPerformanceIndex"))
    ManagedScalingPolicy.add_member(:scaling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingStrategy, name: "ScalingStrategy"))
    ManagedScalingPolicy.type = Types::ManagedScalingPolicy
    MarketType.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    MarketType.add_member(:spot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT", traits: {"smithy.api#enumValue" => "SPOT"}))
    MetricDimension.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    MetricDimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    MetricDimension.type = Types::MetricDimension
    MetricDimensionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimension, name: "member")
    ModifyClusterInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterInput.add_member(:step_concurrency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StepConcurrencyLevel"))
    ModifyClusterInput.add_member(:extended_support, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "ExtendedSupport"))
    ModifyClusterInput.type = Types::ModifyClusterInput
    ModifyClusterOutput.add_member(:step_concurrency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StepConcurrencyLevel"))
    ModifyClusterOutput.add_member(:extended_support, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "ExtendedSupport"))
    ModifyClusterOutput.type = Types::ModifyClusterOutput
    ModifyInstanceFleetInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyInstanceFleetInput.add_member(:instance_fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceFleetModifyConfig, name: "InstanceFleet", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyInstanceFleetInput.type = Types::ModifyInstanceFleetInput
    ModifyInstanceGroupsInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId"))
    ModifyInstanceGroupsInput.add_member(:instance_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupModifyConfigList, name: "InstanceGroups"))
    ModifyInstanceGroupsInput.type = Types::ModifyInstanceGroupsInput
    NewSupportedProductsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedProductConfig, name: "member")
    NotebookExecution.add_member(:notebook_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "NotebookExecutionId"))
    NotebookExecution.add_member(:editor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "EditorId"))
    NotebookExecution.add_member(:execution_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionEngineConfig, name: "ExecutionEngine"))
    NotebookExecution.add_member(:notebook_execution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "NotebookExecutionName"))
    NotebookExecution.add_member(:notebook_params, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NotebookParams"))
    NotebookExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookExecutionStatus, name: "Status"))
    NotebookExecution.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartTime"))
    NotebookExecution.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EndTime"))
    NotebookExecution.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Arn"))
    NotebookExecution.add_member(:output_notebook_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "OutputNotebookURI"))
    NotebookExecution.add_member(:last_state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "LastStateChangeReason"))
    NotebookExecution.add_member(:notebook_instance_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "NotebookInstanceSecurityGroupId"))
    NotebookExecution.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    NotebookExecution.add_member(:notebook_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookS3LocationForOutput, name: "NotebookS3Location"))
    NotebookExecution.add_member(:output_notebook_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputNotebookS3LocationForOutput, name: "OutputNotebookS3Location"))
    NotebookExecution.add_member(:output_notebook_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputNotebookFormat, name: "OutputNotebookFormat"))
    NotebookExecution.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariablesMap, name: "EnvironmentVariables"))
    NotebookExecution.type = Types::NotebookExecution
    NotebookExecutionStatus.add_member(:start_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_PENDING", traits: {"smithy.api#enumValue" => "START_PENDING"}))
    NotebookExecutionStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    NotebookExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    NotebookExecutionStatus.add_member(:finishing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINISHING", traits: {"smithy.api#enumValue" => "FINISHING"}))
    NotebookExecutionStatus.add_member(:finished, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINISHED", traits: {"smithy.api#enumValue" => "FINISHED"}))
    NotebookExecutionStatus.add_member(:failing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILING", traits: {"smithy.api#enumValue" => "FAILING"}))
    NotebookExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    NotebookExecutionStatus.add_member(:stop_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_PENDING", traits: {"smithy.api#enumValue" => "STOP_PENDING"}))
    NotebookExecutionStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    NotebookExecutionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    NotebookExecutionSummary.add_member(:notebook_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "NotebookExecutionId"))
    NotebookExecutionSummary.add_member(:editor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "EditorId"))
    NotebookExecutionSummary.add_member(:notebook_execution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "NotebookExecutionName"))
    NotebookExecutionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookExecutionStatus, name: "Status"))
    NotebookExecutionSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartTime"))
    NotebookExecutionSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EndTime"))
    NotebookExecutionSummary.add_member(:notebook_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookS3LocationForOutput, name: "NotebookS3Location"))
    NotebookExecutionSummary.add_member(:execution_engine_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ExecutionEngineId"))
    NotebookExecutionSummary.type = Types::NotebookExecutionSummary
    NotebookExecutionSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookExecutionSummary, name: "member")
    NotebookS3LocationForOutput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Bucket"))
    NotebookS3LocationForOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: UriString, name: "Key"))
    NotebookS3LocationForOutput.type = Types::NotebookS3LocationForOutput
    NotebookS3LocationFromInput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Bucket"))
    NotebookS3LocationFromInput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: UriString, name: "Key"))
    NotebookS3LocationFromInput.type = Types::NotebookS3LocationFromInput
    OSRelease.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Label"))
    OSRelease.type = Types::OSRelease
    OSReleaseList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OSRelease, name: "member")
    OnClusterAppUIType.add_member(:spark_history_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SparkHistoryServer", traits: {"smithy.api#enumValue" => "SparkHistoryServer"}))
    OnClusterAppUIType.add_member(:yarn_timeline_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YarnTimelineService", traits: {"smithy.api#enumValue" => "YarnTimelineService"}))
    OnClusterAppUIType.add_member(:tez_ui, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TezUI", traits: {"smithy.api#enumValue" => "TezUI"}))
    OnClusterAppUIType.add_member(:application_master, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ApplicationMaster", traits: {"smithy.api#enumValue" => "ApplicationMaster"}))
    OnClusterAppUIType.add_member(:job_history_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JobHistoryServer", traits: {"smithy.api#enumValue" => "JobHistoryServer"}))
    OnClusterAppUIType.add_member(:resource_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceManager", traits: {"smithy.api#enumValue" => "ResourceManager"}))
    OnDemandCapacityReservationOptions.add_member(:usage_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandCapacityReservationUsageStrategy, name: "UsageStrategy"))
    OnDemandCapacityReservationOptions.add_member(:capacity_reservation_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandCapacityReservationPreference, name: "CapacityReservationPreference"))
    OnDemandCapacityReservationOptions.add_member(:capacity_reservation_resource_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "CapacityReservationResourceGroupArn"))
    OnDemandCapacityReservationOptions.type = Types::OnDemandCapacityReservationOptions
    OnDemandCapacityReservationPreference.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "open"}))
    OnDemandCapacityReservationPreference.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    OnDemandCapacityReservationUsageStrategy.add_member(:use_capacity_reservations_first, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USE_CAPACITY_RESERVATIONS_FIRST", traits: {"smithy.api#enumValue" => "use-capacity-reservations-first"}))
    OnDemandProvisioningAllocationStrategy.add_member(:lowest_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOWEST_PRICE", traits: {"smithy.api#enumValue" => "lowest-price"}))
    OnDemandProvisioningAllocationStrategy.add_member(:prioritized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIORITIZED", traits: {"smithy.api#enumValue" => "prioritized"}))
    OnDemandProvisioningSpecification.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandProvisioningAllocationStrategy, name: "AllocationStrategy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OnDemandProvisioningSpecification.add_member(:capacity_reservation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandCapacityReservationOptions, name: "CapacityReservationOptions"))
    OnDemandProvisioningSpecification.type = Types::OnDemandProvisioningSpecification
    OnDemandResizingSpecification.add_member(:timeout_duration_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "TimeoutDurationMinutes"))
    OnDemandResizingSpecification.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandProvisioningAllocationStrategy, name: "AllocationStrategy"))
    OnDemandResizingSpecification.add_member(:capacity_reservation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandCapacityReservationOptions, name: "CapacityReservationOptions"))
    OnDemandResizingSpecification.type = Types::OnDemandResizingSpecification
    OutputNotebookFormat.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTML", traits: {"smithy.api#enumValue" => "HTML"}))
    OutputNotebookS3LocationForOutput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Bucket"))
    OutputNotebookS3LocationForOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: UriString, name: "Key"))
    OutputNotebookS3LocationForOutput.type = Types::OutputNotebookS3LocationForOutput
    OutputNotebookS3LocationFromInput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Bucket"))
    OutputNotebookS3LocationFromInput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: UriString, name: "Key"))
    OutputNotebookS3LocationFromInput.type = Types::OutputNotebookS3LocationFromInput
    PersistentAppUI.add_member(:persistent_app_ui_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "PersistentAppUIId"))
    PersistentAppUI.add_member(:persistent_app_ui_type_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PersistentAppUITypeList, name: "PersistentAppUITypeList"))
    PersistentAppUI.add_member(:persistent_app_ui_status, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "PersistentAppUIStatus"))
    PersistentAppUI.add_member(:author_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "AuthorId"))
    PersistentAppUI.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    PersistentAppUI.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModifiedTime"))
    PersistentAppUI.add_member(:last_state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "LastStateChangeReason"))
    PersistentAppUI.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    PersistentAppUI.type = Types::PersistentAppUI
    PersistentAppUIType.add_member(:shs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHS", traits: {"smithy.api#enumValue" => "SHS"}))
    PersistentAppUIType.add_member(:tez, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEZ", traits: {"smithy.api#enumValue" => "TEZ"}))
    PersistentAppUIType.add_member(:yts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YTS", traits: {"smithy.api#enumValue" => "YTS"}))
    PersistentAppUITypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PersistentAppUIType, name: "member")
    PlacementGroupConfig.add_member(:instance_role, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRoleType, name: "InstanceRole", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PlacementGroupConfig.add_member(:placement_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementGroupStrategy, name: "PlacementStrategy"))
    PlacementGroupConfig.type = Types::PlacementGroupConfig
    PlacementGroupConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementGroupConfig, name: "member")
    PlacementGroupStrategy.add_member(:spread, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPREAD", traits: {"smithy.api#enumValue" => "SPREAD"}))
    PlacementGroupStrategy.add_member(:partition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTITION", traits: {"smithy.api#enumValue" => "PARTITION"}))
    PlacementGroupStrategy.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER", traits: {"smithy.api#enumValue" => "CLUSTER"}))
    PlacementGroupStrategy.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    PlacementType.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "AvailabilityZone"))
    PlacementType.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256List, name: "AvailabilityZones"))
    PlacementType.type = Types::PlacementType
    PortRange.add_member(:min_range, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "MinRange", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PortRange.add_member(:max_range, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "MaxRange"))
    PortRange.type = Types::PortRange
    PortRanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PortRange, name: "member")
    ProfilerType.add_member(:shs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHS", traits: {"smithy.api#enumValue" => "SHS"}))
    ProfilerType.add_member(:tezui, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEZUI", traits: {"smithy.api#enumValue" => "TEZUI"}))
    ProfilerType.add_member(:yts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YTS", traits: {"smithy.api#enumValue" => "YTS"}))
    PutAutoScalingPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutAutoScalingPolicyInput.add_member(:instance_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupId, name: "InstanceGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutAutoScalingPolicyInput.add_member(:auto_scaling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicy, name: "AutoScalingPolicy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutAutoScalingPolicyInput.type = Types::PutAutoScalingPolicyInput
    PutAutoScalingPolicyOutput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId"))
    PutAutoScalingPolicyOutput.add_member(:instance_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupId, name: "InstanceGroupId"))
    PutAutoScalingPolicyOutput.add_member(:auto_scaling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicyDescription, name: "AutoScalingPolicy"))
    PutAutoScalingPolicyOutput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ClusterArn"))
    PutAutoScalingPolicyOutput.type = Types::PutAutoScalingPolicyOutput
    PutAutoTerminationPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutAutoTerminationPolicyInput.add_member(:auto_termination_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoTerminationPolicy, name: "AutoTerminationPolicy"))
    PutAutoTerminationPolicyInput.type = Types::PutAutoTerminationPolicyInput
    PutAutoTerminationPolicyOutput.type = Types::PutAutoTerminationPolicyOutput
    PutBlockPublicAccessConfigurationInput.add_member(:block_public_access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockPublicAccessConfiguration, name: "BlockPublicAccessConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutBlockPublicAccessConfigurationInput.type = Types::PutBlockPublicAccessConfigurationInput
    PutBlockPublicAccessConfigurationOutput.type = Types::PutBlockPublicAccessConfigurationOutput
    PutManagedScalingPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutManagedScalingPolicyInput.add_member(:managed_scaling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingPolicy, name: "ManagedScalingPolicy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutManagedScalingPolicyInput.type = Types::PutManagedScalingPolicyInput
    PutManagedScalingPolicyOutput.type = Types::PutManagedScalingPolicyOutput
    ReconfigurationType.add_member(:overwrite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERWRITE", traits: {"smithy.api#enumValue" => "OVERWRITE"}))
    ReconfigurationType.add_member(:merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGE", traits: {"smithy.api#enumValue" => "MERGE"}))
    ReleaseLabelFilter.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Prefix"))
    ReleaseLabelFilter.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Application"))
    ReleaseLabelFilter.type = Types::ReleaseLabelFilter
    RemoveAutoScalingPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveAutoScalingPolicyInput.add_member(:instance_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGroupId, name: "InstanceGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveAutoScalingPolicyInput.type = Types::RemoveAutoScalingPolicyInput
    RemoveAutoScalingPolicyOutput.type = Types::RemoveAutoScalingPolicyOutput
    RemoveAutoTerminationPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveAutoTerminationPolicyInput.type = Types::RemoveAutoTerminationPolicyInput
    RemoveAutoTerminationPolicyOutput.type = Types::RemoveAutoTerminationPolicyOutput
    RemoveManagedScalingPolicyInput.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "ClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveManagedScalingPolicyInput.type = Types::RemoveManagedScalingPolicyInput
    RemoveManagedScalingPolicyOutput.type = Types::RemoveManagedScalingPolicyOutput
    RemoveTagsInput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsInput.type = Types::RemoveTagsInput
    RemoveTagsOutput.type = Types::RemoveTagsOutput
    RepoUpgradeOnBoot.add_member(:security, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY", traits: {"smithy.api#enumValue" => "SECURITY"}))
    RepoUpgradeOnBoot.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    RunJobFlowInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RunJobFlowInput.add_member(:log_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "LogUri"))
    RunJobFlowInput.add_member(:log_encryption_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "LogEncryptionKmsKeyId"))
    RunJobFlowInput.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "AdditionalInfo"))
    RunJobFlowInput.add_member(:ami_version, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "AmiVersion"))
    RunJobFlowInput.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "ReleaseLabel"))
    RunJobFlowInput.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: JobFlowInstancesConfig, name: "Instances", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RunJobFlowInput.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: StepConfigList, name: "Steps"))
    RunJobFlowInput.add_member(:bootstrap_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: BootstrapActionConfigList, name: "BootstrapActions"))
    RunJobFlowInput.add_member(:supported_products, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedProductsList, name: "SupportedProducts"))
    RunJobFlowInput.add_member(:new_supported_products, ::Smithy::Schema::Shapes::MemberShape.new(target: NewSupportedProductsList, name: "NewSupportedProducts"))
    RunJobFlowInput.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationList, name: "Applications"))
    RunJobFlowInput.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "Configurations"))
    RunJobFlowInput.add_member(:visible_to_all_users, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "VisibleToAllUsers"))
    RunJobFlowInput.add_member(:job_flow_role, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "JobFlowRole"))
    RunJobFlowInput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ServiceRole"))
    RunJobFlowInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RunJobFlowInput.add_member(:security_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "SecurityConfiguration"))
    RunJobFlowInput.add_member(:auto_scaling_role, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "AutoScalingRole"))
    RunJobFlowInput.add_member(:scale_down_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleDownBehavior, name: "ScaleDownBehavior"))
    RunJobFlowInput.add_member(:custom_ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "CustomAmiId"))
    RunJobFlowInput.add_member(:ebs_root_volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EbsRootVolumeSize"))
    RunJobFlowInput.add_member(:repo_upgrade_on_boot, ::Smithy::Schema::Shapes::MemberShape.new(target: RepoUpgradeOnBoot, name: "RepoUpgradeOnBoot"))
    RunJobFlowInput.add_member(:kerberos_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosAttributes, name: "KerberosAttributes"))
    RunJobFlowInput.add_member(:step_concurrency_level, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StepConcurrencyLevel"))
    RunJobFlowInput.add_member(:managed_scaling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingPolicy, name: "ManagedScalingPolicy"))
    RunJobFlowInput.add_member(:placement_group_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementGroupConfigList, name: "PlacementGroupConfigs"))
    RunJobFlowInput.add_member(:auto_termination_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoTerminationPolicy, name: "AutoTerminationPolicy"))
    RunJobFlowInput.add_member(:os_release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "OSReleaseLabel"))
    RunJobFlowInput.add_member(:ebs_root_volume_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EbsRootVolumeIops"))
    RunJobFlowInput.add_member(:ebs_root_volume_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EbsRootVolumeThroughput"))
    RunJobFlowInput.add_member(:extended_support, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "ExtendedSupport"))
    RunJobFlowInput.type = Types::RunJobFlowInput
    RunJobFlowOutput.add_member(:job_flow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "JobFlowId"))
    RunJobFlowOutput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "ClusterArn"))
    RunJobFlowOutput.type = Types::RunJobFlowOutput
    ScaleDownBehavior.add_member(:terminate_at_instance_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE_AT_INSTANCE_HOUR", traits: {"smithy.api#enumValue" => "TERMINATE_AT_INSTANCE_HOUR"}))
    ScaleDownBehavior.add_member(:terminate_at_task_completion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE_AT_TASK_COMPLETION", traits: {"smithy.api#enumValue" => "TERMINATE_AT_TASK_COMPLETION"}))
    ScalingAction.add_member(:market, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketType, name: "Market"))
    ScalingAction.add_member(:simple_scaling_policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SimpleScalingPolicyConfiguration, name: "SimpleScalingPolicyConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingAction.type = Types::ScalingAction
    ScalingConstraints.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MinCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingConstraints.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxCapacity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingConstraints.type = Types::ScalingConstraints
    ScalingRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingRule.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ScalingRule.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingAction, name: "Action", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingRule.add_member(:trigger, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingTrigger, name: "Trigger", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingRule.type = Types::ScalingRule
    ScalingRuleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingRule, name: "member")
    ScalingStrategy.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ScalingStrategy.add_member(:advanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADVANCED", traits: {"smithy.api#enumValue" => "ADVANCED"}))
    ScalingTrigger.add_member(:cloud_watch_alarm_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchAlarmDefinition, name: "CloudWatchAlarmDefinition", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScalingTrigger.type = Types::ScalingTrigger
    ScriptBootstrapActionConfig.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Path", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScriptBootstrapActionConfig.add_member(:args, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringList, name: "Args"))
    ScriptBootstrapActionConfig.type = Types::ScriptBootstrapActionConfig
    SecurityConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityConfigurationSummary, name: "member")
    SecurityConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Name"))
    SecurityConfigurationSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime"))
    SecurityConfigurationSummary.type = Types::SecurityConfigurationSummary
    SecurityGroupsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "member")
    SessionMappingDetail.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId"))
    SessionMappingDetail.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdentityId"))
    SessionMappingDetail.add_member(:identity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdentityName"))
    SessionMappingDetail.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType"))
    SessionMappingDetail.add_member(:session_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "SessionPolicyArn"))
    SessionMappingDetail.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    SessionMappingDetail.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModifiedTime"))
    SessionMappingDetail.type = Types::SessionMappingDetail
    SessionMappingSummary.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId"))
    SessionMappingSummary.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdentityId"))
    SessionMappingSummary.add_member(:identity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdentityName"))
    SessionMappingSummary.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType"))
    SessionMappingSummary.add_member(:session_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "SessionPolicyArn"))
    SessionMappingSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    SessionMappingSummary.type = Types::SessionMappingSummary
    SessionMappingSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SessionMappingSummary, name: "member")
    SetKeepJobFlowAliveWhenNoStepsInput.add_member(:job_flow_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringList, name: "JobFlowIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetKeepJobFlowAliveWhenNoStepsInput.add_member(:keep_job_flow_alive_when_no_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KeepJobFlowAliveWhenNoSteps", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetKeepJobFlowAliveWhenNoStepsInput.type = Types::SetKeepJobFlowAliveWhenNoStepsInput
    SetTerminationProtectionInput.add_member(:job_flow_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringList, name: "JobFlowIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetTerminationProtectionInput.add_member(:termination_protected, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "TerminationProtected", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetTerminationProtectionInput.type = Types::SetTerminationProtectionInput
    SetUnhealthyNodeReplacementInput.add_member(:job_flow_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringList, name: "JobFlowIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetUnhealthyNodeReplacementInput.add_member(:unhealthy_node_replacement, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "UnhealthyNodeReplacement", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetUnhealthyNodeReplacementInput.type = Types::SetUnhealthyNodeReplacementInput
    SetVisibleToAllUsersInput.add_member(:job_flow_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringList, name: "JobFlowIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetVisibleToAllUsersInput.add_member(:visible_to_all_users, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "VisibleToAllUsers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SetVisibleToAllUsersInput.type = Types::SetVisibleToAllUsersInput
    ShrinkPolicy.add_member(:decommission_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DecommissionTimeout"))
    ShrinkPolicy.add_member(:instance_resize_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceResizePolicy, name: "InstanceResizePolicy"))
    ShrinkPolicy.type = Types::ShrinkPolicy
    SimpleScalingPolicyConfiguration.add_member(:adjustment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AdjustmentType, name: "AdjustmentType"))
    SimpleScalingPolicyConfiguration.add_member(:scaling_adjustment, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ScalingAdjustment", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SimpleScalingPolicyConfiguration.add_member(:cool_down, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "CoolDown"))
    SimpleScalingPolicyConfiguration.type = Types::SimpleScalingPolicyConfiguration
    SimplifiedApplication.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    SimplifiedApplication.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    SimplifiedApplication.type = Types::SimplifiedApplication
    SimplifiedApplicationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SimplifiedApplication, name: "member")
    SpotProvisioningAllocationStrategy.add_member(:capacity_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_OPTIMIZED", traits: {"smithy.api#enumValue" => "capacity-optimized"}))
    SpotProvisioningAllocationStrategy.add_member(:price_capacity_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICE_CAPACITY_OPTIMIZED", traits: {"smithy.api#enumValue" => "price-capacity-optimized"}))
    SpotProvisioningAllocationStrategy.add_member(:lowest_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOWEST_PRICE", traits: {"smithy.api#enumValue" => "lowest-price"}))
    SpotProvisioningAllocationStrategy.add_member(:diversified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIVERSIFIED", traits: {"smithy.api#enumValue" => "diversified"}))
    SpotProvisioningAllocationStrategy.add_member(:capacity_optimized_prioritized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_OPTIMIZED_PRIORITIZED", traits: {"smithy.api#enumValue" => "capacity-optimized-prioritized"}))
    SpotProvisioningSpecification.add_member(:timeout_duration_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "TimeoutDurationMinutes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SpotProvisioningSpecification.add_member(:timeout_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotProvisioningTimeoutAction, name: "TimeoutAction", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SpotProvisioningSpecification.add_member(:block_duration_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "BlockDurationMinutes"))
    SpotProvisioningSpecification.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotProvisioningAllocationStrategy, name: "AllocationStrategy"))
    SpotProvisioningSpecification.type = Types::SpotProvisioningSpecification
    SpotProvisioningTimeoutAction.add_member(:switch_to_on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SWITCH_TO_ON_DEMAND", traits: {"smithy.api#enumValue" => "SWITCH_TO_ON_DEMAND"}))
    SpotProvisioningTimeoutAction.add_member(:terminate_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE_CLUSTER", traits: {"smithy.api#enumValue" => "TERMINATE_CLUSTER"}))
    SpotResizingSpecification.add_member(:timeout_duration_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, name: "TimeoutDurationMinutes"))
    SpotResizingSpecification.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotProvisioningAllocationStrategy, name: "AllocationStrategy"))
    SpotResizingSpecification.type = Types::SpotResizingSpecification
    StartNotebookExecutionInput.add_member(:editor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "EditorId"))
    StartNotebookExecutionInput.add_member(:relative_path, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "RelativePath"))
    StartNotebookExecutionInput.add_member(:notebook_execution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "NotebookExecutionName"))
    StartNotebookExecutionInput.add_member(:notebook_params, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NotebookParams"))
    StartNotebookExecutionInput.add_member(:execution_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionEngineConfig, name: "ExecutionEngine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartNotebookExecutionInput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ServiceRole", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartNotebookExecutionInput.add_member(:notebook_instance_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "NotebookInstanceSecurityGroupId"))
    StartNotebookExecutionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartNotebookExecutionInput.add_member(:notebook_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: NotebookS3LocationFromInput, name: "NotebookS3Location"))
    StartNotebookExecutionInput.add_member(:output_notebook_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputNotebookS3LocationFromInput, name: "OutputNotebookS3Location"))
    StartNotebookExecutionInput.add_member(:output_notebook_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputNotebookFormat, name: "OutputNotebookFormat"))
    StartNotebookExecutionInput.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariablesMap, name: "EnvironmentVariables"))
    StartNotebookExecutionInput.type = Types::StartNotebookExecutionInput
    StartNotebookExecutionOutput.add_member(:notebook_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "NotebookExecutionId"))
    StartNotebookExecutionOutput.type = Types::StartNotebookExecutionOutput
    Statistic.add_member(:sample_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAMPLE_COUNT", traits: {"smithy.api#enumValue" => "SAMPLE_COUNT"}))
    Statistic.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVERAGE", traits: {"smithy.api#enumValue" => "AVERAGE"}))
    Statistic.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUM", traits: {"smithy.api#enumValue" => "SUM"}))
    Statistic.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINIMUM", traits: {"smithy.api#enumValue" => "MINIMUM"}))
    Statistic.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAXIMUM", traits: {"smithy.api#enumValue" => "MAXIMUM"}))
    Step.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "Id"))
    Step.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    Step.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: HadoopStepConfig, name: "Config"))
    Step.add_member(:action_on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionOnFailure, name: "ActionOnFailure"))
    Step.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepStatus, name: "Status"))
    Step.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalArnType, name: "ExecutionRoleArn"))
    Step.type = Types::Step
    StepCancellationOption.add_member(:send_interrupt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEND_INTERRUPT", traits: {"smithy.api#enumValue" => "SEND_INTERRUPT"}))
    StepCancellationOption.add_member(:terminate_process, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE_PROCESS", traits: {"smithy.api#enumValue" => "TERMINATE_PROCESS"}))
    StepConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepConfig.add_member(:action_on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionOnFailure, name: "ActionOnFailure"))
    StepConfig.add_member(:hadoop_jar_step, ::Smithy::Schema::Shapes::MemberShape.new(target: HadoopJarStepConfig, name: "HadoopJarStep", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepConfig.type = Types::StepConfig
    StepConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepConfig, name: "member")
    StepDetail.add_member(:step_config, ::Smithy::Schema::Shapes::MemberShape.new(target: StepConfig, name: "StepConfig", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepDetail.add_member(:execution_status_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: StepExecutionStatusDetail, name: "ExecutionStatusDetail", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepDetail.type = Types::StepDetail
    StepDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepDetail, name: "member")
    StepExecutionState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    StepExecutionState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    StepExecutionState.add_member(:continue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUE", traits: {"smithy.api#enumValue" => "CONTINUE"}))
    StepExecutionState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    StepExecutionState.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    StepExecutionState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StepExecutionState.add_member(:interrupted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERRUPTED", traits: {"smithy.api#enumValue" => "INTERRUPTED"}))
    StepExecutionStatusDetail.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: StepExecutionState, name: "State", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepExecutionStatusDetail.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StepExecutionStatusDetail.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartDateTime"))
    StepExecutionStatusDetail.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EndDateTime"))
    StepExecutionStatusDetail.add_member(:last_state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "LastStateChangeReason"))
    StepExecutionStatusDetail.type = Types::StepExecutionStatusDetail
    StepIdsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "member")
    StepState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    StepState.add_member(:cancel_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCEL_PENDING", traits: {"smithy.api#enumValue" => "CANCEL_PENDING"}))
    StepState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    StepState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    StepState.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    StepState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StepState.add_member(:interrupted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERRUPTED", traits: {"smithy.api#enumValue" => "INTERRUPTED"}))
    StepStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: StepStateChangeReasonCode, name: "Code"))
    StepStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    StepStateChangeReason.type = Types::StepStateChangeReason
    StepStateChangeReasonCode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    StepStateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepState, name: "member")
    StepStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: StepState, name: "State"))
    StepStatus.add_member(:state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StepStateChangeReason, name: "StateChangeReason"))
    StepStatus.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureDetails, name: "FailureDetails"))
    StepStatus.add_member(:timeline, ::Smithy::Schema::Shapes::MemberShape.new(target: StepTimeline, name: "Timeline"))
    StepStatus.type = Types::StepStatus
    StepSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: StepId, name: "Id"))
    StepSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    StepSummary.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: HadoopStepConfig, name: "Config"))
    StepSummary.add_member(:action_on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionOnFailure, name: "ActionOnFailure"))
    StepSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepStatus, name: "Status"))
    StepSummary.type = Types::StepSummary
    StepSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StepSummary, name: "member")
    StepTimeline.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime"))
    StepTimeline.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartDateTime"))
    StepTimeline.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EndDateTime"))
    StepTimeline.type = Types::StepTimeline
    StopNotebookExecutionInput.add_member(:notebook_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "NotebookExecutionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopNotebookExecutionInput.type = Types::StopNotebookExecutionInput
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    StringMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    StringMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    Studio.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId"))
    Studio.add_member(:studio_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioArn"))
    Studio.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name"))
    Studio.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Description"))
    Studio.add_member(:auth_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthMode, name: "AuthMode"))
    Studio.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "VpcId"))
    Studio.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "SubnetIds"))
    Studio.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ServiceRole"))
    Studio.add_member(:user_role, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "UserRole"))
    Studio.add_member(:workspace_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "WorkspaceSecurityGroupId"))
    Studio.add_member(:engine_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "EngineSecurityGroupId"))
    Studio.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Url"))
    Studio.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    Studio.add_member(:default_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "DefaultS3Location"))
    Studio.add_member(:idp_auth_url, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "IdpAuthUrl"))
    Studio.add_member(:idp_relay_state_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdpRelayStateParameterName"))
    Studio.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Studio.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnType, name: "IdcInstanceArn"))
    Studio.add_member(:trusted_identity_propagation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "TrustedIdentityPropagationEnabled"))
    Studio.add_member(:idc_user_assignment, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcUserAssignment, name: "IdcUserAssignment"))
    Studio.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "EncryptionKeyArn"))
    Studio.type = Types::Studio
    StudioSummary.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId"))
    StudioSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name"))
    StudioSummary.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "VpcId"))
    StudioSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Description"))
    StudioSummary.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Url"))
    StudioSummary.add_member(:auth_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthMode, name: "AuthMode"))
    StudioSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    StudioSummary.type = Types::StudioSummary
    StudioSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StudioSummary, name: "member")
    SubnetIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    SupportedInstanceType.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    SupportedInstanceType.add_member(:memory_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "MemoryGB"))
    SupportedInstanceType.add_member(:storage_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StorageGB"))
    SupportedInstanceType.add_member(:vcpu, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VCPU"))
    SupportedInstanceType.add_member(:is64_bits_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Is64BitsOnly"))
    SupportedInstanceType.add_member(:instance_family_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceFamilyId"))
    SupportedInstanceType.add_member(:ebs_optimized_available, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EbsOptimizedAvailable"))
    SupportedInstanceType.add_member(:ebs_optimized_by_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EbsOptimizedByDefault"))
    SupportedInstanceType.add_member(:number_of_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfDisks"))
    SupportedInstanceType.add_member(:ebs_storage_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EbsStorageOnly"))
    SupportedInstanceType.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Architecture"))
    SupportedInstanceType.type = Types::SupportedInstanceType
    SupportedInstanceTypesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedInstanceType, name: "member")
    SupportedProductConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name"))
    SupportedProductConfig.add_member(:args, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringList, name: "Args"))
    SupportedProductConfig.type = Types::SupportedProductConfig
    SupportedProductsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "member")
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TerminateJobFlowsInput.add_member(:job_flow_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringList, name: "JobFlowIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateJobFlowsInput.type = Types::TerminateJobFlowsInput
    Unit.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Unit.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECONDS", traits: {"smithy.api#enumValue" => "SECONDS"}))
    Unit.add_member(:micro_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MICRO_SECONDS", traits: {"smithy.api#enumValue" => "MICRO_SECONDS"}))
    Unit.add_member(:milli_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MILLI_SECONDS", traits: {"smithy.api#enumValue" => "MILLI_SECONDS"}))
    Unit.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTES", traits: {"smithy.api#enumValue" => "BYTES"}))
    Unit.add_member(:kilo_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILO_BYTES", traits: {"smithy.api#enumValue" => "KILO_BYTES"}))
    Unit.add_member(:mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGA_BYTES", traits: {"smithy.api#enumValue" => "MEGA_BYTES"}))
    Unit.add_member(:giga_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGA_BYTES", traits: {"smithy.api#enumValue" => "GIGA_BYTES"}))
    Unit.add_member(:tera_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERA_BYTES", traits: {"smithy.api#enumValue" => "TERA_BYTES"}))
    Unit.add_member(:bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITS", traits: {"smithy.api#enumValue" => "BITS"}))
    Unit.add_member(:kilo_bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILO_BITS", traits: {"smithy.api#enumValue" => "KILO_BITS"}))
    Unit.add_member(:mega_bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGA_BITS", traits: {"smithy.api#enumValue" => "MEGA_BITS"}))
    Unit.add_member(:giga_bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGA_BITS", traits: {"smithy.api#enumValue" => "GIGA_BITS"}))
    Unit.add_member(:tera_bits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERA_BITS", traits: {"smithy.api#enumValue" => "TERA_BITS"}))
    Unit.add_member(:percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERCENT", traits: {"smithy.api#enumValue" => "PERCENT"}))
    Unit.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    Unit.add_member(:bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "BYTES_PER_SECOND"}))
    Unit.add_member(:kilo_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILO_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "KILO_BYTES_PER_SECOND"}))
    Unit.add_member(:mega_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGA_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "MEGA_BYTES_PER_SECOND"}))
    Unit.add_member(:giga_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGA_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "GIGA_BYTES_PER_SECOND"}))
    Unit.add_member(:tera_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERA_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "TERA_BYTES_PER_SECOND"}))
    Unit.add_member(:bits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITS_PER_SECOND", traits: {"smithy.api#enumValue" => "BITS_PER_SECOND"}))
    Unit.add_member(:kilo_bits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILO_BITS_PER_SECOND", traits: {"smithy.api#enumValue" => "KILO_BITS_PER_SECOND"}))
    Unit.add_member(:mega_bits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEGA_BITS_PER_SECOND", traits: {"smithy.api#enumValue" => "MEGA_BITS_PER_SECOND"}))
    Unit.add_member(:giga_bits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIGA_BITS_PER_SECOND", traits: {"smithy.api#enumValue" => "GIGA_BITS_PER_SECOND"}))
    Unit.add_member(:tera_bits_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERA_BITS_PER_SECOND", traits: {"smithy.api#enumValue" => "TERA_BITS_PER_SECOND"}))
    Unit.add_member(:count_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT_PER_SECOND", traits: {"smithy.api#enumValue" => "COUNT_PER_SECOND"}))
    UpdateStudioInput.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStudioInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Name"))
    UpdateStudioInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Description"))
    UpdateStudioInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "SubnetIds"))
    UpdateStudioInput.add_member(:default_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "DefaultS3Location"))
    UpdateStudioInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "EncryptionKeyArn"))
    UpdateStudioInput.type = Types::UpdateStudioInput
    UpdateStudioSessionMappingInput.add_member(:studio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "StudioId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStudioSessionMappingInput.add_member(:identity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdentityId"))
    UpdateStudioSessionMappingInput.add_member(:identity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "IdentityName"))
    UpdateStudioSessionMappingInput.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStudioSessionMappingInput.add_member(:session_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "SessionPolicyArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStudioSessionMappingInput.type = Types::UpdateStudioSessionMappingInput
    UsernamePassword.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Username"))
    UsernamePassword.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "Password"))
    UsernamePassword.type = Types::UsernamePassword
    VolumeSpecification.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VolumeType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VolumeSpecification.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Iops"))
    VolumeSpecification.add_member(:size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SizeInGB", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    VolumeSpecification.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputVal, name: "Throughput"))
    VolumeSpecification.type = Types::VolumeSpecification
    XmlStringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "member")
    XmlStringMaxLen256List.member = ::Smithy::Schema::Shapes::MemberShape.new(target: XmlStringMaxLen256, name: "member")

    ElasticMapReduce = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.emr#ElasticMapReduce"
      service.name = "ElasticMapReduce"
      service.version = "2009-03-31"
      service.traits = {"aws.api#service" => {"sdkId" => "EMR", "arnNamespace" => "elasticmapreduce", "cloudFormationName" => "EMR", "cloudTrailEventSource" => "elasticmapreduce.amazonaws.com", "docId" => "elasticmapreduce-2009-03-31", "endpointPrefix" => "elasticmapreduce"}, "aws.auth#sigv4" => {"name" => "elasticmapreduce"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon EMR", "smithy.api#xmlNamespace" => {"uri" => "http://elasticmapreduce.amazonaws.com/doc/2009-03-31"}}
      service.add_operation(:add_instance_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#AddInstanceFleet"
        operation.name = "AddInstanceFleet"
        operation.input = AddInstanceFleetInput
        operation.output = AddInstanceFleetOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:add_instance_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#AddInstanceGroups"
        operation.name = "AddInstanceGroups"
        operation.input = AddInstanceGroupsInput
        operation.output = AddInstanceGroupsOutput
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:add_job_flow_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#AddJobFlowSteps"
        operation.name = "AddJobFlowSteps"
        operation.input = AddJobFlowStepsInput
        operation.output = AddJobFlowStepsOutput
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:add_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#AddTags"
        operation.name = "AddTags"
        operation.input = AddTagsInput
        operation.output = AddTagsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:cancel_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#CancelSteps"
        operation.name = "CancelSteps"
        operation.input = CancelStepsInput
        operation.output = CancelStepsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_persistent_app_ui, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#CreatePersistentAppUI"
        operation.name = "CreatePersistentAppUI"
        operation.input = CreatePersistentAppUIInput
        operation.output = CreatePersistentAppUIOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_security_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#CreateSecurityConfiguration"
        operation.name = "CreateSecurityConfiguration"
        operation.input = CreateSecurityConfigurationInput
        operation.output = CreateSecurityConfigurationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_studio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#CreateStudio"
        operation.name = "CreateStudio"
        operation.input = CreateStudioInput
        operation.output = CreateStudioOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_studio_session_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#CreateStudioSessionMapping"
        operation.name = "CreateStudioSessionMapping"
        operation.input = CreateStudioSessionMappingInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_security_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DeleteSecurityConfiguration"
        operation.name = "DeleteSecurityConfiguration"
        operation.input = DeleteSecurityConfigurationInput
        operation.output = DeleteSecurityConfigurationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_studio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DeleteStudio"
        operation.name = "DeleteStudio"
        operation.input = DeleteStudioInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_studio_session_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DeleteStudioSessionMapping"
        operation.name = "DeleteStudioSessionMapping"
        operation.input = DeleteStudioSessionMappingInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeCluster"
        operation.name = "DescribeCluster"
        operation.input = DescribeClusterInput
        operation.output = DescribeClusterOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeClusterFailure", "params" => {"ClusterId" => "fake_cluster"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:describe_job_flows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeJobFlows"
        operation.name = "DescribeJobFlows"
        operation.input = DescribeJobFlowsInput
        operation.output = DescribeJobFlowsOutput
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#deprecated" => {}}
      end)
      service.add_operation(:describe_notebook_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeNotebookExecution"
        operation.name = "DescribeNotebookExecution"
        operation.input = DescribeNotebookExecutionInput
        operation.output = DescribeNotebookExecutionOutput
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_persistent_app_ui, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribePersistentAppUI"
        operation.name = "DescribePersistentAppUI"
        operation.input = DescribePersistentAppUIInput
        operation.output = DescribePersistentAppUIOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_release_label, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeReleaseLabel"
        operation.name = "DescribeReleaseLabel"
        operation.input = DescribeReleaseLabelInput
        operation.output = DescribeReleaseLabelOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_security_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeSecurityConfiguration"
        operation.name = "DescribeSecurityConfiguration"
        operation.input = DescribeSecurityConfigurationInput
        operation.output = DescribeSecurityConfigurationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeStep"
        operation.name = "DescribeStep"
        operation.input = DescribeStepInput
        operation.output = DescribeStepOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_studio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#DescribeStudio"
        operation.name = "DescribeStudio"
        operation.input = DescribeStudioInput
        operation.output = DescribeStudioOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:get_auto_termination_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetAutoTerminationPolicy"
        operation.name = "GetAutoTerminationPolicy"
        operation.input = GetAutoTerminationPolicyInput
        operation.output = GetAutoTerminationPolicyOutput
        operation.traits = {}
      end)
      service.add_operation(:get_block_public_access_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetBlockPublicAccessConfiguration"
        operation.name = "GetBlockPublicAccessConfiguration"
        operation.input = GetBlockPublicAccessConfigurationInput
        operation.output = GetBlockPublicAccessConfigurationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:get_cluster_session_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetClusterSessionCredentials"
        operation.name = "GetClusterSessionCredentials"
        operation.input = GetClusterSessionCredentialsInput
        operation.output = GetClusterSessionCredentialsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:get_managed_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetManagedScalingPolicy"
        operation.name = "GetManagedScalingPolicy"
        operation.input = GetManagedScalingPolicyInput
        operation.output = GetManagedScalingPolicyOutput
        operation.traits = {}
      end)
      service.add_operation(:get_on_cluster_app_ui_presigned_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetOnClusterAppUIPresignedURL"
        operation.name = "GetOnClusterAppUIPresignedURL"
        operation.input = GetOnClusterAppUIPresignedURLInput
        operation.output = GetOnClusterAppUIPresignedURLOutput
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:get_persistent_app_ui_presigned_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetPersistentAppUIPresignedURL"
        operation.name = "GetPersistentAppUIPresignedURL"
        operation.input = GetPersistentAppUIPresignedURLInput
        operation.output = GetPersistentAppUIPresignedURLOutput
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:get_studio_session_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#GetStudioSessionMapping"
        operation.name = "GetStudioSessionMapping"
        operation.input = GetStudioSessionMappingInput
        operation.output = GetStudioSessionMappingOutput
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:list_bootstrap_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListBootstrapActions"
        operation.name = "ListBootstrapActions"
        operation.input = ListBootstrapActionsInput
        operation.output = ListBootstrapActionsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListBootstrapActions.new
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListClusters"
        operation.name = "ListClusters"
        operation.input = ListClustersInput
        operation.output = ListClustersOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListClustersSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_instance_fleets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListInstanceFleets"
        operation.name = "ListInstanceFleets"
        operation.input = ListInstanceFleetsInput
        operation.output = ListInstanceFleetsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListInstanceFleets.new
      end)
      service.add_operation(:list_instance_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListInstanceGroups"
        operation.name = "ListInstanceGroups"
        operation.input = ListInstanceGroupsInput
        operation.output = ListInstanceGroupsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListInstanceGroups.new
      end)
      service.add_operation(:list_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListInstances"
        operation.name = "ListInstances"
        operation.input = ListInstancesInput
        operation.output = ListInstancesOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListInstances.new
      end)
      service.add_operation(:list_notebook_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListNotebookExecutions"
        operation.name = "ListNotebookExecutions"
        operation.input = ListNotebookExecutionsInput
        operation.output = ListNotebookExecutionsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListNotebookExecutions.new
      end)
      service.add_operation(:list_release_labels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListReleaseLabels"
        operation.name = "ListReleaseLabels"
        operation.input = ListReleaseLabelsInput
        operation.output = ListReleaseLabelsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListReleaseLabels.new
      end)
      service.add_operation(:list_security_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListSecurityConfigurations"
        operation.name = "ListSecurityConfigurations"
        operation.input = ListSecurityConfigurationsInput
        operation.output = ListSecurityConfigurationsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSecurityConfigurations.new
      end)
      service.add_operation(:list_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListSteps"
        operation.name = "ListSteps"
        operation.input = ListStepsInput
        operation.output = ListStepsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSteps.new
      end)
      service.add_operation(:list_studio_session_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListStudioSessionMappings"
        operation.name = "ListStudioSessionMappings"
        operation.input = ListStudioSessionMappingsInput
        operation.output = ListStudioSessionMappingsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListStudioSessionMappings.new
      end)
      service.add_operation(:list_studios, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListStudios"
        operation.name = "ListStudios"
        operation.input = ListStudiosInput
        operation.output = ListStudiosOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListStudios.new
      end)
      service.add_operation(:list_supported_instance_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ListSupportedInstanceTypes"
        operation.name = "ListSupportedInstanceTypes"
        operation.input = ListSupportedInstanceTypesInput
        operation.output = ListSupportedInstanceTypesOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSupportedInstanceTypes.new
      end)
      service.add_operation(:modify_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ModifyCluster"
        operation.name = "ModifyCluster"
        operation.input = ModifyClusterInput
        operation.output = ModifyClusterOutput
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:modify_instance_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ModifyInstanceFleet"
        operation.name = "ModifyInstanceFleet"
        operation.input = ModifyInstanceFleetInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:modify_instance_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#ModifyInstanceGroups"
        operation.name = "ModifyInstanceGroups"
        operation.input = ModifyInstanceGroupsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:put_auto_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#PutAutoScalingPolicy"
        operation.name = "PutAutoScalingPolicy"
        operation.input = PutAutoScalingPolicyInput
        operation.output = PutAutoScalingPolicyOutput
        operation.traits = {}
      end)
      service.add_operation(:put_auto_termination_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#PutAutoTerminationPolicy"
        operation.name = "PutAutoTerminationPolicy"
        operation.input = PutAutoTerminationPolicyInput
        operation.output = PutAutoTerminationPolicyOutput
        operation.traits = {}
      end)
      service.add_operation(:put_block_public_access_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#PutBlockPublicAccessConfiguration"
        operation.name = "PutBlockPublicAccessConfiguration"
        operation.input = PutBlockPublicAccessConfigurationInput
        operation.output = PutBlockPublicAccessConfigurationOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:put_managed_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#PutManagedScalingPolicy"
        operation.name = "PutManagedScalingPolicy"
        operation.input = PutManagedScalingPolicyInput
        operation.output = PutManagedScalingPolicyOutput
        operation.traits = {}
      end)
      service.add_operation(:remove_auto_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#RemoveAutoScalingPolicy"
        operation.name = "RemoveAutoScalingPolicy"
        operation.input = RemoveAutoScalingPolicyInput
        operation.output = RemoveAutoScalingPolicyOutput
        operation.traits = {}
      end)
      service.add_operation(:remove_auto_termination_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#RemoveAutoTerminationPolicy"
        operation.name = "RemoveAutoTerminationPolicy"
        operation.input = RemoveAutoTerminationPolicyInput
        operation.output = RemoveAutoTerminationPolicyOutput
        operation.traits = {}
      end)
      service.add_operation(:remove_managed_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#RemoveManagedScalingPolicy"
        operation.name = "RemoveManagedScalingPolicy"
        operation.input = RemoveManagedScalingPolicyInput
        operation.output = RemoveManagedScalingPolicyOutput
        operation.traits = {}
      end)
      service.add_operation(:remove_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#RemoveTags"
        operation.name = "RemoveTags"
        operation.input = RemoveTagsInput
        operation.output = RemoveTagsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:run_job_flow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#RunJobFlow"
        operation.name = "RunJobFlow"
        operation.input = RunJobFlowInput
        operation.output = RunJobFlowOutput
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:set_keep_job_flow_alive_when_no_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#SetKeepJobFlowAliveWhenNoSteps"
        operation.name = "SetKeepJobFlowAliveWhenNoSteps"
        operation.input = SetKeepJobFlowAliveWhenNoStepsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:set_termination_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#SetTerminationProtection"
        operation.name = "SetTerminationProtection"
        operation.input = SetTerminationProtectionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:set_unhealthy_node_replacement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#SetUnhealthyNodeReplacement"
        operation.name = "SetUnhealthyNodeReplacement"
        operation.input = SetUnhealthyNodeReplacementInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:set_visible_to_all_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#SetVisibleToAllUsers"
        operation.name = "SetVisibleToAllUsers"
        operation.input = SetVisibleToAllUsersInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:start_notebook_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#StartNotebookExecution"
        operation.name = "StartNotebookExecution"
        operation.input = StartNotebookExecutionInput
        operation.output = StartNotebookExecutionOutput
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:stop_notebook_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#StopNotebookExecution"
        operation.name = "StopNotebookExecution"
        operation.input = StopNotebookExecutionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:terminate_job_flows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#TerminateJobFlows"
        operation.name = "TerminateJobFlows"
        operation.input = TerminateJobFlowsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:update_studio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#UpdateStudio"
        operation.name = "UpdateStudio"
        operation.input = UpdateStudioInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_studio_session_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emr#UpdateStudioSessionMapping"
        operation.name = "UpdateStudioSessionMapping"
        operation.input = UpdateStudioSessionMappingInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerError
        operation.errors << InvalidRequestException
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
