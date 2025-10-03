# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PCS
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Accounting = Shapes::StructureShape.new(name: 'Accounting')
    AccountingDefaultPurgeTimeInDaysInteger = Shapes::IntegerShape.new(name: 'AccountingDefaultPurgeTimeInDaysInteger')
    AccountingMode = Shapes::StringShape.new(name: 'AccountingMode')
    AccountingRequest = Shapes::StructureShape.new(name: 'AccountingRequest')
    AccountingRequestDefaultPurgeTimeInDaysInteger = Shapes::IntegerShape.new(name: 'AccountingRequestDefaultPurgeTimeInDaysInteger')
    AmiId = Shapes::StringShape.new(name: 'AmiId')
    Arn = Shapes::StringShape.new(name: 'Arn')
    BootstrapId = Shapes::StringShape.new(name: 'BootstrapId')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterIdentifier = Shapes::StringShape.new(name: 'ClusterIdentifier')
    ClusterList = Shapes::ListShape.new(name: 'ClusterList')
    ClusterName = Shapes::StringShape.new(name: 'ClusterName')
    ClusterSlurmConfiguration = Shapes::StructureShape.new(name: 'ClusterSlurmConfiguration')
    ClusterSlurmConfigurationRequest = Shapes::StructureShape.new(name: 'ClusterSlurmConfigurationRequest')
    ClusterSlurmConfigurationRequestScaleDownIdleTimeInSecondsInteger = Shapes::IntegerShape.new(name: 'ClusterSlurmConfigurationRequestScaleDownIdleTimeInSecondsInteger')
    ClusterSlurmConfigurationScaleDownIdleTimeInSecondsInteger = Shapes::IntegerShape.new(name: 'ClusterSlurmConfigurationScaleDownIdleTimeInSecondsInteger')
    ClusterStatus = Shapes::StringShape.new(name: 'ClusterStatus')
    ClusterSummary = Shapes::StructureShape.new(name: 'ClusterSummary')
    ComputeNodeGroup = Shapes::StructureShape.new(name: 'ComputeNodeGroup')
    ComputeNodeGroupConfiguration = Shapes::StructureShape.new(name: 'ComputeNodeGroupConfiguration')
    ComputeNodeGroupConfigurationList = Shapes::ListShape.new(name: 'ComputeNodeGroupConfigurationList')
    ComputeNodeGroupIdentifier = Shapes::StringShape.new(name: 'ComputeNodeGroupIdentifier')
    ComputeNodeGroupList = Shapes::ListShape.new(name: 'ComputeNodeGroupList')
    ComputeNodeGroupName = Shapes::StringShape.new(name: 'ComputeNodeGroupName')
    ComputeNodeGroupSlurmConfiguration = Shapes::StructureShape.new(name: 'ComputeNodeGroupSlurmConfiguration')
    ComputeNodeGroupSlurmConfigurationRequest = Shapes::StructureShape.new(name: 'ComputeNodeGroupSlurmConfigurationRequest')
    ComputeNodeGroupStatus = Shapes::StringShape.new(name: 'ComputeNodeGroupStatus')
    ComputeNodeGroupSummary = Shapes::StructureShape.new(name: 'ComputeNodeGroupSummary')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateComputeNodeGroupRequest = Shapes::StructureShape.new(name: 'CreateComputeNodeGroupRequest')
    CreateComputeNodeGroupResponse = Shapes::StructureShape.new(name: 'CreateComputeNodeGroupResponse')
    CreateQueueRequest = Shapes::StructureShape.new(name: 'CreateQueueRequest')
    CreateQueueResponse = Shapes::StructureShape.new(name: 'CreateQueueResponse')
    CustomLaunchTemplate = Shapes::StructureShape.new(name: 'CustomLaunchTemplate')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteComputeNodeGroupRequest = Shapes::StructureShape.new(name: 'DeleteComputeNodeGroupRequest')
    DeleteComputeNodeGroupResponse = Shapes::StructureShape.new(name: 'DeleteComputeNodeGroupResponse')
    DeleteQueueRequest = Shapes::StructureShape.new(name: 'DeleteQueueRequest')
    DeleteQueueResponse = Shapes::StructureShape.new(name: 'DeleteQueueResponse')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
    Endpoints = Shapes::ListShape.new(name: 'Endpoints')
    ErrorInfo = Shapes::StructureShape.new(name: 'ErrorInfo')
    ErrorInfoList = Shapes::ListShape.new(name: 'ErrorInfoList')
    GetClusterRequest = Shapes::StructureShape.new(name: 'GetClusterRequest')
    GetClusterResponse = Shapes::StructureShape.new(name: 'GetClusterResponse')
    GetComputeNodeGroupRequest = Shapes::StructureShape.new(name: 'GetComputeNodeGroupRequest')
    GetComputeNodeGroupResponse = Shapes::StructureShape.new(name: 'GetComputeNodeGroupResponse')
    GetQueueRequest = Shapes::StructureShape.new(name: 'GetQueueRequest')
    GetQueueResponse = Shapes::StructureShape.new(name: 'GetQueueResponse')
    InstanceConfig = Shapes::StructureShape.new(name: 'InstanceConfig')
    InstanceList = Shapes::ListShape.new(name: 'InstanceList')
    InstanceProfileArn = Shapes::StringShape.new(name: 'InstanceProfileArn')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
    ListComputeNodeGroupsRequest = Shapes::StructureShape.new(name: 'ListComputeNodeGroupsRequest')
    ListComputeNodeGroupsResponse = Shapes::StructureShape.new(name: 'ListComputeNodeGroupsResponse')
    ListQueuesRequest = Shapes::StructureShape.new(name: 'ListQueuesRequest')
    ListQueuesResponse = Shapes::StructureShape.new(name: 'ListQueuesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetworkType = Shapes::StringShape.new(name: 'NetworkType')
    Networking = Shapes::StructureShape.new(name: 'Networking')
    NetworkingRequest = Shapes::StructureShape.new(name: 'NetworkingRequest')
    PurchaseOption = Shapes::StringShape.new(name: 'PurchaseOption')
    Queue = Shapes::StructureShape.new(name: 'Queue')
    QueueIdentifier = Shapes::StringShape.new(name: 'QueueIdentifier')
    QueueList = Shapes::ListShape.new(name: 'QueueList')
    QueueName = Shapes::StringShape.new(name: 'QueueName')
    QueueSlurmConfiguration = Shapes::StructureShape.new(name: 'QueueSlurmConfiguration')
    QueueSlurmConfigurationRequest = Shapes::StructureShape.new(name: 'QueueSlurmConfigurationRequest')
    QueueStatus = Shapes::StringShape.new(name: 'QueueStatus')
    QueueSummary = Shapes::StructureShape.new(name: 'QueueSummary')
    RegisterComputeNodeGroupInstanceRequest = Shapes::StructureShape.new(name: 'RegisterComputeNodeGroupInstanceRequest')
    RegisterComputeNodeGroupInstanceResponse = Shapes::StructureShape.new(name: 'RegisterComputeNodeGroupInstanceResponse')
    RequestTagMap = Shapes::MapShape.new(name: 'RequestTagMap')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseTagMap = Shapes::MapShape.new(name: 'ResponseTagMap')
    SBClientToken = Shapes::StringShape.new(name: 'SBClientToken')
    ScalingConfiguration = Shapes::StructureShape.new(name: 'ScalingConfiguration')
    ScalingConfigurationMaxInstanceCountInteger = Shapes::IntegerShape.new(name: 'ScalingConfigurationMaxInstanceCountInteger')
    ScalingConfigurationMinInstanceCountInteger = Shapes::IntegerShape.new(name: 'ScalingConfigurationMinInstanceCountInteger')
    ScalingConfigurationRequest = Shapes::StructureShape.new(name: 'ScalingConfigurationRequest')
    ScalingConfigurationRequestMaxInstanceCountInteger = Shapes::IntegerShape.new(name: 'ScalingConfigurationRequestMaxInstanceCountInteger')
    ScalingConfigurationRequestMinInstanceCountInteger = Shapes::IntegerShape.new(name: 'ScalingConfigurationRequestMinInstanceCountInteger')
    Scheduler = Shapes::StructureShape.new(name: 'Scheduler')
    SchedulerRequest = Shapes::StructureShape.new(name: 'SchedulerRequest')
    SchedulerType = Shapes::StringShape.new(name: 'SchedulerType')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SharedSecret = Shapes::StringShape.new(name: 'SharedSecret')
    Size = Shapes::StringShape.new(name: 'Size')
    SlurmAuthKey = Shapes::StructureShape.new(name: 'SlurmAuthKey')
    SlurmCustomSetting = Shapes::StructureShape.new(name: 'SlurmCustomSetting')
    SlurmCustomSettings = Shapes::ListShape.new(name: 'SlurmCustomSettings')
    SpotAllocationStrategy = Shapes::StringShape.new(name: 'SpotAllocationStrategy')
    SpotOptions = Shapes::StructureShape.new(name: 'SpotOptions')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAccountingRequest = Shapes::StructureShape.new(name: 'UpdateAccountingRequest')
    UpdateAccountingRequestDefaultPurgeTimeInDaysInteger = Shapes::IntegerShape.new(name: 'UpdateAccountingRequestDefaultPurgeTimeInDaysInteger')
    UpdateClusterRequest = Shapes::StructureShape.new(name: 'UpdateClusterRequest')
    UpdateClusterResponse = Shapes::StructureShape.new(name: 'UpdateClusterResponse')
    UpdateClusterSlurmConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateClusterSlurmConfigurationRequest')
    UpdateClusterSlurmConfigurationRequestScaleDownIdleTimeInSecondsInteger = Shapes::IntegerShape.new(name: 'UpdateClusterSlurmConfigurationRequestScaleDownIdleTimeInSecondsInteger')
    UpdateComputeNodeGroupRequest = Shapes::StructureShape.new(name: 'UpdateComputeNodeGroupRequest')
    UpdateComputeNodeGroupResponse = Shapes::StructureShape.new(name: 'UpdateComputeNodeGroupResponse')
    UpdateComputeNodeGroupSlurmConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateComputeNodeGroupSlurmConfigurationRequest')
    UpdateQueueRequest = Shapes::StructureShape.new(name: 'UpdateQueueRequest')
    UpdateQueueResponse = Shapes::StructureShape.new(name: 'UpdateQueueResponse')
    UpdateQueueSlurmConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateQueueSlurmConfigurationRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Accounting.add_member(:default_purge_time_in_days, Shapes::ShapeRef.new(shape: AccountingDefaultPurgeTimeInDaysInteger, location_name: "defaultPurgeTimeInDays"))
    Accounting.add_member(:mode, Shapes::ShapeRef.new(shape: AccountingMode, required: true, location_name: "mode"))
    Accounting.struct_class = Types::Accounting

    AccountingRequest.add_member(:default_purge_time_in_days, Shapes::ShapeRef.new(shape: AccountingRequestDefaultPurgeTimeInDaysInteger, location_name: "defaultPurgeTimeInDays"))
    AccountingRequest.add_member(:mode, Shapes::ShapeRef.new(shape: AccountingMode, required: true, location_name: "mode"))
    AccountingRequest.struct_class = Types::AccountingRequest

    Cluster.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Cluster.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    Cluster.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    Cluster.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, required: true, location_name: "status"))
    Cluster.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    Cluster.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "modifiedAt"))
    Cluster.add_member(:scheduler, Shapes::ShapeRef.new(shape: Scheduler, required: true, location_name: "scheduler"))
    Cluster.add_member(:size, Shapes::ShapeRef.new(shape: Size, required: true, location_name: "size"))
    Cluster.add_member(:slurm_configuration, Shapes::ShapeRef.new(shape: ClusterSlurmConfiguration, location_name: "slurmConfiguration"))
    Cluster.add_member(:networking, Shapes::ShapeRef.new(shape: Networking, required: true, location_name: "networking"))
    Cluster.add_member(:endpoints, Shapes::ShapeRef.new(shape: Endpoints, location_name: "endpoints"))
    Cluster.add_member(:error_info, Shapes::ShapeRef.new(shape: ErrorInfoList, location_name: "errorInfo"))
    Cluster.struct_class = Types::Cluster

    ClusterList.member = Shapes::ShapeRef.new(shape: ClusterSummary)

    ClusterSlurmConfiguration.add_member(:scale_down_idle_time_in_seconds, Shapes::ShapeRef.new(shape: ClusterSlurmConfigurationScaleDownIdleTimeInSecondsInteger, location_name: "scaleDownIdleTimeInSeconds"))
    ClusterSlurmConfiguration.add_member(:slurm_custom_settings, Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: "slurmCustomSettings"))
    ClusterSlurmConfiguration.add_member(:auth_key, Shapes::ShapeRef.new(shape: SlurmAuthKey, location_name: "authKey"))
    ClusterSlurmConfiguration.add_member(:accounting, Shapes::ShapeRef.new(shape: Accounting, location_name: "accounting"))
    ClusterSlurmConfiguration.struct_class = Types::ClusterSlurmConfiguration

    ClusterSlurmConfigurationRequest.add_member(:scale_down_idle_time_in_seconds, Shapes::ShapeRef.new(shape: ClusterSlurmConfigurationRequestScaleDownIdleTimeInSecondsInteger, location_name: "scaleDownIdleTimeInSeconds"))
    ClusterSlurmConfigurationRequest.add_member(:slurm_custom_settings, Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: "slurmCustomSettings"))
    ClusterSlurmConfigurationRequest.add_member(:accounting, Shapes::ShapeRef.new(shape: AccountingRequest, location_name: "accounting"))
    ClusterSlurmConfigurationRequest.struct_class = Types::ClusterSlurmConfigurationRequest

    ClusterSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ClusterSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    ClusterSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    ClusterSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ClusterSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "modifiedAt"))
    ClusterSummary.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, required: true, location_name: "status"))
    ClusterSummary.struct_class = Types::ClusterSummary

    ComputeNodeGroup.add_member(:name, Shapes::ShapeRef.new(shape: ComputeNodeGroupName, required: true, location_name: "name"))
    ComputeNodeGroup.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    ComputeNodeGroup.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    ComputeNodeGroup.add_member(:cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterId"))
    ComputeNodeGroup.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ComputeNodeGroup.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "modifiedAt"))
    ComputeNodeGroup.add_member(:status, Shapes::ShapeRef.new(shape: ComputeNodeGroupStatus, required: true, location_name: "status"))
    ComputeNodeGroup.add_member(:ami_id, Shapes::ShapeRef.new(shape: AmiId, location_name: "amiId"))
    ComputeNodeGroup.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "subnetIds"))
    ComputeNodeGroup.add_member(:purchase_option, Shapes::ShapeRef.new(shape: PurchaseOption, location_name: "purchaseOption"))
    ComputeNodeGroup.add_member(:custom_launch_template, Shapes::ShapeRef.new(shape: CustomLaunchTemplate, required: true, location_name: "customLaunchTemplate"))
    ComputeNodeGroup.add_member(:iam_instance_profile_arn, Shapes::ShapeRef.new(shape: InstanceProfileArn, required: true, location_name: "iamInstanceProfileArn"))
    ComputeNodeGroup.add_member(:scaling_configuration, Shapes::ShapeRef.new(shape: ScalingConfiguration, required: true, location_name: "scalingConfiguration"))
    ComputeNodeGroup.add_member(:instance_configs, Shapes::ShapeRef.new(shape: InstanceList, required: true, location_name: "instanceConfigs"))
    ComputeNodeGroup.add_member(:spot_options, Shapes::ShapeRef.new(shape: SpotOptions, location_name: "spotOptions"))
    ComputeNodeGroup.add_member(:slurm_configuration, Shapes::ShapeRef.new(shape: ComputeNodeGroupSlurmConfiguration, location_name: "slurmConfiguration"))
    ComputeNodeGroup.add_member(:error_info, Shapes::ShapeRef.new(shape: ErrorInfoList, location_name: "errorInfo"))
    ComputeNodeGroup.struct_class = Types::ComputeNodeGroup

    ComputeNodeGroupConfiguration.add_member(:compute_node_group_id, Shapes::ShapeRef.new(shape: String, location_name: "computeNodeGroupId"))
    ComputeNodeGroupConfiguration.struct_class = Types::ComputeNodeGroupConfiguration

    ComputeNodeGroupConfigurationList.member = Shapes::ShapeRef.new(shape: ComputeNodeGroupConfiguration)

    ComputeNodeGroupList.member = Shapes::ShapeRef.new(shape: ComputeNodeGroupSummary)

    ComputeNodeGroupSlurmConfiguration.add_member(:slurm_custom_settings, Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: "slurmCustomSettings"))
    ComputeNodeGroupSlurmConfiguration.struct_class = Types::ComputeNodeGroupSlurmConfiguration

    ComputeNodeGroupSlurmConfigurationRequest.add_member(:slurm_custom_settings, Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: "slurmCustomSettings"))
    ComputeNodeGroupSlurmConfigurationRequest.struct_class = Types::ComputeNodeGroupSlurmConfigurationRequest

    ComputeNodeGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: ComputeNodeGroupName, required: true, location_name: "name"))
    ComputeNodeGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    ComputeNodeGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    ComputeNodeGroupSummary.add_member(:cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterId"))
    ComputeNodeGroupSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ComputeNodeGroupSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "modifiedAt"))
    ComputeNodeGroupSummary.add_member(:status, Shapes::ShapeRef.new(shape: ComputeNodeGroupStatus, required: true, location_name: "status"))
    ComputeNodeGroupSummary.struct_class = Types::ComputeNodeGroupSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location_name: "clusterName"))
    CreateClusterRequest.add_member(:scheduler, Shapes::ShapeRef.new(shape: SchedulerRequest, required: true, location_name: "scheduler"))
    CreateClusterRequest.add_member(:size, Shapes::ShapeRef.new(shape: Size, required: true, location_name: "size"))
    CreateClusterRequest.add_member(:networking, Shapes::ShapeRef.new(shape: NetworkingRequest, required: true, location_name: "networking"))
    CreateClusterRequest.add_member(:slurm_configuration, Shapes::ShapeRef.new(shape: ClusterSlurmConfigurationRequest, location_name: "slurmConfiguration"))
    CreateClusterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: SBClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateComputeNodeGroupRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    CreateComputeNodeGroupRequest.add_member(:compute_node_group_name, Shapes::ShapeRef.new(shape: ComputeNodeGroupName, required: true, location_name: "computeNodeGroupName"))
    CreateComputeNodeGroupRequest.add_member(:ami_id, Shapes::ShapeRef.new(shape: AmiId, location_name: "amiId"))
    CreateComputeNodeGroupRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "subnetIds"))
    CreateComputeNodeGroupRequest.add_member(:purchase_option, Shapes::ShapeRef.new(shape: PurchaseOption, location_name: "purchaseOption"))
    CreateComputeNodeGroupRequest.add_member(:custom_launch_template, Shapes::ShapeRef.new(shape: CustomLaunchTemplate, required: true, location_name: "customLaunchTemplate"))
    CreateComputeNodeGroupRequest.add_member(:iam_instance_profile_arn, Shapes::ShapeRef.new(shape: InstanceProfileArn, required: true, location_name: "iamInstanceProfileArn"))
    CreateComputeNodeGroupRequest.add_member(:scaling_configuration, Shapes::ShapeRef.new(shape: ScalingConfigurationRequest, required: true, location_name: "scalingConfiguration"))
    CreateComputeNodeGroupRequest.add_member(:instance_configs, Shapes::ShapeRef.new(shape: InstanceList, required: true, location_name: "instanceConfigs"))
    CreateComputeNodeGroupRequest.add_member(:spot_options, Shapes::ShapeRef.new(shape: SpotOptions, location_name: "spotOptions"))
    CreateComputeNodeGroupRequest.add_member(:slurm_configuration, Shapes::ShapeRef.new(shape: ComputeNodeGroupSlurmConfigurationRequest, location_name: "slurmConfiguration"))
    CreateComputeNodeGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: SBClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateComputeNodeGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateComputeNodeGroupRequest.struct_class = Types::CreateComputeNodeGroupRequest

    CreateComputeNodeGroupResponse.add_member(:compute_node_group, Shapes::ShapeRef.new(shape: ComputeNodeGroup, location_name: "computeNodeGroup"))
    CreateComputeNodeGroupResponse.struct_class = Types::CreateComputeNodeGroupResponse

    CreateQueueRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    CreateQueueRequest.add_member(:queue_name, Shapes::ShapeRef.new(shape: QueueName, required: true, location_name: "queueName"))
    CreateQueueRequest.add_member(:compute_node_group_configurations, Shapes::ShapeRef.new(shape: ComputeNodeGroupConfigurationList, location_name: "computeNodeGroupConfigurations"))
    CreateQueueRequest.add_member(:slurm_configuration, Shapes::ShapeRef.new(shape: QueueSlurmConfigurationRequest, location_name: "slurmConfiguration"))
    CreateQueueRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: SBClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateQueueRequest.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateQueueRequest.struct_class = Types::CreateQueueRequest

    CreateQueueResponse.add_member(:queue, Shapes::ShapeRef.new(shape: Queue, location_name: "queue"))
    CreateQueueResponse.struct_class = Types::CreateQueueResponse

    CustomLaunchTemplate.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    CustomLaunchTemplate.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "version"))
    CustomLaunchTemplate.struct_class = Types::CustomLaunchTemplate

    DeleteClusterRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    DeleteClusterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: SBClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DeleteComputeNodeGroupRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    DeleteComputeNodeGroupRequest.add_member(:compute_node_group_identifier, Shapes::ShapeRef.new(shape: ComputeNodeGroupIdentifier, required: true, location_name: "computeNodeGroupIdentifier"))
    DeleteComputeNodeGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: SBClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteComputeNodeGroupRequest.struct_class = Types::DeleteComputeNodeGroupRequest

    DeleteComputeNodeGroupResponse.struct_class = Types::DeleteComputeNodeGroupResponse

    DeleteQueueRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    DeleteQueueRequest.add_member(:queue_identifier, Shapes::ShapeRef.new(shape: QueueIdentifier, required: true, location_name: "queueIdentifier"))
    DeleteQueueRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: SBClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteQueueRequest.struct_class = Types::DeleteQueueRequest

    DeleteQueueResponse.struct_class = Types::DeleteQueueResponse

    Endpoint.add_member(:type, Shapes::ShapeRef.new(shape: EndpointType, required: true, location_name: "type"))
    Endpoint.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "privateIpAddress"))
    Endpoint.add_member(:public_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "publicIpAddress"))
    Endpoint.add_member(:ipv6_address, Shapes::ShapeRef.new(shape: String, location_name: "ipv6Address"))
    Endpoint.add_member(:port, Shapes::ShapeRef.new(shape: String, required: true, location_name: "port"))
    Endpoint.struct_class = Types::Endpoint

    Endpoints.member = Shapes::ShapeRef.new(shape: Endpoint)

    ErrorInfo.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    ErrorInfo.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ErrorInfo.struct_class = Types::ErrorInfo

    ErrorInfoList.member = Shapes::ShapeRef.new(shape: ErrorInfo)

    GetClusterRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    GetClusterRequest.struct_class = Types::GetClusterRequest

    GetClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    GetClusterResponse.struct_class = Types::GetClusterResponse

    GetComputeNodeGroupRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    GetComputeNodeGroupRequest.add_member(:compute_node_group_identifier, Shapes::ShapeRef.new(shape: ComputeNodeGroupIdentifier, required: true, location_name: "computeNodeGroupIdentifier"))
    GetComputeNodeGroupRequest.struct_class = Types::GetComputeNodeGroupRequest

    GetComputeNodeGroupResponse.add_member(:compute_node_group, Shapes::ShapeRef.new(shape: ComputeNodeGroup, location_name: "computeNodeGroup"))
    GetComputeNodeGroupResponse.struct_class = Types::GetComputeNodeGroupResponse

    GetQueueRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    GetQueueRequest.add_member(:queue_identifier, Shapes::ShapeRef.new(shape: QueueIdentifier, required: true, location_name: "queueIdentifier"))
    GetQueueRequest.struct_class = Types::GetQueueRequest

    GetQueueResponse.add_member(:queue, Shapes::ShapeRef.new(shape: Queue, location_name: "queue"))
    GetQueueResponse.struct_class = Types::GetQueueResponse

    InstanceConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    InstanceConfig.struct_class = Types::InstanceConfig

    InstanceList.member = Shapes::ShapeRef.new(shape: InstanceConfig)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListClustersRequest.struct_class = Types::ListClustersRequest

    ListClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: ClusterList, required: true, location_name: "clusters"))
    ListClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListClustersResponse.struct_class = Types::ListClustersResponse

    ListComputeNodeGroupsRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    ListComputeNodeGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListComputeNodeGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListComputeNodeGroupsRequest.struct_class = Types::ListComputeNodeGroupsRequest

    ListComputeNodeGroupsResponse.add_member(:compute_node_groups, Shapes::ShapeRef.new(shape: ComputeNodeGroupList, required: true, location_name: "computeNodeGroups"))
    ListComputeNodeGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListComputeNodeGroupsResponse.struct_class = Types::ListComputeNodeGroupsResponse

    ListQueuesRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    ListQueuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListQueuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListQueuesRequest.struct_class = Types::ListQueuesRequest

    ListQueuesResponse.add_member(:queues, Shapes::ShapeRef.new(shape: QueueList, required: true, location_name: "queues"))
    ListQueuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListQueuesResponse.struct_class = Types::ListQueuesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: ResponseTagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Networking.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    Networking.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    Networking.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "networkType"))
    Networking.struct_class = Types::Networking

    NetworkingRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    NetworkingRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    NetworkingRequest.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "networkType"))
    NetworkingRequest.struct_class = Types::NetworkingRequest

    Queue.add_member(:name, Shapes::ShapeRef.new(shape: QueueName, required: true, location_name: "name"))
    Queue.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    Queue.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    Queue.add_member(:cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterId"))
    Queue.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    Queue.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "modifiedAt"))
    Queue.add_member(:status, Shapes::ShapeRef.new(shape: QueueStatus, required: true, location_name: "status"))
    Queue.add_member(:compute_node_group_configurations, Shapes::ShapeRef.new(shape: ComputeNodeGroupConfigurationList, required: true, location_name: "computeNodeGroupConfigurations"))
    Queue.add_member(:slurm_configuration, Shapes::ShapeRef.new(shape: QueueSlurmConfiguration, location_name: "slurmConfiguration"))
    Queue.add_member(:error_info, Shapes::ShapeRef.new(shape: ErrorInfoList, location_name: "errorInfo"))
    Queue.struct_class = Types::Queue

    QueueList.member = Shapes::ShapeRef.new(shape: QueueSummary)

    QueueSlurmConfiguration.add_member(:slurm_custom_settings, Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: "slurmCustomSettings"))
    QueueSlurmConfiguration.struct_class = Types::QueueSlurmConfiguration

    QueueSlurmConfigurationRequest.add_member(:slurm_custom_settings, Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: "slurmCustomSettings"))
    QueueSlurmConfigurationRequest.struct_class = Types::QueueSlurmConfigurationRequest

    QueueSummary.add_member(:name, Shapes::ShapeRef.new(shape: QueueName, required: true, location_name: "name"))
    QueueSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    QueueSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    QueueSummary.add_member(:cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterId"))
    QueueSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    QueueSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "modifiedAt"))
    QueueSummary.add_member(:status, Shapes::ShapeRef.new(shape: QueueStatus, required: true, location_name: "status"))
    QueueSummary.struct_class = Types::QueueSummary

    RegisterComputeNodeGroupInstanceRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    RegisterComputeNodeGroupInstanceRequest.add_member(:bootstrap_id, Shapes::ShapeRef.new(shape: BootstrapId, required: true, location_name: "bootstrapId"))
    RegisterComputeNodeGroupInstanceRequest.struct_class = Types::RegisterComputeNodeGroupInstanceRequest

    RegisterComputeNodeGroupInstanceResponse.add_member(:node_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nodeID"))
    RegisterComputeNodeGroupInstanceResponse.add_member(:shared_secret, Shapes::ShapeRef.new(shape: SharedSecret, required: true, location_name: "sharedSecret"))
    RegisterComputeNodeGroupInstanceResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: Endpoints, required: true, location_name: "endpoints"))
    RegisterComputeNodeGroupInstanceResponse.struct_class = Types::RegisterComputeNodeGroupInstanceResponse

    RequestTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    RequestTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    ResponseTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ScalingConfiguration.add_member(:min_instance_count, Shapes::ShapeRef.new(shape: ScalingConfigurationMinInstanceCountInteger, required: true, location_name: "minInstanceCount"))
    ScalingConfiguration.add_member(:max_instance_count, Shapes::ShapeRef.new(shape: ScalingConfigurationMaxInstanceCountInteger, required: true, location_name: "maxInstanceCount"))
    ScalingConfiguration.struct_class = Types::ScalingConfiguration

    ScalingConfigurationRequest.add_member(:min_instance_count, Shapes::ShapeRef.new(shape: ScalingConfigurationRequestMinInstanceCountInteger, required: true, location_name: "minInstanceCount"))
    ScalingConfigurationRequest.add_member(:max_instance_count, Shapes::ShapeRef.new(shape: ScalingConfigurationRequestMaxInstanceCountInteger, required: true, location_name: "maxInstanceCount"))
    ScalingConfigurationRequest.struct_class = Types::ScalingConfigurationRequest

    Scheduler.add_member(:type, Shapes::ShapeRef.new(shape: SchedulerType, required: true, location_name: "type"))
    Scheduler.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "version"))
    Scheduler.struct_class = Types::Scheduler

    SchedulerRequest.add_member(:type, Shapes::ShapeRef.new(shape: SchedulerType, required: true, location_name: "type"))
    SchedulerRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "version"))
    SchedulerRequest.struct_class = Types::SchedulerRequest

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SlurmAuthKey.add_member(:secret_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "secretArn"))
    SlurmAuthKey.add_member(:secret_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "secretVersion"))
    SlurmAuthKey.struct_class = Types::SlurmAuthKey

    SlurmCustomSetting.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "parameterName"))
    SlurmCustomSetting.add_member(:parameter_value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "parameterValue"))
    SlurmCustomSetting.struct_class = Types::SlurmCustomSetting

    SlurmCustomSettings.member = Shapes::ShapeRef.new(shape: SlurmCustomSetting)

    SpotOptions.add_member(:allocation_strategy, Shapes::ShapeRef.new(shape: SpotAllocationStrategy, location_name: "allocationStrategy"))
    SpotOptions.struct_class = Types::SpotOptions

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubnetIdList.member = Shapes::ShapeRef.new(shape: SubnetId)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAccountingRequest.add_member(:default_purge_time_in_days, Shapes::ShapeRef.new(shape: UpdateAccountingRequestDefaultPurgeTimeInDaysInteger, location_name: "defaultPurgeTimeInDays"))
    UpdateAccountingRequest.add_member(:mode, Shapes::ShapeRef.new(shape: AccountingMode, location_name: "mode"))
    UpdateAccountingRequest.struct_class = Types::UpdateAccountingRequest

    UpdateClusterRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    UpdateClusterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: SBClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateClusterRequest.add_member(:slurm_configuration, Shapes::ShapeRef.new(shape: UpdateClusterSlurmConfigurationRequest, location_name: "slurmConfiguration"))
    UpdateClusterRequest.struct_class = Types::UpdateClusterRequest

    UpdateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    UpdateClusterResponse.struct_class = Types::UpdateClusterResponse

    UpdateClusterSlurmConfigurationRequest.add_member(:scale_down_idle_time_in_seconds, Shapes::ShapeRef.new(shape: UpdateClusterSlurmConfigurationRequestScaleDownIdleTimeInSecondsInteger, location_name: "scaleDownIdleTimeInSeconds"))
    UpdateClusterSlurmConfigurationRequest.add_member(:slurm_custom_settings, Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: "slurmCustomSettings"))
    UpdateClusterSlurmConfigurationRequest.add_member(:accounting, Shapes::ShapeRef.new(shape: UpdateAccountingRequest, location_name: "accounting"))
    UpdateClusterSlurmConfigurationRequest.struct_class = Types::UpdateClusterSlurmConfigurationRequest

    UpdateComputeNodeGroupRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    UpdateComputeNodeGroupRequest.add_member(:compute_node_group_identifier, Shapes::ShapeRef.new(shape: ComputeNodeGroupIdentifier, required: true, location_name: "computeNodeGroupIdentifier"))
    UpdateComputeNodeGroupRequest.add_member(:ami_id, Shapes::ShapeRef.new(shape: AmiId, location_name: "amiId"))
    UpdateComputeNodeGroupRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds"))
    UpdateComputeNodeGroupRequest.add_member(:custom_launch_template, Shapes::ShapeRef.new(shape: CustomLaunchTemplate, location_name: "customLaunchTemplate"))
    UpdateComputeNodeGroupRequest.add_member(:purchase_option, Shapes::ShapeRef.new(shape: PurchaseOption, location_name: "purchaseOption"))
    UpdateComputeNodeGroupRequest.add_member(:spot_options, Shapes::ShapeRef.new(shape: SpotOptions, location_name: "spotOptions"))
    UpdateComputeNodeGroupRequest.add_member(:scaling_configuration, Shapes::ShapeRef.new(shape: ScalingConfigurationRequest, location_name: "scalingConfiguration"))
    UpdateComputeNodeGroupRequest.add_member(:iam_instance_profile_arn, Shapes::ShapeRef.new(shape: InstanceProfileArn, location_name: "iamInstanceProfileArn"))
    UpdateComputeNodeGroupRequest.add_member(:slurm_configuration, Shapes::ShapeRef.new(shape: UpdateComputeNodeGroupSlurmConfigurationRequest, location_name: "slurmConfiguration"))
    UpdateComputeNodeGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: SBClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateComputeNodeGroupRequest.struct_class = Types::UpdateComputeNodeGroupRequest

    UpdateComputeNodeGroupResponse.add_member(:compute_node_group, Shapes::ShapeRef.new(shape: ComputeNodeGroup, location_name: "computeNodeGroup"))
    UpdateComputeNodeGroupResponse.struct_class = Types::UpdateComputeNodeGroupResponse

    UpdateComputeNodeGroupSlurmConfigurationRequest.add_member(:slurm_custom_settings, Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: "slurmCustomSettings"))
    UpdateComputeNodeGroupSlurmConfigurationRequest.struct_class = Types::UpdateComputeNodeGroupSlurmConfigurationRequest

    UpdateQueueRequest.add_member(:cluster_identifier, Shapes::ShapeRef.new(shape: ClusterIdentifier, required: true, location_name: "clusterIdentifier"))
    UpdateQueueRequest.add_member(:queue_identifier, Shapes::ShapeRef.new(shape: QueueIdentifier, required: true, location_name: "queueIdentifier"))
    UpdateQueueRequest.add_member(:compute_node_group_configurations, Shapes::ShapeRef.new(shape: ComputeNodeGroupConfigurationList, location_name: "computeNodeGroupConfigurations"))
    UpdateQueueRequest.add_member(:slurm_configuration, Shapes::ShapeRef.new(shape: UpdateQueueSlurmConfigurationRequest, location_name: "slurmConfiguration"))
    UpdateQueueRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: SBClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateQueueRequest.struct_class = Types::UpdateQueueRequest

    UpdateQueueResponse.add_member(:queue, Shapes::ShapeRef.new(shape: Queue, location_name: "queue"))
    UpdateQueueResponse.struct_class = Types::UpdateQueueResponse

    UpdateQueueSlurmConfigurationRequest.add_member(:slurm_custom_settings, Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: "slurmCustomSettings"))
    UpdateQueueSlurmConfigurationRequest.struct_class = Types::UpdateQueueSlurmConfigurationRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-02-10"

      api.metadata = {
        "apiVersion" => "2023-02-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "pcs",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Parallel Computing Service",
        "serviceId" => "PCS",
        "signatureVersion" => "v4",
        "signingName" => "pcs",
        "targetPrefix" => "AWSParallelComputingService",
        "uid" => "pcs-2023-02-10",
      }

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_compute_node_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateComputeNodeGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateComputeNodeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateComputeNodeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_compute_node_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteComputeNodeGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteComputeNodeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteComputeNodeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_compute_node_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComputeNodeGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetComputeNodeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComputeNodeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_compute_node_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComputeNodeGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComputeNodeGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComputeNodeGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
      end)

      api.add_operation(:register_compute_node_group_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterComputeNodeGroupInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterComputeNodeGroupInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterComputeNodeGroupInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_compute_node_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateComputeNodeGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateComputeNodeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateComputeNodeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateQueueResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
