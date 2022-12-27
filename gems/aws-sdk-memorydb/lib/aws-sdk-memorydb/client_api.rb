# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MemoryDB
  # @api private
  module ClientApi

    include Seahorse::Model

    ACL = Shapes::StructureShape.new(name: 'ACL')
    ACLAlreadyExistsFault = Shapes::StructureShape.new(name: 'ACLAlreadyExistsFault')
    ACLClusterNameList = Shapes::ListShape.new(name: 'ACLClusterNameList')
    ACLList = Shapes::ListShape.new(name: 'ACLList')
    ACLName = Shapes::StringShape.new(name: 'ACLName')
    ACLNameList = Shapes::ListShape.new(name: 'ACLNameList')
    ACLNotFoundFault = Shapes::StructureShape.new(name: 'ACLNotFoundFault')
    ACLPendingChanges = Shapes::StructureShape.new(name: 'ACLPendingChanges')
    ACLQuotaExceededFault = Shapes::StructureShape.new(name: 'ACLQuotaExceededFault')
    ACLsUpdateStatus = Shapes::StructureShape.new(name: 'ACLsUpdateStatus')
    APICallRateForCustomerExceededFault = Shapes::StructureShape.new(name: 'APICallRateForCustomerExceededFault')
    AZStatus = Shapes::StringShape.new(name: 'AZStatus')
    AccessString = Shapes::StringShape.new(name: 'AccessString')
    Authentication = Shapes::StructureShape.new(name: 'Authentication')
    AuthenticationMode = Shapes::StructureShape.new(name: 'AuthenticationMode')
    AuthenticationType = Shapes::StringShape.new(name: 'AuthenticationType')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AwsQueryErrorMessage = Shapes::StringShape.new(name: 'AwsQueryErrorMessage')
    BatchUpdateClusterRequest = Shapes::StructureShape.new(name: 'BatchUpdateClusterRequest')
    BatchUpdateClusterResponse = Shapes::StructureShape.new(name: 'BatchUpdateClusterResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOptional = Shapes::BooleanShape.new(name: 'BooleanOptional')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterAlreadyExistsFault = Shapes::StructureShape.new(name: 'ClusterAlreadyExistsFault')
    ClusterConfiguration = Shapes::StructureShape.new(name: 'ClusterConfiguration')
    ClusterList = Shapes::ListShape.new(name: 'ClusterList')
    ClusterNameList = Shapes::ListShape.new(name: 'ClusterNameList')
    ClusterNotFoundFault = Shapes::StructureShape.new(name: 'ClusterNotFoundFault')
    ClusterPendingUpdates = Shapes::StructureShape.new(name: 'ClusterPendingUpdates')
    ClusterQuotaForCustomerExceededFault = Shapes::StructureShape.new(name: 'ClusterQuotaForCustomerExceededFault')
    CopySnapshotRequest = Shapes::StructureShape.new(name: 'CopySnapshotRequest')
    CopySnapshotResponse = Shapes::StructureShape.new(name: 'CopySnapshotResponse')
    CreateACLRequest = Shapes::StructureShape.new(name: 'CreateACLRequest')
    CreateACLResponse = Shapes::StructureShape.new(name: 'CreateACLResponse')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateParameterGroupRequest = Shapes::StructureShape.new(name: 'CreateParameterGroupRequest')
    CreateParameterGroupResponse = Shapes::StructureShape.new(name: 'CreateParameterGroupResponse')
    CreateSnapshotRequest = Shapes::StructureShape.new(name: 'CreateSnapshotRequest')
    CreateSnapshotResponse = Shapes::StructureShape.new(name: 'CreateSnapshotResponse')
    CreateSubnetGroupRequest = Shapes::StructureShape.new(name: 'CreateSubnetGroupRequest')
    CreateSubnetGroupResponse = Shapes::StructureShape.new(name: 'CreateSubnetGroupResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    DataTieringStatus = Shapes::StringShape.new(name: 'DataTieringStatus')
    DefaultUserRequired = Shapes::StructureShape.new(name: 'DefaultUserRequired')
    DeleteACLRequest = Shapes::StructureShape.new(name: 'DeleteACLRequest')
    DeleteACLResponse = Shapes::StructureShape.new(name: 'DeleteACLResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteParameterGroupRequest = Shapes::StructureShape.new(name: 'DeleteParameterGroupRequest')
    DeleteParameterGroupResponse = Shapes::StructureShape.new(name: 'DeleteParameterGroupResponse')
    DeleteSnapshotRequest = Shapes::StructureShape.new(name: 'DeleteSnapshotRequest')
    DeleteSnapshotResponse = Shapes::StructureShape.new(name: 'DeleteSnapshotResponse')
    DeleteSubnetGroupRequest = Shapes::StructureShape.new(name: 'DeleteSubnetGroupRequest')
    DeleteSubnetGroupResponse = Shapes::StructureShape.new(name: 'DeleteSubnetGroupResponse')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResponse = Shapes::StructureShape.new(name: 'DeleteUserResponse')
    DescribeACLsRequest = Shapes::StructureShape.new(name: 'DescribeACLsRequest')
    DescribeACLsResponse = Shapes::StructureShape.new(name: 'DescribeACLsResponse')
    DescribeClustersRequest = Shapes::StructureShape.new(name: 'DescribeClustersRequest')
    DescribeClustersResponse = Shapes::StructureShape.new(name: 'DescribeClustersResponse')
    DescribeEngineVersionsRequest = Shapes::StructureShape.new(name: 'DescribeEngineVersionsRequest')
    DescribeEngineVersionsResponse = Shapes::StructureShape.new(name: 'DescribeEngineVersionsResponse')
    DescribeEventsRequest = Shapes::StructureShape.new(name: 'DescribeEventsRequest')
    DescribeEventsResponse = Shapes::StructureShape.new(name: 'DescribeEventsResponse')
    DescribeParameterGroupsRequest = Shapes::StructureShape.new(name: 'DescribeParameterGroupsRequest')
    DescribeParameterGroupsResponse = Shapes::StructureShape.new(name: 'DescribeParameterGroupsResponse')
    DescribeParametersRequest = Shapes::StructureShape.new(name: 'DescribeParametersRequest')
    DescribeParametersResponse = Shapes::StructureShape.new(name: 'DescribeParametersResponse')
    DescribeReservedNodesOfferingsRequest = Shapes::StructureShape.new(name: 'DescribeReservedNodesOfferingsRequest')
    DescribeReservedNodesOfferingsResponse = Shapes::StructureShape.new(name: 'DescribeReservedNodesOfferingsResponse')
    DescribeReservedNodesRequest = Shapes::StructureShape.new(name: 'DescribeReservedNodesRequest')
    DescribeReservedNodesResponse = Shapes::StructureShape.new(name: 'DescribeReservedNodesResponse')
    DescribeServiceUpdatesRequest = Shapes::StructureShape.new(name: 'DescribeServiceUpdatesRequest')
    DescribeServiceUpdatesResponse = Shapes::StructureShape.new(name: 'DescribeServiceUpdatesResponse')
    DescribeSnapshotsRequest = Shapes::StructureShape.new(name: 'DescribeSnapshotsRequest')
    DescribeSnapshotsResponse = Shapes::StructureShape.new(name: 'DescribeSnapshotsResponse')
    DescribeSubnetGroupsRequest = Shapes::StructureShape.new(name: 'DescribeSubnetGroupsRequest')
    DescribeSubnetGroupsResponse = Shapes::StructureShape.new(name: 'DescribeSubnetGroupsResponse')
    DescribeUsersRequest = Shapes::StructureShape.new(name: 'DescribeUsersRequest')
    DescribeUsersResponse = Shapes::StructureShape.new(name: 'DescribeUsersResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    DuplicateUserNameFault = Shapes::StructureShape.new(name: 'DuplicateUserNameFault')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EngineVersionInfo = Shapes::StructureShape.new(name: 'EngineVersionInfo')
    EngineVersionInfoList = Shapes::ListShape.new(name: 'EngineVersionInfoList')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventList = Shapes::ListShape.new(name: 'EventList')
    FailoverShardRequest = Shapes::StructureShape.new(name: 'FailoverShardRequest')
    FailoverShardResponse = Shapes::StructureShape.new(name: 'FailoverShardResponse')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    InputAuthenticationType = Shapes::StringShape.new(name: 'InputAuthenticationType')
    InsufficientClusterCapacityFault = Shapes::StructureShape.new(name: 'InsufficientClusterCapacityFault')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerOptional = Shapes::IntegerShape.new(name: 'IntegerOptional')
    InvalidACLStateFault = Shapes::StructureShape.new(name: 'InvalidACLStateFault')
    InvalidARNFault = Shapes::StructureShape.new(name: 'InvalidARNFault')
    InvalidClusterStateFault = Shapes::StructureShape.new(name: 'InvalidClusterStateFault')
    InvalidCredentialsException = Shapes::StructureShape.new(name: 'InvalidCredentialsException')
    InvalidKMSKeyFault = Shapes::StructureShape.new(name: 'InvalidKMSKeyFault')
    InvalidNodeStateFault = Shapes::StructureShape.new(name: 'InvalidNodeStateFault')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
    InvalidParameterGroupStateFault = Shapes::StructureShape.new(name: 'InvalidParameterGroupStateFault')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidSnapshotStateFault = Shapes::StructureShape.new(name: 'InvalidSnapshotStateFault')
    InvalidSubnet = Shapes::StructureShape.new(name: 'InvalidSubnet')
    InvalidUserStateFault = Shapes::StructureShape.new(name: 'InvalidUserStateFault')
    InvalidVPCNetworkStateFault = Shapes::StructureShape.new(name: 'InvalidVPCNetworkStateFault')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListAllowedNodeTypeUpdatesRequest = Shapes::StructureShape.new(name: 'ListAllowedNodeTypeUpdatesRequest')
    ListAllowedNodeTypeUpdatesResponse = Shapes::StructureShape.new(name: 'ListAllowedNodeTypeUpdatesResponse')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    NoOperationFault = Shapes::StructureShape.new(name: 'NoOperationFault')
    Node = Shapes::StructureShape.new(name: 'Node')
    NodeList = Shapes::ListShape.new(name: 'NodeList')
    NodeQuotaForClusterExceededFault = Shapes::StructureShape.new(name: 'NodeQuotaForClusterExceededFault')
    NodeQuotaForCustomerExceededFault = Shapes::StructureShape.new(name: 'NodeQuotaForCustomerExceededFault')
    NodeTypeList = Shapes::ListShape.new(name: 'NodeTypeList')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterGroup = Shapes::StructureShape.new(name: 'ParameterGroup')
    ParameterGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'ParameterGroupAlreadyExistsFault')
    ParameterGroupList = Shapes::ListShape.new(name: 'ParameterGroupList')
    ParameterGroupNotFoundFault = Shapes::StructureShape.new(name: 'ParameterGroupNotFoundFault')
    ParameterGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'ParameterGroupQuotaExceededFault')
    ParameterNameList = Shapes::ListShape.new(name: 'ParameterNameList')
    ParameterNameValue = Shapes::StructureShape.new(name: 'ParameterNameValue')
    ParameterNameValueList = Shapes::ListShape.new(name: 'ParameterNameValueList')
    ParametersList = Shapes::ListShape.new(name: 'ParametersList')
    PasswordListInput = Shapes::ListShape.new(name: 'PasswordListInput')
    PendingModifiedServiceUpdate = Shapes::StructureShape.new(name: 'PendingModifiedServiceUpdate')
    PendingModifiedServiceUpdateList = Shapes::ListShape.new(name: 'PendingModifiedServiceUpdateList')
    PurchaseReservedNodesOfferingRequest = Shapes::StructureShape.new(name: 'PurchaseReservedNodesOfferingRequest')
    PurchaseReservedNodesOfferingResponse = Shapes::StructureShape.new(name: 'PurchaseReservedNodesOfferingResponse')
    RecurringCharge = Shapes::StructureShape.new(name: 'RecurringCharge')
    RecurringChargeList = Shapes::ListShape.new(name: 'RecurringChargeList')
    ReplicaConfigurationRequest = Shapes::StructureShape.new(name: 'ReplicaConfigurationRequest')
    ReservedNode = Shapes::StructureShape.new(name: 'ReservedNode')
    ReservedNodeAlreadyExistsFault = Shapes::StructureShape.new(name: 'ReservedNodeAlreadyExistsFault')
    ReservedNodeList = Shapes::ListShape.new(name: 'ReservedNodeList')
    ReservedNodeNotFoundFault = Shapes::StructureShape.new(name: 'ReservedNodeNotFoundFault')
    ReservedNodeQuotaExceededFault = Shapes::StructureShape.new(name: 'ReservedNodeQuotaExceededFault')
    ReservedNodesOffering = Shapes::StructureShape.new(name: 'ReservedNodesOffering')
    ReservedNodesOfferingList = Shapes::ListShape.new(name: 'ReservedNodesOfferingList')
    ReservedNodesOfferingNotFoundFault = Shapes::StructureShape.new(name: 'ReservedNodesOfferingNotFoundFault')
    ResetParameterGroupRequest = Shapes::StructureShape.new(name: 'ResetParameterGroupRequest')
    ResetParameterGroupResponse = Shapes::StructureShape.new(name: 'ResetParameterGroupResponse')
    ReshardingStatus = Shapes::StructureShape.new(name: 'ReshardingStatus')
    SecurityGroupIdsList = Shapes::ListShape.new(name: 'SecurityGroupIdsList')
    SecurityGroupMembership = Shapes::StructureShape.new(name: 'SecurityGroupMembership')
    SecurityGroupMembershipList = Shapes::ListShape.new(name: 'SecurityGroupMembershipList')
    ServiceLinkedRoleNotFoundFault = Shapes::StructureShape.new(name: 'ServiceLinkedRoleNotFoundFault')
    ServiceUpdate = Shapes::StructureShape.new(name: 'ServiceUpdate')
    ServiceUpdateList = Shapes::ListShape.new(name: 'ServiceUpdateList')
    ServiceUpdateNotFoundFault = Shapes::StructureShape.new(name: 'ServiceUpdateNotFoundFault')
    ServiceUpdateRequest = Shapes::StructureShape.new(name: 'ServiceUpdateRequest')
    ServiceUpdateStatus = Shapes::StringShape.new(name: 'ServiceUpdateStatus')
    ServiceUpdateStatusList = Shapes::ListShape.new(name: 'ServiceUpdateStatusList')
    ServiceUpdateType = Shapes::StringShape.new(name: 'ServiceUpdateType')
    Shard = Shapes::StructureShape.new(name: 'Shard')
    ShardConfiguration = Shapes::StructureShape.new(name: 'ShardConfiguration')
    ShardConfigurationRequest = Shapes::StructureShape.new(name: 'ShardConfigurationRequest')
    ShardDetail = Shapes::StructureShape.new(name: 'ShardDetail')
    ShardDetails = Shapes::ListShape.new(name: 'ShardDetails')
    ShardList = Shapes::ListShape.new(name: 'ShardList')
    ShardNotFoundFault = Shapes::StructureShape.new(name: 'ShardNotFoundFault')
    ShardsPerClusterQuotaExceededFault = Shapes::StructureShape.new(name: 'ShardsPerClusterQuotaExceededFault')
    SlotMigration = Shapes::StructureShape.new(name: 'SlotMigration')
    Snapshot = Shapes::StructureShape.new(name: 'Snapshot')
    SnapshotAlreadyExistsFault = Shapes::StructureShape.new(name: 'SnapshotAlreadyExistsFault')
    SnapshotArnsList = Shapes::ListShape.new(name: 'SnapshotArnsList')
    SnapshotList = Shapes::ListShape.new(name: 'SnapshotList')
    SnapshotNotFoundFault = Shapes::StructureShape.new(name: 'SnapshotNotFoundFault')
    SnapshotQuotaExceededFault = Shapes::StructureShape.new(name: 'SnapshotQuotaExceededFault')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    String = Shapes::StringShape.new(name: 'String')
    Subnet = Shapes::StructureShape.new(name: 'Subnet')
    SubnetGroup = Shapes::StructureShape.new(name: 'SubnetGroup')
    SubnetGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'SubnetGroupAlreadyExistsFault')
    SubnetGroupInUseFault = Shapes::StructureShape.new(name: 'SubnetGroupInUseFault')
    SubnetGroupList = Shapes::ListShape.new(name: 'SubnetGroupList')
    SubnetGroupNotFoundFault = Shapes::StructureShape.new(name: 'SubnetGroupNotFoundFault')
    SubnetGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'SubnetGroupQuotaExceededFault')
    SubnetIdentifierList = Shapes::ListShape.new(name: 'SubnetIdentifierList')
    SubnetInUse = Shapes::StructureShape.new(name: 'SubnetInUse')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    SubnetNotAllowedFault = Shapes::StructureShape.new(name: 'SubnetNotAllowedFault')
    SubnetQuotaExceededFault = Shapes::StructureShape.new(name: 'SubnetQuotaExceededFault')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagNotFoundFault = Shapes::StructureShape.new(name: 'TagNotFoundFault')
    TagQuotaPerResourceExceeded = Shapes::StructureShape.new(name: 'TagQuotaPerResourceExceeded')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TargetBucket = Shapes::StringShape.new(name: 'TargetBucket')
    TestFailoverNotAvailableFault = Shapes::StructureShape.new(name: 'TestFailoverNotAvailableFault')
    UnprocessedCluster = Shapes::StructureShape.new(name: 'UnprocessedCluster')
    UnprocessedClusterList = Shapes::ListShape.new(name: 'UnprocessedClusterList')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateACLRequest = Shapes::StructureShape.new(name: 'UpdateACLRequest')
    UpdateACLResponse = Shapes::StructureShape.new(name: 'UpdateACLResponse')
    UpdateClusterRequest = Shapes::StructureShape.new(name: 'UpdateClusterRequest')
    UpdateClusterResponse = Shapes::StructureShape.new(name: 'UpdateClusterResponse')
    UpdateParameterGroupRequest = Shapes::StructureShape.new(name: 'UpdateParameterGroupRequest')
    UpdateParameterGroupResponse = Shapes::StructureShape.new(name: 'UpdateParameterGroupResponse')
    UpdateSubnetGroupRequest = Shapes::StructureShape.new(name: 'UpdateSubnetGroupRequest')
    UpdateSubnetGroupResponse = Shapes::StructureShape.new(name: 'UpdateSubnetGroupResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    User = Shapes::StructureShape.new(name: 'User')
    UserAlreadyExistsFault = Shapes::StructureShape.new(name: 'UserAlreadyExistsFault')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserNameList = Shapes::ListShape.new(name: 'UserNameList')
    UserNameListInput = Shapes::ListShape.new(name: 'UserNameListInput')
    UserNotFoundFault = Shapes::StructureShape.new(name: 'UserNotFoundFault')
    UserQuotaExceededFault = Shapes::StructureShape.new(name: 'UserQuotaExceededFault')

    ACL.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ACL.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ACL.add_member(:user_names, Shapes::ShapeRef.new(shape: UserNameList, location_name: "UserNames"))
    ACL.add_member(:minimum_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MinimumEngineVersion"))
    ACL.add_member(:pending_changes, Shapes::ShapeRef.new(shape: ACLPendingChanges, location_name: "PendingChanges"))
    ACL.add_member(:clusters, Shapes::ShapeRef.new(shape: ACLClusterNameList, location_name: "Clusters"))
    ACL.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "ARN"))
    ACL.struct_class = Types::ACL

    ACLAlreadyExistsFault.struct_class = Types::ACLAlreadyExistsFault

    ACLClusterNameList.member = Shapes::ShapeRef.new(shape: String)

    ACLList.member = Shapes::ShapeRef.new(shape: ACL)

    ACLNameList.member = Shapes::ShapeRef.new(shape: ACLName)

    ACLNotFoundFault.struct_class = Types::ACLNotFoundFault

    ACLPendingChanges.add_member(:user_names_to_remove, Shapes::ShapeRef.new(shape: UserNameList, location_name: "UserNamesToRemove"))
    ACLPendingChanges.add_member(:user_names_to_add, Shapes::ShapeRef.new(shape: UserNameList, location_name: "UserNamesToAdd"))
    ACLPendingChanges.struct_class = Types::ACLPendingChanges

    ACLQuotaExceededFault.struct_class = Types::ACLQuotaExceededFault

    ACLsUpdateStatus.add_member(:acl_to_apply, Shapes::ShapeRef.new(shape: ACLName, location_name: "ACLToApply"))
    ACLsUpdateStatus.struct_class = Types::ACLsUpdateStatus

    APICallRateForCustomerExceededFault.struct_class = Types::APICallRateForCustomerExceededFault

    Authentication.add_member(:type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "Type"))
    Authentication.add_member(:password_count, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PasswordCount"))
    Authentication.struct_class = Types::Authentication

    AuthenticationMode.add_member(:type, Shapes::ShapeRef.new(shape: InputAuthenticationType, location_name: "Type"))
    AuthenticationMode.add_member(:passwords, Shapes::ShapeRef.new(shape: PasswordListInput, location_name: "Passwords"))
    AuthenticationMode.struct_class = Types::AuthenticationMode

    AvailabilityZone.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    BatchUpdateClusterRequest.add_member(:cluster_names, Shapes::ShapeRef.new(shape: ClusterNameList, required: true, location_name: "ClusterNames"))
    BatchUpdateClusterRequest.add_member(:service_update, Shapes::ShapeRef.new(shape: ServiceUpdateRequest, location_name: "ServiceUpdate"))
    BatchUpdateClusterRequest.struct_class = Types::BatchUpdateClusterRequest

    BatchUpdateClusterResponse.add_member(:processed_clusters, Shapes::ShapeRef.new(shape: ClusterList, location_name: "ProcessedClusters"))
    BatchUpdateClusterResponse.add_member(:unprocessed_clusters, Shapes::ShapeRef.new(shape: UnprocessedClusterList, location_name: "UnprocessedClusters"))
    BatchUpdateClusterResponse.struct_class = Types::BatchUpdateClusterResponse

    Cluster.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Cluster.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Cluster.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Cluster.add_member(:pending_updates, Shapes::ShapeRef.new(shape: ClusterPendingUpdates, location_name: "PendingUpdates"))
    Cluster.add_member(:number_of_shards, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfShards"))
    Cluster.add_member(:shards, Shapes::ShapeRef.new(shape: ShardList, location_name: "Shards"))
    Cluster.add_member(:availability_mode, Shapes::ShapeRef.new(shape: AZStatus, location_name: "AvailabilityMode"))
    Cluster.add_member(:cluster_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "ClusterEndpoint"))
    Cluster.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    Cluster.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    Cluster.add_member(:engine_patch_version, Shapes::ShapeRef.new(shape: String, location_name: "EnginePatchVersion"))
    Cluster.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    Cluster.add_member(:parameter_group_status, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupStatus"))
    Cluster.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupMembershipList, location_name: "SecurityGroups"))
    Cluster.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupName"))
    Cluster.add_member(:tls_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TLSEnabled"))
    Cluster.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    Cluster.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "ARN"))
    Cluster.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    Cluster.add_member(:sns_topic_status, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicStatus"))
    Cluster.add_member(:snapshot_retention_limit, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    Cluster.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceWindow"))
    Cluster.add_member(:snapshot_window, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotWindow"))
    Cluster.add_member(:acl_name, Shapes::ShapeRef.new(shape: ACLName, location_name: "ACLName"))
    Cluster.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    Cluster.add_member(:data_tiering, Shapes::ShapeRef.new(shape: DataTieringStatus, location_name: "DataTiering"))
    Cluster.struct_class = Types::Cluster

    ClusterAlreadyExistsFault.struct_class = Types::ClusterAlreadyExistsFault

    ClusterConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ClusterConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ClusterConfiguration.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    ClusterConfiguration.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ClusterConfiguration.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceWindow"))
    ClusterConfiguration.add_member(:topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "TopicArn"))
    ClusterConfiguration.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    ClusterConfiguration.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    ClusterConfiguration.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupName"))
    ClusterConfiguration.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    ClusterConfiguration.add_member(:snapshot_retention_limit, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    ClusterConfiguration.add_member(:snapshot_window, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotWindow"))
    ClusterConfiguration.add_member(:num_shards, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumShards"))
    ClusterConfiguration.add_member(:shards, Shapes::ShapeRef.new(shape: ShardDetails, location_name: "Shards"))
    ClusterConfiguration.struct_class = Types::ClusterConfiguration

    ClusterList.member = Shapes::ShapeRef.new(shape: Cluster)

    ClusterNameList.member = Shapes::ShapeRef.new(shape: String)

    ClusterNotFoundFault.struct_class = Types::ClusterNotFoundFault

    ClusterPendingUpdates.add_member(:resharding, Shapes::ShapeRef.new(shape: ReshardingStatus, location_name: "Resharding"))
    ClusterPendingUpdates.add_member(:acls, Shapes::ShapeRef.new(shape: ACLsUpdateStatus, location_name: "ACLs"))
    ClusterPendingUpdates.add_member(:service_updates, Shapes::ShapeRef.new(shape: PendingModifiedServiceUpdateList, location_name: "ServiceUpdates"))
    ClusterPendingUpdates.struct_class = Types::ClusterPendingUpdates

    ClusterQuotaForCustomerExceededFault.struct_class = Types::ClusterQuotaForCustomerExceededFault

    CopySnapshotRequest.add_member(:source_snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceSnapshotName"))
    CopySnapshotRequest.add_member(:target_snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetSnapshotName"))
    CopySnapshotRequest.add_member(:target_bucket, Shapes::ShapeRef.new(shape: TargetBucket, location_name: "TargetBucket"))
    CopySnapshotRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CopySnapshotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CopySnapshotRequest.struct_class = Types::CopySnapshotRequest

    CopySnapshotResponse.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    CopySnapshotResponse.struct_class = Types::CopySnapshotResponse

    CreateACLRequest.add_member(:acl_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ACLName"))
    CreateACLRequest.add_member(:user_names, Shapes::ShapeRef.new(shape: UserNameListInput, location_name: "UserNames"))
    CreateACLRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateACLRequest.struct_class = Types::CreateACLRequest

    CreateACLResponse.add_member(:acl, Shapes::ShapeRef.new(shape: ACL, location_name: "ACL"))
    CreateACLResponse.struct_class = Types::CreateACLResponse

    CreateClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterName"))
    CreateClusterRequest.add_member(:node_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "NodeType"))
    CreateClusterRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    CreateClusterRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateClusterRequest.add_member(:num_shards, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumShards"))
    CreateClusterRequest.add_member(:num_replicas_per_shard, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumReplicasPerShard"))
    CreateClusterRequest.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupName"))
    CreateClusterRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: "SecurityGroupIds"))
    CreateClusterRequest.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceWindow"))
    CreateClusterRequest.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateClusterRequest.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    CreateClusterRequest.add_member(:tls_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "TLSEnabled"))
    CreateClusterRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateClusterRequest.add_member(:snapshot_arns, Shapes::ShapeRef.new(shape: SnapshotArnsList, location_name: "SnapshotArns"))
    CreateClusterRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotName"))
    CreateClusterRequest.add_member(:snapshot_retention_limit, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    CreateClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateClusterRequest.add_member(:snapshot_window, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotWindow"))
    CreateClusterRequest.add_member(:acl_name, Shapes::ShapeRef.new(shape: ACLName, required: true, location_name: "ACLName"))
    CreateClusterRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateClusterRequest.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateClusterRequest.add_member(:data_tiering, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DataTiering"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateParameterGroupRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    CreateParameterGroupRequest.add_member(:family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Family"))
    CreateParameterGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateParameterGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateParameterGroupRequest.struct_class = Types::CreateParameterGroupRequest

    CreateParameterGroupResponse.add_member(:parameter_group, Shapes::ShapeRef.new(shape: ParameterGroup, location_name: "ParameterGroup"))
    CreateParameterGroupResponse.struct_class = Types::CreateParameterGroupResponse

    CreateSnapshotRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterName"))
    CreateSnapshotRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotName"))
    CreateSnapshotRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateSnapshotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateSnapshotRequest.struct_class = Types::CreateSnapshotRequest

    CreateSnapshotResponse.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    CreateSnapshotResponse.struct_class = Types::CreateSnapshotResponse

    CreateSubnetGroupRequest.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubnetGroupName"))
    CreateSubnetGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateSubnetGroupRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    CreateSubnetGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateSubnetGroupRequest.struct_class = Types::CreateSubnetGroupRequest

    CreateSubnetGroupResponse.add_member(:subnet_group, Shapes::ShapeRef.new(shape: SubnetGroup, location_name: "SubnetGroup"))
    CreateSubnetGroupResponse.struct_class = Types::CreateSubnetGroupResponse

    CreateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    CreateUserRequest.add_member(:authentication_mode, Shapes::ShapeRef.new(shape: AuthenticationMode, required: true, location_name: "AuthenticationMode"))
    CreateUserRequest.add_member(:access_string, Shapes::ShapeRef.new(shape: AccessString, required: true, location_name: "AccessString"))
    CreateUserRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    DefaultUserRequired.struct_class = Types::DefaultUserRequired

    DeleteACLRequest.add_member(:acl_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ACLName"))
    DeleteACLRequest.struct_class = Types::DeleteACLRequest

    DeleteACLResponse.add_member(:acl, Shapes::ShapeRef.new(shape: ACL, location_name: "ACL"))
    DeleteACLResponse.struct_class = Types::DeleteACLResponse

    DeleteClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterName"))
    DeleteClusterRequest.add_member(:final_snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "FinalSnapshotName"))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DeleteParameterGroupRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    DeleteParameterGroupRequest.struct_class = Types::DeleteParameterGroupRequest

    DeleteParameterGroupResponse.add_member(:parameter_group, Shapes::ShapeRef.new(shape: ParameterGroup, location_name: "ParameterGroup"))
    DeleteParameterGroupResponse.struct_class = Types::DeleteParameterGroupResponse

    DeleteSnapshotRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotName"))
    DeleteSnapshotRequest.struct_class = Types::DeleteSnapshotRequest

    DeleteSnapshotResponse.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "Snapshot"))
    DeleteSnapshotResponse.struct_class = Types::DeleteSnapshotResponse

    DeleteSubnetGroupRequest.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubnetGroupName"))
    DeleteSubnetGroupRequest.struct_class = Types::DeleteSubnetGroupRequest

    DeleteSubnetGroupResponse.add_member(:subnet_group, Shapes::ShapeRef.new(shape: SubnetGroup, location_name: "SubnetGroup"))
    DeleteSubnetGroupResponse.struct_class = Types::DeleteSubnetGroupResponse

    DeleteUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    DeleteUserResponse.struct_class = Types::DeleteUserResponse

    DescribeACLsRequest.add_member(:acl_name, Shapes::ShapeRef.new(shape: String, location_name: "ACLName"))
    DescribeACLsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeACLsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeACLsRequest.struct_class = Types::DescribeACLsRequest

    DescribeACLsResponse.add_member(:acls, Shapes::ShapeRef.new(shape: ACLList, location_name: "ACLs"))
    DescribeACLsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeACLsResponse.struct_class = Types::DescribeACLsResponse

    DescribeClustersRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterName"))
    DescribeClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeClustersRequest.add_member(:show_shard_details, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ShowShardDetails"))
    DescribeClustersRequest.struct_class = Types::DescribeClustersRequest

    DescribeClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: ClusterList, location_name: "Clusters"))
    DescribeClustersResponse.struct_class = Types::DescribeClustersResponse

    DescribeEngineVersionsRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DescribeEngineVersionsRequest.add_member(:parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupFamily"))
    DescribeEngineVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeEngineVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeEngineVersionsRequest.add_member(:default_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultOnly"))
    DescribeEngineVersionsRequest.struct_class = Types::DescribeEngineVersionsRequest

    DescribeEngineVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeEngineVersionsResponse.add_member(:engine_versions, Shapes::ShapeRef.new(shape: EngineVersionInfoList, location_name: "EngineVersions"))
    DescribeEngineVersionsResponse.struct_class = Types::DescribeEngineVersionsResponse

    DescribeEventsRequest.add_member(:source_name, Shapes::ShapeRef.new(shape: String, location_name: "SourceName"))
    DescribeEventsRequest.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    DescribeEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    DescribeEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    DescribeEventsRequest.add_member(:duration, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Duration"))
    DescribeEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeEventsRequest.struct_class = Types::DescribeEventsRequest

    DescribeEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: EventList, location_name: "Events"))
    DescribeEventsResponse.struct_class = Types::DescribeEventsResponse

    DescribeParameterGroupsRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    DescribeParameterGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeParameterGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeParameterGroupsRequest.struct_class = Types::DescribeParameterGroupsRequest

    DescribeParameterGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeParameterGroupsResponse.add_member(:parameter_groups, Shapes::ShapeRef.new(shape: ParameterGroupList, location_name: "ParameterGroups"))
    DescribeParameterGroupsResponse.struct_class = Types::DescribeParameterGroupsResponse

    DescribeParametersRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    DescribeParametersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeParametersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeParametersRequest.struct_class = Types::DescribeParametersRequest

    DescribeParametersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeParametersResponse.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    DescribeParametersResponse.struct_class = Types::DescribeParametersResponse

    DescribeReservedNodesOfferingsRequest.add_member(:reserved_nodes_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodesOfferingId"))
    DescribeReservedNodesOfferingsRequest.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    DescribeReservedNodesOfferingsRequest.add_member(:duration, Shapes::ShapeRef.new(shape: String, location_name: "Duration"))
    DescribeReservedNodesOfferingsRequest.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    DescribeReservedNodesOfferingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeReservedNodesOfferingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeReservedNodesOfferingsRequest.struct_class = Types::DescribeReservedNodesOfferingsRequest

    DescribeReservedNodesOfferingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeReservedNodesOfferingsResponse.add_member(:reserved_nodes_offerings, Shapes::ShapeRef.new(shape: ReservedNodesOfferingList, location_name: "ReservedNodesOfferings"))
    DescribeReservedNodesOfferingsResponse.struct_class = Types::DescribeReservedNodesOfferingsResponse

    DescribeReservedNodesRequest.add_member(:reservation_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservationId"))
    DescribeReservedNodesRequest.add_member(:reserved_nodes_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodesOfferingId"))
    DescribeReservedNodesRequest.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    DescribeReservedNodesRequest.add_member(:duration, Shapes::ShapeRef.new(shape: String, location_name: "Duration"))
    DescribeReservedNodesRequest.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    DescribeReservedNodesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeReservedNodesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeReservedNodesRequest.struct_class = Types::DescribeReservedNodesRequest

    DescribeReservedNodesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeReservedNodesResponse.add_member(:reserved_nodes, Shapes::ShapeRef.new(shape: ReservedNodeList, location_name: "ReservedNodes"))
    DescribeReservedNodesResponse.struct_class = Types::DescribeReservedNodesResponse

    DescribeServiceUpdatesRequest.add_member(:service_update_name, Shapes::ShapeRef.new(shape: String, location_name: "ServiceUpdateName"))
    DescribeServiceUpdatesRequest.add_member(:cluster_names, Shapes::ShapeRef.new(shape: ClusterNameList, location_name: "ClusterNames"))
    DescribeServiceUpdatesRequest.add_member(:status, Shapes::ShapeRef.new(shape: ServiceUpdateStatusList, location_name: "Status"))
    DescribeServiceUpdatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeServiceUpdatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeServiceUpdatesRequest.struct_class = Types::DescribeServiceUpdatesRequest

    DescribeServiceUpdatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeServiceUpdatesResponse.add_member(:service_updates, Shapes::ShapeRef.new(shape: ServiceUpdateList, location_name: "ServiceUpdates"))
    DescribeServiceUpdatesResponse.struct_class = Types::DescribeServiceUpdatesResponse

    DescribeSnapshotsRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterName"))
    DescribeSnapshotsRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotName"))
    DescribeSnapshotsRequest.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    DescribeSnapshotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeSnapshotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeSnapshotsRequest.add_member(:show_detail, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ShowDetail"))
    DescribeSnapshotsRequest.struct_class = Types::DescribeSnapshotsRequest

    DescribeSnapshotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeSnapshotsResponse.add_member(:snapshots, Shapes::ShapeRef.new(shape: SnapshotList, location_name: "Snapshots"))
    DescribeSnapshotsResponse.struct_class = Types::DescribeSnapshotsResponse

    DescribeSubnetGroupsRequest.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupName"))
    DescribeSubnetGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeSubnetGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeSubnetGroupsRequest.struct_class = Types::DescribeSubnetGroupsRequest

    DescribeSubnetGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeSubnetGroupsResponse.add_member(:subnet_groups, Shapes::ShapeRef.new(shape: SubnetGroupList, location_name: "SubnetGroups"))
    DescribeSubnetGroupsResponse.struct_class = Types::DescribeSubnetGroupsResponse

    DescribeUsersRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    DescribeUsersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeUsersRequest.struct_class = Types::DescribeUsersRequest

    DescribeUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: UserList, location_name: "Users"))
    DescribeUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeUsersResponse.struct_class = Types::DescribeUsersResponse

    DuplicateUserNameFault.struct_class = Types::DuplicateUserNameFault

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "Address"))
    Endpoint.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    Endpoint.struct_class = Types::Endpoint

    EngineVersionInfo.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    EngineVersionInfo.add_member(:engine_patch_version, Shapes::ShapeRef.new(shape: String, location_name: "EnginePatchVersion"))
    EngineVersionInfo.add_member(:parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupFamily"))
    EngineVersionInfo.struct_class = Types::EngineVersionInfo

    EngineVersionInfoList.member = Shapes::ShapeRef.new(shape: EngineVersionInfo)

    Event.add_member(:source_name, Shapes::ShapeRef.new(shape: String, location_name: "SourceName"))
    Event.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    Event.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Event.add_member(:date, Shapes::ShapeRef.new(shape: TStamp, location_name: "Date"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    FailoverShardRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterName"))
    FailoverShardRequest.add_member(:shard_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ShardName"))
    FailoverShardRequest.struct_class = Types::FailoverShardRequest

    FailoverShardResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    FailoverShardResponse.struct_class = Types::FailoverShardResponse

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValueList.member = Shapes::ShapeRef.new(shape: FilterValue)

    InsufficientClusterCapacityFault.struct_class = Types::InsufficientClusterCapacityFault

    InvalidACLStateFault.struct_class = Types::InvalidACLStateFault

    InvalidARNFault.struct_class = Types::InvalidARNFault

    InvalidClusterStateFault.struct_class = Types::InvalidClusterStateFault

    InvalidCredentialsException.struct_class = Types::InvalidCredentialsException

    InvalidKMSKeyFault.struct_class = Types::InvalidKMSKeyFault

    InvalidNodeStateFault.struct_class = Types::InvalidNodeStateFault

    InvalidParameterCombinationException.add_member(:message, Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: "message"))
    InvalidParameterCombinationException.struct_class = Types::InvalidParameterCombinationException

    InvalidParameterGroupStateFault.struct_class = Types::InvalidParameterGroupStateFault

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: "message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    InvalidSnapshotStateFault.struct_class = Types::InvalidSnapshotStateFault

    InvalidSubnet.struct_class = Types::InvalidSubnet

    InvalidUserStateFault.struct_class = Types::InvalidUserStateFault

    InvalidVPCNetworkStateFault.struct_class = Types::InvalidVPCNetworkStateFault

    KeyList.member = Shapes::ShapeRef.new(shape: String)

    ListAllowedNodeTypeUpdatesRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterName"))
    ListAllowedNodeTypeUpdatesRequest.struct_class = Types::ListAllowedNodeTypeUpdatesRequest

    ListAllowedNodeTypeUpdatesResponse.add_member(:scale_up_node_types, Shapes::ShapeRef.new(shape: NodeTypeList, location_name: "ScaleUpNodeTypes"))
    ListAllowedNodeTypeUpdatesResponse.add_member(:scale_down_node_types, Shapes::ShapeRef.new(shape: NodeTypeList, location_name: "ScaleDownNodeTypes"))
    ListAllowedNodeTypeUpdatesResponse.struct_class = Types::ListAllowedNodeTypeUpdatesResponse

    ListTagsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    NoOperationFault.struct_class = Types::NoOperationFault

    Node.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Node.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Node.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    Node.add_member(:create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreateTime"))
    Node.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    Node.struct_class = Types::Node

    NodeList.member = Shapes::ShapeRef.new(shape: Node)

    NodeQuotaForClusterExceededFault.struct_class = Types::NodeQuotaForClusterExceededFault

    NodeQuotaForCustomerExceededFault.struct_class = Types::NodeQuotaForCustomerExceededFault

    NodeTypeList.member = Shapes::ShapeRef.new(shape: String)

    Parameter.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Parameter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Parameter.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Parameter.add_member(:data_type, Shapes::ShapeRef.new(shape: String, location_name: "DataType"))
    Parameter.add_member(:allowed_values, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValues"))
    Parameter.add_member(:minimum_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MinimumEngineVersion"))
    Parameter.struct_class = Types::Parameter

    ParameterGroup.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ParameterGroup.add_member(:family, Shapes::ShapeRef.new(shape: String, location_name: "Family"))
    ParameterGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ParameterGroup.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "ARN"))
    ParameterGroup.struct_class = Types::ParameterGroup

    ParameterGroupAlreadyExistsFault.struct_class = Types::ParameterGroupAlreadyExistsFault

    ParameterGroupList.member = Shapes::ShapeRef.new(shape: ParameterGroup)

    ParameterGroupNotFoundFault.struct_class = Types::ParameterGroupNotFoundFault

    ParameterGroupQuotaExceededFault.struct_class = Types::ParameterGroupQuotaExceededFault

    ParameterNameList.member = Shapes::ShapeRef.new(shape: String)

    ParameterNameValue.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterName"))
    ParameterNameValue.add_member(:parameter_value, Shapes::ShapeRef.new(shape: String, location_name: "ParameterValue"))
    ParameterNameValue.struct_class = Types::ParameterNameValue

    ParameterNameValueList.member = Shapes::ShapeRef.new(shape: ParameterNameValue)

    ParametersList.member = Shapes::ShapeRef.new(shape: Parameter)

    PasswordListInput.member = Shapes::ShapeRef.new(shape: String)

    PendingModifiedServiceUpdate.add_member(:service_update_name, Shapes::ShapeRef.new(shape: String, location_name: "ServiceUpdateName"))
    PendingModifiedServiceUpdate.add_member(:status, Shapes::ShapeRef.new(shape: ServiceUpdateStatus, location_name: "Status"))
    PendingModifiedServiceUpdate.struct_class = Types::PendingModifiedServiceUpdate

    PendingModifiedServiceUpdateList.member = Shapes::ShapeRef.new(shape: PendingModifiedServiceUpdate)

    PurchaseReservedNodesOfferingRequest.add_member(:reserved_nodes_offering_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReservedNodesOfferingId"))
    PurchaseReservedNodesOfferingRequest.add_member(:reservation_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservationId"))
    PurchaseReservedNodesOfferingRequest.add_member(:node_count, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NodeCount"))
    PurchaseReservedNodesOfferingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PurchaseReservedNodesOfferingRequest.struct_class = Types::PurchaseReservedNodesOfferingRequest

    PurchaseReservedNodesOfferingResponse.add_member(:reserved_node, Shapes::ShapeRef.new(shape: ReservedNode, location_name: "ReservedNode"))
    PurchaseReservedNodesOfferingResponse.struct_class = Types::PurchaseReservedNodesOfferingResponse

    RecurringCharge.add_member(:recurring_charge_amount, Shapes::ShapeRef.new(shape: Double, location_name: "RecurringChargeAmount"))
    RecurringCharge.add_member(:recurring_charge_frequency, Shapes::ShapeRef.new(shape: String, location_name: "RecurringChargeFrequency"))
    RecurringCharge.struct_class = Types::RecurringCharge

    RecurringChargeList.member = Shapes::ShapeRef.new(shape: RecurringCharge)

    ReplicaConfigurationRequest.add_member(:replica_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ReplicaCount"))
    ReplicaConfigurationRequest.struct_class = Types::ReplicaConfigurationRequest

    ReservedNode.add_member(:reservation_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservationId"))
    ReservedNode.add_member(:reserved_nodes_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodesOfferingId"))
    ReservedNode.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    ReservedNode.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    ReservedNode.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    ReservedNode.add_member(:fixed_price, Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedNode.add_member(:node_count, Shapes::ShapeRef.new(shape: Integer, location_name: "NodeCount"))
    ReservedNode.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    ReservedNode.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    ReservedNode.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedNode.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "ARN"))
    ReservedNode.struct_class = Types::ReservedNode

    ReservedNodeAlreadyExistsFault.struct_class = Types::ReservedNodeAlreadyExistsFault

    ReservedNodeList.member = Shapes::ShapeRef.new(shape: ReservedNode)

    ReservedNodeNotFoundFault.struct_class = Types::ReservedNodeNotFoundFault

    ReservedNodeQuotaExceededFault.struct_class = Types::ReservedNodeQuotaExceededFault

    ReservedNodesOffering.add_member(:reserved_nodes_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedNodesOfferingId"))
    ReservedNodesOffering.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    ReservedNodesOffering.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    ReservedNodesOffering.add_member(:fixed_price, Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedNodesOffering.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    ReservedNodesOffering.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedNodesOffering.struct_class = Types::ReservedNodesOffering

    ReservedNodesOfferingList.member = Shapes::ShapeRef.new(shape: ReservedNodesOffering)

    ReservedNodesOfferingNotFoundFault.struct_class = Types::ReservedNodesOfferingNotFoundFault

    ResetParameterGroupRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    ResetParameterGroupRequest.add_member(:all_parameters, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllParameters"))
    ResetParameterGroupRequest.add_member(:parameter_names, Shapes::ShapeRef.new(shape: ParameterNameList, location_name: "ParameterNames"))
    ResetParameterGroupRequest.struct_class = Types::ResetParameterGroupRequest

    ResetParameterGroupResponse.add_member(:parameter_group, Shapes::ShapeRef.new(shape: ParameterGroup, location_name: "ParameterGroup"))
    ResetParameterGroupResponse.struct_class = Types::ResetParameterGroupResponse

    ReshardingStatus.add_member(:slot_migration, Shapes::ShapeRef.new(shape: SlotMigration, location_name: "SlotMigration"))
    ReshardingStatus.struct_class = Types::ReshardingStatus

    SecurityGroupIdsList.member = Shapes::ShapeRef.new(shape: String)

    SecurityGroupMembership.add_member(:security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "SecurityGroupId"))
    SecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    SecurityGroupMembership.struct_class = Types::SecurityGroupMembership

    SecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: SecurityGroupMembership)

    ServiceLinkedRoleNotFoundFault.struct_class = Types::ServiceLinkedRoleNotFoundFault

    ServiceUpdate.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterName"))
    ServiceUpdate.add_member(:service_update_name, Shapes::ShapeRef.new(shape: String, location_name: "ServiceUpdateName"))
    ServiceUpdate.add_member(:release_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ReleaseDate"))
    ServiceUpdate.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ServiceUpdate.add_member(:status, Shapes::ShapeRef.new(shape: ServiceUpdateStatus, location_name: "Status"))
    ServiceUpdate.add_member(:type, Shapes::ShapeRef.new(shape: ServiceUpdateType, location_name: "Type"))
    ServiceUpdate.add_member(:nodes_updated, Shapes::ShapeRef.new(shape: String, location_name: "NodesUpdated"))
    ServiceUpdate.add_member(:auto_update_start_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "AutoUpdateStartDate"))
    ServiceUpdate.struct_class = Types::ServiceUpdate

    ServiceUpdateList.member = Shapes::ShapeRef.new(shape: ServiceUpdate)

    ServiceUpdateNotFoundFault.struct_class = Types::ServiceUpdateNotFoundFault

    ServiceUpdateRequest.add_member(:service_update_name_to_apply, Shapes::ShapeRef.new(shape: String, location_name: "ServiceUpdateNameToApply"))
    ServiceUpdateRequest.struct_class = Types::ServiceUpdateRequest

    ServiceUpdateStatusList.member = Shapes::ShapeRef.new(shape: ServiceUpdateStatus)

    Shard.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Shard.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Shard.add_member(:slots, Shapes::ShapeRef.new(shape: String, location_name: "Slots"))
    Shard.add_member(:nodes, Shapes::ShapeRef.new(shape: NodeList, location_name: "Nodes"))
    Shard.add_member(:number_of_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "NumberOfNodes"))
    Shard.struct_class = Types::Shard

    ShardConfiguration.add_member(:slots, Shapes::ShapeRef.new(shape: String, location_name: "Slots"))
    ShardConfiguration.add_member(:replica_count, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ReplicaCount"))
    ShardConfiguration.struct_class = Types::ShardConfiguration

    ShardConfigurationRequest.add_member(:shard_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ShardCount"))
    ShardConfigurationRequest.struct_class = Types::ShardConfigurationRequest

    ShardDetail.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ShardDetail.add_member(:configuration, Shapes::ShapeRef.new(shape: ShardConfiguration, location_name: "Configuration"))
    ShardDetail.add_member(:size, Shapes::ShapeRef.new(shape: String, location_name: "Size"))
    ShardDetail.add_member(:snapshot_creation_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "SnapshotCreationTime"))
    ShardDetail.struct_class = Types::ShardDetail

    ShardDetails.member = Shapes::ShapeRef.new(shape: ShardDetail)

    ShardList.member = Shapes::ShapeRef.new(shape: Shard)

    ShardNotFoundFault.struct_class = Types::ShardNotFoundFault

    ShardsPerClusterQuotaExceededFault.struct_class = Types::ShardsPerClusterQuotaExceededFault

    SlotMigration.add_member(:progress_percentage, Shapes::ShapeRef.new(shape: Double, location_name: "ProgressPercentage"))
    SlotMigration.struct_class = Types::SlotMigration

    Snapshot.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Snapshot.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Snapshot.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    Snapshot.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    Snapshot.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "ARN"))
    Snapshot.add_member(:cluster_configuration, Shapes::ShapeRef.new(shape: ClusterConfiguration, location_name: "ClusterConfiguration"))
    Snapshot.add_member(:data_tiering, Shapes::ShapeRef.new(shape: DataTieringStatus, location_name: "DataTiering"))
    Snapshot.struct_class = Types::Snapshot

    SnapshotAlreadyExistsFault.struct_class = Types::SnapshotAlreadyExistsFault

    SnapshotArnsList.member = Shapes::ShapeRef.new(shape: String)

    SnapshotList.member = Shapes::ShapeRef.new(shape: Snapshot)

    SnapshotNotFoundFault.struct_class = Types::SnapshotNotFoundFault

    SnapshotQuotaExceededFault.struct_class = Types::SnapshotQuotaExceededFault

    Subnet.add_member(:identifier, Shapes::ShapeRef.new(shape: String, location_name: "Identifier"))
    Subnet.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    Subnet.struct_class = Types::Subnet

    SubnetGroup.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    SubnetGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    SubnetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    SubnetGroup.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetList, location_name: "Subnets"))
    SubnetGroup.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "ARN"))
    SubnetGroup.struct_class = Types::SubnetGroup

    SubnetGroupAlreadyExistsFault.struct_class = Types::SubnetGroupAlreadyExistsFault

    SubnetGroupInUseFault.struct_class = Types::SubnetGroupInUseFault

    SubnetGroupList.member = Shapes::ShapeRef.new(shape: SubnetGroup)

    SubnetGroupNotFoundFault.struct_class = Types::SubnetGroupNotFoundFault

    SubnetGroupQuotaExceededFault.struct_class = Types::SubnetGroupQuotaExceededFault

    SubnetIdentifierList.member = Shapes::ShapeRef.new(shape: String)

    SubnetInUse.struct_class = Types::SubnetInUse

    SubnetList.member = Shapes::ShapeRef.new(shape: Subnet)

    SubnetNotAllowedFault.struct_class = Types::SubnetNotAllowedFault

    SubnetQuotaExceededFault.struct_class = Types::SubnetQuotaExceededFault

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagNotFoundFault.struct_class = Types::TagNotFoundFault

    TagQuotaPerResourceExceeded.struct_class = Types::TagQuotaPerResourceExceeded

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    TagResourceResponse.struct_class = Types::TagResourceResponse

    TestFailoverNotAvailableFault.struct_class = Types::TestFailoverNotAvailableFault

    UnprocessedCluster.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterName"))
    UnprocessedCluster.add_member(:error_type, Shapes::ShapeRef.new(shape: String, location_name: "ErrorType"))
    UnprocessedCluster.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    UnprocessedCluster.struct_class = Types::UnprocessedCluster

    UnprocessedClusterList.member = Shapes::ShapeRef.new(shape: UnprocessedCluster)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateACLRequest.add_member(:acl_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ACLName"))
    UpdateACLRequest.add_member(:user_names_to_add, Shapes::ShapeRef.new(shape: UserNameListInput, location_name: "UserNamesToAdd"))
    UpdateACLRequest.add_member(:user_names_to_remove, Shapes::ShapeRef.new(shape: UserNameListInput, location_name: "UserNamesToRemove"))
    UpdateACLRequest.struct_class = Types::UpdateACLRequest

    UpdateACLResponse.add_member(:acl, Shapes::ShapeRef.new(shape: ACL, location_name: "ACL"))
    UpdateACLResponse.struct_class = Types::UpdateACLResponse

    UpdateClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterName"))
    UpdateClusterRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateClusterRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: "SecurityGroupIds"))
    UpdateClusterRequest.add_member(:maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "MaintenanceWindow"))
    UpdateClusterRequest.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    UpdateClusterRequest.add_member(:sns_topic_status, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicStatus"))
    UpdateClusterRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    UpdateClusterRequest.add_member(:snapshot_window, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotWindow"))
    UpdateClusterRequest.add_member(:snapshot_retention_limit, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    UpdateClusterRequest.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    UpdateClusterRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    UpdateClusterRequest.add_member(:replica_configuration, Shapes::ShapeRef.new(shape: ReplicaConfigurationRequest, location_name: "ReplicaConfiguration"))
    UpdateClusterRequest.add_member(:shard_configuration, Shapes::ShapeRef.new(shape: ShardConfigurationRequest, location_name: "ShardConfiguration"))
    UpdateClusterRequest.add_member(:acl_name, Shapes::ShapeRef.new(shape: ACLName, location_name: "ACLName"))
    UpdateClusterRequest.struct_class = Types::UpdateClusterRequest

    UpdateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    UpdateClusterResponse.struct_class = Types::UpdateClusterResponse

    UpdateParameterGroupRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    UpdateParameterGroupRequest.add_member(:parameter_name_values, Shapes::ShapeRef.new(shape: ParameterNameValueList, required: true, location_name: "ParameterNameValues"))
    UpdateParameterGroupRequest.struct_class = Types::UpdateParameterGroupRequest

    UpdateParameterGroupResponse.add_member(:parameter_group, Shapes::ShapeRef.new(shape: ParameterGroup, location_name: "ParameterGroup"))
    UpdateParameterGroupResponse.struct_class = Types::UpdateParameterGroupResponse

    UpdateSubnetGroupRequest.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubnetGroupName"))
    UpdateSubnetGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateSubnetGroupRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: "SubnetIds"))
    UpdateSubnetGroupRequest.struct_class = Types::UpdateSubnetGroupRequest

    UpdateSubnetGroupResponse.add_member(:subnet_group, Shapes::ShapeRef.new(shape: SubnetGroup, location_name: "SubnetGroup"))
    UpdateSubnetGroupResponse.struct_class = Types::UpdateSubnetGroupResponse

    UpdateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    UpdateUserRequest.add_member(:authentication_mode, Shapes::ShapeRef.new(shape: AuthenticationMode, location_name: "AuthenticationMode"))
    UpdateUserRequest.add_member(:access_string, Shapes::ShapeRef.new(shape: AccessString, location_name: "AccessString"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    User.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    User.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    User.add_member(:access_string, Shapes::ShapeRef.new(shape: String, location_name: "AccessString"))
    User.add_member(:acl_names, Shapes::ShapeRef.new(shape: ACLNameList, location_name: "ACLNames"))
    User.add_member(:minimum_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MinimumEngineVersion"))
    User.add_member(:authentication, Shapes::ShapeRef.new(shape: Authentication, location_name: "Authentication"))
    User.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "ARN"))
    User.struct_class = Types::User

    UserAlreadyExistsFault.struct_class = Types::UserAlreadyExistsFault

    UserList.member = Shapes::ShapeRef.new(shape: User)

    UserNameList.member = Shapes::ShapeRef.new(shape: UserName)

    UserNameListInput.member = Shapes::ShapeRef.new(shape: UserName)

    UserNotFoundFault.struct_class = Types::UserNotFoundFault

    UserQuotaExceededFault.struct_class = Types::UserQuotaExceededFault


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-01-01"

      api.metadata = {
        "apiVersion" => "2021-01-01",
        "endpointPrefix" => "memory-db",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Amazon MemoryDB",
        "serviceFullName" => "Amazon MemoryDB",
        "serviceId" => "MemoryDB",
        "signatureVersion" => "v4",
        "signingName" => "memorydb",
        "targetPrefix" => "AmazonMemoryDB",
        "uid" => "memorydb-2021-01-01",
      }

      api.add_operation(:batch_update_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUpdateNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:copy_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopySnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopySnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CopySnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
      end)

      api.add_operation(:create_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateACLRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateUserNameFault)
        o.errors << Shapes::ShapeRef.new(shape: ACLAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DefaultUserRequired)
        o.errors << Shapes::ShapeRef.new(shape: ACLQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
      end)

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ShardsPerClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCredentialsException)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidACLStateFault)
      end)

      api.add_operation(:create_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateParameterGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateParameterGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:create_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
      end)

      api.add_operation(:create_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSubnetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSubnetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: SubnetGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetNotAllowedFault)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UserAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: UserQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateUserNameFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
      end)

      api.add_operation(:delete_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteACLRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidACLStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:delete_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteParameterGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteParameterGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:delete_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:delete_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubnetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSubnetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: SubnetGroupInUseFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserStateFault)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:describe_acls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeACLs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeACLsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeACLsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_engine_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEngineVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEngineVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEngineVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_parameter_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeParameterGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeParameterGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeParameterGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeParametersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_reserved_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedNodes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedNodesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReservedNodesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_reserved_nodes_offerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedNodesOfferings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedNodesOfferingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReservedNodesOfferingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodesOfferingNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_service_updates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServiceUpdates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeServiceUpdatesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServiceUpdatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSnapshotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_subnet_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSubnetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSubnetGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSubnetGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:failover_shard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "FailoverShard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: FailoverShardRequest)
        o.output = Shapes::ShapeRef.new(shape: FailoverShardResponse)
        o.errors << Shapes::ShapeRef.new(shape: APICallRateForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ShardNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TestFailoverNotAvailableFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSKeyFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:list_allowed_node_type_updates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAllowedNodeTypeUpdates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAllowedNodeTypeUpdatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAllowedNodeTypeUpdatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidARNFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ACLNotFoundFault)
      end)

      api.add_operation(:purchase_reserved_nodes_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PurchaseReservedNodesOffering"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PurchaseReservedNodesOfferingRequest)
        o.output = Shapes::ShapeRef.new(shape: PurchaseReservedNodesOfferingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodesOfferingNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNodeQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:reset_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetParameterGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetParameterGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidARNFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidARNFault)
        o.errors << Shapes::ShapeRef.new(shape: TagNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ACLNotFoundFault)
      end)

      api.add_operation(:update_acl, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateACL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateACLRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateACLResponse)
        o.errors << Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateUserNameFault)
        o.errors << Shapes::ShapeRef.new(shape: DefaultUserRequired)
        o.errors << Shapes::ShapeRef.new(shape: InvalidACLStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:update_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNodeStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSKeyFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ShardsPerClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NoOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidACLStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:update_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateParameterGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateParameterGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:update_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubnetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubnetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetInUse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetNotAllowedFault)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)
    end

  end
end
