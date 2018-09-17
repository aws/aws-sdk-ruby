# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElastiCache
  # @api private
  module ClientApi

    include Seahorse::Model

    APICallRateForCustomerExceededFault = Shapes::StructureShape.new(name: 'APICallRateForCustomerExceededFault')
    AZMode = Shapes::StringShape.new(name: 'AZMode')
    AddTagsToResourceMessage = Shapes::StructureShape.new(name: 'AddTagsToResourceMessage')
    AllowedNodeGroupId = Shapes::StringShape.new(name: 'AllowedNodeGroupId')
    AllowedNodeTypeModificationsMessage = Shapes::StructureShape.new(name: 'AllowedNodeTypeModificationsMessage')
    AuthorizationAlreadyExistsFault = Shapes::StructureShape.new(name: 'AuthorizationAlreadyExistsFault')
    AuthorizationNotFoundFault = Shapes::StructureShape.new(name: 'AuthorizationNotFoundFault')
    AuthorizeCacheSecurityGroupIngressMessage = Shapes::StructureShape.new(name: 'AuthorizeCacheSecurityGroupIngressMessage')
    AuthorizeCacheSecurityGroupIngressResult = Shapes::StructureShape.new(name: 'AuthorizeCacheSecurityGroupIngressResult')
    AutomaticFailoverStatus = Shapes::StringShape.new(name: 'AutomaticFailoverStatus')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZonesList = Shapes::ListShape.new(name: 'AvailabilityZonesList')
    AwsQueryErrorMessage = Shapes::StringShape.new(name: 'AwsQueryErrorMessage')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOptional = Shapes::BooleanShape.new(name: 'BooleanOptional')
    CacheCluster = Shapes::StructureShape.new(name: 'CacheCluster')
    CacheClusterAlreadyExistsFault = Shapes::StructureShape.new(name: 'CacheClusterAlreadyExistsFault')
    CacheClusterList = Shapes::ListShape.new(name: 'CacheClusterList')
    CacheClusterMessage = Shapes::StructureShape.new(name: 'CacheClusterMessage')
    CacheClusterNotFoundFault = Shapes::StructureShape.new(name: 'CacheClusterNotFoundFault')
    CacheEngineVersion = Shapes::StructureShape.new(name: 'CacheEngineVersion')
    CacheEngineVersionList = Shapes::ListShape.new(name: 'CacheEngineVersionList')
    CacheEngineVersionMessage = Shapes::StructureShape.new(name: 'CacheEngineVersionMessage')
    CacheNode = Shapes::StructureShape.new(name: 'CacheNode')
    CacheNodeIdsList = Shapes::ListShape.new(name: 'CacheNodeIdsList')
    CacheNodeList = Shapes::ListShape.new(name: 'CacheNodeList')
    CacheNodeTypeSpecificParameter = Shapes::StructureShape.new(name: 'CacheNodeTypeSpecificParameter')
    CacheNodeTypeSpecificParametersList = Shapes::ListShape.new(name: 'CacheNodeTypeSpecificParametersList')
    CacheNodeTypeSpecificValue = Shapes::StructureShape.new(name: 'CacheNodeTypeSpecificValue')
    CacheNodeTypeSpecificValueList = Shapes::ListShape.new(name: 'CacheNodeTypeSpecificValueList')
    CacheParameterGroup = Shapes::StructureShape.new(name: 'CacheParameterGroup')
    CacheParameterGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'CacheParameterGroupAlreadyExistsFault')
    CacheParameterGroupDetails = Shapes::StructureShape.new(name: 'CacheParameterGroupDetails')
    CacheParameterGroupList = Shapes::ListShape.new(name: 'CacheParameterGroupList')
    CacheParameterGroupNameMessage = Shapes::StructureShape.new(name: 'CacheParameterGroupNameMessage')
    CacheParameterGroupNotFoundFault = Shapes::StructureShape.new(name: 'CacheParameterGroupNotFoundFault')
    CacheParameterGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'CacheParameterGroupQuotaExceededFault')
    CacheParameterGroupStatus = Shapes::StructureShape.new(name: 'CacheParameterGroupStatus')
    CacheParameterGroupsMessage = Shapes::StructureShape.new(name: 'CacheParameterGroupsMessage')
    CacheSecurityGroup = Shapes::StructureShape.new(name: 'CacheSecurityGroup')
    CacheSecurityGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'CacheSecurityGroupAlreadyExistsFault')
    CacheSecurityGroupMembership = Shapes::StructureShape.new(name: 'CacheSecurityGroupMembership')
    CacheSecurityGroupMembershipList = Shapes::ListShape.new(name: 'CacheSecurityGroupMembershipList')
    CacheSecurityGroupMessage = Shapes::StructureShape.new(name: 'CacheSecurityGroupMessage')
    CacheSecurityGroupNameList = Shapes::ListShape.new(name: 'CacheSecurityGroupNameList')
    CacheSecurityGroupNotFoundFault = Shapes::StructureShape.new(name: 'CacheSecurityGroupNotFoundFault')
    CacheSecurityGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'CacheSecurityGroupQuotaExceededFault')
    CacheSecurityGroups = Shapes::ListShape.new(name: 'CacheSecurityGroups')
    CacheSubnetGroup = Shapes::StructureShape.new(name: 'CacheSubnetGroup')
    CacheSubnetGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'CacheSubnetGroupAlreadyExistsFault')
    CacheSubnetGroupInUse = Shapes::StructureShape.new(name: 'CacheSubnetGroupInUse')
    CacheSubnetGroupMessage = Shapes::StructureShape.new(name: 'CacheSubnetGroupMessage')
    CacheSubnetGroupNotFoundFault = Shapes::StructureShape.new(name: 'CacheSubnetGroupNotFoundFault')
    CacheSubnetGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'CacheSubnetGroupQuotaExceededFault')
    CacheSubnetGroups = Shapes::ListShape.new(name: 'CacheSubnetGroups')
    CacheSubnetQuotaExceededFault = Shapes::StructureShape.new(name: 'CacheSubnetQuotaExceededFault')
    ChangeType = Shapes::StringShape.new(name: 'ChangeType')
    ClusterIdList = Shapes::ListShape.new(name: 'ClusterIdList')
    ClusterQuotaForCustomerExceededFault = Shapes::StructureShape.new(name: 'ClusterQuotaForCustomerExceededFault')
    ConfigureShard = Shapes::StructureShape.new(name: 'ConfigureShard')
    CopySnapshotMessage = Shapes::StructureShape.new(name: 'CopySnapshotMessage')
    CopySnapshotResult = Shapes::StructureShape.new(name: 'CopySnapshotResult')
    CreateCacheClusterMessage = Shapes::StructureShape.new(name: 'CreateCacheClusterMessage')
    CreateCacheClusterResult = Shapes::StructureShape.new(name: 'CreateCacheClusterResult')
    CreateCacheParameterGroupMessage = Shapes::StructureShape.new(name: 'CreateCacheParameterGroupMessage')
    CreateCacheParameterGroupResult = Shapes::StructureShape.new(name: 'CreateCacheParameterGroupResult')
    CreateCacheSecurityGroupMessage = Shapes::StructureShape.new(name: 'CreateCacheSecurityGroupMessage')
    CreateCacheSecurityGroupResult = Shapes::StructureShape.new(name: 'CreateCacheSecurityGroupResult')
    CreateCacheSubnetGroupMessage = Shapes::StructureShape.new(name: 'CreateCacheSubnetGroupMessage')
    CreateCacheSubnetGroupResult = Shapes::StructureShape.new(name: 'CreateCacheSubnetGroupResult')
    CreateReplicationGroupMessage = Shapes::StructureShape.new(name: 'CreateReplicationGroupMessage')
    CreateReplicationGroupResult = Shapes::StructureShape.new(name: 'CreateReplicationGroupResult')
    CreateSnapshotMessage = Shapes::StructureShape.new(name: 'CreateSnapshotMessage')
    CreateSnapshotResult = Shapes::StructureShape.new(name: 'CreateSnapshotResult')
    DecreaseReplicaCountMessage = Shapes::StructureShape.new(name: 'DecreaseReplicaCountMessage')
    DecreaseReplicaCountResult = Shapes::StructureShape.new(name: 'DecreaseReplicaCountResult')
    DeleteCacheClusterMessage = Shapes::StructureShape.new(name: 'DeleteCacheClusterMessage')
    DeleteCacheClusterResult = Shapes::StructureShape.new(name: 'DeleteCacheClusterResult')
    DeleteCacheParameterGroupMessage = Shapes::StructureShape.new(name: 'DeleteCacheParameterGroupMessage')
    DeleteCacheSecurityGroupMessage = Shapes::StructureShape.new(name: 'DeleteCacheSecurityGroupMessage')
    DeleteCacheSubnetGroupMessage = Shapes::StructureShape.new(name: 'DeleteCacheSubnetGroupMessage')
    DeleteReplicationGroupMessage = Shapes::StructureShape.new(name: 'DeleteReplicationGroupMessage')
    DeleteReplicationGroupResult = Shapes::StructureShape.new(name: 'DeleteReplicationGroupResult')
    DeleteSnapshotMessage = Shapes::StructureShape.new(name: 'DeleteSnapshotMessage')
    DeleteSnapshotResult = Shapes::StructureShape.new(name: 'DeleteSnapshotResult')
    DescribeCacheClustersMessage = Shapes::StructureShape.new(name: 'DescribeCacheClustersMessage')
    DescribeCacheEngineVersionsMessage = Shapes::StructureShape.new(name: 'DescribeCacheEngineVersionsMessage')
    DescribeCacheParameterGroupsMessage = Shapes::StructureShape.new(name: 'DescribeCacheParameterGroupsMessage')
    DescribeCacheParametersMessage = Shapes::StructureShape.new(name: 'DescribeCacheParametersMessage')
    DescribeCacheSecurityGroupsMessage = Shapes::StructureShape.new(name: 'DescribeCacheSecurityGroupsMessage')
    DescribeCacheSubnetGroupsMessage = Shapes::StructureShape.new(name: 'DescribeCacheSubnetGroupsMessage')
    DescribeEngineDefaultParametersMessage = Shapes::StructureShape.new(name: 'DescribeEngineDefaultParametersMessage')
    DescribeEngineDefaultParametersResult = Shapes::StructureShape.new(name: 'DescribeEngineDefaultParametersResult')
    DescribeEventsMessage = Shapes::StructureShape.new(name: 'DescribeEventsMessage')
    DescribeReplicationGroupsMessage = Shapes::StructureShape.new(name: 'DescribeReplicationGroupsMessage')
    DescribeReservedCacheNodesMessage = Shapes::StructureShape.new(name: 'DescribeReservedCacheNodesMessage')
    DescribeReservedCacheNodesOfferingsMessage = Shapes::StructureShape.new(name: 'DescribeReservedCacheNodesOfferingsMessage')
    DescribeSnapshotsListMessage = Shapes::StructureShape.new(name: 'DescribeSnapshotsListMessage')
    DescribeSnapshotsMessage = Shapes::StructureShape.new(name: 'DescribeSnapshotsMessage')
    Double = Shapes::FloatShape.new(name: 'Double')
    EC2SecurityGroup = Shapes::StructureShape.new(name: 'EC2SecurityGroup')
    EC2SecurityGroupList = Shapes::ListShape.new(name: 'EC2SecurityGroupList')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EngineDefaults = Shapes::StructureShape.new(name: 'EngineDefaults')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventsMessage = Shapes::StructureShape.new(name: 'EventsMessage')
    IncreaseReplicaCountMessage = Shapes::StructureShape.new(name: 'IncreaseReplicaCountMessage')
    IncreaseReplicaCountResult = Shapes::StructureShape.new(name: 'IncreaseReplicaCountResult')
    InsufficientCacheClusterCapacityFault = Shapes::StructureShape.new(name: 'InsufficientCacheClusterCapacityFault')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerOptional = Shapes::IntegerShape.new(name: 'IntegerOptional')
    InvalidARNFault = Shapes::StructureShape.new(name: 'InvalidARNFault')
    InvalidCacheClusterStateFault = Shapes::StructureShape.new(name: 'InvalidCacheClusterStateFault')
    InvalidCacheParameterGroupStateFault = Shapes::StructureShape.new(name: 'InvalidCacheParameterGroupStateFault')
    InvalidCacheSecurityGroupStateFault = Shapes::StructureShape.new(name: 'InvalidCacheSecurityGroupStateFault')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidReplicationGroupStateFault = Shapes::StructureShape.new(name: 'InvalidReplicationGroupStateFault')
    InvalidSnapshotStateFault = Shapes::StructureShape.new(name: 'InvalidSnapshotStateFault')
    InvalidSubnet = Shapes::StructureShape.new(name: 'InvalidSubnet')
    InvalidVPCNetworkStateFault = Shapes::StructureShape.new(name: 'InvalidVPCNetworkStateFault')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    ListAllowedNodeTypeModificationsMessage = Shapes::StructureShape.new(name: 'ListAllowedNodeTypeModificationsMessage')
    ListTagsForResourceMessage = Shapes::StructureShape.new(name: 'ListTagsForResourceMessage')
    ModifyCacheClusterMessage = Shapes::StructureShape.new(name: 'ModifyCacheClusterMessage')
    ModifyCacheClusterResult = Shapes::StructureShape.new(name: 'ModifyCacheClusterResult')
    ModifyCacheParameterGroupMessage = Shapes::StructureShape.new(name: 'ModifyCacheParameterGroupMessage')
    ModifyCacheSubnetGroupMessage = Shapes::StructureShape.new(name: 'ModifyCacheSubnetGroupMessage')
    ModifyCacheSubnetGroupResult = Shapes::StructureShape.new(name: 'ModifyCacheSubnetGroupResult')
    ModifyReplicationGroupMessage = Shapes::StructureShape.new(name: 'ModifyReplicationGroupMessage')
    ModifyReplicationGroupResult = Shapes::StructureShape.new(name: 'ModifyReplicationGroupResult')
    ModifyReplicationGroupShardConfigurationMessage = Shapes::StructureShape.new(name: 'ModifyReplicationGroupShardConfigurationMessage')
    ModifyReplicationGroupShardConfigurationResult = Shapes::StructureShape.new(name: 'ModifyReplicationGroupShardConfigurationResult')
    NoOperationFault = Shapes::StructureShape.new(name: 'NoOperationFault')
    NodeGroup = Shapes::StructureShape.new(name: 'NodeGroup')
    NodeGroupConfiguration = Shapes::StructureShape.new(name: 'NodeGroupConfiguration')
    NodeGroupConfigurationList = Shapes::ListShape.new(name: 'NodeGroupConfigurationList')
    NodeGroupList = Shapes::ListShape.new(name: 'NodeGroupList')
    NodeGroupMember = Shapes::StructureShape.new(name: 'NodeGroupMember')
    NodeGroupMemberList = Shapes::ListShape.new(name: 'NodeGroupMemberList')
    NodeGroupNotFoundFault = Shapes::StructureShape.new(name: 'NodeGroupNotFoundFault')
    NodeGroupsPerReplicationGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'NodeGroupsPerReplicationGroupQuotaExceededFault')
    NodeGroupsToRemoveList = Shapes::ListShape.new(name: 'NodeGroupsToRemoveList')
    NodeGroupsToRetainList = Shapes::ListShape.new(name: 'NodeGroupsToRetainList')
    NodeQuotaForClusterExceededFault = Shapes::StructureShape.new(name: 'NodeQuotaForClusterExceededFault')
    NodeQuotaForCustomerExceededFault = Shapes::StructureShape.new(name: 'NodeQuotaForCustomerExceededFault')
    NodeSnapshot = Shapes::StructureShape.new(name: 'NodeSnapshot')
    NodeSnapshotList = Shapes::ListShape.new(name: 'NodeSnapshotList')
    NodeTypeList = Shapes::ListShape.new(name: 'NodeTypeList')
    NotificationConfiguration = Shapes::StructureShape.new(name: 'NotificationConfiguration')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterNameValue = Shapes::StructureShape.new(name: 'ParameterNameValue')
    ParameterNameValueList = Shapes::ListShape.new(name: 'ParameterNameValueList')
    ParametersList = Shapes::ListShape.new(name: 'ParametersList')
    PendingAutomaticFailoverStatus = Shapes::StringShape.new(name: 'PendingAutomaticFailoverStatus')
    PendingModifiedValues = Shapes::StructureShape.new(name: 'PendingModifiedValues')
    PreferredAvailabilityZoneList = Shapes::ListShape.new(name: 'PreferredAvailabilityZoneList')
    PurchaseReservedCacheNodesOfferingMessage = Shapes::StructureShape.new(name: 'PurchaseReservedCacheNodesOfferingMessage')
    PurchaseReservedCacheNodesOfferingResult = Shapes::StructureShape.new(name: 'PurchaseReservedCacheNodesOfferingResult')
    RebootCacheClusterMessage = Shapes::StructureShape.new(name: 'RebootCacheClusterMessage')
    RebootCacheClusterResult = Shapes::StructureShape.new(name: 'RebootCacheClusterResult')
    RecurringCharge = Shapes::StructureShape.new(name: 'RecurringCharge')
    RecurringChargeList = Shapes::ListShape.new(name: 'RecurringChargeList')
    RemoveReplicasList = Shapes::ListShape.new(name: 'RemoveReplicasList')
    RemoveTagsFromResourceMessage = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceMessage')
    ReplicaConfigurationList = Shapes::ListShape.new(name: 'ReplicaConfigurationList')
    ReplicationGroup = Shapes::StructureShape.new(name: 'ReplicationGroup')
    ReplicationGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'ReplicationGroupAlreadyExistsFault')
    ReplicationGroupList = Shapes::ListShape.new(name: 'ReplicationGroupList')
    ReplicationGroupMessage = Shapes::StructureShape.new(name: 'ReplicationGroupMessage')
    ReplicationGroupNotFoundFault = Shapes::StructureShape.new(name: 'ReplicationGroupNotFoundFault')
    ReplicationGroupPendingModifiedValues = Shapes::StructureShape.new(name: 'ReplicationGroupPendingModifiedValues')
    ReservedCacheNode = Shapes::StructureShape.new(name: 'ReservedCacheNode')
    ReservedCacheNodeAlreadyExistsFault = Shapes::StructureShape.new(name: 'ReservedCacheNodeAlreadyExistsFault')
    ReservedCacheNodeList = Shapes::ListShape.new(name: 'ReservedCacheNodeList')
    ReservedCacheNodeMessage = Shapes::StructureShape.new(name: 'ReservedCacheNodeMessage')
    ReservedCacheNodeNotFoundFault = Shapes::StructureShape.new(name: 'ReservedCacheNodeNotFoundFault')
    ReservedCacheNodeQuotaExceededFault = Shapes::StructureShape.new(name: 'ReservedCacheNodeQuotaExceededFault')
    ReservedCacheNodesOffering = Shapes::StructureShape.new(name: 'ReservedCacheNodesOffering')
    ReservedCacheNodesOfferingList = Shapes::ListShape.new(name: 'ReservedCacheNodesOfferingList')
    ReservedCacheNodesOfferingMessage = Shapes::StructureShape.new(name: 'ReservedCacheNodesOfferingMessage')
    ReservedCacheNodesOfferingNotFoundFault = Shapes::StructureShape.new(name: 'ReservedCacheNodesOfferingNotFoundFault')
    ResetCacheParameterGroupMessage = Shapes::StructureShape.new(name: 'ResetCacheParameterGroupMessage')
    ReshardingConfiguration = Shapes::StructureShape.new(name: 'ReshardingConfiguration')
    ReshardingConfigurationList = Shapes::ListShape.new(name: 'ReshardingConfigurationList')
    ReshardingStatus = Shapes::StructureShape.new(name: 'ReshardingStatus')
    RevokeCacheSecurityGroupIngressMessage = Shapes::StructureShape.new(name: 'RevokeCacheSecurityGroupIngressMessage')
    RevokeCacheSecurityGroupIngressResult = Shapes::StructureShape.new(name: 'RevokeCacheSecurityGroupIngressResult')
    SecurityGroupIdsList = Shapes::ListShape.new(name: 'SecurityGroupIdsList')
    SecurityGroupMembership = Shapes::StructureShape.new(name: 'SecurityGroupMembership')
    SecurityGroupMembershipList = Shapes::ListShape.new(name: 'SecurityGroupMembershipList')
    ServiceLinkedRoleNotFoundFault = Shapes::StructureShape.new(name: 'ServiceLinkedRoleNotFoundFault')
    SlotMigration = Shapes::StructureShape.new(name: 'SlotMigration')
    Snapshot = Shapes::StructureShape.new(name: 'Snapshot')
    SnapshotAlreadyExistsFault = Shapes::StructureShape.new(name: 'SnapshotAlreadyExistsFault')
    SnapshotArnsList = Shapes::ListShape.new(name: 'SnapshotArnsList')
    SnapshotFeatureNotSupportedFault = Shapes::StructureShape.new(name: 'SnapshotFeatureNotSupportedFault')
    SnapshotList = Shapes::ListShape.new(name: 'SnapshotList')
    SnapshotNotFoundFault = Shapes::StructureShape.new(name: 'SnapshotNotFoundFault')
    SnapshotQuotaExceededFault = Shapes::StructureShape.new(name: 'SnapshotQuotaExceededFault')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    String = Shapes::StringShape.new(name: 'String')
    Subnet = Shapes::StructureShape.new(name: 'Subnet')
    SubnetIdentifierList = Shapes::ListShape.new(name: 'SubnetIdentifierList')
    SubnetInUse = Shapes::StructureShape.new(name: 'SubnetInUse')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagListMessage = Shapes::StructureShape.new(name: 'TagListMessage')
    TagNotFoundFault = Shapes::StructureShape.new(name: 'TagNotFoundFault')
    TagQuotaPerResourceExceeded = Shapes::StructureShape.new(name: 'TagQuotaPerResourceExceeded')
    TestFailoverMessage = Shapes::StructureShape.new(name: 'TestFailoverMessage')
    TestFailoverNotAvailableFault = Shapes::StructureShape.new(name: 'TestFailoverNotAvailableFault')
    TestFailoverResult = Shapes::StructureShape.new(name: 'TestFailoverResult')

    AddTagsToResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    AddTagsToResourceMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsToResourceMessage.struct_class = Types::AddTagsToResourceMessage

    AllowedNodeTypeModificationsMessage.add_member(:scale_up_modifications, Shapes::ShapeRef.new(shape: NodeTypeList, location_name: "ScaleUpModifications"))
    AllowedNodeTypeModificationsMessage.struct_class = Types::AllowedNodeTypeModificationsMessage

    AuthorizeCacheSecurityGroupIngressMessage.add_member(:cache_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheSecurityGroupName"))
    AuthorizeCacheSecurityGroupIngressMessage.add_member(:ec2_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EC2SecurityGroupName"))
    AuthorizeCacheSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EC2SecurityGroupOwnerId"))
    AuthorizeCacheSecurityGroupIngressMessage.struct_class = Types::AuthorizeCacheSecurityGroupIngressMessage

    AuthorizeCacheSecurityGroupIngressResult.add_member(:cache_security_group, Shapes::ShapeRef.new(shape: CacheSecurityGroup, location_name: "CacheSecurityGroup"))
    AuthorizeCacheSecurityGroupIngressResult.struct_class = Types::AuthorizeCacheSecurityGroupIngressResult

    AvailabilityZone.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    AvailabilityZonesList.member = Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone")

    CacheCluster.add_member(:cache_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "CacheClusterId"))
    CacheCluster.add_member(:configuration_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "ConfigurationEndpoint"))
    CacheCluster.add_member(:client_download_landing_page, Shapes::ShapeRef.new(shape: String, location_name: "ClientDownloadLandingPage"))
    CacheCluster.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    CacheCluster.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    CacheCluster.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CacheCluster.add_member(:cache_cluster_status, Shapes::ShapeRef.new(shape: String, location_name: "CacheClusterStatus"))
    CacheCluster.add_member(:num_cache_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumCacheNodes"))
    CacheCluster.add_member(:preferred_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "PreferredAvailabilityZone"))
    CacheCluster.add_member(:cache_cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CacheClusterCreateTime"))
    CacheCluster.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CacheCluster.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: PendingModifiedValues, location_name: "PendingModifiedValues"))
    CacheCluster.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "NotificationConfiguration"))
    CacheCluster.add_member(:cache_security_groups, Shapes::ShapeRef.new(shape: CacheSecurityGroupMembershipList, location_name: "CacheSecurityGroups"))
    CacheCluster.add_member(:cache_parameter_group, Shapes::ShapeRef.new(shape: CacheParameterGroupStatus, location_name: "CacheParameterGroup"))
    CacheCluster.add_member(:cache_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheSubnetGroupName"))
    CacheCluster.add_member(:cache_nodes, Shapes::ShapeRef.new(shape: CacheNodeList, location_name: "CacheNodes"))
    CacheCluster.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoMinorVersionUpgrade"))
    CacheCluster.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupMembershipList, location_name: "SecurityGroups"))
    CacheCluster.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationGroupId"))
    CacheCluster.add_member(:snapshot_retention_limit, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    CacheCluster.add_member(:snapshot_window, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotWindow"))
    CacheCluster.add_member(:auth_token_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AuthTokenEnabled"))
    CacheCluster.add_member(:transit_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TransitEncryptionEnabled"))
    CacheCluster.add_member(:at_rest_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AtRestEncryptionEnabled"))
    CacheCluster.struct_class = Types::CacheCluster

    CacheClusterList.member = Shapes::ShapeRef.new(shape: CacheCluster, location_name: "CacheCluster")

    CacheClusterMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    CacheClusterMessage.add_member(:cache_clusters, Shapes::ShapeRef.new(shape: CacheClusterList, location_name: "CacheClusters"))
    CacheClusterMessage.struct_class = Types::CacheClusterMessage

    CacheEngineVersion.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    CacheEngineVersion.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CacheEngineVersion.add_member(:cache_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupFamily"))
    CacheEngineVersion.add_member(:cache_engine_description, Shapes::ShapeRef.new(shape: String, location_name: "CacheEngineDescription"))
    CacheEngineVersion.add_member(:cache_engine_version_description, Shapes::ShapeRef.new(shape: String, location_name: "CacheEngineVersionDescription"))
    CacheEngineVersion.struct_class = Types::CacheEngineVersion

    CacheEngineVersionList.member = Shapes::ShapeRef.new(shape: CacheEngineVersion, location_name: "CacheEngineVersion")

    CacheEngineVersionMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    CacheEngineVersionMessage.add_member(:cache_engine_versions, Shapes::ShapeRef.new(shape: CacheEngineVersionList, location_name: "CacheEngineVersions"))
    CacheEngineVersionMessage.struct_class = Types::CacheEngineVersionMessage

    CacheNode.add_member(:cache_node_id, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeId"))
    CacheNode.add_member(:cache_node_status, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeStatus"))
    CacheNode.add_member(:cache_node_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CacheNodeCreateTime"))
    CacheNode.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    CacheNode.add_member(:parameter_group_status, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupStatus"))
    CacheNode.add_member(:source_cache_node_id, Shapes::ShapeRef.new(shape: String, location_name: "SourceCacheNodeId"))
    CacheNode.add_member(:customer_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "CustomerAvailabilityZone"))
    CacheNode.struct_class = Types::CacheNode

    CacheNodeIdsList.member = Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeId")

    CacheNodeList.member = Shapes::ShapeRef.new(shape: CacheNode, location_name: "CacheNode")

    CacheNodeTypeSpecificParameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterName"))
    CacheNodeTypeSpecificParameter.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CacheNodeTypeSpecificParameter.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    CacheNodeTypeSpecificParameter.add_member(:data_type, Shapes::ShapeRef.new(shape: String, location_name: "DataType"))
    CacheNodeTypeSpecificParameter.add_member(:allowed_values, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValues"))
    CacheNodeTypeSpecificParameter.add_member(:is_modifiable, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsModifiable"))
    CacheNodeTypeSpecificParameter.add_member(:minimum_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MinimumEngineVersion"))
    CacheNodeTypeSpecificParameter.add_member(:cache_node_type_specific_values, Shapes::ShapeRef.new(shape: CacheNodeTypeSpecificValueList, location_name: "CacheNodeTypeSpecificValues"))
    CacheNodeTypeSpecificParameter.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "ChangeType"))
    CacheNodeTypeSpecificParameter.struct_class = Types::CacheNodeTypeSpecificParameter

    CacheNodeTypeSpecificParametersList.member = Shapes::ShapeRef.new(shape: CacheNodeTypeSpecificParameter, location_name: "CacheNodeTypeSpecificParameter")

    CacheNodeTypeSpecificValue.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    CacheNodeTypeSpecificValue.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    CacheNodeTypeSpecificValue.struct_class = Types::CacheNodeTypeSpecificValue

    CacheNodeTypeSpecificValueList.member = Shapes::ShapeRef.new(shape: CacheNodeTypeSpecificValue, location_name: "CacheNodeTypeSpecificValue")

    CacheParameterGroup.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupName"))
    CacheParameterGroup.add_member(:cache_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupFamily"))
    CacheParameterGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CacheParameterGroup.struct_class = Types::CacheParameterGroup

    CacheParameterGroupDetails.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    CacheParameterGroupDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    CacheParameterGroupDetails.add_member(:cache_node_type_specific_parameters, Shapes::ShapeRef.new(shape: CacheNodeTypeSpecificParametersList, location_name: "CacheNodeTypeSpecificParameters"))
    CacheParameterGroupDetails.struct_class = Types::CacheParameterGroupDetails

    CacheParameterGroupList.member = Shapes::ShapeRef.new(shape: CacheParameterGroup, location_name: "CacheParameterGroup")

    CacheParameterGroupNameMessage.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupName"))
    CacheParameterGroupNameMessage.struct_class = Types::CacheParameterGroupNameMessage

    CacheParameterGroupStatus.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupName"))
    CacheParameterGroupStatus.add_member(:parameter_apply_status, Shapes::ShapeRef.new(shape: String, location_name: "ParameterApplyStatus"))
    CacheParameterGroupStatus.add_member(:cache_node_ids_to_reboot, Shapes::ShapeRef.new(shape: CacheNodeIdsList, location_name: "CacheNodeIdsToReboot"))
    CacheParameterGroupStatus.struct_class = Types::CacheParameterGroupStatus

    CacheParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    CacheParameterGroupsMessage.add_member(:cache_parameter_groups, Shapes::ShapeRef.new(shape: CacheParameterGroupList, location_name: "CacheParameterGroups"))
    CacheParameterGroupsMessage.struct_class = Types::CacheParameterGroupsMessage

    CacheSecurityGroup.add_member(:owner_id, Shapes::ShapeRef.new(shape: String, location_name: "OwnerId"))
    CacheSecurityGroup.add_member(:cache_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheSecurityGroupName"))
    CacheSecurityGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CacheSecurityGroup.add_member(:ec2_security_groups, Shapes::ShapeRef.new(shape: EC2SecurityGroupList, location_name: "EC2SecurityGroups"))
    CacheSecurityGroup.struct_class = Types::CacheSecurityGroup

    CacheSecurityGroupMembership.add_member(:cache_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheSecurityGroupName"))
    CacheSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    CacheSecurityGroupMembership.struct_class = Types::CacheSecurityGroupMembership

    CacheSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: CacheSecurityGroupMembership, location_name: "CacheSecurityGroup")

    CacheSecurityGroupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    CacheSecurityGroupMessage.add_member(:cache_security_groups, Shapes::ShapeRef.new(shape: CacheSecurityGroups, location_name: "CacheSecurityGroups"))
    CacheSecurityGroupMessage.struct_class = Types::CacheSecurityGroupMessage

    CacheSecurityGroupNameList.member = Shapes::ShapeRef.new(shape: String, location_name: "CacheSecurityGroupName")

    CacheSecurityGroups.member = Shapes::ShapeRef.new(shape: CacheSecurityGroup, location_name: "CacheSecurityGroup")

    CacheSubnetGroup.add_member(:cache_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheSubnetGroupName"))
    CacheSubnetGroup.add_member(:cache_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "CacheSubnetGroupDescription"))
    CacheSubnetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    CacheSubnetGroup.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetList, location_name: "Subnets"))
    CacheSubnetGroup.struct_class = Types::CacheSubnetGroup

    CacheSubnetGroupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    CacheSubnetGroupMessage.add_member(:cache_subnet_groups, Shapes::ShapeRef.new(shape: CacheSubnetGroups, location_name: "CacheSubnetGroups"))
    CacheSubnetGroupMessage.struct_class = Types::CacheSubnetGroupMessage

    CacheSubnetGroups.member = Shapes::ShapeRef.new(shape: CacheSubnetGroup, location_name: "CacheSubnetGroup")

    ClusterIdList.member = Shapes::ShapeRef.new(shape: String, location_name: "ClusterId")

    ConfigureShard.add_member(:node_group_id, Shapes::ShapeRef.new(shape: AllowedNodeGroupId, required: true, location_name: "NodeGroupId"))
    ConfigureShard.add_member(:new_replica_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "NewReplicaCount"))
    ConfigureShard.add_member(:preferred_availability_zones, Shapes::ShapeRef.new(shape: PreferredAvailabilityZoneList, location_name: "PreferredAvailabilityZones"))
    ConfigureShard.struct_class = Types::ConfigureShard

    CopySnapshotMessage.add_member(:source_snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceSnapshotName"))
    CopySnapshotMessage.add_member(:target_snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetSnapshotName"))
    CopySnapshotMessage.add_member(:target_bucket, Shapes::ShapeRef.new(shape: String, location_name: "TargetBucket"))
    CopySnapshotMessage.struct_class = Types::CopySnapshotMessage

    CopySnapshotResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    CopySnapshotResult.struct_class = Types::CopySnapshotResult

    CreateCacheClusterMessage.add_member(:cache_cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheClusterId"))
    CreateCacheClusterMessage.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationGroupId"))
    CreateCacheClusterMessage.add_member(:az_mode, Shapes::ShapeRef.new(shape: AZMode, location_name: "AZMode"))
    CreateCacheClusterMessage.add_member(:preferred_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "PreferredAvailabilityZone"))
    CreateCacheClusterMessage.add_member(:preferred_availability_zones, Shapes::ShapeRef.new(shape: PreferredAvailabilityZoneList, location_name: "PreferredAvailabilityZones"))
    CreateCacheClusterMessage.add_member(:num_cache_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumCacheNodes"))
    CreateCacheClusterMessage.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    CreateCacheClusterMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    CreateCacheClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateCacheClusterMessage.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupName"))
    CreateCacheClusterMessage.add_member(:cache_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheSubnetGroupName"))
    CreateCacheClusterMessage.add_member(:cache_security_group_names, Shapes::ShapeRef.new(shape: CacheSecurityGroupNameList, location_name: "CacheSecurityGroupNames"))
    CreateCacheClusterMessage.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: "SecurityGroupIds"))
    CreateCacheClusterMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateCacheClusterMessage.add_member(:snapshot_arns, Shapes::ShapeRef.new(shape: SnapshotArnsList, location_name: "SnapshotArns"))
    CreateCacheClusterMessage.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotName"))
    CreateCacheClusterMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateCacheClusterMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateCacheClusterMessage.add_member(:notification_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "NotificationTopicArn"))
    CreateCacheClusterMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateCacheClusterMessage.add_member(:snapshot_retention_limit, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    CreateCacheClusterMessage.add_member(:snapshot_window, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotWindow"))
    CreateCacheClusterMessage.add_member(:auth_token, Shapes::ShapeRef.new(shape: String, location_name: "AuthToken"))
    CreateCacheClusterMessage.struct_class = Types::CreateCacheClusterMessage

    CreateCacheClusterResult.add_member(:cache_cluster, Shapes::ShapeRef.new(shape: CacheCluster, location_name: "CacheCluster"))
    CreateCacheClusterResult.struct_class = Types::CreateCacheClusterResult

    CreateCacheParameterGroupMessage.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheParameterGroupName"))
    CreateCacheParameterGroupMessage.add_member(:cache_parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheParameterGroupFamily"))
    CreateCacheParameterGroupMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateCacheParameterGroupMessage.struct_class = Types::CreateCacheParameterGroupMessage

    CreateCacheParameterGroupResult.add_member(:cache_parameter_group, Shapes::ShapeRef.new(shape: CacheParameterGroup, location_name: "CacheParameterGroup"))
    CreateCacheParameterGroupResult.struct_class = Types::CreateCacheParameterGroupResult

    CreateCacheSecurityGroupMessage.add_member(:cache_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheSecurityGroupName"))
    CreateCacheSecurityGroupMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateCacheSecurityGroupMessage.struct_class = Types::CreateCacheSecurityGroupMessage

    CreateCacheSecurityGroupResult.add_member(:cache_security_group, Shapes::ShapeRef.new(shape: CacheSecurityGroup, location_name: "CacheSecurityGroup"))
    CreateCacheSecurityGroupResult.struct_class = Types::CreateCacheSecurityGroupResult

    CreateCacheSubnetGroupMessage.add_member(:cache_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheSubnetGroupName"))
    CreateCacheSubnetGroupMessage.add_member(:cache_subnet_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheSubnetGroupDescription"))
    CreateCacheSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    CreateCacheSubnetGroupMessage.struct_class = Types::CreateCacheSubnetGroupMessage

    CreateCacheSubnetGroupResult.add_member(:cache_subnet_group, Shapes::ShapeRef.new(shape: CacheSubnetGroup, location_name: "CacheSubnetGroup"))
    CreateCacheSubnetGroupResult.struct_class = Types::CreateCacheSubnetGroupResult

    CreateReplicationGroupMessage.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationGroupId"))
    CreateReplicationGroupMessage.add_member(:replication_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationGroupDescription"))
    CreateReplicationGroupMessage.add_member(:primary_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "PrimaryClusterId"))
    CreateReplicationGroupMessage.add_member(:automatic_failover_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutomaticFailoverEnabled"))
    CreateReplicationGroupMessage.add_member(:num_cache_clusters, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumCacheClusters"))
    CreateReplicationGroupMessage.add_member(:preferred_cache_cluster_a_zs, Shapes::ShapeRef.new(shape: AvailabilityZonesList, location_name: "PreferredCacheClusterAZs"))
    CreateReplicationGroupMessage.add_member(:num_node_groups, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumNodeGroups"))
    CreateReplicationGroupMessage.add_member(:replicas_per_node_group, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ReplicasPerNodeGroup"))
    CreateReplicationGroupMessage.add_member(:node_group_configuration, Shapes::ShapeRef.new(shape: NodeGroupConfigurationList, location_name: "NodeGroupConfiguration"))
    CreateReplicationGroupMessage.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    CreateReplicationGroupMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    CreateReplicationGroupMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateReplicationGroupMessage.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupName"))
    CreateReplicationGroupMessage.add_member(:cache_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheSubnetGroupName"))
    CreateReplicationGroupMessage.add_member(:cache_security_group_names, Shapes::ShapeRef.new(shape: CacheSecurityGroupNameList, location_name: "CacheSecurityGroupNames"))
    CreateReplicationGroupMessage.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: "SecurityGroupIds"))
    CreateReplicationGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateReplicationGroupMessage.add_member(:snapshot_arns, Shapes::ShapeRef.new(shape: SnapshotArnsList, location_name: "SnapshotArns"))
    CreateReplicationGroupMessage.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotName"))
    CreateReplicationGroupMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateReplicationGroupMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateReplicationGroupMessage.add_member(:notification_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "NotificationTopicArn"))
    CreateReplicationGroupMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateReplicationGroupMessage.add_member(:snapshot_retention_limit, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    CreateReplicationGroupMessage.add_member(:snapshot_window, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotWindow"))
    CreateReplicationGroupMessage.add_member(:auth_token, Shapes::ShapeRef.new(shape: String, location_name: "AuthToken"))
    CreateReplicationGroupMessage.add_member(:transit_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TransitEncryptionEnabled"))
    CreateReplicationGroupMessage.add_member(:at_rest_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AtRestEncryptionEnabled"))
    CreateReplicationGroupMessage.struct_class = Types::CreateReplicationGroupMessage

    CreateReplicationGroupResult.add_member(:replication_group, Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: "ReplicationGroup"))
    CreateReplicationGroupResult.struct_class = Types::CreateReplicationGroupResult

    CreateSnapshotMessage.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationGroupId"))
    CreateSnapshotMessage.add_member(:cache_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "CacheClusterId"))
    CreateSnapshotMessage.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotName"))
    CreateSnapshotMessage.struct_class = Types::CreateSnapshotMessage

    CreateSnapshotResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    CreateSnapshotResult.struct_class = Types::CreateSnapshotResult

    DecreaseReplicaCountMessage.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationGroupId"))
    DecreaseReplicaCountMessage.add_member(:new_replica_count, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NewReplicaCount"))
    DecreaseReplicaCountMessage.add_member(:replica_configuration, Shapes::ShapeRef.new(shape: ReplicaConfigurationList, location_name: "ReplicaConfiguration"))
    DecreaseReplicaCountMessage.add_member(:replicas_to_remove, Shapes::ShapeRef.new(shape: RemoveReplicasList, location_name: "ReplicasToRemove"))
    DecreaseReplicaCountMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "ApplyImmediately"))
    DecreaseReplicaCountMessage.struct_class = Types::DecreaseReplicaCountMessage

    DecreaseReplicaCountResult.add_member(:replication_group, Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: "ReplicationGroup"))
    DecreaseReplicaCountResult.struct_class = Types::DecreaseReplicaCountResult

    DeleteCacheClusterMessage.add_member(:cache_cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheClusterId"))
    DeleteCacheClusterMessage.add_member(:final_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "FinalSnapshotIdentifier"))
    DeleteCacheClusterMessage.struct_class = Types::DeleteCacheClusterMessage

    DeleteCacheClusterResult.add_member(:cache_cluster, Shapes::ShapeRef.new(shape: CacheCluster, location_name: "CacheCluster"))
    DeleteCacheClusterResult.struct_class = Types::DeleteCacheClusterResult

    DeleteCacheParameterGroupMessage.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheParameterGroupName"))
    DeleteCacheParameterGroupMessage.struct_class = Types::DeleteCacheParameterGroupMessage

    DeleteCacheSecurityGroupMessage.add_member(:cache_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheSecurityGroupName"))
    DeleteCacheSecurityGroupMessage.struct_class = Types::DeleteCacheSecurityGroupMessage

    DeleteCacheSubnetGroupMessage.add_member(:cache_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheSubnetGroupName"))
    DeleteCacheSubnetGroupMessage.struct_class = Types::DeleteCacheSubnetGroupMessage

    DeleteReplicationGroupMessage.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationGroupId"))
    DeleteReplicationGroupMessage.add_member(:retain_primary_cluster, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "RetainPrimaryCluster"))
    DeleteReplicationGroupMessage.add_member(:final_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "FinalSnapshotIdentifier"))
    DeleteReplicationGroupMessage.struct_class = Types::DeleteReplicationGroupMessage

    DeleteReplicationGroupResult.add_member(:replication_group, Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: "ReplicationGroup"))
    DeleteReplicationGroupResult.struct_class = Types::DeleteReplicationGroupResult

    DeleteSnapshotMessage.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotName"))
    DeleteSnapshotMessage.struct_class = Types::DeleteSnapshotMessage

    DeleteSnapshotResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    DeleteSnapshotResult.struct_class = Types::DeleteSnapshotResult

    DescribeCacheClustersMessage.add_member(:cache_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "CacheClusterId"))
    DescribeCacheClustersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCacheClustersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCacheClustersMessage.add_member(:show_cache_node_info, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ShowCacheNodeInfo"))
    DescribeCacheClustersMessage.add_member(:show_cache_clusters_not_in_replication_groups, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ShowCacheClustersNotInReplicationGroups"))
    DescribeCacheClustersMessage.struct_class = Types::DescribeCacheClustersMessage

    DescribeCacheEngineVersionsMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DescribeCacheEngineVersionsMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DescribeCacheEngineVersionsMessage.add_member(:cache_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupFamily"))
    DescribeCacheEngineVersionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCacheEngineVersionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCacheEngineVersionsMessage.add_member(:default_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultOnly"))
    DescribeCacheEngineVersionsMessage.struct_class = Types::DescribeCacheEngineVersionsMessage

    DescribeCacheParameterGroupsMessage.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupName"))
    DescribeCacheParameterGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCacheParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCacheParameterGroupsMessage.struct_class = Types::DescribeCacheParameterGroupsMessage

    DescribeCacheParametersMessage.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheParameterGroupName"))
    DescribeCacheParametersMessage.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    DescribeCacheParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCacheParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCacheParametersMessage.struct_class = Types::DescribeCacheParametersMessage

    DescribeCacheSecurityGroupsMessage.add_member(:cache_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheSecurityGroupName"))
    DescribeCacheSecurityGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCacheSecurityGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCacheSecurityGroupsMessage.struct_class = Types::DescribeCacheSecurityGroupsMessage

    DescribeCacheSubnetGroupsMessage.add_member(:cache_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheSubnetGroupName"))
    DescribeCacheSubnetGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCacheSubnetGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCacheSubnetGroupsMessage.struct_class = Types::DescribeCacheSubnetGroupsMessage

    DescribeEngineDefaultParametersMessage.add_member(:cache_parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheParameterGroupFamily"))
    DescribeEngineDefaultParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEngineDefaultParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEngineDefaultParametersMessage.struct_class = Types::DescribeEngineDefaultParametersMessage

    DescribeEngineDefaultParametersResult.add_member(:engine_defaults, Shapes::ShapeRef.new(shape: EngineDefaults, location_name: "EngineDefaults"))
    DescribeEngineDefaultParametersResult.struct_class = Types::DescribeEngineDefaultParametersResult

    DescribeEventsMessage.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    DescribeEventsMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    DescribeEventsMessage.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    DescribeEventsMessage.add_member(:duration, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Duration"))
    DescribeEventsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventsMessage.struct_class = Types::DescribeEventsMessage

    DescribeReplicationGroupsMessage.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationGroupId"))
    DescribeReplicationGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReplicationGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReplicationGroupsMessage.struct_class = Types::DescribeReplicationGroupsMessage

    DescribeReservedCacheNodesMessage.add_member(:reserved_cache_node_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedCacheNodeId"))
    DescribeReservedCacheNodesMessage.add_member(:reserved_cache_nodes_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedCacheNodesOfferingId"))
    DescribeReservedCacheNodesMessage.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    DescribeReservedCacheNodesMessage.add_member(:duration, Shapes::ShapeRef.new(shape: String, location_name: "Duration"))
    DescribeReservedCacheNodesMessage.add_member(:product_description, Shapes::ShapeRef.new(shape: String, location_name: "ProductDescription"))
    DescribeReservedCacheNodesMessage.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    DescribeReservedCacheNodesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReservedCacheNodesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReservedCacheNodesMessage.struct_class = Types::DescribeReservedCacheNodesMessage

    DescribeReservedCacheNodesOfferingsMessage.add_member(:reserved_cache_nodes_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedCacheNodesOfferingId"))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:duration, Shapes::ShapeRef.new(shape: String, location_name: "Duration"))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:product_description, Shapes::ShapeRef.new(shape: String, location_name: "ProductDescription"))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReservedCacheNodesOfferingsMessage.struct_class = Types::DescribeReservedCacheNodesOfferingsMessage

    DescribeSnapshotsListMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSnapshotsListMessage.add_member(:snapshots, Shapes::ShapeRef.new(shape: SnapshotList, location_name: "Snapshots"))
    DescribeSnapshotsListMessage.struct_class = Types::DescribeSnapshotsListMessage

    DescribeSnapshotsMessage.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationGroupId"))
    DescribeSnapshotsMessage.add_member(:cache_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "CacheClusterId"))
    DescribeSnapshotsMessage.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotName"))
    DescribeSnapshotsMessage.add_member(:snapshot_source, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotSource"))
    DescribeSnapshotsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSnapshotsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeSnapshotsMessage.add_member(:show_node_group_config, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ShowNodeGroupConfig"))
    DescribeSnapshotsMessage.struct_class = Types::DescribeSnapshotsMessage

    EC2SecurityGroup.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    EC2SecurityGroup.add_member(:ec2_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupName"))
    EC2SecurityGroup.add_member(:ec2_security_group_owner_id, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupOwnerId"))
    EC2SecurityGroup.struct_class = Types::EC2SecurityGroup

    EC2SecurityGroupList.member = Shapes::ShapeRef.new(shape: EC2SecurityGroup, location_name: "EC2SecurityGroup")

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "Address"))
    Endpoint.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    Endpoint.struct_class = Types::Endpoint

    EngineDefaults.add_member(:cache_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupFamily"))
    EngineDefaults.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EngineDefaults.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    EngineDefaults.add_member(:cache_node_type_specific_parameters, Shapes::ShapeRef.new(shape: CacheNodeTypeSpecificParametersList, location_name: "CacheNodeTypeSpecificParameters"))
    EngineDefaults.struct_class = Types::EngineDefaults

    Event.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    Event.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    Event.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Event.add_member(:date, Shapes::ShapeRef.new(shape: TStamp, location_name: "Date"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event, location_name: "Event")

    EventsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EventsMessage.add_member(:events, Shapes::ShapeRef.new(shape: EventList, location_name: "Events"))
    EventsMessage.struct_class = Types::EventsMessage

    IncreaseReplicaCountMessage.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationGroupId"))
    IncreaseReplicaCountMessage.add_member(:new_replica_count, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NewReplicaCount"))
    IncreaseReplicaCountMessage.add_member(:replica_configuration, Shapes::ShapeRef.new(shape: ReplicaConfigurationList, location_name: "ReplicaConfiguration"))
    IncreaseReplicaCountMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "ApplyImmediately"))
    IncreaseReplicaCountMessage.struct_class = Types::IncreaseReplicaCountMessage

    IncreaseReplicaCountResult.add_member(:replication_group, Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: "ReplicationGroup"))
    IncreaseReplicaCountResult.struct_class = Types::IncreaseReplicaCountResult

    KeyList.member = Shapes::ShapeRef.new(shape: String)

    ListAllowedNodeTypeModificationsMessage.add_member(:cache_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "CacheClusterId"))
    ListAllowedNodeTypeModificationsMessage.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationGroupId"))
    ListAllowedNodeTypeModificationsMessage.struct_class = Types::ListAllowedNodeTypeModificationsMessage

    ListTagsForResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    ListTagsForResourceMessage.struct_class = Types::ListTagsForResourceMessage

    ModifyCacheClusterMessage.add_member(:cache_cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheClusterId"))
    ModifyCacheClusterMessage.add_member(:num_cache_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumCacheNodes"))
    ModifyCacheClusterMessage.add_member(:cache_node_ids_to_remove, Shapes::ShapeRef.new(shape: CacheNodeIdsList, location_name: "CacheNodeIdsToRemove"))
    ModifyCacheClusterMessage.add_member(:az_mode, Shapes::ShapeRef.new(shape: AZMode, location_name: "AZMode"))
    ModifyCacheClusterMessage.add_member(:new_availability_zones, Shapes::ShapeRef.new(shape: PreferredAvailabilityZoneList, location_name: "NewAvailabilityZones"))
    ModifyCacheClusterMessage.add_member(:cache_security_group_names, Shapes::ShapeRef.new(shape: CacheSecurityGroupNameList, location_name: "CacheSecurityGroupNames"))
    ModifyCacheClusterMessage.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: "SecurityGroupIds"))
    ModifyCacheClusterMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ModifyCacheClusterMessage.add_member(:notification_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "NotificationTopicArn"))
    ModifyCacheClusterMessage.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupName"))
    ModifyCacheClusterMessage.add_member(:notification_topic_status, Shapes::ShapeRef.new(shape: String, location_name: "NotificationTopicStatus"))
    ModifyCacheClusterMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    ModifyCacheClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyCacheClusterMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    ModifyCacheClusterMessage.add_member(:snapshot_retention_limit, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    ModifyCacheClusterMessage.add_member(:snapshot_window, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotWindow"))
    ModifyCacheClusterMessage.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    ModifyCacheClusterMessage.struct_class = Types::ModifyCacheClusterMessage

    ModifyCacheClusterResult.add_member(:cache_cluster, Shapes::ShapeRef.new(shape: CacheCluster, location_name: "CacheCluster"))
    ModifyCacheClusterResult.struct_class = Types::ModifyCacheClusterResult

    ModifyCacheParameterGroupMessage.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheParameterGroupName"))
    ModifyCacheParameterGroupMessage.add_member(:parameter_name_values, Shapes::ShapeRef.new(shape: ParameterNameValueList, required: true, location_name: "ParameterNameValues"))
    ModifyCacheParameterGroupMessage.struct_class = Types::ModifyCacheParameterGroupMessage

    ModifyCacheSubnetGroupMessage.add_member(:cache_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheSubnetGroupName"))
    ModifyCacheSubnetGroupMessage.add_member(:cache_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "CacheSubnetGroupDescription"))
    ModifyCacheSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: "SubnetIds"))
    ModifyCacheSubnetGroupMessage.struct_class = Types::ModifyCacheSubnetGroupMessage

    ModifyCacheSubnetGroupResult.add_member(:cache_subnet_group, Shapes::ShapeRef.new(shape: CacheSubnetGroup, location_name: "CacheSubnetGroup"))
    ModifyCacheSubnetGroupResult.struct_class = Types::ModifyCacheSubnetGroupResult

    ModifyReplicationGroupMessage.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationGroupId"))
    ModifyReplicationGroupMessage.add_member(:replication_group_description, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationGroupDescription"))
    ModifyReplicationGroupMessage.add_member(:primary_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "PrimaryClusterId"))
    ModifyReplicationGroupMessage.add_member(:snapshotting_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "SnapshottingClusterId"))
    ModifyReplicationGroupMessage.add_member(:automatic_failover_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutomaticFailoverEnabled"))
    ModifyReplicationGroupMessage.add_member(:cache_security_group_names, Shapes::ShapeRef.new(shape: CacheSecurityGroupNameList, location_name: "CacheSecurityGroupNames"))
    ModifyReplicationGroupMessage.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: "SecurityGroupIds"))
    ModifyReplicationGroupMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ModifyReplicationGroupMessage.add_member(:notification_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "NotificationTopicArn"))
    ModifyReplicationGroupMessage.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupName"))
    ModifyReplicationGroupMessage.add_member(:notification_topic_status, Shapes::ShapeRef.new(shape: String, location_name: "NotificationTopicStatus"))
    ModifyReplicationGroupMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    ModifyReplicationGroupMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyReplicationGroupMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    ModifyReplicationGroupMessage.add_member(:snapshot_retention_limit, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    ModifyReplicationGroupMessage.add_member(:snapshot_window, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotWindow"))
    ModifyReplicationGroupMessage.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    ModifyReplicationGroupMessage.add_member(:node_group_id, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "NodeGroupId"))
    ModifyReplicationGroupMessage.struct_class = Types::ModifyReplicationGroupMessage

    ModifyReplicationGroupResult.add_member(:replication_group, Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: "ReplicationGroup"))
    ModifyReplicationGroupResult.struct_class = Types::ModifyReplicationGroupResult

    ModifyReplicationGroupShardConfigurationMessage.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationGroupId"))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:node_group_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "NodeGroupCount"))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "ApplyImmediately"))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:resharding_configuration, Shapes::ShapeRef.new(shape: ReshardingConfigurationList, location_name: "ReshardingConfiguration"))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:node_groups_to_remove, Shapes::ShapeRef.new(shape: NodeGroupsToRemoveList, location_name: "NodeGroupsToRemove"))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:node_groups_to_retain, Shapes::ShapeRef.new(shape: NodeGroupsToRetainList, location_name: "NodeGroupsToRetain"))
    ModifyReplicationGroupShardConfigurationMessage.struct_class = Types::ModifyReplicationGroupShardConfigurationMessage

    ModifyReplicationGroupShardConfigurationResult.add_member(:replication_group, Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: "ReplicationGroup"))
    ModifyReplicationGroupShardConfigurationResult.struct_class = Types::ModifyReplicationGroupShardConfigurationResult

    NodeGroup.add_member(:node_group_id, Shapes::ShapeRef.new(shape: String, location_name: "NodeGroupId"))
    NodeGroup.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    NodeGroup.add_member(:primary_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "PrimaryEndpoint"))
    NodeGroup.add_member(:slots, Shapes::ShapeRef.new(shape: String, location_name: "Slots"))
    NodeGroup.add_member(:node_group_members, Shapes::ShapeRef.new(shape: NodeGroupMemberList, location_name: "NodeGroupMembers"))
    NodeGroup.struct_class = Types::NodeGroup

    NodeGroupConfiguration.add_member(:node_group_id, Shapes::ShapeRef.new(shape: AllowedNodeGroupId, location_name: "NodeGroupId"))
    NodeGroupConfiguration.add_member(:slots, Shapes::ShapeRef.new(shape: String, location_name: "Slots"))
    NodeGroupConfiguration.add_member(:replica_count, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ReplicaCount"))
    NodeGroupConfiguration.add_member(:primary_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "PrimaryAvailabilityZone"))
    NodeGroupConfiguration.add_member(:replica_availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZonesList, location_name: "ReplicaAvailabilityZones"))
    NodeGroupConfiguration.struct_class = Types::NodeGroupConfiguration

    NodeGroupConfigurationList.member = Shapes::ShapeRef.new(shape: NodeGroupConfiguration, location_name: "NodeGroupConfiguration")

    NodeGroupList.member = Shapes::ShapeRef.new(shape: NodeGroup, location_name: "NodeGroup")

    NodeGroupMember.add_member(:cache_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "CacheClusterId"))
    NodeGroupMember.add_member(:cache_node_id, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeId"))
    NodeGroupMember.add_member(:read_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "ReadEndpoint"))
    NodeGroupMember.add_member(:preferred_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "PreferredAvailabilityZone"))
    NodeGroupMember.add_member(:current_role, Shapes::ShapeRef.new(shape: String, location_name: "CurrentRole"))
    NodeGroupMember.struct_class = Types::NodeGroupMember

    NodeGroupMemberList.member = Shapes::ShapeRef.new(shape: NodeGroupMember, location_name: "NodeGroupMember")

    NodeGroupsToRemoveList.member = Shapes::ShapeRef.new(shape: AllowedNodeGroupId, location_name: "NodeGroupToRemove")

    NodeGroupsToRetainList.member = Shapes::ShapeRef.new(shape: AllowedNodeGroupId, location_name: "NodeGroupToRetain")

    NodeSnapshot.add_member(:cache_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "CacheClusterId"))
    NodeSnapshot.add_member(:node_group_id, Shapes::ShapeRef.new(shape: String, location_name: "NodeGroupId"))
    NodeSnapshot.add_member(:cache_node_id, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeId"))
    NodeSnapshot.add_member(:node_group_configuration, Shapes::ShapeRef.new(shape: NodeGroupConfiguration, location_name: "NodeGroupConfiguration"))
    NodeSnapshot.add_member(:cache_size, Shapes::ShapeRef.new(shape: String, location_name: "CacheSize"))
    NodeSnapshot.add_member(:cache_node_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CacheNodeCreateTime"))
    NodeSnapshot.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "SnapshotCreateTime"))
    NodeSnapshot.struct_class = Types::NodeSnapshot

    NodeSnapshotList.member = Shapes::ShapeRef.new(shape: NodeSnapshot, location_name: "NodeSnapshot")

    NodeTypeList.member = Shapes::ShapeRef.new(shape: String)

    NotificationConfiguration.add_member(:topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "TopicArn"))
    NotificationConfiguration.add_member(:topic_status, Shapes::ShapeRef.new(shape: String, location_name: "TopicStatus"))
    NotificationConfiguration.struct_class = Types::NotificationConfiguration

    Parameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterName"))
    Parameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: String, location_name: "ParameterValue"))
    Parameter.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Parameter.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    Parameter.add_member(:data_type, Shapes::ShapeRef.new(shape: String, location_name: "DataType"))
    Parameter.add_member(:allowed_values, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValues"))
    Parameter.add_member(:is_modifiable, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsModifiable"))
    Parameter.add_member(:minimum_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MinimumEngineVersion"))
    Parameter.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "ChangeType"))
    Parameter.struct_class = Types::Parameter

    ParameterNameValue.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterName"))
    ParameterNameValue.add_member(:parameter_value, Shapes::ShapeRef.new(shape: String, location_name: "ParameterValue"))
    ParameterNameValue.struct_class = Types::ParameterNameValue

    ParameterNameValueList.member = Shapes::ShapeRef.new(shape: ParameterNameValue, location_name: "ParameterNameValue")

    ParametersList.member = Shapes::ShapeRef.new(shape: Parameter, location_name: "Parameter")

    PendingModifiedValues.add_member(:num_cache_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumCacheNodes"))
    PendingModifiedValues.add_member(:cache_node_ids_to_remove, Shapes::ShapeRef.new(shape: CacheNodeIdsList, location_name: "CacheNodeIdsToRemove"))
    PendingModifiedValues.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    PendingModifiedValues.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    PendingModifiedValues.struct_class = Types::PendingModifiedValues

    PreferredAvailabilityZoneList.member = Shapes::ShapeRef.new(shape: String, location_name: "PreferredAvailabilityZone")

    PurchaseReservedCacheNodesOfferingMessage.add_member(:reserved_cache_nodes_offering_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReservedCacheNodesOfferingId"))
    PurchaseReservedCacheNodesOfferingMessage.add_member(:reserved_cache_node_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedCacheNodeId"))
    PurchaseReservedCacheNodesOfferingMessage.add_member(:cache_node_count, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "CacheNodeCount"))
    PurchaseReservedCacheNodesOfferingMessage.struct_class = Types::PurchaseReservedCacheNodesOfferingMessage

    PurchaseReservedCacheNodesOfferingResult.add_member(:reserved_cache_node, Shapes::ShapeRef.new(shape: ReservedCacheNode, location_name: "ReservedCacheNode"))
    PurchaseReservedCacheNodesOfferingResult.struct_class = Types::PurchaseReservedCacheNodesOfferingResult

    RebootCacheClusterMessage.add_member(:cache_cluster_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheClusterId"))
    RebootCacheClusterMessage.add_member(:cache_node_ids_to_reboot, Shapes::ShapeRef.new(shape: CacheNodeIdsList, required: true, location_name: "CacheNodeIdsToReboot"))
    RebootCacheClusterMessage.struct_class = Types::RebootCacheClusterMessage

    RebootCacheClusterResult.add_member(:cache_cluster, Shapes::ShapeRef.new(shape: CacheCluster, location_name: "CacheCluster"))
    RebootCacheClusterResult.struct_class = Types::RebootCacheClusterResult

    RecurringCharge.add_member(:recurring_charge_amount, Shapes::ShapeRef.new(shape: Double, location_name: "RecurringChargeAmount"))
    RecurringCharge.add_member(:recurring_charge_frequency, Shapes::ShapeRef.new(shape: String, location_name: "RecurringChargeFrequency"))
    RecurringCharge.struct_class = Types::RecurringCharge

    RecurringChargeList.member = Shapes::ShapeRef.new(shape: RecurringCharge, location_name: "RecurringCharge")

    RemoveReplicasList.member = Shapes::ShapeRef.new(shape: String)

    RemoveTagsFromResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "TagKeys"))
    RemoveTagsFromResourceMessage.struct_class = Types::RemoveTagsFromResourceMessage

    ReplicaConfigurationList.member = Shapes::ShapeRef.new(shape: ConfigureShard, location_name: "ConfigureShard")

    ReplicationGroup.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationGroupId"))
    ReplicationGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ReplicationGroup.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ReplicationGroup.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: ReplicationGroupPendingModifiedValues, location_name: "PendingModifiedValues"))
    ReplicationGroup.add_member(:member_clusters, Shapes::ShapeRef.new(shape: ClusterIdList, location_name: "MemberClusters"))
    ReplicationGroup.add_member(:node_groups, Shapes::ShapeRef.new(shape: NodeGroupList, location_name: "NodeGroups"))
    ReplicationGroup.add_member(:snapshotting_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "SnapshottingClusterId"))
    ReplicationGroup.add_member(:automatic_failover, Shapes::ShapeRef.new(shape: AutomaticFailoverStatus, location_name: "AutomaticFailover"))
    ReplicationGroup.add_member(:configuration_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "ConfigurationEndpoint"))
    ReplicationGroup.add_member(:snapshot_retention_limit, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    ReplicationGroup.add_member(:snapshot_window, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotWindow"))
    ReplicationGroup.add_member(:cluster_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ClusterEnabled"))
    ReplicationGroup.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    ReplicationGroup.add_member(:auth_token_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AuthTokenEnabled"))
    ReplicationGroup.add_member(:transit_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TransitEncryptionEnabled"))
    ReplicationGroup.add_member(:at_rest_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AtRestEncryptionEnabled"))
    ReplicationGroup.struct_class = Types::ReplicationGroup

    ReplicationGroupList.member = Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: "ReplicationGroup")

    ReplicationGroupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ReplicationGroupMessage.add_member(:replication_groups, Shapes::ShapeRef.new(shape: ReplicationGroupList, location_name: "ReplicationGroups"))
    ReplicationGroupMessage.struct_class = Types::ReplicationGroupMessage

    ReplicationGroupPendingModifiedValues.add_member(:primary_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "PrimaryClusterId"))
    ReplicationGroupPendingModifiedValues.add_member(:automatic_failover_status, Shapes::ShapeRef.new(shape: PendingAutomaticFailoverStatus, location_name: "AutomaticFailoverStatus"))
    ReplicationGroupPendingModifiedValues.add_member(:resharding, Shapes::ShapeRef.new(shape: ReshardingStatus, location_name: "Resharding"))
    ReplicationGroupPendingModifiedValues.struct_class = Types::ReplicationGroupPendingModifiedValues

    ReservedCacheNode.add_member(:reserved_cache_node_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedCacheNodeId"))
    ReservedCacheNode.add_member(:reserved_cache_nodes_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedCacheNodesOfferingId"))
    ReservedCacheNode.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    ReservedCacheNode.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    ReservedCacheNode.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    ReservedCacheNode.add_member(:fixed_price, Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedCacheNode.add_member(:usage_price, Shapes::ShapeRef.new(shape: Double, location_name: "UsagePrice"))
    ReservedCacheNode.add_member(:cache_node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "CacheNodeCount"))
    ReservedCacheNode.add_member(:product_description, Shapes::ShapeRef.new(shape: String, location_name: "ProductDescription"))
    ReservedCacheNode.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    ReservedCacheNode.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    ReservedCacheNode.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedCacheNode.add_member(:reservation_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReservationARN"))
    ReservedCacheNode.struct_class = Types::ReservedCacheNode

    ReservedCacheNodeList.member = Shapes::ShapeRef.new(shape: ReservedCacheNode, location_name: "ReservedCacheNode")

    ReservedCacheNodeMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ReservedCacheNodeMessage.add_member(:reserved_cache_nodes, Shapes::ShapeRef.new(shape: ReservedCacheNodeList, location_name: "ReservedCacheNodes"))
    ReservedCacheNodeMessage.struct_class = Types::ReservedCacheNodeMessage

    ReservedCacheNodesOffering.add_member(:reserved_cache_nodes_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedCacheNodesOfferingId"))
    ReservedCacheNodesOffering.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    ReservedCacheNodesOffering.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    ReservedCacheNodesOffering.add_member(:fixed_price, Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedCacheNodesOffering.add_member(:usage_price, Shapes::ShapeRef.new(shape: Double, location_name: "UsagePrice"))
    ReservedCacheNodesOffering.add_member(:product_description, Shapes::ShapeRef.new(shape: String, location_name: "ProductDescription"))
    ReservedCacheNodesOffering.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    ReservedCacheNodesOffering.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedCacheNodesOffering.struct_class = Types::ReservedCacheNodesOffering

    ReservedCacheNodesOfferingList.member = Shapes::ShapeRef.new(shape: ReservedCacheNodesOffering, location_name: "ReservedCacheNodesOffering")

    ReservedCacheNodesOfferingMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ReservedCacheNodesOfferingMessage.add_member(:reserved_cache_nodes_offerings, Shapes::ShapeRef.new(shape: ReservedCacheNodesOfferingList, location_name: "ReservedCacheNodesOfferings"))
    ReservedCacheNodesOfferingMessage.struct_class = Types::ReservedCacheNodesOfferingMessage

    ResetCacheParameterGroupMessage.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheParameterGroupName"))
    ResetCacheParameterGroupMessage.add_member(:reset_all_parameters, Shapes::ShapeRef.new(shape: Boolean, location_name: "ResetAllParameters"))
    ResetCacheParameterGroupMessage.add_member(:parameter_name_values, Shapes::ShapeRef.new(shape: ParameterNameValueList, location_name: "ParameterNameValues"))
    ResetCacheParameterGroupMessage.struct_class = Types::ResetCacheParameterGroupMessage

    ReshardingConfiguration.add_member(:node_group_id, Shapes::ShapeRef.new(shape: AllowedNodeGroupId, location_name: "NodeGroupId"))
    ReshardingConfiguration.add_member(:preferred_availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZonesList, location_name: "PreferredAvailabilityZones"))
    ReshardingConfiguration.struct_class = Types::ReshardingConfiguration

    ReshardingConfigurationList.member = Shapes::ShapeRef.new(shape: ReshardingConfiguration, location_name: "ReshardingConfiguration")

    ReshardingStatus.add_member(:slot_migration, Shapes::ShapeRef.new(shape: SlotMigration, location_name: "SlotMigration"))
    ReshardingStatus.struct_class = Types::ReshardingStatus

    RevokeCacheSecurityGroupIngressMessage.add_member(:cache_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CacheSecurityGroupName"))
    RevokeCacheSecurityGroupIngressMessage.add_member(:ec2_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EC2SecurityGroupName"))
    RevokeCacheSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EC2SecurityGroupOwnerId"))
    RevokeCacheSecurityGroupIngressMessage.struct_class = Types::RevokeCacheSecurityGroupIngressMessage

    RevokeCacheSecurityGroupIngressResult.add_member(:cache_security_group, Shapes::ShapeRef.new(shape: CacheSecurityGroup, location_name: "CacheSecurityGroup"))
    RevokeCacheSecurityGroupIngressResult.struct_class = Types::RevokeCacheSecurityGroupIngressResult

    SecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: String, location_name: "SecurityGroupId")

    SecurityGroupMembership.add_member(:security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "SecurityGroupId"))
    SecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    SecurityGroupMembership.struct_class = Types::SecurityGroupMembership

    SecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: SecurityGroupMembership)

    SlotMigration.add_member(:progress_percentage, Shapes::ShapeRef.new(shape: Double, location_name: "ProgressPercentage"))
    SlotMigration.struct_class = Types::SlotMigration

    Snapshot.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotName"))
    Snapshot.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationGroupId"))
    Snapshot.add_member(:replication_group_description, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationGroupDescription"))
    Snapshot.add_member(:cache_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "CacheClusterId"))
    Snapshot.add_member(:snapshot_status, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotStatus"))
    Snapshot.add_member(:snapshot_source, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotSource"))
    Snapshot.add_member(:cache_node_type, Shapes::ShapeRef.new(shape: String, location_name: "CacheNodeType"))
    Snapshot.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    Snapshot.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    Snapshot.add_member(:num_cache_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumCacheNodes"))
    Snapshot.add_member(:preferred_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "PreferredAvailabilityZone"))
    Snapshot.add_member(:cache_cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CacheClusterCreateTime"))
    Snapshot.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    Snapshot.add_member(:topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "TopicArn"))
    Snapshot.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    Snapshot.add_member(:cache_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheParameterGroupName"))
    Snapshot.add_member(:cache_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "CacheSubnetGroupName"))
    Snapshot.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    Snapshot.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoMinorVersionUpgrade"))
    Snapshot.add_member(:snapshot_retention_limit, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    Snapshot.add_member(:snapshot_window, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotWindow"))
    Snapshot.add_member(:num_node_groups, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumNodeGroups"))
    Snapshot.add_member(:automatic_failover, Shapes::ShapeRef.new(shape: AutomaticFailoverStatus, location_name: "AutomaticFailover"))
    Snapshot.add_member(:node_snapshots, Shapes::ShapeRef.new(shape: NodeSnapshotList, location_name: "NodeSnapshots"))
    Snapshot.struct_class = Types::Snapshot

    SnapshotArnsList.member = Shapes::ShapeRef.new(shape: String, location_name: "SnapshotArn")

    SnapshotList.member = Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot")

    Subnet.add_member(:subnet_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "SubnetAvailabilityZone"))
    Subnet.struct_class = Types::Subnet

    SubnetIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier")

    SubnetList.member = Shapes::ShapeRef.new(shape: Subnet, location_name: "Subnet")

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag, location_name: "Tag")

    TagListMessage.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    TagListMessage.struct_class = Types::TagListMessage

    TestFailoverMessage.add_member(:replication_group_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReplicationGroupId"))
    TestFailoverMessage.add_member(:node_group_id, Shapes::ShapeRef.new(shape: AllowedNodeGroupId, required: true, location_name: "NodeGroupId"))
    TestFailoverMessage.struct_class = Types::TestFailoverMessage

    TestFailoverResult.add_member(:replication_group, Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: "ReplicationGroup"))
    TestFailoverResult.struct_class = Types::TestFailoverResult


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-02-02"

      api.metadata = {
        "apiVersion" => "2015-02-02",
        "endpointPrefix" => "elasticache",
        "protocol" => "query",
        "serviceFullName" => "Amazon ElastiCache",
        "serviceId" => "ElastiCache",
        "signatureVersion" => "v4",
        "uid" => "elasticache-2015-02-02",
        "xmlNamespace" => "http://elasticache.amazonaws.com/doc/2015-02-02/",
      }

      api.add_operation(:add_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: TagListMessage)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidARNFault)
      end)

      api.add_operation(:authorize_cache_security_group_ingress, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AuthorizeCacheSecurityGroupIngress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AuthorizeCacheSecurityGroupIngressMessage)
        o.output = Shapes::ShapeRef.new(shape: AuthorizeCacheSecurityGroupIngressResult)
        o.errors << Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:copy_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopySnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopySnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: CopySnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:create_cache_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCacheCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCacheClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateCacheClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:create_cache_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCacheParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCacheParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateCacheParameterGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: CacheParameterGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheParameterGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:create_cache_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCacheSecurityGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCacheSecurityGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateCacheSecurityGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: CacheSecurityGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheSecurityGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:create_cache_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCacheSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCacheSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateCacheSubnetGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: CacheSubnetGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheSubnetGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheSubnetQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
      end)

      api.add_operation(:create_replication_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateReplicationGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        o.errors << Shapes::ShapeRef.new(shape: NodeGroupsPerReplicationGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:create_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotFeatureNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:decrease_replica_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DecreaseReplicaCount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DecreaseReplicaCountMessage)
        o.output = Shapes::ShapeRef.new(shape: DecreaseReplicaCountResult)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeGroupsPerReplicationGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: NoOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:delete_cache_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCacheCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCacheClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteCacheClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotFeatureNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:delete_cache_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCacheParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCacheParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:delete_cache_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCacheSecurityGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCacheSecurityGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:delete_cache_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCacheSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCacheSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: CacheSubnetGroupInUse)
        o.errors << Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
      end)

      api.add_operation(:delete_replication_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotFeatureNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:delete_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:describe_cache_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCacheClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCacheClustersMessage)
        o.output = Shapes::ShapeRef.new(shape: CacheClusterMessage)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_cache_engine_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCacheEngineVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCacheEngineVersionsMessage)
        o.output = Shapes::ShapeRef.new(shape: CacheEngineVersionMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_cache_parameter_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCacheParameterGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCacheParameterGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: CacheParameterGroupsMessage)
        o.errors << Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_cache_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCacheParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCacheParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: CacheParameterGroupDetails)
        o.errors << Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_cache_security_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCacheSecurityGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCacheSecurityGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: CacheSecurityGroupMessage)
        o.errors << Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_cache_subnet_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCacheSubnetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCacheSubnetGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: CacheSubnetGroupMessage)
        o.errors << Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_engine_default_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEngineDefaultParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEngineDefaultParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEngineDefaultParametersResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "engine_defaults.marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        o.output = Shapes::ShapeRef.new(shape: EventsMessage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_replication_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: ReplicationGroupMessage)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_reserved_cache_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedCacheNodes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedCacheNodesMessage)
        o.output = Shapes::ShapeRef.new(shape: ReservedCacheNodeMessage)
        o.errors << Shapes::ShapeRef.new(shape: ReservedCacheNodeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_reserved_cache_nodes_offerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedCacheNodesOfferings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedCacheNodesOfferingsMessage)
        o.output = Shapes::ShapeRef.new(shape: ReservedCacheNodesOfferingMessage)
        o.errors << Shapes::ShapeRef.new(shape: ReservedCacheNodesOfferingNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSnapshotsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeSnapshotsListMessage)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:increase_replica_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "IncreaseReplicaCount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: IncreaseReplicaCountMessage)
        o.output = Shapes::ShapeRef.new(shape: IncreaseReplicaCountResult)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeGroupsPerReplicationGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NoOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:list_allowed_node_type_modifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAllowedNodeTypeModifications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAllowedNodeTypeModificationsMessage)
        o.output = Shapes::ShapeRef.new(shape: AllowedNodeTypeModificationsMessage)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: TagListMessage)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidARNFault)
      end)

      api.add_operation(:modify_cache_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyCacheCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyCacheClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyCacheClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:modify_cache_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyCacheParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyCacheParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CacheParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:modify_cache_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyCacheSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyCacheSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyCacheSubnetGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheSubnetQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetInUse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
      end)

      api.add_operation(:modify_replication_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyReplicationGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyReplicationGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyReplicationGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:modify_replication_group_shard_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyReplicationGroupShardConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyReplicationGroupShardConfigurationMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyReplicationGroupShardConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeGroupsPerReplicationGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:purchase_reserved_cache_nodes_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PurchaseReservedCacheNodesOffering"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PurchaseReservedCacheNodesOfferingMessage)
        o.output = Shapes::ShapeRef.new(shape: PurchaseReservedCacheNodesOfferingResult)
        o.errors << Shapes::ShapeRef.new(shape: ReservedCacheNodesOfferingNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedCacheNodeAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedCacheNodeQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:reboot_cache_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootCacheCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootCacheClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: RebootCacheClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
      end)

      api.add_operation(:remove_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: TagListMessage)
        o.errors << Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidARNFault)
        o.errors << Shapes::ShapeRef.new(shape: TagNotFoundFault)
      end)

      api.add_operation(:reset_cache_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetCacheParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetCacheParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CacheParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:revoke_cache_security_group_ingress, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeCacheSecurityGroupIngress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeCacheSecurityGroupIngressMessage)
        o.output = Shapes::ShapeRef.new(shape: RevokeCacheSecurityGroupIngressResult)
        o.errors << Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:test_failover, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestFailover"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestFailoverMessage)
        o.output = Shapes::ShapeRef.new(shape: TestFailoverResult)
        o.errors << Shapes::ShapeRef.new(shape: APICallRateForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TestFailoverNotAvailableFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)
    end

  end
end
