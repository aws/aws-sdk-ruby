# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module EMR
    # @api private
    module ClientApi

      include Seahorse::Model

      ActionOnFailure = Shapes::StringShape.new(name: 'ActionOnFailure')
      AddInstanceGroupsInput = Shapes::StructureShape.new(name: 'AddInstanceGroupsInput')
      AddInstanceGroupsOutput = Shapes::StructureShape.new(name: 'AddInstanceGroupsOutput')
      AddJobFlowStepsInput = Shapes::StructureShape.new(name: 'AddJobFlowStepsInput')
      AddJobFlowStepsOutput = Shapes::StructureShape.new(name: 'AddJobFlowStepsOutput')
      AddTagsInput = Shapes::StructureShape.new(name: 'AddTagsInput')
      AddTagsOutput = Shapes::StructureShape.new(name: 'AddTagsOutput')
      Application = Shapes::StructureShape.new(name: 'Application')
      ApplicationList = Shapes::ListShape.new(name: 'ApplicationList')
      Boolean = Shapes::BooleanShape.new(name: 'Boolean')
      BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
      BootstrapActionConfig = Shapes::StructureShape.new(name: 'BootstrapActionConfig')
      BootstrapActionConfigList = Shapes::ListShape.new(name: 'BootstrapActionConfigList')
      BootstrapActionDetail = Shapes::StructureShape.new(name: 'BootstrapActionDetail')
      BootstrapActionDetailList = Shapes::ListShape.new(name: 'BootstrapActionDetailList')
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
      Configuration = Shapes::StructureShape.new(name: 'Configuration')
      ConfigurationList = Shapes::ListShape.new(name: 'ConfigurationList')
      Date = Shapes::TimestampShape.new(name: 'Date')
      DescribeClusterInput = Shapes::StructureShape.new(name: 'DescribeClusterInput')
      DescribeClusterOutput = Shapes::StructureShape.new(name: 'DescribeClusterOutput')
      DescribeJobFlowsInput = Shapes::StructureShape.new(name: 'DescribeJobFlowsInput')
      DescribeJobFlowsOutput = Shapes::StructureShape.new(name: 'DescribeJobFlowsOutput')
      DescribeStepInput = Shapes::StructureShape.new(name: 'DescribeStepInput')
      DescribeStepOutput = Shapes::StructureShape.new(name: 'DescribeStepOutput')
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
      FailureDetails = Shapes::StructureShape.new(name: 'FailureDetails')
      HadoopJarStepConfig = Shapes::StructureShape.new(name: 'HadoopJarStepConfig')
      HadoopStepConfig = Shapes::StructureShape.new(name: 'HadoopStepConfig')
      Instance = Shapes::StructureShape.new(name: 'Instance')
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
      KeyValue = Shapes::StructureShape.new(name: 'KeyValue')
      KeyValueList = Shapes::ListShape.new(name: 'KeyValueList')
      ListBootstrapActionsInput = Shapes::StructureShape.new(name: 'ListBootstrapActionsInput')
      ListBootstrapActionsOutput = Shapes::StructureShape.new(name: 'ListBootstrapActionsOutput')
      ListClustersInput = Shapes::StructureShape.new(name: 'ListClustersInput')
      ListClustersOutput = Shapes::StructureShape.new(name: 'ListClustersOutput')
      ListInstanceGroupsInput = Shapes::StructureShape.new(name: 'ListInstanceGroupsInput')
      ListInstanceGroupsOutput = Shapes::StructureShape.new(name: 'ListInstanceGroupsOutput')
      ListInstancesInput = Shapes::StructureShape.new(name: 'ListInstancesInput')
      ListInstancesOutput = Shapes::StructureShape.new(name: 'ListInstancesOutput')
      ListStepsInput = Shapes::StructureShape.new(name: 'ListStepsInput')
      ListStepsOutput = Shapes::StructureShape.new(name: 'ListStepsOutput')
      Marker = Shapes::StringShape.new(name: 'Marker')
      MarketType = Shapes::StringShape.new(name: 'MarketType')
      ModifyInstanceGroupsInput = Shapes::StructureShape.new(name: 'ModifyInstanceGroupsInput')
      NewSupportedProductsList = Shapes::ListShape.new(name: 'NewSupportedProductsList')
      PlacementType = Shapes::StructureShape.new(name: 'PlacementType')
      RemoveTagsInput = Shapes::StructureShape.new(name: 'RemoveTagsInput')
      RemoveTagsOutput = Shapes::StructureShape.new(name: 'RemoveTagsOutput')
      ResourceId = Shapes::StringShape.new(name: 'ResourceId')
      RunJobFlowInput = Shapes::StructureShape.new(name: 'RunJobFlowInput')
      RunJobFlowOutput = Shapes::StructureShape.new(name: 'RunJobFlowOutput')
      ScriptBootstrapActionConfig = Shapes::StructureShape.new(name: 'ScriptBootstrapActionConfig')
      SecurityGroupsList = Shapes::ListShape.new(name: 'SecurityGroupsList')
      SetTerminationProtectionInput = Shapes::StructureShape.new(name: 'SetTerminationProtectionInput')
      SetVisibleToAllUsersInput = Shapes::StructureShape.new(name: 'SetVisibleToAllUsersInput')
      ShrinkPolicy = Shapes::StructureShape.new(name: 'ShrinkPolicy')
      Step = Shapes::StructureShape.new(name: 'Step')
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
      String = Shapes::StringShape.new(name: 'String')
      StringList = Shapes::ListShape.new(name: 'StringList')
      StringMap = Shapes::MapShape.new(name: 'StringMap')
      SupportedProductConfig = Shapes::StructureShape.new(name: 'SupportedProductConfig')
      SupportedProductsList = Shapes::ListShape.new(name: 'SupportedProductsList')
      Tag = Shapes::StructureShape.new(name: 'Tag')
      TagList = Shapes::ListShape.new(name: 'TagList')
      TerminateJobFlowsInput = Shapes::StructureShape.new(name: 'TerminateJobFlowsInput')
      VolumeSpecification = Shapes::StructureShape.new(name: 'VolumeSpecification')
      XmlString = Shapes::StringShape.new(name: 'XmlString')
      XmlStringList = Shapes::ListShape.new(name: 'XmlStringList')
      XmlStringMaxLen256 = Shapes::StringShape.new(name: 'XmlStringMaxLen256')

      AddInstanceGroupsInput.add_member(:instance_groups, Shapes::ShapeRef.new(shape: InstanceGroupConfigList, required: true, location_name: "InstanceGroups"))
      AddInstanceGroupsInput.add_member(:job_flow_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "JobFlowId"))
      AddInstanceGroupsInput.struct_class = Types::AddInstanceGroupsInput

      AddInstanceGroupsOutput.add_member(:job_flow_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "JobFlowId"))
      AddInstanceGroupsOutput.add_member(:instance_group_ids, Shapes::ShapeRef.new(shape: InstanceGroupIdsList, location_name: "InstanceGroupIds"))
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

      BootstrapActionConfig.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "Name"))
      BootstrapActionConfig.add_member(:script_bootstrap_action, Shapes::ShapeRef.new(shape: ScriptBootstrapActionConfig, required: true, location_name: "ScriptBootstrapAction"))
      BootstrapActionConfig.struct_class = Types::BootstrapActionConfig

      BootstrapActionConfigList.member = Shapes::ShapeRef.new(shape: BootstrapActionConfig)

      BootstrapActionDetail.add_member(:bootstrap_action_config, Shapes::ShapeRef.new(shape: BootstrapActionConfig, location_name: "BootstrapActionConfig"))
      BootstrapActionDetail.struct_class = Types::BootstrapActionDetail

      BootstrapActionDetailList.member = Shapes::ShapeRef.new(shape: BootstrapActionDetail)

      Cluster.add_member(:id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "Id"))
      Cluster.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
      Cluster.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "Status"))
      Cluster.add_member(:ec2_instance_attributes, Shapes::ShapeRef.new(shape: Ec2InstanceAttributes, location_name: "Ec2InstanceAttributes"))
      Cluster.add_member(:log_uri, Shapes::ShapeRef.new(shape: String, location_name: "LogUri"))
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

      Configuration.add_member(:classification, Shapes::ShapeRef.new(shape: String, location_name: "Classification"))
      Configuration.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "Configurations"))
      Configuration.add_member(:properties, Shapes::ShapeRef.new(shape: StringMap, location_name: "Properties"))
      Configuration.struct_class = Types::Configuration

      ConfigurationList.member = Shapes::ShapeRef.new(shape: Configuration)

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

      DescribeStepInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
      DescribeStepInput.add_member(:step_id, Shapes::ShapeRef.new(shape: StepId, required: true, location_name: "StepId"))
      DescribeStepInput.struct_class = Types::DescribeStepInput

      DescribeStepOutput.add_member(:step, Shapes::ShapeRef.new(shape: Step, location_name: "Step"))
      DescribeStepOutput.struct_class = Types::DescribeStepOutput

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
      Ec2InstanceAttributes.add_member(:ec2_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "Ec2AvailabilityZone"))
      Ec2InstanceAttributes.add_member(:iam_instance_profile, Shapes::ShapeRef.new(shape: String, location_name: "IamInstanceProfile"))
      Ec2InstanceAttributes.add_member(:emr_managed_master_security_group, Shapes::ShapeRef.new(shape: String, location_name: "EmrManagedMasterSecurityGroup"))
      Ec2InstanceAttributes.add_member(:emr_managed_slave_security_group, Shapes::ShapeRef.new(shape: String, location_name: "EmrManagedSlaveSecurityGroup"))
      Ec2InstanceAttributes.add_member(:service_access_security_group, Shapes::ShapeRef.new(shape: String, location_name: "ServiceAccessSecurityGroup"))
      Ec2InstanceAttributes.add_member(:additional_master_security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "AdditionalMasterSecurityGroups"))
      Ec2InstanceAttributes.add_member(:additional_slave_security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "AdditionalSlaveSecurityGroups"))
      Ec2InstanceAttributes.struct_class = Types::Ec2InstanceAttributes

      FailureDetails.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "Reason"))
      FailureDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
      FailureDetails.add_member(:log_file, Shapes::ShapeRef.new(shape: String, location_name: "LogFile"))
      FailureDetails.struct_class = Types::FailureDetails

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
      Instance.add_member(:ebs_volumes, Shapes::ShapeRef.new(shape: EbsVolumeList, location_name: "EbsVolumes"))
      Instance.struct_class = Types::Instance

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
      InstanceGroup.add_member(:ebs_block_devices, Shapes::ShapeRef.new(shape: EbsBlockDeviceList, location_name: "EbsBlockDevices"))
      InstanceGroup.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EbsOptimized"))
      InstanceGroup.add_member(:shrink_policy, Shapes::ShapeRef.new(shape: ShrinkPolicy, location_name: "ShrinkPolicy"))
      InstanceGroup.struct_class = Types::InstanceGroup

      InstanceGroupConfig.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Name"))
      InstanceGroupConfig.add_member(:market, Shapes::ShapeRef.new(shape: MarketType, location_name: "Market"))
      InstanceGroupConfig.add_member(:instance_role, Shapes::ShapeRef.new(shape: InstanceRoleType, required: true, location_name: "InstanceRole"))
      InstanceGroupConfig.add_member(:bid_price, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "BidPrice"))
      InstanceGroupConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "InstanceType"))
      InstanceGroupConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "InstanceCount"))
      InstanceGroupConfig.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "Configurations"))
      InstanceGroupConfig.add_member(:ebs_configuration, Shapes::ShapeRef.new(shape: EbsConfiguration, location_name: "EbsConfiguration"))
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
      InstanceGroupDetail.struct_class = Types::InstanceGroupDetail

      InstanceGroupDetailList.member = Shapes::ShapeRef.new(shape: InstanceGroupDetail)

      InstanceGroupIdsList.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen256)

      InstanceGroupList.member = Shapes::ShapeRef.new(shape: InstanceGroup)

      InstanceGroupModifyConfig.add_member(:instance_group_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "InstanceGroupId"))
      InstanceGroupModifyConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InstanceCount"))
      InstanceGroupModifyConfig.add_member(:ec2_instance_ids_to_terminate, Shapes::ShapeRef.new(shape: EC2InstanceIdsToTerminateList, location_name: "EC2InstanceIdsToTerminate"))
      InstanceGroupModifyConfig.add_member(:shrink_policy, Shapes::ShapeRef.new(shape: ShrinkPolicy, location_name: "ShrinkPolicy"))
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

      JobFlowDetail.add_member(:job_flow_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "JobFlowId"))
      JobFlowDetail.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "Name"))
      JobFlowDetail.add_member(:log_uri, Shapes::ShapeRef.new(shape: XmlString, location_name: "LogUri"))
      JobFlowDetail.add_member(:ami_version, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "AmiVersion"))
      JobFlowDetail.add_member(:execution_status_detail, Shapes::ShapeRef.new(shape: JobFlowExecutionStatusDetail, required: true, location_name: "ExecutionStatusDetail"))
      JobFlowDetail.add_member(:instances, Shapes::ShapeRef.new(shape: JobFlowInstancesDetail, required: true, location_name: "Instances"))
      JobFlowDetail.add_member(:steps, Shapes::ShapeRef.new(shape: StepDetailList, location_name: "Steps"))
      JobFlowDetail.add_member(:bootstrap_actions, Shapes::ShapeRef.new(shape: BootstrapActionDetailList, location_name: "BootstrapActions"))
      JobFlowDetail.add_member(:supported_products, Shapes::ShapeRef.new(shape: SupportedProductsList, location_name: "SupportedProducts"))
      JobFlowDetail.add_member(:visible_to_all_users, Shapes::ShapeRef.new(shape: Boolean, location_name: "VisibleToAllUsers"))
      JobFlowDetail.add_member(:job_flow_role, Shapes::ShapeRef.new(shape: XmlString, location_name: "JobFlowRole"))
      JobFlowDetail.add_member(:service_role, Shapes::ShapeRef.new(shape: XmlString, location_name: "ServiceRole"))
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
      JobFlowInstancesConfig.add_member(:ec2_key_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Ec2KeyName"))
      JobFlowInstancesConfig.add_member(:placement, Shapes::ShapeRef.new(shape: PlacementType, location_name: "Placement"))
      JobFlowInstancesConfig.add_member(:keep_job_flow_alive_when_no_steps, Shapes::ShapeRef.new(shape: Boolean, location_name: "KeepJobFlowAliveWhenNoSteps"))
      JobFlowInstancesConfig.add_member(:termination_protected, Shapes::ShapeRef.new(shape: Boolean, location_name: "TerminationProtected"))
      JobFlowInstancesConfig.add_member(:hadoop_version, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "HadoopVersion"))
      JobFlowInstancesConfig.add_member(:ec2_subnet_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "Ec2SubnetId"))
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

      ListInstanceGroupsInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
      ListInstanceGroupsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
      ListInstanceGroupsInput.struct_class = Types::ListInstanceGroupsInput

      ListInstanceGroupsOutput.add_member(:instance_groups, Shapes::ShapeRef.new(shape: InstanceGroupList, location_name: "InstanceGroups"))
      ListInstanceGroupsOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
      ListInstanceGroupsOutput.struct_class = Types::ListInstanceGroupsOutput

      ListInstancesInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
      ListInstancesInput.add_member(:instance_group_id, Shapes::ShapeRef.new(shape: InstanceGroupId, location_name: "InstanceGroupId"))
      ListInstancesInput.add_member(:instance_group_types, Shapes::ShapeRef.new(shape: InstanceGroupTypeList, location_name: "InstanceGroupTypes"))
      ListInstancesInput.add_member(:instance_states, Shapes::ShapeRef.new(shape: InstanceStateList, location_name: "InstanceStates"))
      ListInstancesInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
      ListInstancesInput.struct_class = Types::ListInstancesInput

      ListInstancesOutput.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceList, location_name: "Instances"))
      ListInstancesOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
      ListInstancesOutput.struct_class = Types::ListInstancesOutput

      ListStepsInput.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, required: true, location_name: "ClusterId"))
      ListStepsInput.add_member(:step_states, Shapes::ShapeRef.new(shape: StepStateList, location_name: "StepStates"))
      ListStepsInput.add_member(:step_ids, Shapes::ShapeRef.new(shape: XmlStringList, location_name: "StepIds"))
      ListStepsInput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
      ListStepsInput.struct_class = Types::ListStepsInput

      ListStepsOutput.add_member(:steps, Shapes::ShapeRef.new(shape: StepSummaryList, location_name: "Steps"))
      ListStepsOutput.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
      ListStepsOutput.struct_class = Types::ListStepsOutput

      ModifyInstanceGroupsInput.add_member(:instance_groups, Shapes::ShapeRef.new(shape: InstanceGroupModifyConfigList, location_name: "InstanceGroups"))
      ModifyInstanceGroupsInput.struct_class = Types::ModifyInstanceGroupsInput

      NewSupportedProductsList.member = Shapes::ShapeRef.new(shape: SupportedProductConfig)

      PlacementType.add_member(:availability_zone, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "AvailabilityZone"))
      PlacementType.struct_class = Types::PlacementType

      RemoveTagsInput.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
      RemoveTagsInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TagKeys"))
      RemoveTagsInput.struct_class = Types::RemoveTagsInput

      RemoveTagsOutput.struct_class = Types::RemoveTagsOutput

      RunJobFlowInput.add_member(:name, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, required: true, location_name: "Name"))
      RunJobFlowInput.add_member(:log_uri, Shapes::ShapeRef.new(shape: XmlString, location_name: "LogUri"))
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
      RunJobFlowInput.struct_class = Types::RunJobFlowInput

      RunJobFlowOutput.add_member(:job_flow_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen256, location_name: "JobFlowId"))
      RunJobFlowOutput.struct_class = Types::RunJobFlowOutput

      ScriptBootstrapActionConfig.add_member(:path, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "Path"))
      ScriptBootstrapActionConfig.add_member(:args, Shapes::ShapeRef.new(shape: XmlStringList, location_name: "Args"))
      ScriptBootstrapActionConfig.struct_class = Types::ScriptBootstrapActionConfig

      SecurityGroupsList.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen256)

      SetTerminationProtectionInput.add_member(:job_flow_ids, Shapes::ShapeRef.new(shape: XmlStringList, required: true, location_name: "JobFlowIds"))
      SetTerminationProtectionInput.add_member(:termination_protected, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "TerminationProtected"))
      SetTerminationProtectionInput.struct_class = Types::SetTerminationProtectionInput

      SetVisibleToAllUsersInput.add_member(:job_flow_ids, Shapes::ShapeRef.new(shape: XmlStringList, required: true, location_name: "JobFlowIds"))
      SetVisibleToAllUsersInput.add_member(:visible_to_all_users, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "VisibleToAllUsers"))
      SetVisibleToAllUsersInput.struct_class = Types::SetVisibleToAllUsersInput

      ShrinkPolicy.add_member(:decommission_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "DecommissionTimeout"))
      ShrinkPolicy.add_member(:instance_resize_policy, Shapes::ShapeRef.new(shape: InstanceResizePolicy, location_name: "InstanceResizePolicy"))
      ShrinkPolicy.struct_class = Types::ShrinkPolicy

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

      StringList.member = Shapes::ShapeRef.new(shape: String)

      StringMap.key = Shapes::ShapeRef.new(shape: String)
      StringMap.value = Shapes::ShapeRef.new(shape: String)

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

      VolumeSpecification.add_member(:volume_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VolumeType"))
      VolumeSpecification.add_member(:iops, Shapes::ShapeRef.new(shape: Integer, location_name: "Iops"))
      VolumeSpecification.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "SizeInGB"))
      VolumeSpecification.struct_class = Types::VolumeSpecification

      XmlStringList.member = Shapes::ShapeRef.new(shape: XmlString)


      # @api private
      API = Seahorse::Model::Api.new.tap do |api|

        api.version = "2009-03-31"

        api.metadata = {
          "endpointPrefix" => "elasticmapreduce",
          "jsonVersion" => "1.1",
          "protocol" => "json",
          "serviceFullName" => "Amazon Elastic MapReduce",
          "signatureVersion" => "v4",
          "targetPrefix" => "ElasticMapReduce",
          "timestampFormat" => "unixTimestamp",
        }

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
          o[:pager] = Aws::Pager.new("result_key" => "JobFlows")
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

        api.add_operation(:list_bootstrap_actions, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListBootstrapActions"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListBootstrapActionsInput)
          o.output = Shapes::ShapeRef.new(shape: ListBootstrapActionsOutput)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
          o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "Marker",
            "output_token" => "Marker",
            "result_key" => "BootstrapActions"
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
            "input_token" => "Marker",
            "output_token" => "Marker",
            "result_key" => "Clusters"
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
            "input_token" => "Marker",
            "output_token" => "Marker",
            "result_key" => "InstanceGroups"
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
            "input_token" => "Marker",
            "output_token" => "Marker",
            "result_key" => "Instances"
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
            "input_token" => "Marker",
            "output_token" => "Marker",
            "result_key" => "Steps"
          )
        end)

        api.add_operation(:modify_instance_groups, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ModifyInstanceGroups"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ModifyInstanceGroupsInput)
          o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
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

        api.add_operation(:terminate_job_flows, Seahorse::Model::Operation.new.tap do |o|
          o.name = "TerminateJobFlows"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: TerminateJobFlowsInput)
          o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        end)
      end

    end
  end
end
