# frozen_string_literal: true

# This is generated code!

module Aws::MemoryDB
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ACL = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ACL', name: 'ACL')
    ACLAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ACLAlreadyExistsFault', name: 'ACLAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ACLAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ACLClusterNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ACLClusterNameList', name: 'ACLClusterNameList')
    ACLList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ACLList', name: 'ACLList')
    ACLName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.memorydb#ACLName', name: 'ACLName', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-]*$"})
    ACLNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ACLNameList', name: 'ACLNameList')
    ACLNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ACLNotFoundFault', name: 'ACLNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ACLNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ACLPendingChanges = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ACLPendingChanges', name: 'ACLPendingChanges')
    ACLQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ACLQuotaExceededFault', name: 'ACLQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ACLQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ACLsUpdateStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ACLsUpdateStatus', name: 'ACLsUpdateStatus')
    APICallRateForCustomerExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#APICallRateForCustomerExceededFault', name: 'APICallRateForCustomerExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "APICallRateForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AZStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.memorydb#AZStatus', name: 'AZStatus')
    AccessString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.memorydb#AccessString', name: 'AccessString', traits: {"smithy.api#pattern" => "\\S"})
    Authentication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#Authentication', name: 'Authentication')
    AuthenticationMode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#AuthenticationMode', name: 'AuthenticationMode')
    AuthenticationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.memorydb#AuthenticationType', name: 'AuthenticationType')
    AvailabilityZone = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#AvailabilityZone', name: 'AvailabilityZone')
    AwsQueryErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.memorydb#AwsQueryErrorMessage', name: 'AwsQueryErrorMessage')
    BatchUpdateClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#BatchUpdateClusterRequest', name: 'BatchUpdateClusterRequest')
    BatchUpdateClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#BatchUpdateClusterResponse', name: 'BatchUpdateClusterResponse')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.memorydb#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BooleanOptional = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.memorydb#BooleanOptional', name: 'BooleanOptional')
    Cluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#Cluster', name: 'Cluster')
    ClusterAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ClusterAlreadyExistsFault', name: 'ClusterAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ClusterConfiguration', name: 'ClusterConfiguration')
    ClusterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ClusterList', name: 'ClusterList')
    ClusterNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ClusterNameList', name: 'ClusterNameList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ClusterNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ClusterNotFoundFault', name: 'ClusterNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterPendingUpdates = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ClusterPendingUpdates', name: 'ClusterPendingUpdates')
    ClusterQuotaForCustomerExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ClusterQuotaForCustomerExceededFault', name: 'ClusterQuotaForCustomerExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterQuotaForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CopySnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CopySnapshotRequest', name: 'CopySnapshotRequest')
    CopySnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CopySnapshotResponse', name: 'CopySnapshotResponse')
    CreateACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateACLRequest', name: 'CreateACLRequest')
    CreateACLResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateACLResponse', name: 'CreateACLResponse')
    CreateClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateClusterRequest', name: 'CreateClusterRequest')
    CreateClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateClusterResponse', name: 'CreateClusterResponse')
    CreateMultiRegionClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateMultiRegionClusterRequest', name: 'CreateMultiRegionClusterRequest')
    CreateMultiRegionClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateMultiRegionClusterResponse', name: 'CreateMultiRegionClusterResponse')
    CreateParameterGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateParameterGroupRequest', name: 'CreateParameterGroupRequest')
    CreateParameterGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateParameterGroupResponse', name: 'CreateParameterGroupResponse')
    CreateSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateSnapshotRequest', name: 'CreateSnapshotRequest')
    CreateSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateSnapshotResponse', name: 'CreateSnapshotResponse')
    CreateSubnetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateSubnetGroupRequest', name: 'CreateSubnetGroupRequest')
    CreateSubnetGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateSubnetGroupResponse', name: 'CreateSubnetGroupResponse')
    CreateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateUserRequest', name: 'CreateUserRequest')
    CreateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#CreateUserResponse', name: 'CreateUserResponse')
    DataTieringStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.memorydb#DataTieringStatus', name: 'DataTieringStatus')
    DefaultUserRequired = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DefaultUserRequired', name: 'DefaultUserRequired', traits: {"aws.protocols#awsQueryError" => {"code" => "DefaultUserRequired", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteACLRequest', name: 'DeleteACLRequest')
    DeleteACLResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteACLResponse', name: 'DeleteACLResponse')
    DeleteClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteClusterRequest', name: 'DeleteClusterRequest')
    DeleteClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteClusterResponse', name: 'DeleteClusterResponse')
    DeleteMultiRegionClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteMultiRegionClusterRequest', name: 'DeleteMultiRegionClusterRequest')
    DeleteMultiRegionClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteMultiRegionClusterResponse', name: 'DeleteMultiRegionClusterResponse')
    DeleteParameterGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteParameterGroupRequest', name: 'DeleteParameterGroupRequest')
    DeleteParameterGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteParameterGroupResponse', name: 'DeleteParameterGroupResponse')
    DeleteSnapshotRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteSnapshotRequest', name: 'DeleteSnapshotRequest')
    DeleteSnapshotResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteSnapshotResponse', name: 'DeleteSnapshotResponse')
    DeleteSubnetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteSubnetGroupRequest', name: 'DeleteSubnetGroupRequest')
    DeleteSubnetGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteSubnetGroupResponse', name: 'DeleteSubnetGroupResponse')
    DeleteUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteUserRequest', name: 'DeleteUserRequest')
    DeleteUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DeleteUserResponse', name: 'DeleteUserResponse')
    DescribeACLsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeACLsRequest', name: 'DescribeACLsRequest')
    DescribeACLsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeACLsResponse', name: 'DescribeACLsResponse')
    DescribeClustersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeClustersRequest', name: 'DescribeClustersRequest')
    DescribeClustersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeClustersResponse', name: 'DescribeClustersResponse')
    DescribeEngineVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeEngineVersionsRequest', name: 'DescribeEngineVersionsRequest')
    DescribeEngineVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeEngineVersionsResponse', name: 'DescribeEngineVersionsResponse')
    DescribeEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeEventsRequest', name: 'DescribeEventsRequest')
    DescribeEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeEventsResponse', name: 'DescribeEventsResponse')
    DescribeMultiRegionClustersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeMultiRegionClustersRequest', name: 'DescribeMultiRegionClustersRequest')
    DescribeMultiRegionClustersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeMultiRegionClustersResponse', name: 'DescribeMultiRegionClustersResponse')
    DescribeParameterGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeParameterGroupsRequest', name: 'DescribeParameterGroupsRequest')
    DescribeParameterGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeParameterGroupsResponse', name: 'DescribeParameterGroupsResponse')
    DescribeParametersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeParametersRequest', name: 'DescribeParametersRequest')
    DescribeParametersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeParametersResponse', name: 'DescribeParametersResponse')
    DescribeReservedNodesOfferingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeReservedNodesOfferingsRequest', name: 'DescribeReservedNodesOfferingsRequest')
    DescribeReservedNodesOfferingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeReservedNodesOfferingsResponse', name: 'DescribeReservedNodesOfferingsResponse')
    DescribeReservedNodesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeReservedNodesRequest', name: 'DescribeReservedNodesRequest')
    DescribeReservedNodesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeReservedNodesResponse', name: 'DescribeReservedNodesResponse')
    DescribeServiceUpdatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeServiceUpdatesRequest', name: 'DescribeServiceUpdatesRequest')
    DescribeServiceUpdatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeServiceUpdatesResponse', name: 'DescribeServiceUpdatesResponse')
    DescribeSnapshotsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeSnapshotsRequest', name: 'DescribeSnapshotsRequest')
    DescribeSnapshotsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeSnapshotsResponse', name: 'DescribeSnapshotsResponse')
    DescribeSubnetGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeSubnetGroupsRequest', name: 'DescribeSubnetGroupsRequest')
    DescribeSubnetGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeSubnetGroupsResponse', name: 'DescribeSubnetGroupsResponse')
    DescribeUsersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeUsersRequest', name: 'DescribeUsersRequest')
    DescribeUsersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DescribeUsersResponse', name: 'DescribeUsersResponse')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.memorydb#Double', name: 'Double', traits: {"smithy.api#default" => 0})
    DuplicateUserNameFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#DuplicateUserNameFault', name: 'DuplicateUserNameFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateUserName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Endpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#Endpoint', name: 'Endpoint')
    EngineVersionInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#EngineVersionInfo', name: 'EngineVersionInfo')
    EngineVersionInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#EngineVersionInfoList', name: 'EngineVersionInfoList')
    Event = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#Event', name: 'Event')
    EventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#EventList', name: 'EventList')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.memorydb#ExceptionMessage', name: 'ExceptionMessage')
    FailoverShardRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#FailoverShardRequest', name: 'FailoverShardRequest')
    FailoverShardResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#FailoverShardResponse', name: 'FailoverShardResponse')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#Filter', name: 'Filter')
    FilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#FilterList', name: 'FilterList')
    FilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.memorydb#FilterName', name: 'FilterName', traits: {"smithy.api#pattern" => "\\S"})
    FilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.memorydb#FilterValue', name: 'FilterValue', traits: {"smithy.api#pattern" => "\\S"})
    FilterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#FilterValueList', name: 'FilterValueList', traits: {"smithy.api#length" => {"min" => 1}})
    InputAuthenticationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.memorydb#InputAuthenticationType', name: 'InputAuthenticationType')
    InsufficientClusterCapacityFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InsufficientClusterCapacityFault', name: 'InsufficientClusterCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.memorydb#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    IntegerOptional = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.memorydb#IntegerOptional', name: 'IntegerOptional')
    InvalidACLStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidACLStateFault', name: 'InvalidACLStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidACLState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidARNFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidARNFault', name: 'InvalidARNFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidARN", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidClusterStateFault', name: 'InvalidClusterStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCredentialsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidCredentialsException', name: 'InvalidCredentialsException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCredentialsException", "httpResponseCode" => 408}, "smithy.api#error" => "client", "smithy.api#httpError" => 408})
    InvalidKMSKeyFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidKMSKeyFault', name: 'InvalidKMSKeyFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidKMSKeyFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidMultiRegionClusterStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidMultiRegionClusterStateFault', name: 'InvalidMultiRegionClusterStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidMultiRegionClusterState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNodeStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidNodeStateFault', name: 'InvalidNodeStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNodeState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidParameterCombinationException', name: 'InvalidParameterCombinationException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterCombination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterGroupStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidParameterGroupStateFault', name: 'InvalidParameterGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidParameterValueException', name: 'InvalidParameterValueException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterValue", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnapshotStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidSnapshotStateFault', name: 'InvalidSnapshotStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSnapshotState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidSubnet', name: 'InvalidSubnet', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidUserStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidUserStateFault', name: 'InvalidUserStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidUserState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#InvalidVPCNetworkStateFault', name: 'InvalidVPCNetworkStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpDiscovery = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.memorydb#IpDiscovery', name: 'IpDiscovery')
    KeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#KeyList', name: 'KeyList')
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.memorydb#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ListAllowedMultiRegionClusterUpdatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ListAllowedMultiRegionClusterUpdatesRequest', name: 'ListAllowedMultiRegionClusterUpdatesRequest')
    ListAllowedMultiRegionClusterUpdatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ListAllowedMultiRegionClusterUpdatesResponse', name: 'ListAllowedMultiRegionClusterUpdatesResponse')
    ListAllowedNodeTypeUpdatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ListAllowedNodeTypeUpdatesRequest', name: 'ListAllowedNodeTypeUpdatesRequest')
    ListAllowedNodeTypeUpdatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ListAllowedNodeTypeUpdatesResponse', name: 'ListAllowedNodeTypeUpdatesResponse')
    ListTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ListTagsRequest', name: 'ListTagsRequest')
    ListTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ListTagsResponse', name: 'ListTagsResponse')
    MultiRegionCluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#MultiRegionCluster', name: 'MultiRegionCluster')
    MultiRegionClusterAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#MultiRegionClusterAlreadyExistsFault', name: 'MultiRegionClusterAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "MultiRegionClusterAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MultiRegionClusterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#MultiRegionClusterList', name: 'MultiRegionClusterList')
    MultiRegionClusterNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#MultiRegionClusterNotFoundFault', name: 'MultiRegionClusterNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "MultiRegionClusterNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    MultiRegionParameterGroupNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#MultiRegionParameterGroupNotFoundFault', name: 'MultiRegionParameterGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "MultiRegionParameterGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NetworkType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.memorydb#NetworkType', name: 'NetworkType')
    NetworkTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#NetworkTypeList', name: 'NetworkTypeList')
    NoOperationFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#NoOperationFault', name: 'NoOperationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NoOperationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Node = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#Node', name: 'Node')
    NodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#NodeList', name: 'NodeList')
    NodeQuotaForClusterExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#NodeQuotaForClusterExceededFault', name: 'NodeQuotaForClusterExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NodeQuotaForClusterExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeQuotaForCustomerExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#NodeQuotaForCustomerExceededFault', name: 'NodeQuotaForCustomerExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NodeQuotaForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#NodeTypeList', name: 'NodeTypeList')
    Parameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#Parameter', name: 'Parameter')
    ParameterGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ParameterGroup', name: 'ParameterGroup')
    ParameterGroupAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ParameterGroupAlreadyExistsFault', name: 'ParameterGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ParameterGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ParameterGroupList', name: 'ParameterGroupList')
    ParameterGroupNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ParameterGroupNotFoundFault', name: 'ParameterGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ParameterGroupQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ParameterGroupQuotaExceededFault', name: 'ParameterGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ParameterNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ParameterNameList', name: 'ParameterNameList')
    ParameterNameValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ParameterNameValue', name: 'ParameterNameValue')
    ParameterNameValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ParameterNameValueList', name: 'ParameterNameValueList')
    ParametersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ParametersList', name: 'ParametersList')
    PasswordListInput = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#PasswordListInput', name: 'PasswordListInput', traits: {"smithy.api#length" => {"min" => 1}})
    PendingModifiedServiceUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#PendingModifiedServiceUpdate', name: 'PendingModifiedServiceUpdate')
    PendingModifiedServiceUpdateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#PendingModifiedServiceUpdateList', name: 'PendingModifiedServiceUpdateList')
    PurchaseReservedNodesOfferingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#PurchaseReservedNodesOfferingRequest', name: 'PurchaseReservedNodesOfferingRequest')
    PurchaseReservedNodesOfferingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#PurchaseReservedNodesOfferingResponse', name: 'PurchaseReservedNodesOfferingResponse')
    RecurringCharge = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#RecurringCharge', name: 'RecurringCharge')
    RecurringChargeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#RecurringChargeList', name: 'RecurringChargeList')
    RegionalCluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#RegionalCluster', name: 'RegionalCluster')
    RegionalClusterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#RegionalClusterList', name: 'RegionalClusterList')
    ReplicaConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ReplicaConfigurationRequest', name: 'ReplicaConfigurationRequest')
    ReservedNode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ReservedNode', name: 'ReservedNode')
    ReservedNodeAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ReservedNodeAlreadyExistsFault', name: 'ReservedNodeAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeAlreadyExists", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ReservedNodeList', name: 'ReservedNodeList')
    ReservedNodeNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ReservedNodeNotFoundFault', name: 'ReservedNodeNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ReservedNodeQuotaExceededFault', name: 'ReservedNodeQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReservedNodesOffering = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ReservedNodesOffering', name: 'ReservedNodesOffering')
    ReservedNodesOfferingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ReservedNodesOfferingList', name: 'ReservedNodesOfferingList')
    ReservedNodesOfferingNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ReservedNodesOfferingNotFoundFault', name: 'ReservedNodesOfferingNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodesOfferingNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResetParameterGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ResetParameterGroupRequest', name: 'ResetParameterGroupRequest')
    ResetParameterGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ResetParameterGroupResponse', name: 'ResetParameterGroupResponse')
    ReshardingStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ReshardingStatus', name: 'ReshardingStatus')
    SecurityGroupIdsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#SecurityGroupIdsList', name: 'SecurityGroupIdsList')
    SecurityGroupMembership = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SecurityGroupMembership', name: 'SecurityGroupMembership')
    SecurityGroupMembershipList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#SecurityGroupMembershipList', name: 'SecurityGroupMembershipList')
    ServiceLinkedRoleNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ServiceLinkedRoleNotFoundFault', name: 'ServiceLinkedRoleNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceLinkedRoleNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ServiceUpdate', name: 'ServiceUpdate')
    ServiceUpdateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ServiceUpdateList', name: 'ServiceUpdateList')
    ServiceUpdateNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ServiceUpdateNotFoundFault', name: 'ServiceUpdateNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceUpdateNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceUpdateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ServiceUpdateRequest', name: 'ServiceUpdateRequest')
    ServiceUpdateStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.memorydb#ServiceUpdateStatus', name: 'ServiceUpdateStatus')
    ServiceUpdateStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ServiceUpdateStatusList', name: 'ServiceUpdateStatusList', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    ServiceUpdateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.memorydb#ServiceUpdateType', name: 'ServiceUpdateType')
    Shard = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#Shard', name: 'Shard')
    ShardConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ShardConfiguration', name: 'ShardConfiguration')
    ShardConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ShardConfigurationRequest', name: 'ShardConfigurationRequest')
    ShardDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ShardDetail', name: 'ShardDetail')
    ShardDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ShardDetails', name: 'ShardDetails')
    ShardList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#ShardList', name: 'ShardList')
    ShardNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ShardNotFoundFault', name: 'ShardNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ShardNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ShardsPerClusterQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#ShardsPerClusterQuotaExceededFault', name: 'ShardsPerClusterQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ShardsPerClusterQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SlotMigration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SlotMigration', name: 'SlotMigration')
    Snapshot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#Snapshot', name: 'Snapshot')
    SnapshotAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SnapshotAlreadyExistsFault', name: 'SnapshotAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotArnsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#SnapshotArnsList', name: 'SnapshotArnsList')
    SnapshotList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#SnapshotList', name: 'SnapshotList')
    SnapshotNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SnapshotNotFoundFault', name: 'SnapshotNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SnapshotQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SnapshotQuotaExceededFault', name: 'SnapshotQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.memorydb#SourceType', name: 'SourceType')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.memorydb#String', name: 'String')
    Subnet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#Subnet', name: 'Subnet')
    SubnetGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SubnetGroup', name: 'SubnetGroup')
    SubnetGroupAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SubnetGroupAlreadyExistsFault', name: 'SubnetGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetGroupInUseFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SubnetGroupInUseFault', name: 'SubnetGroupInUseFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#SubnetGroupList', name: 'SubnetGroupList')
    SubnetGroupNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SubnetGroupNotFoundFault', name: 'SubnetGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubnetGroupQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SubnetGroupQuotaExceededFault', name: 'SubnetGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#SubnetIdentifierList', name: 'SubnetIdentifierList')
    SubnetInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SubnetInUse', name: 'SubnetInUse', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#SubnetList', name: 'SubnetList')
    SubnetNotAllowedFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SubnetNotAllowedFault', name: 'SubnetNotAllowedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetNotAllowedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#SubnetQuotaExceededFault', name: 'SubnetQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.memorydb#TStamp', name: 'TStamp')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#Tag', name: 'Tag')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#TagNotFoundFault', name: 'TagNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TagNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TagQuotaPerResourceExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#TagQuotaPerResourceExceeded', name: 'TagQuotaPerResourceExceeded', traits: {"aws.protocols#awsQueryError" => {"code" => "TagQuotaPerResourceExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#TagResourceResponse', name: 'TagResourceResponse')
    TargetBucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.memorydb#TargetBucket', name: 'TargetBucket', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9._-]+$"})
    TestFailoverNotAvailableFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#TestFailoverNotAvailableFault', name: 'TestFailoverNotAvailableFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TestFailoverNotAvailableFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnprocessedCluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UnprocessedCluster', name: 'UnprocessedCluster')
    UnprocessedClusterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#UnprocessedClusterList', name: 'UnprocessedClusterList')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateACLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UpdateACLRequest', name: 'UpdateACLRequest')
    UpdateACLResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UpdateACLResponse', name: 'UpdateACLResponse')
    UpdateClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UpdateClusterRequest', name: 'UpdateClusterRequest')
    UpdateClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UpdateClusterResponse', name: 'UpdateClusterResponse')
    UpdateMultiRegionClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UpdateMultiRegionClusterRequest', name: 'UpdateMultiRegionClusterRequest')
    UpdateMultiRegionClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UpdateMultiRegionClusterResponse', name: 'UpdateMultiRegionClusterResponse')
    UpdateParameterGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UpdateParameterGroupRequest', name: 'UpdateParameterGroupRequest')
    UpdateParameterGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UpdateParameterGroupResponse', name: 'UpdateParameterGroupResponse')
    UpdateStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.memorydb#UpdateStrategy', name: 'UpdateStrategy')
    UpdateSubnetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UpdateSubnetGroupRequest', name: 'UpdateSubnetGroupRequest')
    UpdateSubnetGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UpdateSubnetGroupResponse', name: 'UpdateSubnetGroupResponse')
    UpdateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UpdateUserRequest', name: 'UpdateUserRequest')
    UpdateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UpdateUserResponse', name: 'UpdateUserResponse')
    User = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#User', name: 'User')
    UserAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UserAlreadyExistsFault', name: 'UserAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UserAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#UserList', name: 'UserList')
    UserName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.memorydb#UserName', name: 'UserName', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-]*$"})
    UserNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#UserNameList', name: 'UserNameList')
    UserNameListInput = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.memorydb#UserNameListInput', name: 'UserNameListInput', traits: {"smithy.api#length" => {"min" => 1}})
    UserNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UserNotFoundFault', name: 'UserNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UserNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UserQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.memorydb#UserQuotaExceededFault', name: 'UserQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UserQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})

    ACL.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Access Control List</p>"}))
    ACL.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates ACL status. Can be \"creating\", \"active\", \"modifying\", \"deleting\".</p>"}))
    ACL.add_member(:user_names, Smithy::Schema::Shapes::ShapeRef.new(shape: UserNameList, location_name: 'UserNames', traits: {"smithy.api#documentation" => "<p>The list of user names that belong to the ACL.</p>"}))
    ACL.add_member(:minimum_engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion', traits: {"smithy.api#documentation" => "<p>The minimum engine version supported for the ACL</p>"}))
    ACL.add_member(:pending_changes, Smithy::Schema::Shapes::ShapeRef.new(shape: ACLPendingChanges, location_name: 'PendingChanges', traits: {"smithy.api#documentation" => "<p>A list of updates being applied to the ACL.</p>"}))
    ACL.add_member(:clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: ACLClusterNameList, location_name: 'Clusters', traits: {"smithy.api#documentation" => "<p>A list of clusters associated with the ACL.</p>"}))
    ACL.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the ACL</p>"}))
    ACL.type = Types::ACL
    ACLAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ACLAlreadyExistsFault.type = Types::ACLAlreadyExistsFault
    ACLClusterNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ACLList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ACL)
    ACLNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ACLName)
    ACLNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ACLNotFoundFault.type = Types::ACLNotFoundFault
    ACLPendingChanges.add_member(:user_names_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: UserNameList, location_name: 'UserNamesToRemove', traits: {"smithy.api#documentation" => "<p>A list of user names being removed from the ACL</p>"}))
    ACLPendingChanges.add_member(:user_names_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: UserNameList, location_name: 'UserNamesToAdd', traits: {"smithy.api#documentation" => "<p>A list of users being added to the ACL</p>"}))
    ACLPendingChanges.type = Types::ACLPendingChanges
    ACLQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ACLQuotaExceededFault.type = Types::ACLQuotaExceededFault
    ACLsUpdateStatus.add_member(:acl_to_apply, Smithy::Schema::Shapes::ShapeRef.new(shape: ACLName, location_name: 'ACLToApply', traits: {"smithy.api#documentation" => "<p>A list of ACLs pending to be applied.</p>"}))
    ACLsUpdateStatus.type = Types::ACLsUpdateStatus
    APICallRateForCustomerExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    APICallRateForCustomerExceededFault.type = Types::APICallRateForCustomerExceededFault
    AZStatus.add_member(:single_az, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SingleAZ', traits: {"smithy.api#enumValue" => "singleaz"}))
    AZStatus.add_member(:multi_az, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MultiAZ', traits: {"smithy.api#enumValue" => "multiaz"}))
    Authentication.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Indicates whether the user requires a password to authenticate.</p>"}))
    Authentication.add_member(:password_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PasswordCount', traits: {"smithy.api#documentation" => "<p>The number of passwords belonging to the user. The maximum is two.</p>"}))
    Authentication.type = Types::Authentication
    AuthenticationMode.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: InputAuthenticationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Indicates whether the user requires a password to authenticate. All newly-created users require a password.</p>"}))
    AuthenticationMode.add_member(:passwords, Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordListInput, location_name: 'Passwords', traits: {"smithy.api#documentation" => "<p>The password(s) used for authentication</p>"}))
    AuthenticationMode.type = Types::AuthenticationMode
    AuthenticationType.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD', traits: {"smithy.api#enumValue" => "password"}))
    AuthenticationType.add_member(:no_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_PASSWORD', traits: {"smithy.api#enumValue" => "no-password"}))
    AuthenticationType.add_member(:iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "iam"}))
    AvailabilityZone.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the Availability Zone.</p>"}))
    AvailabilityZone.type = Types::AvailabilityZone
    BatchUpdateClusterRequest.add_member(:cluster_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNameList, location_name: 'ClusterNames', traits: {"smithy.api#documentation" => "<p>The cluster names to apply the updates.</p>", "smithy.api#required" => {}}))
    BatchUpdateClusterRequest.add_member(:service_update, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateRequest, location_name: 'ServiceUpdate', traits: {"smithy.api#documentation" => "<p>The unique ID of the service update</p>"}))
    BatchUpdateClusterRequest.type = Types::BatchUpdateClusterRequest
    BatchUpdateClusterResponse.add_member(:processed_clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterList, location_name: 'ProcessedClusters', traits: {"smithy.api#documentation" => "<p>The list of clusters that have been updated.</p>"}))
    BatchUpdateClusterResponse.add_member(:unprocessed_clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedClusterList, location_name: 'UnprocessedClusters', traits: {"smithy.api#documentation" => "<p>The list of clusters where updates have not been applied.</p>"}))
    BatchUpdateClusterResponse.type = Types::BatchUpdateClusterResponse
    Cluster.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The user-supplied name of the cluster. This identifier is a unique key that identifies a cluster.</p>"}))
    Cluster.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the cluster</p>"}))
    Cluster.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the cluster. For example, Available, Updating, Creating.</p>"}))
    Cluster.add_member(:pending_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterPendingUpdates, location_name: 'PendingUpdates', traits: {"smithy.api#documentation" => "<p>A group of settings that are currently being applied.</p>"}))
    Cluster.add_member(:multi_region_cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionClusterName', traits: {"smithy.api#documentation" => "<p>The name of the multi-Region cluster that this cluster belongs to.</p>"}))
    Cluster.add_member(:number_of_shards, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfShards', traits: {"smithy.api#documentation" => "<p>The number of shards in the cluster</p>"}))
    Cluster.add_member(:shards, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardList, location_name: 'Shards', traits: {"smithy.api#documentation" => "<p>A list of shards that are members of the cluster.</p>"}))
    Cluster.add_member(:availability_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: AZStatus, location_name: 'AvailabilityMode', traits: {"smithy.api#documentation" => "<p>Indicates if the cluster has a Multi-AZ configuration (multiaz) or not (singleaz).</p>"}))
    Cluster.add_member(:cluster_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'ClusterEndpoint', traits: {"smithy.api#documentation" => "<p>The cluster's configuration endpoint</p>"}))
    Cluster.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The cluster's node type</p>"}))
    Cluster.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>The name of the engine used by the cluster.</p>"}))
    Cluster.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The Redis OSS engine version used by the cluster</p>"}))
    Cluster.add_member(:engine_patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EnginePatchVersion', traits: {"smithy.api#documentation" => "<p>The Redis OSS engine patch version used by the cluster</p>"}))
    Cluster.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group used by the cluster</p>"}))
    Cluster.add_member(:parameter_group_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupStatus', traits: {"smithy.api#documentation" => "<p>The status of the parameter group used by the cluster, for example 'active' or 'applying'.</p>"}))
    Cluster.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupMembershipList, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>A list of security groups used by the cluster</p>"}))
    Cluster.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group used by the cluster</p>"}))
    Cluster.add_member(:tls_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'TLSEnabled', traits: {"smithy.api#documentation" => "<p>A flag to indicate if In-transit encryption is enabled</p>"}))
    Cluster.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt the cluster</p>"}))
    Cluster.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>"}))
    Cluster.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the SNS notification topic</p>"}))
    Cluster.add_member(:sns_topic_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicStatus', traits: {"smithy.api#documentation" => "<p>The SNS topic must be in Active status to receive notifications</p>"}))
    Cluster.add_member(:snapshot_retention_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit', traits: {"smithy.api#documentation" => "<p>The number of days for which MemoryDB retains automatic snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>"}))
    Cluster.add_member(:maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceWindow', traits: {"smithy.api#documentation" => "<p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. </p>"}))
    Cluster.add_member(:snapshot_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotWindow', traits: {"smithy.api#documentation" => "<p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard.\n         \n         Example: 05:00-09:00\n         \n         If you do not specify this parameter, MemoryDB automatically chooses an appropriate time range.</p>"}))
    Cluster.add_member(:acl_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ACLName, location_name: 'ACLName', traits: {"smithy.api#documentation" => "<p>The name of the Access Control List associated with this cluster.</p>"}))
    Cluster.add_member(:auto_minor_version_upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade', traits: {"smithy.api#documentation" => "<p>When set to true, the cluster will automatically receive minor engine version upgrades after launch.</p>"}))
    Cluster.add_member(:data_tiering, Smithy::Schema::Shapes::ShapeRef.new(shape: DataTieringStatus, location_name: 'DataTiering', traits: {"smithy.api#documentation" => "<p>Enables data tiering. Data tiering is only supported for clusters using the r6gd node type. \n            This parameter must be set when using r6gd nodes. For more information, see <a href=\"https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html\">Data tiering</a>.</p>"}))
    Cluster.add_member(:network_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'NetworkType', traits: {"smithy.api#documentation" => "<p>The IP address type for the cluster. Returns 'ipv4' for IPv4 only, 'ipv6' for IPv6 only, or 'dual-stack' if the cluster supports both IPv4 and IPv6 addressing.</p>"}))
    Cluster.add_member(:ip_discovery, Smithy::Schema::Shapes::ShapeRef.new(shape: IpDiscovery, location_name: 'IpDiscovery', traits: {"smithy.api#documentation" => "<p>The mechanism that the cluster uses to discover IP addresses. Returns 'ipv4' when DNS endpoints resolve to IPv4 addresses, or 'ipv6' when DNS endpoints resolve to IPv6 addresses.</p>"}))
    Cluster.type = Types::Cluster
    ClusterAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterAlreadyExistsFault.type = Types::ClusterAlreadyExistsFault
    ClusterConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the cluster</p>"}))
    ClusterConfiguration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the cluster configuration</p>"}))
    ClusterConfiguration.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type used for the cluster</p>"}))
    ClusterConfiguration.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>The name of the engine used by the cluster configuration.</p>"}))
    ClusterConfiguration.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The Redis OSS engine version used by the cluster</p>"}))
    ClusterConfiguration.add_member(:maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceWindow', traits: {"smithy.api#documentation" => "<p>The specified maintenance window for the cluster</p>"}))
    ClusterConfiguration.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the SNS notification topic for the cluster</p>"}))
    ClusterConfiguration.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port used by the cluster</p>"}))
    ClusterConfiguration.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of parameter group used by the cluster</p>"}))
    ClusterConfiguration.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group used by the cluster</p>"}))
    ClusterConfiguration.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC the cluster belongs to</p>"}))
    ClusterConfiguration.add_member(:snapshot_retention_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit', traits: {"smithy.api#documentation" => "<p>The snapshot retention limit set by the cluster</p>"}))
    ClusterConfiguration.add_member(:snapshot_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotWindow', traits: {"smithy.api#documentation" => "<p>The snapshot window set by the cluster</p>"}))
    ClusterConfiguration.add_member(:num_shards, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumShards', traits: {"smithy.api#documentation" => "<p>The number of shards in the cluster</p>"}))
    ClusterConfiguration.add_member(:shards, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardDetails, location_name: 'Shards', traits: {"smithy.api#documentation" => "<p>The list of shards in the cluster</p>"}))
    ClusterConfiguration.add_member(:multi_region_parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the multi-Region parameter group associated with the cluster configuration.</p>"}))
    ClusterConfiguration.add_member(:multi_region_cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionClusterName', traits: {"smithy.api#documentation" => "<p>The name for the multi-Region cluster associated with the cluster configuration.</p>"}))
    ClusterConfiguration.type = Types::ClusterConfiguration
    ClusterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, traits: {"smithy.api#xmlName" => "Cluster"})
    ClusterNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ClusterNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterNotFoundFault.type = Types::ClusterNotFoundFault
    ClusterPendingUpdates.add_member(:resharding, Smithy::Schema::Shapes::ShapeRef.new(shape: ReshardingStatus, location_name: 'Resharding', traits: {"smithy.api#documentation" => "<p>The status of an online resharding operation.</p>"}))
    ClusterPendingUpdates.add_member(:ac_ls, Smithy::Schema::Shapes::ShapeRef.new(shape: ACLsUpdateStatus, location_name: 'ACLs', traits: {"smithy.api#documentation" => "<p>A list of ACLs associated with the cluster that are being updated</p>"}))
    ClusterPendingUpdates.add_member(:service_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: PendingModifiedServiceUpdateList, location_name: 'ServiceUpdates', traits: {"smithy.api#documentation" => "<p>A list of service updates being applied to the cluster</p>"}))
    ClusterPendingUpdates.type = Types::ClusterPendingUpdates
    ClusterQuotaForCustomerExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterQuotaForCustomerExceededFault.type = Types::ClusterQuotaForCustomerExceededFault
    CopySnapshotRequest.add_member(:source_snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceSnapshotName', traits: {"smithy.api#documentation" => "<p>The name of an existing snapshot from which to make a copy.</p>", "smithy.api#required" => {}}))
    CopySnapshotRequest.add_member(:target_snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetSnapshotName', traits: {"smithy.api#documentation" => "<p>A name for the snapshot copy. MemoryDB does not permit overwriting a snapshot, therefore this name must be unique within its context - MemoryDB or an Amazon S3 bucket if exporting.</p>", "smithy.api#required" => {}}))
    CopySnapshotRequest.add_member(:target_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetBucket, location_name: 'TargetBucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket to which the snapshot is exported. This parameter is used only when exporting a snapshot for external access.\n       \n       When using this parameter to export a snapshot, be sure MemoryDB has the needed permissions to this S3 bucket. For more information, see \n       \n       <a href=\"https://docs.aws.amazon.com/MemoryDB/latest/devguide/snapshots-exporting.html\">Step 2: Grant MemoryDB Access to Your Amazon S3 Bucket</a>. \n       \n     </p>"}))
    CopySnapshotRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt the target snapshot.</p>"}))
    CopySnapshotRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"}))
    CopySnapshotRequest.type = Types::CopySnapshotRequest
    CopySnapshotResponse.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot', traits: {"smithy.api#documentation" => "<p>Represents a copy of an entire cluster as of the time when the snapshot was taken.</p>"}))
    CopySnapshotResponse.type = Types::CopySnapshotResponse
    CreateACLRequest.add_member(:acl_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ACLName', traits: {"smithy.api#documentation" => "<p>The name of the Access Control List.</p>", "smithy.api#required" => {}}))
    CreateACLRequest.add_member(:user_names, Smithy::Schema::Shapes::ShapeRef.new(shape: UserNameListInput, location_name: 'UserNames', traits: {"smithy.api#documentation" => "<p>The list of users that belong to the Access Control List.</p>"}))
    CreateACLRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"}))
    CreateACLRequest.type = Types::CreateACLRequest
    CreateACLResponse.add_member(:acl, Smithy::Schema::Shapes::ShapeRef.new(shape: ACL, location_name: 'ACL', traits: {"smithy.api#documentation" => "<p>The newly-created Access Control List.</p>"}))
    CreateACLResponse.type = Types::CreateACLResponse
    CreateClusterRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the cluster. This value must be unique as it also serves as the cluster identifier.</p>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The compute and memory capacity of the nodes in the cluster.</p>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:multi_region_cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionClusterName', traits: {"smithy.api#documentation" => "<p>The name of the multi-Region cluster to be created.</p>"}))
    CreateClusterRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group associated with the cluster.</p>"}))
    CreateClusterRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>An optional description of the cluster.</p>"}))
    CreateClusterRequest.add_member(:num_shards, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumShards', traits: {"smithy.api#documentation" => "<p>The number of shards the cluster will contain. The default value is 1. </p>"}))
    CreateClusterRequest.add_member(:num_replicas_per_shard, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumReplicasPerShard', traits: {"smithy.api#documentation" => "<p>The number of replicas to apply to each shard. The default value is 1. The maximum is 5. </p>"}))
    CreateClusterRequest.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group to be used for the cluster.</p>"}))
    CreateClusterRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of security group names to associate with this cluster.</p>"}))
    CreateClusterRequest.add_member(:maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceWindow', traits: {"smithy.api#documentation" => "<p>Specifies the weekly time range during which maintenance\n         on the cluster is performed. It is specified as a range in\n         the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum\n         maintenance window is a 60 minute period.</p>\n         <p>Valid values for <code>ddd</code> are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>sun</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>mon</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>tue</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>wed</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>thu</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>fri</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>sat</code>\n               </p>\n            </li>\n         </ul>\n         <p>Example: <code>sun:23:00-mon:01:30</code>\n         </p>"}))
    CreateClusterRequest.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port number on which each of the nodes accepts connections.</p>"}))
    CreateClusterRequest.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.</p>"}))
    CreateClusterRequest.add_member(:tls_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'TLSEnabled', traits: {"smithy.api#documentation" => "<p>A flag to enable in-transit encryption on the cluster.</p>"}))
    CreateClusterRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt the cluster.</p>"}))
    CreateClusterRequest.add_member(:snapshot_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotArnsList, location_name: 'SnapshotArns', traits: {"smithy.api#documentation" => "<p>A list of Amazon Resource Names (ARN) that uniquely identify the RDB snapshot files stored in Amazon S3. The snapshot files are used to populate the new cluster. The Amazon S3 object name in the ARN cannot contain any commas.</p>"}))
    CreateClusterRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotName', traits: {"smithy.api#documentation" => "<p>The name of a snapshot from which to restore data into the new cluster. The snapshot status changes to restoring while the new cluster is being created.</p>"}))
    CreateClusterRequest.add_member(:snapshot_retention_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit', traits: {"smithy.api#documentation" => "<p>The number of days for which MemoryDB retains automatic snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>"}))
    CreateClusterRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to be added to this resource. Tags are comma-separated key,value pairs (e.g. Key=myKey, Value=myKeyValue. You can include multiple tags as shown following: Key=myKey, Value=myKeyValue Key=mySecondKey, Value=mySecondKeyValue.</p>"}))
    CreateClusterRequest.add_member(:snapshot_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotWindow', traits: {"smithy.api#documentation" => "<p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard.</p>\n         <p>    Example: 05:00-09:00</p>\n         <p>    If you do not specify this parameter, MemoryDB automatically chooses an appropriate time range.</p>"}))
    CreateClusterRequest.add_member(:acl_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ACLName, location_name: 'ACLName', traits: {"smithy.api#documentation" => "<p>The name of the Access Control List to associate with the cluster.</p>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>The name of the engine to be used for the cluster.</p>"}))
    CreateClusterRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The version number of the Redis OSS engine to be used for the cluster.</p>"}))
    CreateClusterRequest.add_member(:auto_minor_version_upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade', traits: {"smithy.api#documentation" => "<p>When set to true, the cluster will automatically receive minor engine version upgrades after launch.</p>"}))
    CreateClusterRequest.add_member(:data_tiering, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DataTiering', traits: {"smithy.api#documentation" => "<p>Enables data tiering. Data tiering is only supported for clusters using the r6gd node type. \n            This parameter must be set when using r6gd nodes. For more information, see <a href=\"https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html\">Data tiering</a>.</p>"}))
    CreateClusterRequest.add_member(:network_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'NetworkType', traits: {"smithy.api#documentation" => "<p>Specifies the IP address type for the cluster. Valid values are 'ipv4', 'ipv6', or 'dual_stack'. When set to 'ipv4', the cluster will only be accessible via IPv4 addresses. When set to 'ipv6', the cluster will only be accessible via IPv6 addresses. When set to 'dual_stack', the cluster will be accessible via both IPv4 and IPv6 addresses. If not specified, the default is 'ipv4'.</p>"}))
    CreateClusterRequest.add_member(:ip_discovery, Smithy::Schema::Shapes::ShapeRef.new(shape: IpDiscovery, location_name: 'IpDiscovery', traits: {"smithy.api#documentation" => "<p>The mechanism for discovering IP addresses for the cluster discovery protocol. Valid values are 'ipv4' or 'ipv6'. When set to 'ipv4', cluster discovery functions such as cluster slots, cluster shards, and cluster nodes return IPv4 addresses for cluster nodes. When set to 'ipv6', the cluster discovery functions return IPv6 addresses for cluster nodes. The value must be compatible with the NetworkType parameter. If not specified, the default is 'ipv4'.</p>"}))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>The newly-created cluster.</p>"}))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateMultiRegionClusterRequest.add_member(:multi_region_cluster_name_suffix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionClusterNameSuffix', traits: {"smithy.api#documentation" => "<p>A suffix to be added to the Multi-Region cluster name. Amazon MemoryDB automatically applies a prefix to the Multi-Region cluster Name when it is created. Each Amazon Region has its own prefix. For instance, a Multi-Region cluster Name created in the US-West-1 region will begin with \"virxk\", along with the suffix name you provide. The suffix guarantees uniqueness of the Multi-Region cluster name across multiple regions.</p>", "smithy.api#required" => {}}))
    CreateMultiRegionClusterRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the multi-Region cluster.</p>"}))
    CreateMultiRegionClusterRequest.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>The name of the engine to be used for the multi-Region cluster.</p>"}))
    CreateMultiRegionClusterRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The version of the engine to be used for the multi-Region cluster.</p>"}))
    CreateMultiRegionClusterRequest.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type to be used for the multi-Region cluster.</p>", "smithy.api#required" => {}}))
    CreateMultiRegionClusterRequest.add_member(:multi_region_parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the multi-Region parameter group to be associated with the cluster.</p>"}))
    CreateMultiRegionClusterRequest.add_member(:num_shards, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumShards', traits: {"smithy.api#documentation" => "<p>The number of shards for the multi-Region cluster.</p>"}))
    CreateMultiRegionClusterRequest.add_member(:tls_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'TLSEnabled', traits: {"smithy.api#documentation" => "<p>Whether to enable TLS encryption for the multi-Region cluster.</p>"}))
    CreateMultiRegionClusterRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to be applied to the multi-Region cluster.</p>"}))
    CreateMultiRegionClusterRequest.type = Types::CreateMultiRegionClusterRequest
    CreateMultiRegionClusterResponse.add_member(:multi_region_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionCluster, location_name: 'MultiRegionCluster', traits: {"smithy.api#documentation" => "<p>Details about the newly created multi-Region cluster.</p>"}))
    CreateMultiRegionClusterResponse.type = Types::CreateMultiRegionClusterResponse
    CreateParameterGroupRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group.</p>", "smithy.api#required" => {}}))
    CreateParameterGroupRequest.add_member(:family, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Family', traits: {"smithy.api#documentation" => "<p>The name of the parameter group family that the parameter group can be used with.</p>", "smithy.api#required" => {}}))
    CreateParameterGroupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>An optional description of the parameter group.</p>"}))
    CreateParameterGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"}))
    CreateParameterGroupRequest.type = Types::CreateParameterGroupRequest
    CreateParameterGroupResponse.add_member(:parameter_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroup, location_name: 'ParameterGroup', traits: {"smithy.api#documentation" => "<p>The newly-created parameter group.</p>"}))
    CreateParameterGroupResponse.type = Types::CreateParameterGroupResponse
    CreateSnapshotRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The snapshot is created from this cluster.</p>", "smithy.api#required" => {}}))
    CreateSnapshotRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotName', traits: {"smithy.api#documentation" => "<p>A name for the snapshot being created.</p>", "smithy.api#required" => {}}))
    CreateSnapshotRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt the snapshot.</p>"}))
    CreateSnapshotRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"}))
    CreateSnapshotRequest.type = Types::CreateSnapshotRequest
    CreateSnapshotResponse.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot', traits: {"smithy.api#documentation" => "<p>The newly-created snapshot.</p>"}))
    CreateSnapshotResponse.type = Types::CreateSnapshotResponse
    CreateSubnetGroupRequest.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group.</p>", "smithy.api#required" => {}}))
    CreateSubnetGroupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the subnet group.</p>"}))
    CreateSubnetGroupRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>A list of VPC subnet IDs for the subnet group.</p>", "smithy.api#required" => {}}))
    CreateSubnetGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"}))
    CreateSubnetGroupRequest.type = Types::CreateSubnetGroupRequest
    CreateSubnetGroupResponse.add_member(:subnet_group, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroup, location_name: 'SubnetGroup', traits: {"smithy.api#documentation" => "<p>The newly-created subnet group.</p>"}))
    CreateSubnetGroupResponse.type = Types::CreateSubnetGroupResponse
    CreateUserRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The name of the user. This value must be unique as it also serves as the user identifier.</p>", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:authentication_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMode, location_name: 'AuthenticationMode', traits: {"smithy.api#documentation" => "<p>Denotes the user's authentication properties, such as whether it requires a password to authenticate.</p>", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:access_string, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessString, location_name: 'AccessString', traits: {"smithy.api#documentation" => "<p>Access permissions string used for this user.</p>", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'User', traits: {"smithy.api#documentation" => "<p>The newly-created user.</p>"}))
    CreateUserResponse.type = Types::CreateUserResponse
    DataTieringStatus.add_member(:true, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "true"}))
    DataTieringStatus.add_member(:false, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "false"}))
    DefaultUserRequired.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DefaultUserRequired.type = Types::DefaultUserRequired
    DeleteACLRequest.add_member(:acl_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ACLName', traits: {"smithy.api#documentation" => "<p>The name of the Access Control List to delete.</p>", "smithy.api#required" => {}}))
    DeleteACLRequest.type = Types::DeleteACLRequest
    DeleteACLResponse.add_member(:acl, Smithy::Schema::Shapes::ShapeRef.new(shape: ACL, location_name: 'ACL', traits: {"smithy.api#documentation" => "<p>The Access Control List object that has been deleted.</p>"}))
    DeleteACLResponse.type = Types::DeleteACLResponse
    DeleteClusterRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the cluster to be deleted</p>", "smithy.api#required" => {}}))
    DeleteClusterRequest.add_member(:multi_region_cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionClusterName', traits: {"smithy.api#documentation" => "<p>The name of the multi-Region cluster to be deleted.</p>"}))
    DeleteClusterRequest.add_member(:final_snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FinalSnapshotName', traits: {"smithy.api#documentation" => "<p>The user-supplied name of a final cluster snapshot. This is the unique name that identifies the snapshot. MemoryDB creates the snapshot, and then deletes the cluster immediately afterward.</p>"}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>The cluster object that has been deleted.</p>"}))
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteMultiRegionClusterRequest.add_member(:multi_region_cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionClusterName', traits: {"smithy.api#documentation" => "<p>The name of the multi-Region cluster to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteMultiRegionClusterRequest.type = Types::DeleteMultiRegionClusterRequest
    DeleteMultiRegionClusterResponse.add_member(:multi_region_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionCluster, location_name: 'MultiRegionCluster', traits: {"smithy.api#documentation" => "<p>Details about the deleted multi-Region cluster.</p>"}))
    DeleteMultiRegionClusterResponse.type = Types::DeleteMultiRegionClusterResponse
    DeleteParameterGroupRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group to delete.</p>", "smithy.api#required" => {}}))
    DeleteParameterGroupRequest.type = Types::DeleteParameterGroupRequest
    DeleteParameterGroupResponse.add_member(:parameter_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroup, location_name: 'ParameterGroup', traits: {"smithy.api#documentation" => "<p>The parameter group that has been deleted.</p>"}))
    DeleteParameterGroupResponse.type = Types::DeleteParameterGroupResponse
    DeleteSnapshotRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot to delete.</p>", "smithy.api#required" => {}}))
    DeleteSnapshotRequest.type = Types::DeleteSnapshotRequest
    DeleteSnapshotResponse.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot', traits: {"smithy.api#documentation" => "<p>The snapshot object that has been deleted.</p>"}))
    DeleteSnapshotResponse.type = Types::DeleteSnapshotResponse
    DeleteSubnetGroupRequest.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group to delete.</p>", "smithy.api#required" => {}}))
    DeleteSubnetGroupRequest.type = Types::DeleteSubnetGroupRequest
    DeleteSubnetGroupResponse.add_member(:subnet_group, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroup, location_name: 'SubnetGroup', traits: {"smithy.api#documentation" => "<p>The subnet group object that has been deleted.</p>"}))
    DeleteSubnetGroupResponse.type = Types::DeleteSubnetGroupResponse
    DeleteUserRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The name of the user to delete</p>", "smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResponse.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'User', traits: {"smithy.api#documentation" => "<p>The user object that has been deleted.</p>"}))
    DeleteUserResponse.type = Types::DeleteUserResponse
    DescribeACLsRequest.add_member(:acl_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ACLName', traits: {"smithy.api#documentation" => "<p>The name of the ACL.</p>"}))
    DescribeACLsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeACLsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeACLsRequest.type = Types::DescribeACLsRequest
    DescribeACLsResponse.add_member(:ac_ls, Smithy::Schema::Shapes::ShapeRef.new(shape: ACLList, location_name: 'ACLs', traits: {"smithy.api#documentation" => "<p>The list of ACLs.</p>"}))
    DescribeACLsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeACLsResponse.type = Types::DescribeACLsResponse
    DescribeClustersRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the cluster.</p>"}))
    DescribeClustersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeClustersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeClustersRequest.add_member(:show_shard_details, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ShowShardDetails', traits: {"smithy.api#documentation" => "<p>An optional flag that can be included in the request to retrieve information about the individual shard(s).</p>"}))
    DescribeClustersRequest.type = Types::DescribeClustersRequest
    DescribeClustersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeClustersResponse.add_member(:clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterList, location_name: 'Clusters', traits: {"smithy.api#documentation" => "<p>A list of clusters</p>"}))
    DescribeClustersResponse.type = Types::DescribeClustersResponse
    DescribeEngineVersionsRequest.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>The name of the engine for which to list available versions.</p>"}))
    DescribeEngineVersionsRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The Redis OSS engine version</p>"}))
    DescribeEngineVersionsRequest.add_member(:parameter_group_family, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupFamily', traits: {"smithy.api#documentation" => "<p>The name of a specific parameter group family to return details for.</p>"}))
    DescribeEngineVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeEngineVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeEngineVersionsRequest.add_member(:default_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultOnly', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, specifies that only the default version of the specified engine or engine and major version combination is to be returned.</p>"}))
    DescribeEngineVersionsRequest.type = Types::DescribeEngineVersionsRequest
    DescribeEngineVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeEngineVersionsResponse.add_member(:engine_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersionInfoList, location_name: 'EngineVersions', traits: {"smithy.api#documentation" => "<p>A list of engine version details. Each element in the list contains detailed information about one engine version.</p>"}))
    DescribeEngineVersionsResponse.type = Types::DescribeEngineVersionsResponse
    DescribeEventsRequest.add_member(:source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceName', traits: {"smithy.api#documentation" => "<p>The identifier of the event source for which events are returned. If not specified, all sources are included in the response.</p>"}))
    DescribeEventsRequest.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The event source to retrieve events for. If no value is specified, all events are returned.</p>"}))
    DescribeEventsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.\n         \n         Example: 2017-03-30T07:03:49.555Z</p>"}))
    DescribeEventsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.\n         \n         Example: 2017-03-30T07:03:49.555Z</p>"}))
    DescribeEventsRequest.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>The number of minutes worth of events to retrieve.</p>"}))
    DescribeEventsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeEventsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeEventsRequest.type = Types::DescribeEventsRequest
    DescribeEventsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeEventsResponse.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: 'Events', traits: {"smithy.api#documentation" => "<p>A list of events. Each element in the list contains detailed information about one event.</p>"}))
    DescribeEventsResponse.type = Types::DescribeEventsResponse
    DescribeMultiRegionClustersRequest.add_member(:multi_region_cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionClusterName', traits: {"smithy.api#documentation" => "<p>The name of a specific multi-Region cluster to describe.</p>"}))
    DescribeMultiRegionClustersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    DescribeMultiRegionClustersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating.</p>"}))
    DescribeMultiRegionClustersRequest.add_member(:show_cluster_details, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ShowClusterDetails', traits: {"smithy.api#documentation" => "<p>Details about the multi-Region cluster.</p>"}))
    DescribeMultiRegionClustersRequest.type = Types::DescribeMultiRegionClustersRequest
    DescribeMultiRegionClustersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to use to retrieve the next page of results.</p>"}))
    DescribeMultiRegionClustersResponse.add_member(:multi_region_clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionClusterList, location_name: 'MultiRegionClusters', traits: {"smithy.api#documentation" => "<p>A list of multi-Region clusters.</p>"}))
    DescribeMultiRegionClustersResponse.type = Types::DescribeMultiRegionClustersResponse
    DescribeParameterGroupsRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of a specific  parameter group to return details for.</p>"}))
    DescribeParameterGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeParameterGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeParameterGroupsRequest.type = Types::DescribeParameterGroupsRequest
    DescribeParameterGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeParameterGroupsResponse.add_member(:parameter_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupList, location_name: 'ParameterGroups', traits: {"smithy.api#documentation" => "<p>A list of parameter groups. Each element in the list contains detailed information about one parameter group.</p>"}))
    DescribeParameterGroupsResponse.type = Types::DescribeParameterGroupsResponse
    DescribeParametersRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>he name of a specific  parameter group to return details for.</p>", "smithy.api#required" => {}}))
    DescribeParametersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeParametersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeParametersRequest.type = Types::DescribeParametersRequest
    DescribeParametersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeParametersResponse.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A list of parameters specific to a particular parameter group. Each element in the list contains detailed information about one parameter.</p>"}))
    DescribeParametersResponse.type = Types::DescribeParametersResponse
    DescribeReservedNodesOfferingsRequest.add_member(:reserved_nodes_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodesOfferingId', traits: {"smithy.api#documentation" => "<p>The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.</p>"}))
    DescribeReservedNodesOfferingsRequest.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type for the reserved nodes. For more information, see <a href=\"https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported\">Supported node types</a>.</p>"}))
    DescribeReservedNodesOfferingsRequest.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>Duration filter value, specified in years or seconds. Use this parameter to show only reservations for a given duration.</p>"}))
    DescribeReservedNodesOfferingsRequest.add_member(:offering_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType', traits: {"smithy.api#documentation" => "<p>The offering type filter value. Use this parameter to show only the available offerings matching the specified offering type. \n         Valid values: \"All Upfront\"|\"Partial Upfront\"| \"No Upfront\"</p>"}))
    DescribeReservedNodesOfferingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeReservedNodesOfferingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.</p>"}))
    DescribeReservedNodesOfferingsRequest.type = Types::DescribeReservedNodesOfferingsRequest
    DescribeReservedNodesOfferingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.</p>"}))
    DescribeReservedNodesOfferingsResponse.add_member(:reserved_nodes_offerings, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodesOfferingList, location_name: 'ReservedNodesOfferings', traits: {"smithy.api#documentation" => "<p>Lists available reserved node offerings.</p>"}))
    DescribeReservedNodesOfferingsResponse.type = Types::DescribeReservedNodesOfferingsResponse
    DescribeReservedNodesRequest.add_member(:reservation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservationId', traits: {"smithy.api#documentation" => "<p>The reserved node identifier filter value. Use this parameter to show only the reservation that matches the specified reservation ID.</p>"}))
    DescribeReservedNodesRequest.add_member(:reserved_nodes_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodesOfferingId', traits: {"smithy.api#documentation" => "<p>The offering identifier filter value. Use this parameter to show only purchased reservations matching the specified offering identifier.</p>"}))
    DescribeReservedNodesRequest.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type filter value. Use this parameter to show only those reservations matching the specified  node type. For more information, see <a href=\"https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported\">Supported node types</a>.</p>"}))
    DescribeReservedNodesRequest.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>The duration filter value, specified in years or seconds. Use this parameter to show only reservations for this duration.</p>"}))
    DescribeReservedNodesRequest.add_member(:offering_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType', traits: {"smithy.api#documentation" => "<p>The offering type filter value. Use this parameter to show only the available offerings matching the specified offering type. \n         Valid values: \"All Upfront\"|\"Partial Upfront\"| \"No Upfront\"</p>"}))
    DescribeReservedNodesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeReservedNodesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.</p>"}))
    DescribeReservedNodesRequest.type = Types::DescribeReservedNodesRequest
    DescribeReservedNodesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.</p>"}))
    DescribeReservedNodesResponse.add_member(:reserved_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeList, location_name: 'ReservedNodes', traits: {"smithy.api#documentation" => "<p>Returns information about reserved nodes for this account, or about a specified reserved node.</p>"}))
    DescribeReservedNodesResponse.type = Types::DescribeReservedNodesResponse
    DescribeServiceUpdatesRequest.add_member(:service_update_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateName', traits: {"smithy.api#documentation" => "<p>The unique ID of the service update to describe.</p>"}))
    DescribeServiceUpdatesRequest.add_member(:cluster_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNameList, location_name: 'ClusterNames', traits: {"smithy.api#documentation" => "<p>The list of cluster names to identify service updates to apply.</p>"}))
    DescribeServiceUpdatesRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateStatusList, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status(es) of the service updates to filter on.</p>"}))
    DescribeServiceUpdatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeServiceUpdatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeServiceUpdatesRequest.type = Types::DescribeServiceUpdatesRequest
    DescribeServiceUpdatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeServiceUpdatesResponse.add_member(:service_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateList, location_name: 'ServiceUpdates', traits: {"smithy.api#documentation" => "<p>A list of service updates</p>"}))
    DescribeServiceUpdatesResponse.type = Types::DescribeServiceUpdatesResponse
    DescribeSnapshotsRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>A user-supplied cluster identifier. If this parameter is specified, only snapshots associated with that specific cluster are described.</p>"}))
    DescribeSnapshotsRequest.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotName', traits: {"smithy.api#documentation" => "<p>A user-supplied name of the snapshot. If this parameter is specified, only this named snapshot is described.</p>"}))
    DescribeSnapshotsRequest.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>If set to system, the output shows snapshots that were automatically created by MemoryDB. If set to user the output shows snapshots that were manually created. If omitted, the output shows both automatically and manually created snapshots.</p>"}))
    DescribeSnapshotsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeSnapshotsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeSnapshotsRequest.add_member(:show_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ShowDetail', traits: {"smithy.api#documentation" => "<p>A Boolean value which if true, the shard configuration is included in the snapshot description.</p>"}))
    DescribeSnapshotsRequest.type = Types::DescribeSnapshotsRequest
    DescribeSnapshotsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeSnapshotsResponse.add_member(:snapshots, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotList, location_name: 'Snapshots', traits: {"smithy.api#documentation" => "<p>A list of snapshots. Each item in the list contains detailed information about one snapshot.</p>"}))
    DescribeSnapshotsResponse.type = Types::DescribeSnapshotsResponse
    DescribeSubnetGroupsRequest.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group to return details for.</p>"}))
    DescribeSubnetGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeSubnetGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeSubnetGroupsRequest.type = Types::DescribeSubnetGroupsRequest
    DescribeSubnetGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeSubnetGroupsResponse.add_member(:subnet_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupList, location_name: 'SubnetGroups', traits: {"smithy.api#documentation" => "<p>A list of subnet groups. Each element in the list contains detailed information about one group.</p>"}))
    DescribeSubnetGroupsResponse.type = Types::DescribeSubnetGroupsResponse
    DescribeUsersRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The name of the user.</p>"}))
    DescribeUsersRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filter to determine the list of users to return.</p>"}))
    DescribeUsersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeUsersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeUsersRequest.type = Types::DescribeUsersRequest
    DescribeUsersResponse.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'Users', traits: {"smithy.api#documentation" => "<p>A list of users.</p>"}))
    DescribeUsersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"}))
    DescribeUsersResponse.type = Types::DescribeUsersResponse
    DuplicateUserNameFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DuplicateUserNameFault.type = Types::DuplicateUserNameFault
    Endpoint.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The DNS hostname of the node.</p>"}))
    Endpoint.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The port number that the engine is listening on.</p>"}))
    Endpoint.type = Types::Endpoint
    EngineVersionInfo.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>The name of the engine for which version information is provided.</p>"}))
    EngineVersionInfo.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The engine version</p>"}))
    EngineVersionInfo.add_member(:engine_patch_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EnginePatchVersion', traits: {"smithy.api#documentation" => "<p>The patched engine version</p>"}))
    EngineVersionInfo.add_member(:parameter_group_family, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupFamily', traits: {"smithy.api#documentation" => "<p>Specifies the name of the parameter group family to which the engine default parameters apply.</p>"}))
    EngineVersionInfo.type = Types::EngineVersionInfo
    EngineVersionInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersionInfo)
    Event.add_member(:source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceName', traits: {"smithy.api#documentation" => "<p>The name for the source of the event. For example, if the event occurred at the cluster level, the identifier would be the name of the cluster.</p>"}))
    Event.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>Specifies the origin of this event - a cluster, a parameter group, a security group, etc.</p>"}))
    Event.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The text of the event.</p>"}))
    Event.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'Date', traits: {"smithy.api#documentation" => "<p>The date and time when the event occurred.</p>"}))
    Event.type = Types::Event
    EventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Event, traits: {"smithy.api#xmlName" => "Event"})
    FailoverShardRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The cluster being failed over.</p>", "smithy.api#required" => {}}))
    FailoverShardRequest.add_member(:shard_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ShardName', traits: {"smithy.api#documentation" => "<p>The name of the shard.</p>", "smithy.api#required" => {}}))
    FailoverShardRequest.type = Types::FailoverShardRequest
    FailoverShardResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>The cluster being failed over.</p>"}))
    FailoverShardResponse.type = Types::FailoverShardResponse
    Filter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The property being filtered. For example, UserName.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The property values to filter on. For example, \"user-123\".</p>", "smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    FilterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue)
    InputAuthenticationType.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD', traits: {"smithy.api#enumValue" => "password"}))
    InputAuthenticationType.add_member(:iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "iam"}))
    InsufficientClusterCapacityFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientClusterCapacityFault.type = Types::InsufficientClusterCapacityFault
    InvalidACLStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidACLStateFault.type = Types::InvalidACLStateFault
    InvalidARNFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidARNFault.type = Types::InvalidARNFault
    InvalidClusterStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterStateFault.type = Types::InvalidClusterStateFault
    InvalidCredentialsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidCredentialsException.type = Types::InvalidCredentialsException
    InvalidKMSKeyFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidKMSKeyFault.type = Types::InvalidKMSKeyFault
    InvalidMultiRegionClusterStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidMultiRegionClusterStateFault.type = Types::InvalidMultiRegionClusterStateFault
    InvalidNodeStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidNodeStateFault.type = Types::InvalidNodeStateFault
    InvalidParameterCombinationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: 'message'))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterGroupStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidParameterGroupStateFault.type = Types::InvalidParameterGroupStateFault
    InvalidParameterValueException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: 'message'))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidSnapshotStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSnapshotStateFault.type = Types::InvalidSnapshotStateFault
    InvalidSubnet.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidUserStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidUserStateFault.type = Types::InvalidUserStateFault
    InvalidVPCNetworkStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    IpDiscovery.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "ipv4"}))
    IpDiscovery.add_member(:ipv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "ipv6"}))
    KeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListAllowedMultiRegionClusterUpdatesRequest.add_member(:multi_region_cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionClusterName', traits: {"smithy.api#documentation" => "<p>The name of the multi-Region cluster.</p>", "smithy.api#required" => {}}))
    ListAllowedMultiRegionClusterUpdatesRequest.type = Types::ListAllowedMultiRegionClusterUpdatesRequest
    ListAllowedMultiRegionClusterUpdatesResponse.add_member(:scale_up_node_types, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeTypeList, location_name: 'ScaleUpNodeTypes', traits: {"smithy.api#documentation" => "<p>The node types that the cluster can be scaled up to.</p>"}))
    ListAllowedMultiRegionClusterUpdatesResponse.add_member(:scale_down_node_types, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeTypeList, location_name: 'ScaleDownNodeTypes', traits: {"smithy.api#documentation" => "<p>The node types that the cluster can be scaled down to.</p>"}))
    ListAllowedMultiRegionClusterUpdatesResponse.type = Types::ListAllowedMultiRegionClusterUpdatesResponse
    ListAllowedNodeTypeUpdatesRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the cluster you want to scale. MemoryDB uses the cluster name to identify the current node type being used by this cluster, and from that to create a list of node types\n         you can scale up to.</p>", "smithy.api#required" => {}}))
    ListAllowedNodeTypeUpdatesRequest.type = Types::ListAllowedNodeTypeUpdatesRequest
    ListAllowedNodeTypeUpdatesResponse.add_member(:scale_up_node_types, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeTypeList, location_name: 'ScaleUpNodeTypes', traits: {"smithy.api#documentation" => "<p>A list node types which you can use to scale up your cluster.</p>"}))
    ListAllowedNodeTypeUpdatesResponse.add_member(:scale_down_node_types, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeTypeList, location_name: 'ScaleDownNodeTypes', traits: {"smithy.api#documentation" => "<p>A list node types which you can use to scale down your cluster.</p>"}))
    ListAllowedNodeTypeUpdatesResponse.type = Types::ListAllowedNodeTypeUpdatesResponse
    ListTagsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which you want the list of tags.</p>", "smithy.api#required" => {}}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p>A list of tags as key-value pairs.</p>"}))
    ListTagsResponse.type = Types::ListTagsResponse
    MultiRegionCluster.add_member(:multi_region_cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionClusterName', traits: {"smithy.api#documentation" => "<p>The name of the multi-Region cluster.</p>"}))
    MultiRegionCluster.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the multi-Region cluster.</p>"}))
    MultiRegionCluster.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the multi-Region cluster.</p>"}))
    MultiRegionCluster.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type used by the multi-Region cluster.</p>"}))
    MultiRegionCluster.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>The name of the engine used by the multi-Region cluster.</p>"}))
    MultiRegionCluster.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The version of the engine used by the multi-Region cluster.</p>"}))
    MultiRegionCluster.add_member(:number_of_shards, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfShards', traits: {"smithy.api#documentation" => "<p>The number of shards in the multi-Region cluster.</p>"}))
    MultiRegionCluster.add_member(:clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionalClusterList, location_name: 'Clusters', traits: {"smithy.api#documentation" => "<p>The clusters in this multi-Region cluster.</p>"}))
    MultiRegionCluster.add_member(:multi_region_parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the multi-Region parameter group associated with the cluster.</p>"}))
    MultiRegionCluster.add_member(:tls_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'TLSEnabled', traits: {"smithy.api#documentation" => "<p>Indiciates if the multi-Region cluster is TLS enabled.</p>"}))
    MultiRegionCluster.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the multi-Region cluster.</p>"}))
    MultiRegionCluster.type = Types::MultiRegionCluster
    MultiRegionClusterAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    MultiRegionClusterAlreadyExistsFault.type = Types::MultiRegionClusterAlreadyExistsFault
    MultiRegionClusterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionCluster)
    MultiRegionClusterNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    MultiRegionClusterNotFoundFault.type = Types::MultiRegionClusterNotFoundFault
    MultiRegionParameterGroupNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    MultiRegionParameterGroupNotFoundFault.type = Types::MultiRegionParameterGroupNotFoundFault
    NetworkType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "ipv4"}))
    NetworkType.add_member(:ipv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "ipv6"}))
    NetworkType.add_member(:dual_stack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUAL_STACK', traits: {"smithy.api#enumValue" => "dual_stack"}))
    NetworkTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType)
    NoOperationFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NoOperationFault.type = Types::NoOperationFault
    Node.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The  node identifier. A node name is a numeric identifier (0001, 0002, etc.). The combination of cluster name, shard name and node name uniquely identifies every node used in a customer's Amazon account.</p>"}))
    Node.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the service update on the node</p>"}))
    Node.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Availability Zone in which the node resides</p>"}))
    Node.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the node was created.</p>"}))
    Node.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>The hostname for connecting to this node.</p>"}))
    Node.type = Types::Node
    NodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Node, traits: {"smithy.api#xmlName" => "Node"})
    NodeQuotaForClusterExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NodeQuotaForClusterExceededFault.type = Types::NodeQuotaForClusterExceededFault
    NodeQuotaForCustomerExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NodeQuotaForCustomerExceededFault.type = Types::NodeQuotaForCustomerExceededFault
    NodeTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Parameter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the parameter</p>"}))
    Parameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the parameter</p>"}))
    Parameter.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the parameter</p>"}))
    Parameter.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataType', traits: {"smithy.api#documentation" => "<p>The parameter's data type</p>"}))
    Parameter.add_member(:allowed_values, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValues', traits: {"smithy.api#documentation" => "<p>The valid range of values for the parameter.</p>"}))
    Parameter.add_member(:minimum_engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion', traits: {"smithy.api#documentation" => "<p>The earliest engine version to which the parameter can apply.</p>"}))
    Parameter.type = Types::Parameter
    ParameterGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the parameter group</p>"}))
    ParameterGroup.add_member(:family, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Family', traits: {"smithy.api#documentation" => "<p>The name of the parameter group family that this  parameter group is compatible with.</p>"}))
    ParameterGroup.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the parameter group</p>"}))
    ParameterGroup.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the parameter group</p>"}))
    ParameterGroup.type = Types::ParameterGroup
    ParameterGroupAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ParameterGroupAlreadyExistsFault.type = Types::ParameterGroupAlreadyExistsFault
    ParameterGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroup, traits: {"smithy.api#xmlName" => "ParameterGroup"})
    ParameterGroupNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ParameterGroupNotFoundFault.type = Types::ParameterGroupNotFoundFault
    ParameterGroupQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ParameterGroupQuotaExceededFault.type = Types::ParameterGroupQuotaExceededFault
    ParameterNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ParameterNameValue.add_member(:parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName', traits: {"smithy.api#documentation" => "<p>The name of the parameter</p>"}))
    ParameterNameValue.add_member(:parameter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterValue', traits: {"smithy.api#documentation" => "<p>The value of the parameter</p>"}))
    ParameterNameValue.type = Types::ParameterNameValue
    ParameterNameValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterNameValue, traits: {"smithy.api#xmlName" => "ParameterNameValue"})
    ParametersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Parameter, traits: {"smithy.api#xmlName" => "Parameter"})
    PasswordListInput.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    PendingModifiedServiceUpdate.add_member(:service_update_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateName', traits: {"smithy.api#documentation" => "<p>The unique ID of the service update</p>"}))
    PendingModifiedServiceUpdate.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the service update</p>"}))
    PendingModifiedServiceUpdate.type = Types::PendingModifiedServiceUpdate
    PendingModifiedServiceUpdateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PendingModifiedServiceUpdate, traits: {"smithy.api#xmlName" => "PendingModifiedServiceUpdate"})
    PurchaseReservedNodesOfferingRequest.add_member(:reserved_nodes_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodesOfferingId', traits: {"smithy.api#documentation" => "<p>The ID of the reserved node offering to purchase.</p>", "smithy.api#required" => {}}))
    PurchaseReservedNodesOfferingRequest.add_member(:reservation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservationId', traits: {"smithy.api#documentation" => "<p>A customer-specified identifier to track this reservation.</p>"}))
    PurchaseReservedNodesOfferingRequest.add_member(:node_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NodeCount', traits: {"smithy.api#documentation" => "<p>The number of node instances to reserve.</p>"}))
    PurchaseReservedNodesOfferingRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>"}))
    PurchaseReservedNodesOfferingRequest.type = Types::PurchaseReservedNodesOfferingRequest
    PurchaseReservedNodesOfferingResponse.add_member(:reserved_node, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNode, location_name: 'ReservedNode', traits: {"smithy.api#documentation" => "<p>Represents the output of a <code>PurchaseReservedNodesOffering</code> operation.</p>"}))
    PurchaseReservedNodesOfferingResponse.type = Types::PurchaseReservedNodesOfferingResponse
    RecurringCharge.add_member(:recurring_charge_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'RecurringChargeAmount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of the recurring charge to run this reserved node.</p>"}))
    RecurringCharge.add_member(:recurring_charge_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecurringChargeFrequency', traits: {"smithy.api#documentation" => "<p>The frequency of the recurring price charged to run this reserved node.</p>"}))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCharge, traits: {"smithy.api#xmlName" => "RecurringCharge"})
    RegionalCluster.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the Regional cluster</p>"}))
    RegionalCluster.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Region the current Regional cluster is assigned to.</p>"}))
    RegionalCluster.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the Regional cluster.</p>"}))
    RegionalCluster.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) the Regional cluster</p>"}))
    RegionalCluster.type = Types::RegionalCluster
    RegionalClusterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RegionalCluster, traits: {"smithy.api#xmlName" => "RegionalCluster"})
    ReplicaConfigurationRequest.add_member(:replica_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ReplicaCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of replicas to scale up or down to</p>"}))
    ReplicaConfigurationRequest.type = Types::ReplicaConfigurationRequest
    ReservedNode.add_member(:reservation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservationId', traits: {"smithy.api#documentation" => "<p>A customer-specified identifier to track this reservation.</p>"}))
    ReservedNode.add_member(:reserved_nodes_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodesOfferingId', traits: {"smithy.api#documentation" => "<p>The ID of the reserved node offering to purchase.</p>"}))
    ReservedNode.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type for the reserved nodes.</p>"}))
    ReservedNode.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time the reservation started.</p>"}))
    ReservedNode.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The duration of the reservation in seconds.</p>"}))
    ReservedNode.add_member(:fixed_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The fixed price charged for this reserved node.</p>"}))
    ReservedNode.add_member(:node_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NodeCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of nodes that have been reserved.</p>"}))
    ReservedNode.add_member(:offering_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType', traits: {"smithy.api#documentation" => "<p>The offering type of this reserved node.</p>"}))
    ReservedNode.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the reserved node.</p>"}))
    ReservedNode.add_member(:recurring_charges, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges', traits: {"smithy.api#documentation" => "<p>The recurring price charged to run this reserved node.</p>"}))
    ReservedNode.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the reserved node.</p>"}))
    ReservedNode.type = Types::ReservedNode
    ReservedNodeAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeAlreadyExistsFault.type = Types::ReservedNodeAlreadyExistsFault
    ReservedNodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNode, traits: {"smithy.api#xmlName" => "ReservedNode"})
    ReservedNodeNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeNotFoundFault.type = Types::ReservedNodeNotFoundFault
    ReservedNodeQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeQuotaExceededFault.type = Types::ReservedNodeQuotaExceededFault
    ReservedNodesOffering.add_member(:reserved_nodes_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodesOfferingId', traits: {"smithy.api#documentation" => "<p>The offering identifier.</p>"}))
    ReservedNodesOffering.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type for the reserved nodes. For more information, see <a href=\"https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported\">Supported node types</a>.</p>"}))
    ReservedNodesOffering.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The duration of the reservation in seconds.</p>"}))
    ReservedNodesOffering.add_member(:fixed_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The fixed price charged for this reserved node.</p>"}))
    ReservedNodesOffering.add_member(:offering_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType', traits: {"smithy.api#documentation" => "<p>The offering type of this reserved node.</p>"}))
    ReservedNodesOffering.add_member(:recurring_charges, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges', traits: {"smithy.api#documentation" => "<p>The recurring price charged to run this reserved node.</p>"}))
    ReservedNodesOffering.type = Types::ReservedNodesOffering
    ReservedNodesOfferingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodesOffering, traits: {"smithy.api#xmlName" => "ReservedNodesOffering"})
    ReservedNodesOfferingNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodesOfferingNotFoundFault.type = Types::ReservedNodesOfferingNotFoundFault
    ResetParameterGroupRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group to reset.</p>", "smithy.api#required" => {}}))
    ResetParameterGroupRequest.add_member(:all_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllParameters', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, all parameters in the parameter group are reset to their default values. If false, only the parameters listed by ParameterNames are reset to their default values.</p>"}))
    ResetParameterGroupRequest.add_member(:parameter_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterNameList, location_name: 'ParameterNames', traits: {"smithy.api#documentation" => "<p>An array of parameter names to reset to their default values. If AllParameters is true, do not use ParameterNames. If AllParameters is false, you must specify the name of at least one parameter to reset.</p>"}))
    ResetParameterGroupRequest.type = Types::ResetParameterGroupRequest
    ResetParameterGroupResponse.add_member(:parameter_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroup, location_name: 'ParameterGroup', traits: {"smithy.api#documentation" => "<p>The parameter group being reset.</p>"}))
    ResetParameterGroupResponse.type = Types::ResetParameterGroupResponse
    ReshardingStatus.add_member(:slot_migration, Smithy::Schema::Shapes::ShapeRef.new(shape: SlotMigration, location_name: 'SlotMigration', traits: {"smithy.api#documentation" => "<p>The status of the online resharding slot migration</p>"}))
    ReshardingStatus.type = Types::ReshardingStatus
    SecurityGroupIdsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SecurityGroupId"})
    SecurityGroupMembership.add_member(:security_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecurityGroupId', traits: {"smithy.api#documentation" => "<p>The identifier of the security group.</p>"}))
    SecurityGroupMembership.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the security group membership. The status changes whenever a security group is modified, or when the security groups assigned to a cluster are modified.</p>"}))
    SecurityGroupMembership.type = Types::SecurityGroupMembership
    SecurityGroupMembershipList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupMembership)
    ServiceLinkedRoleNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServiceLinkedRoleNotFoundFault.type = Types::ServiceLinkedRoleNotFoundFault
    ServiceUpdate.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the cluster to which the service update applies</p>"}))
    ServiceUpdate.add_member(:service_update_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateName', traits: {"smithy.api#documentation" => "<p>The unique ID of the service update</p>"}))
    ServiceUpdate.add_member(:release_date, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ReleaseDate', traits: {"smithy.api#documentation" => "<p>The date when the service update is initially available</p>"}))
    ServiceUpdate.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Provides details of the service update</p>"}))
    ServiceUpdate.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the service update</p>"}))
    ServiceUpdate.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Reflects the nature of the service update</p>"}))
    ServiceUpdate.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>The name of the engine for which a service update is available.</p>"}))
    ServiceUpdate.add_member(:nodes_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodesUpdated', traits: {"smithy.api#documentation" => "<p>A list of nodes updated by the service update</p>"}))
    ServiceUpdate.add_member(:auto_update_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AutoUpdateStartDate', traits: {"smithy.api#documentation" => "<p>The date at which the service update will be automatically applied</p>"}))
    ServiceUpdate.type = Types::ServiceUpdate
    ServiceUpdateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdate, traits: {"smithy.api#xmlName" => "ServiceUpdate"})
    ServiceUpdateNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServiceUpdateNotFoundFault.type = Types::ServiceUpdateNotFoundFault
    ServiceUpdateRequest.add_member(:service_update_name_to_apply, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateNameToApply', traits: {"smithy.api#documentation" => "<p>The unique ID of the service update</p>"}))
    ServiceUpdateRequest.type = Types::ServiceUpdateRequest
    ServiceUpdateStatus.add_member(:not_applied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_APPLIED', traits: {"smithy.api#enumValue" => "available"}))
    ServiceUpdateStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "in-progress"}))
    ServiceUpdateStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "complete"}))
    ServiceUpdateStatus.add_member(:scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "scheduled"}))
    ServiceUpdateStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateStatus)
    ServiceUpdateType.add_member(:security_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_UPDATE', traits: {"smithy.api#enumValue" => "security-update"}))
    Shard.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the shard</p>"}))
    Shard.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of this replication group - creating, available, modifying, deleting.</p>"}))
    Shard.add_member(:slots, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Slots', traits: {"smithy.api#documentation" => "<p>The keyspace for this shard.</p>"}))
    Shard.add_member(:nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeList, location_name: 'Nodes', traits: {"smithy.api#documentation" => "<p>A list containing information about individual nodes within the shard</p>"}))
    Shard.add_member(:number_of_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes', traits: {"smithy.api#documentation" => "<p>The number of nodes in the shard</p>"}))
    Shard.type = Types::Shard
    ShardConfiguration.add_member(:slots, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Slots', traits: {"smithy.api#documentation" => "<p>A string that specifies the keyspace for a particular node group. Keyspaces range from 0 to 16,383. The string is in the format startkey-endkey.</p>"}))
    ShardConfiguration.add_member(:replica_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ReplicaCount', traits: {"smithy.api#documentation" => "<p>The number of read replica nodes in this shard.</p>"}))
    ShardConfiguration.type = Types::ShardConfiguration
    ShardConfigurationRequest.add_member(:shard_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ShardCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of shards in the cluster</p>"}))
    ShardConfigurationRequest.type = Types::ShardConfigurationRequest
    ShardDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the shard</p>"}))
    ShardDetail.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardConfiguration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The configuration details of the shard</p>"}))
    ShardDetail.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Size', traits: {"smithy.api#documentation" => "<p>The size of the shard's snapshot</p>"}))
    ShardDetail.add_member(:snapshot_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotCreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the shard's snapshot was created</p>"}))
    ShardDetail.type = Types::ShardDetail
    ShardDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ShardDetail)
    ShardList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Shard, traits: {"smithy.api#xmlName" => "Shard"})
    ShardNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ShardNotFoundFault.type = Types::ShardNotFoundFault
    ShardsPerClusterQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ShardsPerClusterQuotaExceededFault.type = Types::ShardsPerClusterQuotaExceededFault
    SlotMigration.add_member(:progress_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'ProgressPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The percentage of the slot migration that is complete.</p>"}))
    SlotMigration.type = Types::SlotMigration
    Snapshot.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the snapshot</p>"}))
    Snapshot.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the snapshot. Valid values: creating | available | restoring | copying | deleting.</p>"}))
    Snapshot.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>Indicates whether the snapshot is from an automatic backup (automated) or was created manually (manual).</p>"}))
    Snapshot.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key used to encrypt the snapshot.</p>"}))
    Snapshot.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the snapshot.</p>"}))
    Snapshot.add_member(:cluster_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterConfiguration, location_name: 'ClusterConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration of the cluster from which the snapshot was taken</p>"}))
    Snapshot.add_member(:data_tiering, Smithy::Schema::Shapes::ShapeRef.new(shape: DataTieringStatus, location_name: 'DataTiering', traits: {"smithy.api#documentation" => "<p>Enables data tiering. Data tiering is only supported for clusters using the r6gd node type. \n            This parameter must be set when using r6gd nodes. For more information, see <a href=\"https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html\">Data tiering</a>.</p>"}))
    Snapshot.type = Types::Snapshot
    SnapshotAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotAlreadyExistsFault.type = Types::SnapshotAlreadyExistsFault
    SnapshotArnsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SnapshotArn"})
    SnapshotList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot)
    SnapshotNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotNotFoundFault.type = Types::SnapshotNotFoundFault
    SnapshotQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotQuotaExceededFault.type = Types::SnapshotQuotaExceededFault
    SourceType.add_member(:node, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'node', traits: {"smithy.api#enumValue" => "node"}))
    SourceType.add_member(:parameter_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'parameter_group', traits: {"smithy.api#enumValue" => "parameter-group"}))
    SourceType.add_member(:subnet_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'subnet_group', traits: {"smithy.api#enumValue" => "subnet-group"}))
    SourceType.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cluster', traits: {"smithy.api#enumValue" => "cluster"}))
    SourceType.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'user', traits: {"smithy.api#enumValue" => "user"}))
    SourceType.add_member(:acl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'acl', traits: {"smithy.api#enumValue" => "acl"}))
    Subnet.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier for the subnet.</p>"}))
    Subnet.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Availability Zone where the subnet resides</p>"}))
    Subnet.add_member(:supported_network_types, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeList, location_name: 'SupportedNetworkTypes', traits: {"smithy.api#documentation" => "<p>The network types supported by this subnet. Returns an array of strings that can include 'ipv4', 'ipv6', or both, indicating whether the subnet supports IPv4 only, IPv6 only, or dual-stack deployments.</p>"}))
    Subnet.type = Types::Subnet
    SubnetGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the subnet group</p>"}))
    SubnetGroup.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the subnet group</p>"}))
    SubnetGroup.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.</p>"}))
    SubnetGroup.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'Subnets', traits: {"smithy.api#documentation" => "<p>A list of subnets associated with the subnet group.</p>"}))
    SubnetGroup.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the subnet group.</p>"}))
    SubnetGroup.add_member(:supported_network_types, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeList, location_name: 'SupportedNetworkTypes', traits: {"smithy.api#documentation" => "<p>The network types supported by this subnet group. Returns an array of strings that can include 'ipv4', 'ipv6', or both, indicating the IP address types that can be used for clusters deployed in this subnet group.</p>"}))
    SubnetGroup.type = Types::SubnetGroup
    SubnetGroupAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetGroupAlreadyExistsFault.type = Types::SubnetGroupAlreadyExistsFault
    SubnetGroupInUseFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetGroupInUseFault.type = Types::SubnetGroupInUseFault
    SubnetGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroup)
    SubnetGroupNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetGroupNotFoundFault.type = Types::SubnetGroupNotFoundFault
    SubnetGroupQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetGroupQuotaExceededFault.type = Types::SubnetGroupQuotaExceededFault
    SubnetIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SubnetIdentifier"})
    SubnetInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetInUse.type = Types::SubnetInUse
    SubnetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Subnet, traits: {"smithy.api#xmlName" => "Subnet"})
    SubnetNotAllowedFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetNotAllowedFault.type = Types::SubnetNotAllowedFault
    SubnetQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetQuotaExceededFault.type = Types::SubnetQuotaExceededFault
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key for the tag. May not be null.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The tag's value. May be null.</p>"}))
    Tag.type = Types::Tag
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, traits: {"smithy.api#xmlName" => "Tag"})
    TagNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TagNotFoundFault.type = Types::TagNotFoundFault
    TagQuotaPerResourceExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TagQuotaPerResourceExceeded.type = Types::TagQuotaPerResourceExceeded
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to which the tags are to be added.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p>A list of tags as key-value pairs.</p>"}))
    TagResourceResponse.type = Types::TagResourceResponse
    TestFailoverNotAvailableFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TestFailoverNotAvailableFault.type = Types::TestFailoverNotAvailableFault
    UnprocessedCluster.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the cluster</p>"}))
    UnprocessedCluster.add_member(:error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorType', traits: {"smithy.api#documentation" => "<p>The error type associated with the update failure</p>"}))
    UnprocessedCluster.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message associated with the update failure</p>"}))
    UnprocessedCluster.type = Types::UnprocessedCluster
    UnprocessedClusterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedCluster, traits: {"smithy.api#xmlName" => "UnprocessedCluster"})
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to which the tags are to be removed.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The list of keys of the tags that are to be removed.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p>The list of tags removed.</p>"}))
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateACLRequest.add_member(:acl_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ACLName', traits: {"smithy.api#documentation" => "<p>The name of the Access Control List.</p>", "smithy.api#required" => {}}))
    UpdateACLRequest.add_member(:user_names_to_add, Smithy::Schema::Shapes::ShapeRef.new(shape: UserNameListInput, location_name: 'UserNamesToAdd', traits: {"smithy.api#documentation" => "<p>The list of users to add to the Access Control List.</p>"}))
    UpdateACLRequest.add_member(:user_names_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: UserNameListInput, location_name: 'UserNamesToRemove', traits: {"smithy.api#documentation" => "<p>The list of users to remove from the Access Control List.</p>"}))
    UpdateACLRequest.type = Types::UpdateACLRequest
    UpdateACLResponse.add_member(:acl, Smithy::Schema::Shapes::ShapeRef.new(shape: ACL, location_name: 'ACL', traits: {"smithy.api#documentation" => "<p>The updated Access Control List.</p>"}))
    UpdateACLResponse.type = Types::UpdateACLResponse
    UpdateClusterRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the cluster to update.</p>", "smithy.api#required" => {}}))
    UpdateClusterRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the cluster to update.</p>"}))
    UpdateClusterRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The SecurityGroupIds to update.</p>"}))
    UpdateClusterRequest.add_member(:maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceWindow', traits: {"smithy.api#documentation" => "<p>Specifies the weekly time range during which maintenance\n         on the cluster is performed. It is specified as a range in\n         the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum\n         maintenance window is a 60 minute period.</p>\n         <p>Valid values for <code>ddd</code> are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>sun</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>mon</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>tue</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>wed</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>thu</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>fri</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>sat</code>\n               </p>\n            </li>\n         </ul>\n         <p>Example: <code>sun:23:00-mon:01:30</code>\n         </p>"}))
    UpdateClusterRequest.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn', traits: {"smithy.api#documentation" => "<p>The SNS topic ARN to update.</p>"}))
    UpdateClusterRequest.add_member(:sns_topic_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicStatus', traits: {"smithy.api#documentation" => "<p>The status of the Amazon SNS notification topic. Notifications are sent only if the status is active.</p>"}))
    UpdateClusterRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group to update.</p>"}))
    UpdateClusterRequest.add_member(:snapshot_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotWindow', traits: {"smithy.api#documentation" => "<p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your cluster.</p>"}))
    UpdateClusterRequest.add_member(:snapshot_retention_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit', traits: {"smithy.api#documentation" => "<p>The number of days for which MemoryDB retains automatic cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>"}))
    UpdateClusterRequest.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>A valid node type that you want to scale this cluster up or down to.</p>"}))
    UpdateClusterRequest.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>The name of the engine to be used for the cluster.</p>"}))
    UpdateClusterRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The upgraded version of the engine to be run on the nodes. You can upgrade to a newer engine version, but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cluster and create it anew with the earlier engine version.</p>"}))
    UpdateClusterRequest.add_member(:replica_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaConfigurationRequest, location_name: 'ReplicaConfiguration', traits: {"smithy.api#documentation" => "<p>The number of replicas that will reside in each shard.</p>"}))
    UpdateClusterRequest.add_member(:shard_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardConfigurationRequest, location_name: 'ShardConfiguration', traits: {"smithy.api#documentation" => "<p>The number of shards in the cluster.</p>"}))
    UpdateClusterRequest.add_member(:acl_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ACLName, location_name: 'ACLName', traits: {"smithy.api#documentation" => "<p>The Access Control List that is associated with the cluster.</p>"}))
    UpdateClusterRequest.add_member(:ip_discovery, Smithy::Schema::Shapes::ShapeRef.new(shape: IpDiscovery, location_name: 'IpDiscovery', traits: {"smithy.api#documentation" => "<p>The mechanism for discovering IP addresses for the cluster discovery protocol. Valid values are 'ipv4' or 'ipv6'. When set to 'ipv4', cluster discovery functions such as cluster slots, cluster shards, and cluster nodes will return IPv4 addresses for cluster nodes. When set to 'ipv6', the cluster discovery functions return IPv6 addresses for cluster nodes. The value must be compatible with the NetworkType parameter. If not specified, the default is 'ipv4'.</p>"}))
    UpdateClusterRequest.type = Types::UpdateClusterRequest
    UpdateClusterResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>The updated cluster.</p>"}))
    UpdateClusterResponse.type = Types::UpdateClusterResponse
    UpdateMultiRegionClusterRequest.add_member(:multi_region_cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionClusterName', traits: {"smithy.api#documentation" => "<p>The name of the multi-Region cluster to be updated.</p>", "smithy.api#required" => {}}))
    UpdateMultiRegionClusterRequest.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The new node type to be used for the multi-Region cluster.</p>"}))
    UpdateMultiRegionClusterRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A new description for the multi-Region cluster.</p>"}))
    UpdateMultiRegionClusterRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The new engine version to be used for the multi-Region cluster.</p>"}))
    UpdateMultiRegionClusterRequest.add_member(:shard_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardConfigurationRequest, location_name: 'ShardConfiguration'))
    UpdateMultiRegionClusterRequest.add_member(:multi_region_parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiRegionParameterGroupName', traits: {"smithy.api#documentation" => "<p>The new multi-Region parameter group to be associated with the cluster.</p>"}))
    UpdateMultiRegionClusterRequest.add_member(:update_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStrategy, location_name: 'UpdateStrategy', traits: {"smithy.api#documentation" => "<p>The strategy to use for the update operation. Supported values are \"coordinated\" or \"uncoordinated\".</p>"}))
    UpdateMultiRegionClusterRequest.type = Types::UpdateMultiRegionClusterRequest
    UpdateMultiRegionClusterResponse.add_member(:multi_region_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionCluster, location_name: 'MultiRegionCluster', traits: {"smithy.api#documentation" => "<p>The status of updating the multi-Region cluster.</p>"}))
    UpdateMultiRegionClusterResponse.type = Types::UpdateMultiRegionClusterResponse
    UpdateParameterGroupRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group to update.</p>", "smithy.api#required" => {}}))
    UpdateParameterGroupRequest.add_member(:parameter_name_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterNameValueList, location_name: 'ParameterNameValues', traits: {"smithy.api#documentation" => "<p>An array of parameter names and values for the parameter update. You must supply at least one parameter name and value; subsequent arguments are optional. A maximum of 20 parameters may be updated per request.</p>", "smithy.api#required" => {}}))
    UpdateParameterGroupRequest.type = Types::UpdateParameterGroupRequest
    UpdateParameterGroupResponse.add_member(:parameter_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroup, location_name: 'ParameterGroup', traits: {"smithy.api#documentation" => "<p>The updated parameter group</p>"}))
    UpdateParameterGroupResponse.type = Types::UpdateParameterGroupResponse
    UpdateStrategy.add_member(:coordinated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COORDINATED', traits: {"smithy.api#enumValue" => "coordinated"}))
    UpdateStrategy.add_member(:uncoordinated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNCOORDINATED', traits: {"smithy.api#enumValue" => "uncoordinated"}))
    UpdateSubnetGroupRequest.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group</p>", "smithy.api#required" => {}}))
    UpdateSubnetGroupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the subnet group</p>"}))
    UpdateSubnetGroupRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The EC2 subnet IDs for the subnet group.</p>"}))
    UpdateSubnetGroupRequest.type = Types::UpdateSubnetGroupRequest
    UpdateSubnetGroupResponse.add_member(:subnet_group, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroup, location_name: 'SubnetGroup', traits: {"smithy.api#documentation" => "<p>The updated subnet group</p>"}))
    UpdateSubnetGroupResponse.type = Types::UpdateSubnetGroupResponse
    UpdateUserRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The name of the user</p>", "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:authentication_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMode, location_name: 'AuthenticationMode', traits: {"smithy.api#documentation" => "<p>Denotes the user's authentication properties, such as whether it requires a password to authenticate.</p>"}))
    UpdateUserRequest.add_member(:access_string, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessString, location_name: 'AccessString', traits: {"smithy.api#documentation" => "<p>Access permissions string used for this user.</p>"}))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'User', traits: {"smithy.api#documentation" => "<p>The updated user</p>"}))
    UpdateUserResponse.type = Types::UpdateUserResponse
    User.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the user</p>"}))
    User.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the user status. Can be \"active\", \"modifying\" or \"deleting\".</p>"}))
    User.add_member(:access_string, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccessString', traits: {"smithy.api#documentation" => "<p>Access permissions string used for this user.</p>"}))
    User.add_member(:acl_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ACLNameList, location_name: 'ACLNames', traits: {"smithy.api#documentation" => "<p>The names of the Access Control Lists to which the user belongs</p>"}))
    User.add_member(:minimum_engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion', traits: {"smithy.api#documentation" => "<p>The minimum engine version supported for the user</p>"}))
    User.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: Authentication, location_name: 'Authentication', traits: {"smithy.api#documentation" => "<p>Denotes whether the user requires a password to authenticate.</p>"}))
    User.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user.\n         \n      </p>"}))
    User.type = Types::User
    UserAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UserAlreadyExistsFault.type = Types::UserAlreadyExistsFault
    UserList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    UserNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserName)
    UserNameListInput.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserName)
    UserNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UserNotFoundFault.type = Types::UserNotFoundFault
    UserQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UserQuotaExceededFault.type = Types::UserQuotaExceededFault

    AmazonMemoryDB = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.memorydb#AmazonMemoryDB"
      service.name = "AmazonMemoryDB"
      service.version = "2021-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "MemoryDB", "arnNamespace" => "memorydb", "cloudFormationName" => "MemoryDB", "cloudTrailEventSource" => "memorydb.amazonaws.com", "endpointPrefix" => "memory-db"}, "aws.auth#sigv4" => {"name" => "memorydb"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon MemoryDB", "smithy.api#xmlNamespace" => {"uri" => "http://memorydb.amazonaws.com/doc/2021-01-01/"}}
      service.add_operation(:batch_update_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#BatchUpdateCluster"
        operation.name = "BatchUpdateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CopySnapshot"
        operation.name = "CopySnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CopySnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CopySnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSnapshotStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateACL"
        operation.name = "CreateACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateACLResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ACLAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ACLQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultUserRequired)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateUserNameFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidACLStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCredentialsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMultiRegionClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ShardsPerClusterQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_multi_region_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateMultiRegionCluster"
        operation.name = "CreateMultiRegionCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMultiRegionClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMultiRegionClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionClusterAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_parameter_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateParameterGroup"
        operation.name = "CreateParameterGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParameterGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParameterGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateSnapshot"
        operation.name = "CreateSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_subnet_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateSubnetGroup"
        operation.name = "CreateSubnetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubnetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubnetGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetNotAllowedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateUser"
        operation.name = "CreateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateUserNameFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UserAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UserQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteACL"
        operation.name = "DeleteACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteACLResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidACLStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_multi_region_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteMultiRegionCluster"
        operation.name = "DeleteMultiRegionCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMultiRegionClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMultiRegionClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMultiRegionClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionClusterNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_parameter_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteParameterGroup"
        operation.name = "DeleteParameterGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteParameterGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteParameterGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteSnapshot"
        operation.name = "DeleteSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSnapshotStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_subnet_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteSubnetGroup"
        operation.name = "DeleteSubnetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubnetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubnetGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupInUseFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_ac_ls, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeACLs"
        operation.name = "DescribeACLs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeACLsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeACLsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeACLs.new
      end)
      service.add_operation(:describe_clusters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeClusters"
        operation.name = "DescribeClusters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClustersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClustersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusters.new
      end)
      service.add_operation(:describe_engine_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeEngineVersions"
        operation.name = "DescribeEngineVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEngineVersions.new
      end)
      service.add_operation(:describe_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_multi_region_clusters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeMultiRegionClusters"
        operation.name = "DescribeMultiRegionClusters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMultiRegionClustersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMultiRegionClustersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionClusterNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMultiRegionClusters.new
      end)
      service.add_operation(:describe_parameter_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeParameterGroups"
        operation.name = "DescribeParameterGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeParameterGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeParameterGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeParameterGroups.new
      end)
      service.add_operation(:describe_parameters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeParameters"
        operation.name = "DescribeParameters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeParametersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeParametersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeParameters.new
      end)
      service.add_operation(:describe_reserved_nodes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeReservedNodes"
        operation.name = "DescribeReservedNodes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedNodesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedNodesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodes.new
      end)
      service.add_operation(:describe_reserved_nodes_offerings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeReservedNodesOfferings"
        operation.name = "DescribeReservedNodesOfferings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedNodesOfferingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedNodesOfferingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodesOfferingNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodesOfferings.new
      end)
      service.add_operation(:describe_service_updates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeServiceUpdates"
        operation.name = "DescribeServiceUpdates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceUpdatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceUpdatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeServiceUpdates.new
      end)
      service.add_operation(:describe_snapshots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeSnapshots"
        operation.name = "DescribeSnapshots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshots.new
      end)
      service.add_operation(:describe_subnet_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeSubnetGroups"
        operation.name = "DescribeSubnetGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSubnetGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSubnetGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSubnetGroups.new
      end)
      service.add_operation(:describe_users, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeUsers"
        operation.name = "DescribeUsers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUsers.new
      end)
      service.add_operation(:failover_shard, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#FailoverShard"
        operation.name = "FailoverShard"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverShardRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverShardResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: APICallRateForCustomerExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ShardNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TestFailoverNotAvailableFault)
        operation.traits = {}
      end)
      service.add_operation(:list_allowed_multi_region_cluster_updates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#ListAllowedMultiRegionClusterUpdates"
        operation.name = "ListAllowedMultiRegionClusterUpdates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAllowedMultiRegionClusterUpdatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAllowedMultiRegionClusterUpdatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionClusterNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:list_allowed_node_type_updates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#ListAllowedNodeTypeUpdates"
        operation.name = "ListAllowedNodeTypeUpdates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAllowedNodeTypeUpdatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAllowedNodeTypeUpdatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:list_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#ListTags"
        operation.name = "ListTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidARNFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:purchase_reserved_nodes_offering, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#PurchaseReservedNodesOffering"
        operation.name = "PurchaseReservedNodesOffering"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedNodesOfferingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedNodesOfferingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodesOfferingNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:reset_parameter_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#ResetParameterGroup"
        operation.name = "ResetParameterGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetParameterGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetParameterGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidARNFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidARNFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:update_acl, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UpdateACL"
        operation.name = "UpdateACL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateACLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateACLResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultUserRequired)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateUserNameFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidACLStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:update_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ACLNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidACLStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNodeStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoOperationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ShardsPerClusterQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:update_multi_region_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UpdateMultiRegionCluster"
        operation.name = "UpdateMultiRegionCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMultiRegionClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMultiRegionClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMultiRegionClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionParameterGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:update_parameter_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UpdateParameterGroup"
        operation.name = "UpdateParameterGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateParameterGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateParameterGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:update_subnet_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UpdateSubnetGroup"
        operation.name = "UpdateSubnetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubnetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubnetGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetNotAllowedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:update_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
