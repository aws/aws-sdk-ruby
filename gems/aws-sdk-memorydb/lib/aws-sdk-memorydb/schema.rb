# frozen_string_literal: true

# This is generated code!

module Aws::MemoryDB
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ACL = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ACL", name: "ACL")
    ACLAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ACLAlreadyExistsFault", name: "ACLAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ACLAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ACLClusterNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ACLClusterNameList", name: "ACLClusterNameList")
    ACLList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ACLList", name: "ACLList")
    ACLName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.memorydb#ACLName", name: "ACLName", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-]*$"})
    ACLNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ACLNameList", name: "ACLNameList")
    ACLNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ACLNotFoundFault", name: "ACLNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ACLNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ACLPendingChanges = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ACLPendingChanges", name: "ACLPendingChanges")
    ACLQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ACLQuotaExceededFault", name: "ACLQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ACLQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ACLsUpdateStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ACLsUpdateStatus", name: "ACLsUpdateStatus")
    APICallRateForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#APICallRateForCustomerExceededFault", name: "APICallRateForCustomerExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "APICallRateForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AZStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.memorydb#AZStatus", name: "AZStatus")
    AccessString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.memorydb#AccessString", name: "AccessString", traits: {"smithy.api#pattern" => "\\S"})
    Authentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#Authentication", name: "Authentication")
    AuthenticationMode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#AuthenticationMode", name: "AuthenticationMode")
    AuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.memorydb#AuthenticationType", name: "AuthenticationType")
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#AvailabilityZone", name: "AvailabilityZone")
    AwsQueryErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.memorydb#AwsQueryErrorMessage", name: "AwsQueryErrorMessage")
    BatchUpdateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#BatchUpdateClusterRequest", name: "BatchUpdateClusterRequest")
    BatchUpdateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#BatchUpdateClusterResponse", name: "BatchUpdateClusterResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.memorydb#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.memorydb#BooleanOptional", name: "BooleanOptional")
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#Cluster", name: "Cluster")
    ClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ClusterAlreadyExistsFault", name: "ClusterAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ClusterConfiguration", name: "ClusterConfiguration")
    ClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ClusterList", name: "ClusterList")
    ClusterNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ClusterNameList", name: "ClusterNameList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ClusterNotFoundFault", name: "ClusterNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterPendingUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ClusterPendingUpdates", name: "ClusterPendingUpdates")
    ClusterQuotaForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ClusterQuotaForCustomerExceededFault", name: "ClusterQuotaForCustomerExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterQuotaForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CopySnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CopySnapshotRequest", name: "CopySnapshotRequest")
    CopySnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CopySnapshotResponse", name: "CopySnapshotResponse")
    CreateACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateACLRequest", name: "CreateACLRequest")
    CreateACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateACLResponse", name: "CreateACLResponse")
    CreateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateClusterRequest", name: "CreateClusterRequest")
    CreateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateClusterResponse", name: "CreateClusterResponse")
    CreateMultiRegionClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateMultiRegionClusterRequest", name: "CreateMultiRegionClusterRequest")
    CreateMultiRegionClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateMultiRegionClusterResponse", name: "CreateMultiRegionClusterResponse")
    CreateParameterGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateParameterGroupRequest", name: "CreateParameterGroupRequest")
    CreateParameterGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateParameterGroupResponse", name: "CreateParameterGroupResponse")
    CreateSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateSnapshotRequest", name: "CreateSnapshotRequest")
    CreateSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateSnapshotResponse", name: "CreateSnapshotResponse")
    CreateSubnetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateSubnetGroupRequest", name: "CreateSubnetGroupRequest")
    CreateSubnetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateSubnetGroupResponse", name: "CreateSubnetGroupResponse")
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateUserRequest", name: "CreateUserRequest")
    CreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#CreateUserResponse", name: "CreateUserResponse")
    DataTieringStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.memorydb#DataTieringStatus", name: "DataTieringStatus")
    DefaultUserRequired = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DefaultUserRequired", name: "DefaultUserRequired", traits: {"aws.protocols#awsQueryError" => {"code" => "DefaultUserRequired", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteACLRequest", name: "DeleteACLRequest")
    DeleteACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteACLResponse", name: "DeleteACLResponse")
    DeleteClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteClusterRequest", name: "DeleteClusterRequest")
    DeleteClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteClusterResponse", name: "DeleteClusterResponse")
    DeleteMultiRegionClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteMultiRegionClusterRequest", name: "DeleteMultiRegionClusterRequest")
    DeleteMultiRegionClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteMultiRegionClusterResponse", name: "DeleteMultiRegionClusterResponse")
    DeleteParameterGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteParameterGroupRequest", name: "DeleteParameterGroupRequest")
    DeleteParameterGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteParameterGroupResponse", name: "DeleteParameterGroupResponse")
    DeleteSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteSnapshotRequest", name: "DeleteSnapshotRequest")
    DeleteSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteSnapshotResponse", name: "DeleteSnapshotResponse")
    DeleteSubnetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteSubnetGroupRequest", name: "DeleteSubnetGroupRequest")
    DeleteSubnetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteSubnetGroupResponse", name: "DeleteSubnetGroupResponse")
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteUserRequest", name: "DeleteUserRequest")
    DeleteUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DeleteUserResponse", name: "DeleteUserResponse")
    DescribeACLsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeACLsRequest", name: "DescribeACLsRequest")
    DescribeACLsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeACLsResponse", name: "DescribeACLsResponse")
    DescribeClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeClustersRequest", name: "DescribeClustersRequest")
    DescribeClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeClustersResponse", name: "DescribeClustersResponse")
    DescribeEngineVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeEngineVersionsRequest", name: "DescribeEngineVersionsRequest")
    DescribeEngineVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeEngineVersionsResponse", name: "DescribeEngineVersionsResponse")
    DescribeEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeEventsRequest", name: "DescribeEventsRequest")
    DescribeEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeEventsResponse", name: "DescribeEventsResponse")
    DescribeMultiRegionClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeMultiRegionClustersRequest", name: "DescribeMultiRegionClustersRequest")
    DescribeMultiRegionClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeMultiRegionClustersResponse", name: "DescribeMultiRegionClustersResponse")
    DescribeParameterGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeParameterGroupsRequest", name: "DescribeParameterGroupsRequest")
    DescribeParameterGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeParameterGroupsResponse", name: "DescribeParameterGroupsResponse")
    DescribeParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeParametersRequest", name: "DescribeParametersRequest")
    DescribeParametersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeParametersResponse", name: "DescribeParametersResponse")
    DescribeReservedNodesOfferingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeReservedNodesOfferingsRequest", name: "DescribeReservedNodesOfferingsRequest")
    DescribeReservedNodesOfferingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeReservedNodesOfferingsResponse", name: "DescribeReservedNodesOfferingsResponse")
    DescribeReservedNodesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeReservedNodesRequest", name: "DescribeReservedNodesRequest")
    DescribeReservedNodesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeReservedNodesResponse", name: "DescribeReservedNodesResponse")
    DescribeServiceUpdatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeServiceUpdatesRequest", name: "DescribeServiceUpdatesRequest")
    DescribeServiceUpdatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeServiceUpdatesResponse", name: "DescribeServiceUpdatesResponse")
    DescribeSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeSnapshotsRequest", name: "DescribeSnapshotsRequest")
    DescribeSnapshotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeSnapshotsResponse", name: "DescribeSnapshotsResponse")
    DescribeSubnetGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeSubnetGroupsRequest", name: "DescribeSubnetGroupsRequest")
    DescribeSubnetGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeSubnetGroupsResponse", name: "DescribeSubnetGroupsResponse")
    DescribeUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeUsersRequest", name: "DescribeUsersRequest")
    DescribeUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DescribeUsersResponse", name: "DescribeUsersResponse")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.memorydb#Double", name: "Double", traits: {"smithy.api#default" => 0})
    DuplicateUserNameFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#DuplicateUserNameFault", name: "DuplicateUserNameFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateUserName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#Endpoint", name: "Endpoint")
    EngineVersionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#EngineVersionInfo", name: "EngineVersionInfo")
    EngineVersionInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#EngineVersionInfoList", name: "EngineVersionInfoList")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#Event", name: "Event")
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#EventList", name: "EventList")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.memorydb#ExceptionMessage", name: "ExceptionMessage")
    FailoverShardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#FailoverShardRequest", name: "FailoverShardRequest")
    FailoverShardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#FailoverShardResponse", name: "FailoverShardResponse")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#FilterList", name: "FilterList")
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.memorydb#FilterName", name: "FilterName", traits: {"smithy.api#pattern" => "\\S"})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.memorydb#FilterValue", name: "FilterValue", traits: {"smithy.api#pattern" => "\\S"})
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#FilterValueList", name: "FilterValueList", traits: {"smithy.api#length" => {"min" => 1}})
    InputAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.memorydb#InputAuthenticationType", name: "InputAuthenticationType")
    InsufficientClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InsufficientClusterCapacityFault", name: "InsufficientClusterCapacityFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.memorydb#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.memorydb#IntegerOptional", name: "IntegerOptional")
    InvalidACLStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidACLStateFault", name: "InvalidACLStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidACLState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidARNFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidARNFault", name: "InvalidARNFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidARN", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidClusterStateFault", name: "InvalidClusterStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCredentialsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidCredentialsException", name: "InvalidCredentialsException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCredentialsException", "httpResponseCode" => 408}, "smithy.api#error" => "client", "smithy.api#httpError" => 408})
    InvalidKMSKeyFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidKMSKeyFault", name: "InvalidKMSKeyFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidKMSKeyFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidMultiRegionClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidMultiRegionClusterStateFault", name: "InvalidMultiRegionClusterStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidMultiRegionClusterState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNodeStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidNodeStateFault", name: "InvalidNodeStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNodeState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidParameterCombinationException", name: "InvalidParameterCombinationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterCombination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidParameterGroupStateFault", name: "InvalidParameterGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterValue", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidSnapshotStateFault", name: "InvalidSnapshotStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSnapshotState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidSubnet", name: "InvalidSubnet", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidUserStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidUserStateFault", name: "InvalidUserStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidUserState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#InvalidVPCNetworkStateFault", name: "InvalidVPCNetworkStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpDiscovery = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.memorydb#IpDiscovery", name: "IpDiscovery")
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#KeyList", name: "KeyList")
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.memorydb#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ListAllowedMultiRegionClusterUpdatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ListAllowedMultiRegionClusterUpdatesRequest", name: "ListAllowedMultiRegionClusterUpdatesRequest")
    ListAllowedMultiRegionClusterUpdatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ListAllowedMultiRegionClusterUpdatesResponse", name: "ListAllowedMultiRegionClusterUpdatesResponse")
    ListAllowedNodeTypeUpdatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ListAllowedNodeTypeUpdatesRequest", name: "ListAllowedNodeTypeUpdatesRequest")
    ListAllowedNodeTypeUpdatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ListAllowedNodeTypeUpdatesResponse", name: "ListAllowedNodeTypeUpdatesResponse")
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ListTagsRequest", name: "ListTagsRequest")
    ListTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ListTagsResponse", name: "ListTagsResponse")
    MultiRegionCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#MultiRegionCluster", name: "MultiRegionCluster")
    MultiRegionClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#MultiRegionClusterAlreadyExistsFault", name: "MultiRegionClusterAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "MultiRegionClusterAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MultiRegionClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#MultiRegionClusterList", name: "MultiRegionClusterList")
    MultiRegionClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#MultiRegionClusterNotFoundFault", name: "MultiRegionClusterNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "MultiRegionClusterNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    MultiRegionParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#MultiRegionParameterGroupNotFoundFault", name: "MultiRegionParameterGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "MultiRegionParameterGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.memorydb#NetworkType", name: "NetworkType")
    NetworkTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#NetworkTypeList", name: "NetworkTypeList")
    NoOperationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#NoOperationFault", name: "NoOperationFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NoOperationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Node = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#Node", name: "Node")
    NodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#NodeList", name: "NodeList")
    NodeQuotaForClusterExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#NodeQuotaForClusterExceededFault", name: "NodeQuotaForClusterExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NodeQuotaForClusterExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeQuotaForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#NodeQuotaForCustomerExceededFault", name: "NodeQuotaForCustomerExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NodeQuotaForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#NodeTypeList", name: "NodeTypeList")
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#Parameter", name: "Parameter")
    ParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ParameterGroup", name: "ParameterGroup")
    ParameterGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ParameterGroupAlreadyExistsFault", name: "ParameterGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ParameterGroupList", name: "ParameterGroupList")
    ParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ParameterGroupNotFoundFault", name: "ParameterGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ParameterGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ParameterGroupQuotaExceededFault", name: "ParameterGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ParameterNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ParameterNameList", name: "ParameterNameList")
    ParameterNameValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ParameterNameValue", name: "ParameterNameValue")
    ParameterNameValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ParameterNameValueList", name: "ParameterNameValueList")
    ParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ParametersList", name: "ParametersList")
    PasswordListInput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#PasswordListInput", name: "PasswordListInput", traits: {"smithy.api#length" => {"min" => 1}})
    PendingModifiedServiceUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#PendingModifiedServiceUpdate", name: "PendingModifiedServiceUpdate")
    PendingModifiedServiceUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#PendingModifiedServiceUpdateList", name: "PendingModifiedServiceUpdateList")
    PurchaseReservedNodesOfferingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#PurchaseReservedNodesOfferingRequest", name: "PurchaseReservedNodesOfferingRequest")
    PurchaseReservedNodesOfferingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#PurchaseReservedNodesOfferingResponse", name: "PurchaseReservedNodesOfferingResponse")
    RecurringCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#RecurringCharge", name: "RecurringCharge")
    RecurringChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#RecurringChargeList", name: "RecurringChargeList")
    RegionalCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#RegionalCluster", name: "RegionalCluster")
    RegionalClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#RegionalClusterList", name: "RegionalClusterList")
    ReplicaConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ReplicaConfigurationRequest", name: "ReplicaConfigurationRequest")
    ReservedNode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ReservedNode", name: "ReservedNode")
    ReservedNodeAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ReservedNodeAlreadyExistsFault", name: "ReservedNodeAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeAlreadyExists", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ReservedNodeList", name: "ReservedNodeList")
    ReservedNodeNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ReservedNodeNotFoundFault", name: "ReservedNodeNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ReservedNodeQuotaExceededFault", name: "ReservedNodeQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReservedNodesOffering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ReservedNodesOffering", name: "ReservedNodesOffering")
    ReservedNodesOfferingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ReservedNodesOfferingList", name: "ReservedNodesOfferingList")
    ReservedNodesOfferingNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ReservedNodesOfferingNotFoundFault", name: "ReservedNodesOfferingNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodesOfferingNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResetParameterGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ResetParameterGroupRequest", name: "ResetParameterGroupRequest")
    ResetParameterGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ResetParameterGroupResponse", name: "ResetParameterGroupResponse")
    ReshardingStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ReshardingStatus", name: "ReshardingStatus")
    SecurityGroupIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#SecurityGroupIdsList", name: "SecurityGroupIdsList")
    SecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SecurityGroupMembership", name: "SecurityGroupMembership")
    SecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#SecurityGroupMembershipList", name: "SecurityGroupMembershipList")
    ServiceLinkedRoleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ServiceLinkedRoleNotFoundFault", name: "ServiceLinkedRoleNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceLinkedRoleNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ServiceUpdate", name: "ServiceUpdate")
    ServiceUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ServiceUpdateList", name: "ServiceUpdateList")
    ServiceUpdateNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ServiceUpdateNotFoundFault", name: "ServiceUpdateNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceUpdateNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ServiceUpdateRequest", name: "ServiceUpdateRequest")
    ServiceUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.memorydb#ServiceUpdateStatus", name: "ServiceUpdateStatus")
    ServiceUpdateStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ServiceUpdateStatusList", name: "ServiceUpdateStatusList", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    ServiceUpdateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.memorydb#ServiceUpdateType", name: "ServiceUpdateType")
    Shard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#Shard", name: "Shard")
    ShardConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ShardConfiguration", name: "ShardConfiguration")
    ShardConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ShardConfigurationRequest", name: "ShardConfigurationRequest")
    ShardDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ShardDetail", name: "ShardDetail")
    ShardDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ShardDetails", name: "ShardDetails")
    ShardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#ShardList", name: "ShardList")
    ShardNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ShardNotFoundFault", name: "ShardNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ShardNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ShardsPerClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#ShardsPerClusterQuotaExceededFault", name: "ShardsPerClusterQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ShardsPerClusterQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SlotMigration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SlotMigration", name: "SlotMigration")
    Snapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#Snapshot", name: "Snapshot")
    SnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SnapshotAlreadyExistsFault", name: "SnapshotAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#SnapshotArnsList", name: "SnapshotArnsList")
    SnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#SnapshotList", name: "SnapshotList")
    SnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SnapshotNotFoundFault", name: "SnapshotNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SnapshotQuotaExceededFault", name: "SnapshotQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.memorydb#SourceType", name: "SourceType")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.memorydb#String", name: "String")
    Subnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#Subnet", name: "Subnet")
    SubnetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SubnetGroup", name: "SubnetGroup")
    SubnetGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SubnetGroupAlreadyExistsFault", name: "SubnetGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetGroupInUseFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SubnetGroupInUseFault", name: "SubnetGroupInUseFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#SubnetGroupList", name: "SubnetGroupList")
    SubnetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SubnetGroupNotFoundFault", name: "SubnetGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubnetGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SubnetGroupQuotaExceededFault", name: "SubnetGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#SubnetIdentifierList", name: "SubnetIdentifierList")
    SubnetInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SubnetInUse", name: "SubnetInUse", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#SubnetList", name: "SubnetList")
    SubnetNotAllowedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SubnetNotAllowedFault", name: "SubnetNotAllowedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetNotAllowedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#SubnetQuotaExceededFault", name: "SubnetQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.memorydb#TStamp", name: "TStamp")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#Tag", name: "Tag")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#TagNotFoundFault", name: "TagNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "TagNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TagQuotaPerResourceExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#TagQuotaPerResourceExceeded", name: "TagQuotaPerResourceExceeded", traits: {"aws.protocols#awsQueryError" => {"code" => "TagQuotaPerResourceExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#TagResourceResponse", name: "TagResourceResponse")
    TargetBucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.memorydb#TargetBucket", name: "TargetBucket", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9._-]+$"})
    TestFailoverNotAvailableFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#TestFailoverNotAvailableFault", name: "TestFailoverNotAvailableFault", traits: {"aws.protocols#awsQueryError" => {"code" => "TestFailoverNotAvailableFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnprocessedCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UnprocessedCluster", name: "UnprocessedCluster")
    UnprocessedClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#UnprocessedClusterList", name: "UnprocessedClusterList")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateACLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UpdateACLRequest", name: "UpdateACLRequest")
    UpdateACLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UpdateACLResponse", name: "UpdateACLResponse")
    UpdateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UpdateClusterRequest", name: "UpdateClusterRequest")
    UpdateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UpdateClusterResponse", name: "UpdateClusterResponse")
    UpdateMultiRegionClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UpdateMultiRegionClusterRequest", name: "UpdateMultiRegionClusterRequest")
    UpdateMultiRegionClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UpdateMultiRegionClusterResponse", name: "UpdateMultiRegionClusterResponse")
    UpdateParameterGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UpdateParameterGroupRequest", name: "UpdateParameterGroupRequest")
    UpdateParameterGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UpdateParameterGroupResponse", name: "UpdateParameterGroupResponse")
    UpdateStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.memorydb#UpdateStrategy", name: "UpdateStrategy")
    UpdateSubnetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UpdateSubnetGroupRequest", name: "UpdateSubnetGroupRequest")
    UpdateSubnetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UpdateSubnetGroupResponse", name: "UpdateSubnetGroupResponse")
    UpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UpdateUserRequest", name: "UpdateUserRequest")
    UpdateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UpdateUserResponse", name: "UpdateUserResponse")
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#User", name: "User")
    UserAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UserAlreadyExistsFault", name: "UserAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UserAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#UserList", name: "UserList")
    UserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.memorydb#UserName", name: "UserName", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-]*$"})
    UserNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#UserNameList", name: "UserNameList")
    UserNameListInput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.memorydb#UserNameListInput", name: "UserNameListInput", traits: {"smithy.api#length" => {"min" => 1}})
    UserNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UserNotFoundFault", name: "UserNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UserNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UserQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.memorydb#UserQuotaExceededFault", name: "UserQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UserQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})

    ACL.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    ACL.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Status"))
    ACL.add_member(:user_names, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameList, location_name: "UserNames"))
    ACL.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MinimumEngineVersion"))
    ACL.add_member(:pending_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: ACLPendingChanges, location_name: "PendingChanges"))
    ACL.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: ACLClusterNameList, location_name: "Clusters"))
    ACL.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ARN"))
    ACL.type = Types::ACL
    ACLAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ACLAlreadyExistsFault.type = Types::ACLAlreadyExistsFault
    ACLClusterNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    ACLList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ACL)
    ACLNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ACLName)
    ACLNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ACLNotFoundFault.type = Types::ACLNotFoundFault
    ACLPendingChanges.add_member(:user_names_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameList, location_name: "UserNamesToRemove"))
    ACLPendingChanges.add_member(:user_names_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameList, location_name: "UserNamesToAdd"))
    ACLPendingChanges.type = Types::ACLPendingChanges
    ACLQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ACLQuotaExceededFault.type = Types::ACLQuotaExceededFault
    ACLsUpdateStatus.add_member(:acl_to_apply, ::Smithy::Schema::Shapes::MemberShape.new(target: ACLName, location_name: "ACLToApply"))
    ACLsUpdateStatus.type = Types::ACLsUpdateStatus
    APICallRateForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    APICallRateForCustomerExceededFault.type = Types::APICallRateForCustomerExceededFault
    AZStatus.add_member(:single_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SingleAZ", traits: {"smithy.api#enumValue" => "singleaz"}))
    AZStatus.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MultiAZ", traits: {"smithy.api#enumValue" => "multiaz"}))
    Authentication.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, location_name: "Type"))
    Authentication.add_member(:password_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "PasswordCount"))
    Authentication.type = Types::Authentication
    AuthenticationMode.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputAuthenticationType, location_name: "Type"))
    AuthenticationMode.add_member(:passwords, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordListInput, location_name: "Passwords"))
    AuthenticationMode.type = Types::AuthenticationMode
    AuthenticationType.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PASSWORD", traits: {"smithy.api#enumValue" => "password"}))
    AuthenticationType.add_member(:no_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_PASSWORD", traits: {"smithy.api#enumValue" => "no-password"}))
    AuthenticationType.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM", traits: {"smithy.api#enumValue" => "iam"}))
    AvailabilityZone.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    AvailabilityZone.type = Types::AvailabilityZone
    BatchUpdateClusterRequest.add_member(:cluster_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterNameList, location_name: "ClusterNames", traits: {"smithy.api#required" => {}}))
    BatchUpdateClusterRequest.add_member(:service_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateRequest, location_name: "ServiceUpdate"))
    BatchUpdateClusterRequest.type = Types::BatchUpdateClusterRequest
    BatchUpdateClusterResponse.add_member(:processed_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterList, location_name: "ProcessedClusters"))
    BatchUpdateClusterResponse.add_member(:unprocessed_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedClusterList, location_name: "UnprocessedClusters"))
    BatchUpdateClusterResponse.type = Types::BatchUpdateClusterResponse
    Cluster.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    Cluster.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    Cluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Status"))
    Cluster.add_member(:pending_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterPendingUpdates, location_name: "PendingUpdates"))
    Cluster.add_member(:multi_region_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionClusterName"))
    Cluster.add_member(:number_of_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "NumberOfShards"))
    Cluster.add_member(:shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardList, location_name: "Shards"))
    Cluster.add_member(:availability_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AZStatus, location_name: "AvailabilityMode"))
    Cluster.add_member(:cluster_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, location_name: "ClusterEndpoint"))
    Cluster.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NodeType"))
    Cluster.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Engine"))
    Cluster.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EngineVersion"))
    Cluster.add_member(:engine_patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EnginePatchVersion"))
    Cluster.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupName"))
    Cluster.add_member(:parameter_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupStatus"))
    Cluster.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupMembershipList, location_name: "SecurityGroups"))
    Cluster.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SubnetGroupName"))
    Cluster.add_member(:tls_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, location_name: "TLSEnabled"))
    Cluster.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "KmsKeyId"))
    Cluster.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ARN"))
    Cluster.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicArn"))
    Cluster.add_member(:sns_topic_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicStatus"))
    Cluster.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    Cluster.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaintenanceWindow"))
    Cluster.add_member(:snapshot_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnapshotWindow"))
    Cluster.add_member(:acl_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ACLName, location_name: "ACLName"))
    Cluster.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    Cluster.add_member(:data_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTieringStatus, location_name: "DataTiering"))
    Cluster.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "NetworkType"))
    Cluster.add_member(:ip_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: IpDiscovery, location_name: "IpDiscovery"))
    Cluster.type = Types::Cluster
    ClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ClusterAlreadyExistsFault.type = Types::ClusterAlreadyExistsFault
    ClusterConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    ClusterConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    ClusterConfiguration.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NodeType"))
    ClusterConfiguration.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Engine"))
    ClusterConfiguration.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EngineVersion"))
    ClusterConfiguration.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaintenanceWindow"))
    ClusterConfiguration.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TopicArn"))
    ClusterConfiguration.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "Port"))
    ClusterConfiguration.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupName"))
    ClusterConfiguration.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SubnetGroupName"))
    ClusterConfiguration.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VpcId"))
    ClusterConfiguration.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    ClusterConfiguration.add_member(:snapshot_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnapshotWindow"))
    ClusterConfiguration.add_member(:num_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "NumShards"))
    ClusterConfiguration.add_member(:shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardDetails, location_name: "Shards"))
    ClusterConfiguration.add_member(:multi_region_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionParameterGroupName"))
    ClusterConfiguration.add_member(:multi_region_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionClusterName"))
    ClusterConfiguration.type = Types::ClusterConfiguration
    ClusterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, traits: {"smithy.api#xmlName" => "Cluster"})
    ClusterNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    ClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ClusterNotFoundFault.type = Types::ClusterNotFoundFault
    ClusterPendingUpdates.add_member(:resharding, ::Smithy::Schema::Shapes::MemberShape.new(target: ReshardingStatus, location_name: "Resharding"))
    ClusterPendingUpdates.add_member(:ac_ls, ::Smithy::Schema::Shapes::MemberShape.new(target: ACLsUpdateStatus, location_name: "ACLs"))
    ClusterPendingUpdates.add_member(:service_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingModifiedServiceUpdateList, location_name: "ServiceUpdates"))
    ClusterPendingUpdates.type = Types::ClusterPendingUpdates
    ClusterQuotaForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ClusterQuotaForCustomerExceededFault.type = Types::ClusterQuotaForCustomerExceededFault
    CopySnapshotRequest.add_member(:source_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SourceSnapshotName", traits: {"smithy.api#required" => {}}))
    CopySnapshotRequest.add_member(:target_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "TargetSnapshotName", traits: {"smithy.api#required" => {}}))
    CopySnapshotRequest.add_member(:target_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetBucket, location_name: "TargetBucket"))
    CopySnapshotRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, location_name: "KmsKeyId"))
    CopySnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CopySnapshotRequest.type = Types::CopySnapshotRequest
    CopySnapshotResponse.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, location_name: "Snapshot"))
    CopySnapshotResponse.type = Types::CopySnapshotResponse
    CreateACLRequest.add_member(:acl_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ACLName", traits: {"smithy.api#required" => {}}))
    CreateACLRequest.add_member(:user_names, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameListInput, location_name: "UserNames"))
    CreateACLRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateACLRequest.type = Types::CreateACLRequest
    CreateACLResponse.add_member(:acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ACL, location_name: "ACL"))
    CreateACLResponse.type = Types::CreateACLResponse
    CreateClusterRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ClusterName", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NodeType", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:multi_region_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionClusterName"))
    CreateClusterRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupName"))
    CreateClusterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    CreateClusterRequest.add_member(:num_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "NumShards"))
    CreateClusterRequest.add_member(:num_replicas_per_shard, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "NumReplicasPerShard"))
    CreateClusterRequest.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SubnetGroupName"))
    CreateClusterRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdsList, location_name: "SecurityGroupIds"))
    CreateClusterRequest.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaintenanceWindow"))
    CreateClusterRequest.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "Port"))
    CreateClusterRequest.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicArn"))
    CreateClusterRequest.add_member(:tls_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, location_name: "TLSEnabled"))
    CreateClusterRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "KmsKeyId"))
    CreateClusterRequest.add_member(:snapshot_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotArnsList, location_name: "SnapshotArns"))
    CreateClusterRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnapshotName"))
    CreateClusterRequest.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    CreateClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateClusterRequest.add_member(:snapshot_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnapshotWindow"))
    CreateClusterRequest.add_member(:acl_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ACLName, location_name: "ACLName", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Engine"))
    CreateClusterRequest.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EngineVersion"))
    CreateClusterRequest.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateClusterRequest.add_member(:data_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, location_name: "DataTiering"))
    CreateClusterRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "NetworkType"))
    CreateClusterRequest.add_member(:ip_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: IpDiscovery, location_name: "IpDiscovery"))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, location_name: "Cluster"))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateMultiRegionClusterRequest.add_member(:multi_region_cluster_name_suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionClusterNameSuffix", traits: {"smithy.api#required" => {}}))
    CreateMultiRegionClusterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    CreateMultiRegionClusterRequest.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Engine"))
    CreateMultiRegionClusterRequest.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EngineVersion"))
    CreateMultiRegionClusterRequest.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NodeType", traits: {"smithy.api#required" => {}}))
    CreateMultiRegionClusterRequest.add_member(:multi_region_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionParameterGroupName"))
    CreateMultiRegionClusterRequest.add_member(:num_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "NumShards"))
    CreateMultiRegionClusterRequest.add_member(:tls_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, location_name: "TLSEnabled"))
    CreateMultiRegionClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateMultiRegionClusterRequest.type = Types::CreateMultiRegionClusterRequest
    CreateMultiRegionClusterResponse.add_member(:multi_region_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionCluster, location_name: "MultiRegionCluster"))
    CreateMultiRegionClusterResponse.type = Types::CreateMultiRegionClusterResponse
    CreateParameterGroupRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupName", traits: {"smithy.api#required" => {}}))
    CreateParameterGroupRequest.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Family", traits: {"smithy.api#required" => {}}))
    CreateParameterGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    CreateParameterGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateParameterGroupRequest.type = Types::CreateParameterGroupRequest
    CreateParameterGroupResponse.add_member(:parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroup, location_name: "ParameterGroup"))
    CreateParameterGroupResponse.type = Types::CreateParameterGroupResponse
    CreateSnapshotRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ClusterName", traits: {"smithy.api#required" => {}}))
    CreateSnapshotRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnapshotName", traits: {"smithy.api#required" => {}}))
    CreateSnapshotRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "KmsKeyId"))
    CreateSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateSnapshotRequest.type = Types::CreateSnapshotRequest
    CreateSnapshotResponse.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, location_name: "Snapshot"))
    CreateSnapshotResponse.type = Types::CreateSnapshotResponse
    CreateSubnetGroupRequest.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SubnetGroupName", traits: {"smithy.api#required" => {}}))
    CreateSubnetGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    CreateSubnetGroupRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, location_name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    CreateSubnetGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateSubnetGroupRequest.type = Types::CreateSubnetGroupRequest
    CreateSubnetGroupResponse.add_member(:subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetGroup, location_name: "SubnetGroup"))
    CreateSubnetGroupResponse.type = Types::CreateSubnetGroupResponse
    CreateUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, location_name: "UserName", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:authentication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMode, location_name: "AuthenticationMode", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:access_string, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessString, location_name: "AccessString", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, location_name: "User"))
    CreateUserResponse.type = Types::CreateUserResponse
    DataTieringStatus.add_member(:true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRUE", traits: {"smithy.api#enumValue" => "true"}))
    DataTieringStatus.add_member(:false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FALSE", traits: {"smithy.api#enumValue" => "false"}))
    DefaultUserRequired.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    DefaultUserRequired.type = Types::DefaultUserRequired
    DeleteACLRequest.add_member(:acl_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ACLName", traits: {"smithy.api#required" => {}}))
    DeleteACLRequest.type = Types::DeleteACLRequest
    DeleteACLResponse.add_member(:acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ACL, location_name: "ACL"))
    DeleteACLResponse.type = Types::DeleteACLResponse
    DeleteClusterRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ClusterName", traits: {"smithy.api#required" => {}}))
    DeleteClusterRequest.add_member(:multi_region_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionClusterName"))
    DeleteClusterRequest.add_member(:final_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "FinalSnapshotName"))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, location_name: "Cluster"))
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteMultiRegionClusterRequest.add_member(:multi_region_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionClusterName", traits: {"smithy.api#required" => {}}))
    DeleteMultiRegionClusterRequest.type = Types::DeleteMultiRegionClusterRequest
    DeleteMultiRegionClusterResponse.add_member(:multi_region_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionCluster, location_name: "MultiRegionCluster"))
    DeleteMultiRegionClusterResponse.type = Types::DeleteMultiRegionClusterResponse
    DeleteParameterGroupRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupName", traits: {"smithy.api#required" => {}}))
    DeleteParameterGroupRequest.type = Types::DeleteParameterGroupRequest
    DeleteParameterGroupResponse.add_member(:parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroup, location_name: "ParameterGroup"))
    DeleteParameterGroupResponse.type = Types::DeleteParameterGroupResponse
    DeleteSnapshotRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnapshotName", traits: {"smithy.api#required" => {}}))
    DeleteSnapshotRequest.type = Types::DeleteSnapshotRequest
    DeleteSnapshotResponse.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, location_name: "Snapshot"))
    DeleteSnapshotResponse.type = Types::DeleteSnapshotResponse
    DeleteSubnetGroupRequest.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SubnetGroupName", traits: {"smithy.api#required" => {}}))
    DeleteSubnetGroupRequest.type = Types::DeleteSubnetGroupRequest
    DeleteSubnetGroupResponse.add_member(:subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetGroup, location_name: "SubnetGroup"))
    DeleteSubnetGroupResponse.type = Types::DeleteSubnetGroupResponse
    DeleteUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, location_name: "UserName", traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, location_name: "User"))
    DeleteUserResponse.type = Types::DeleteUserResponse
    DescribeACLsRequest.add_member(:acl_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ACLName"))
    DescribeACLsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeACLsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeACLsRequest.type = Types::DescribeACLsRequest
    DescribeACLsResponse.add_member(:ac_ls, ::Smithy::Schema::Shapes::MemberShape.new(target: ACLList, location_name: "ACLs"))
    DescribeACLsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeACLsResponse.type = Types::DescribeACLsResponse
    DescribeClustersRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ClusterName"))
    DescribeClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeClustersRequest.add_member(:show_shard_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, location_name: "ShowShardDetails"))
    DescribeClustersRequest.type = Types::DescribeClustersRequest
    DescribeClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeClustersResponse.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterList, location_name: "Clusters"))
    DescribeClustersResponse.type = Types::DescribeClustersResponse
    DescribeEngineVersionsRequest.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Engine"))
    DescribeEngineVersionsRequest.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EngineVersion"))
    DescribeEngineVersionsRequest.add_member(:parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupFamily"))
    DescribeEngineVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeEngineVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeEngineVersionsRequest.add_member(:default_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "DefaultOnly", traits: {"smithy.api#default" => false}))
    DescribeEngineVersionsRequest.type = Types::DescribeEngineVersionsRequest
    DescribeEngineVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeEngineVersionsResponse.add_member(:engine_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersionInfoList, location_name: "EngineVersions"))
    DescribeEngineVersionsResponse.type = Types::DescribeEngineVersionsResponse
    DescribeEventsRequest.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SourceName"))
    DescribeEventsRequest.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, location_name: "SourceType"))
    DescribeEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, location_name: "StartTime"))
    DescribeEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, location_name: "EndTime"))
    DescribeEventsRequest.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "Duration"))
    DescribeEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeEventsRequest.type = Types::DescribeEventsRequest
    DescribeEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, location_name: "Events"))
    DescribeEventsResponse.type = Types::DescribeEventsResponse
    DescribeMultiRegionClustersRequest.add_member(:multi_region_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionClusterName"))
    DescribeMultiRegionClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeMultiRegionClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeMultiRegionClustersRequest.add_member(:show_cluster_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, location_name: "ShowClusterDetails"))
    DescribeMultiRegionClustersRequest.type = Types::DescribeMultiRegionClustersRequest
    DescribeMultiRegionClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeMultiRegionClustersResponse.add_member(:multi_region_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionClusterList, location_name: "MultiRegionClusters"))
    DescribeMultiRegionClustersResponse.type = Types::DescribeMultiRegionClustersResponse
    DescribeParameterGroupsRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupName"))
    DescribeParameterGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeParameterGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeParameterGroupsRequest.type = Types::DescribeParameterGroupsRequest
    DescribeParameterGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeParameterGroupsResponse.add_member(:parameter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroupList, location_name: "ParameterGroups"))
    DescribeParameterGroupsResponse.type = Types::DescribeParameterGroupsResponse
    DescribeParametersRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupName", traits: {"smithy.api#required" => {}}))
    DescribeParametersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeParametersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeParametersRequest.type = Types::DescribeParametersRequest
    DescribeParametersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeParametersResponse.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, location_name: "Parameters"))
    DescribeParametersResponse.type = Types::DescribeParametersResponse
    DescribeReservedNodesOfferingsRequest.add_member(:reserved_nodes_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReservedNodesOfferingId"))
    DescribeReservedNodesOfferingsRequest.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NodeType"))
    DescribeReservedNodesOfferingsRequest.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Duration"))
    DescribeReservedNodesOfferingsRequest.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "OfferingType"))
    DescribeReservedNodesOfferingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeReservedNodesOfferingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeReservedNodesOfferingsRequest.type = Types::DescribeReservedNodesOfferingsRequest
    DescribeReservedNodesOfferingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeReservedNodesOfferingsResponse.add_member(:reserved_nodes_offerings, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodesOfferingList, location_name: "ReservedNodesOfferings"))
    DescribeReservedNodesOfferingsResponse.type = Types::DescribeReservedNodesOfferingsResponse
    DescribeReservedNodesRequest.add_member(:reservation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReservationId"))
    DescribeReservedNodesRequest.add_member(:reserved_nodes_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReservedNodesOfferingId"))
    DescribeReservedNodesRequest.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NodeType"))
    DescribeReservedNodesRequest.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Duration"))
    DescribeReservedNodesRequest.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "OfferingType"))
    DescribeReservedNodesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeReservedNodesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeReservedNodesRequest.type = Types::DescribeReservedNodesRequest
    DescribeReservedNodesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeReservedNodesResponse.add_member(:reserved_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeList, location_name: "ReservedNodes"))
    DescribeReservedNodesResponse.type = Types::DescribeReservedNodesResponse
    DescribeServiceUpdatesRequest.add_member(:service_update_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ServiceUpdateName"))
    DescribeServiceUpdatesRequest.add_member(:cluster_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterNameList, location_name: "ClusterNames"))
    DescribeServiceUpdatesRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateStatusList, location_name: "Status"))
    DescribeServiceUpdatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeServiceUpdatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeServiceUpdatesRequest.type = Types::DescribeServiceUpdatesRequest
    DescribeServiceUpdatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeServiceUpdatesResponse.add_member(:service_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateList, location_name: "ServiceUpdates"))
    DescribeServiceUpdatesResponse.type = Types::DescribeServiceUpdatesResponse
    DescribeSnapshotsRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ClusterName"))
    DescribeSnapshotsRequest.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnapshotName"))
    DescribeSnapshotsRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Source"))
    DescribeSnapshotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeSnapshotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeSnapshotsRequest.add_member(:show_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, location_name: "ShowDetail"))
    DescribeSnapshotsRequest.type = Types::DescribeSnapshotsRequest
    DescribeSnapshotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeSnapshotsResponse.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotList, location_name: "Snapshots"))
    DescribeSnapshotsResponse.type = Types::DescribeSnapshotsResponse
    DescribeSubnetGroupsRequest.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SubnetGroupName"))
    DescribeSubnetGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeSubnetGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeSubnetGroupsRequest.type = Types::DescribeSubnetGroupsRequest
    DescribeSubnetGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeSubnetGroupsResponse.add_member(:subnet_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetGroupList, location_name: "SubnetGroups"))
    DescribeSubnetGroupsResponse.type = Types::DescribeSubnetGroupsResponse
    DescribeUsersRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, location_name: "UserName"))
    DescribeUsersRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "Filters"))
    DescribeUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "MaxResults"))
    DescribeUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeUsersRequest.type = Types::DescribeUsersRequest
    DescribeUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, location_name: "Users"))
    DescribeUsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NextToken"))
    DescribeUsersResponse.type = Types::DescribeUsersResponse
    DuplicateUserNameFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    DuplicateUserNameFault.type = Types::DuplicateUserNameFault
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Address"))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "Port", traits: {"smithy.api#default" => 0}))
    Endpoint.type = Types::Endpoint
    EngineVersionInfo.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Engine"))
    EngineVersionInfo.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EngineVersion"))
    EngineVersionInfo.add_member(:engine_patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EnginePatchVersion"))
    EngineVersionInfo.add_member(:parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupFamily"))
    EngineVersionInfo.type = Types::EngineVersionInfo
    EngineVersionInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersionInfo)
    Event.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SourceName"))
    Event.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, location_name: "SourceType"))
    Event.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Message"))
    Event.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, location_name: "Date"))
    Event.type = Types::Event
    EventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Event, traits: {"smithy.api#xmlName" => "Event"})
    FailoverShardRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ClusterName", traits: {"smithy.api#required" => {}}))
    FailoverShardRequest.add_member(:shard_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ShardName", traits: {"smithy.api#required" => {}}))
    FailoverShardRequest.type = Types::FailoverShardRequest
    FailoverShardResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, location_name: "Cluster"))
    FailoverShardResponse.type = Types::FailoverShardResponse
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, location_name: "Values", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Filter)
    FilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue)
    InputAuthenticationType.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PASSWORD", traits: {"smithy.api#enumValue" => "password"}))
    InputAuthenticationType.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM", traits: {"smithy.api#enumValue" => "iam"}))
    InsufficientClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InsufficientClusterCapacityFault.type = Types::InsufficientClusterCapacityFault
    InvalidACLStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidACLStateFault.type = Types::InvalidACLStateFault
    InvalidARNFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidARNFault.type = Types::InvalidARNFault
    InvalidClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidClusterStateFault.type = Types::InvalidClusterStateFault
    InvalidCredentialsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidCredentialsException.type = Types::InvalidCredentialsException
    InvalidKMSKeyFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidKMSKeyFault.type = Types::InvalidKMSKeyFault
    InvalidMultiRegionClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidMultiRegionClusterStateFault.type = Types::InvalidMultiRegionClusterStateFault
    InvalidNodeStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidNodeStateFault.type = Types::InvalidNodeStateFault
    InvalidParameterCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsQueryErrorMessage, location_name: "message"))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidParameterGroupStateFault.type = Types::InvalidParameterGroupStateFault
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsQueryErrorMessage, location_name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidSnapshotStateFault.type = Types::InvalidSnapshotStateFault
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidUserStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidUserStateFault.type = Types::InvalidUserStateFault
    InvalidVPCNetworkStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    IpDiscovery.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV4", traits: {"smithy.api#enumValue" => "ipv4"}))
    IpDiscovery.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV6", traits: {"smithy.api#enumValue" => "ipv6"}))
    KeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    ListAllowedMultiRegionClusterUpdatesRequest.add_member(:multi_region_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionClusterName", traits: {"smithy.api#required" => {}}))
    ListAllowedMultiRegionClusterUpdatesRequest.type = Types::ListAllowedMultiRegionClusterUpdatesRequest
    ListAllowedMultiRegionClusterUpdatesResponse.add_member(:scale_up_node_types, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeTypeList, location_name: "ScaleUpNodeTypes"))
    ListAllowedMultiRegionClusterUpdatesResponse.add_member(:scale_down_node_types, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeTypeList, location_name: "ScaleDownNodeTypes"))
    ListAllowedMultiRegionClusterUpdatesResponse.type = Types::ListAllowedMultiRegionClusterUpdatesResponse
    ListAllowedNodeTypeUpdatesRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ClusterName", traits: {"smithy.api#required" => {}}))
    ListAllowedNodeTypeUpdatesRequest.type = Types::ListAllowedNodeTypeUpdatesRequest
    ListAllowedNodeTypeUpdatesResponse.add_member(:scale_up_node_types, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeTypeList, location_name: "ScaleUpNodeTypes"))
    ListAllowedNodeTypeUpdatesResponse.add_member(:scale_down_node_types, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeTypeList, location_name: "ScaleDownNodeTypes"))
    ListAllowedNodeTypeUpdatesResponse.type = Types::ListAllowedNodeTypeUpdatesResponse
    ListTagsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "TagList"))
    ListTagsResponse.type = Types::ListTagsResponse
    MultiRegionCluster.add_member(:multi_region_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionClusterName"))
    MultiRegionCluster.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    MultiRegionCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Status"))
    MultiRegionCluster.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NodeType"))
    MultiRegionCluster.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Engine"))
    MultiRegionCluster.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EngineVersion"))
    MultiRegionCluster.add_member(:number_of_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "NumberOfShards"))
    MultiRegionCluster.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionalClusterList, location_name: "Clusters"))
    MultiRegionCluster.add_member(:multi_region_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionParameterGroupName"))
    MultiRegionCluster.add_member(:tls_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, location_name: "TLSEnabled"))
    MultiRegionCluster.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ARN"))
    MultiRegionCluster.type = Types::MultiRegionCluster
    MultiRegionClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    MultiRegionClusterAlreadyExistsFault.type = Types::MultiRegionClusterAlreadyExistsFault
    MultiRegionClusterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionCluster)
    MultiRegionClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    MultiRegionClusterNotFoundFault.type = Types::MultiRegionClusterNotFoundFault
    MultiRegionParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    MultiRegionParameterGroupNotFoundFault.type = Types::MultiRegionParameterGroupNotFoundFault
    NetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV4", traits: {"smithy.api#enumValue" => "ipv4"}))
    NetworkType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV6", traits: {"smithy.api#enumValue" => "ipv6"}))
    NetworkType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "dual_stack"}))
    NetworkTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType)
    NoOperationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    NoOperationFault.type = Types::NoOperationFault
    Node.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    Node.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Status"))
    Node.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "AvailabilityZone"))
    Node.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, location_name: "CreateTime"))
    Node.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, location_name: "Endpoint"))
    Node.type = Types::Node
    NodeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Node, traits: {"smithy.api#xmlName" => "Node"})
    NodeQuotaForClusterExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    NodeQuotaForClusterExceededFault.type = Types::NodeQuotaForClusterExceededFault
    NodeQuotaForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    NodeQuotaForCustomerExceededFault.type = Types::NodeQuotaForCustomerExceededFault
    NodeTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    Parameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    Parameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Value"))
    Parameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    Parameter.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "DataType"))
    Parameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "AllowedValues"))
    Parameter.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MinimumEngineVersion"))
    Parameter.type = Types::Parameter
    ParameterGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    ParameterGroup.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Family"))
    ParameterGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    ParameterGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ARN"))
    ParameterGroup.type = Types::ParameterGroup
    ParameterGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ParameterGroupAlreadyExistsFault.type = Types::ParameterGroupAlreadyExistsFault
    ParameterGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroup, traits: {"smithy.api#xmlName" => "ParameterGroup"})
    ParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ParameterGroupNotFoundFault.type = Types::ParameterGroupNotFoundFault
    ParameterGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ParameterGroupQuotaExceededFault.type = Types::ParameterGroupQuotaExceededFault
    ParameterNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    ParameterNameValue.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterName"))
    ParameterNameValue.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterValue"))
    ParameterNameValue.type = Types::ParameterNameValue
    ParameterNameValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameValue, traits: {"smithy.api#xmlName" => "ParameterNameValue"})
    ParametersList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, traits: {"smithy.api#xmlName" => "Parameter"})
    PasswordListInput.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    PendingModifiedServiceUpdate.add_member(:service_update_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ServiceUpdateName"))
    PendingModifiedServiceUpdate.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateStatus, location_name: "Status"))
    PendingModifiedServiceUpdate.type = Types::PendingModifiedServiceUpdate
    PendingModifiedServiceUpdateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PendingModifiedServiceUpdate, traits: {"smithy.api#xmlName" => "PendingModifiedServiceUpdate"})
    PurchaseReservedNodesOfferingRequest.add_member(:reserved_nodes_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReservedNodesOfferingId", traits: {"smithy.api#required" => {}}))
    PurchaseReservedNodesOfferingRequest.add_member(:reservation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReservationId"))
    PurchaseReservedNodesOfferingRequest.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "NodeCount"))
    PurchaseReservedNodesOfferingRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    PurchaseReservedNodesOfferingRequest.type = Types::PurchaseReservedNodesOfferingRequest
    PurchaseReservedNodesOfferingResponse.add_member(:reserved_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNode, location_name: "ReservedNode"))
    PurchaseReservedNodesOfferingResponse.type = Types::PurchaseReservedNodesOfferingResponse
    RecurringCharge.add_member(:recurring_charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "RecurringChargeAmount", traits: {"smithy.api#default" => 0}))
    RecurringCharge.add_member(:recurring_charge_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "RecurringChargeFrequency"))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringCharge, traits: {"smithy.api#xmlName" => "RecurringCharge"})
    RegionalCluster.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ClusterName"))
    RegionalCluster.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Region"))
    RegionalCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Status"))
    RegionalCluster.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ARN"))
    RegionalCluster.type = Types::RegionalCluster
    RegionalClusterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RegionalCluster, traits: {"smithy.api#xmlName" => "RegionalCluster"})
    ReplicaConfigurationRequest.add_member(:replica_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "ReplicaCount", traits: {"smithy.api#default" => 0}))
    ReplicaConfigurationRequest.type = Types::ReplicaConfigurationRequest
    ReservedNode.add_member(:reservation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReservationId"))
    ReservedNode.add_member(:reserved_nodes_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReservedNodesOfferingId"))
    ReservedNode.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NodeType"))
    ReservedNode.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, location_name: "StartTime"))
    ReservedNode.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "Duration", traits: {"smithy.api#default" => 0}))
    ReservedNode.add_member(:fixed_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "FixedPrice", traits: {"smithy.api#default" => 0}))
    ReservedNode.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "NodeCount", traits: {"smithy.api#default" => 0}))
    ReservedNode.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "OfferingType"))
    ReservedNode.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "State"))
    ReservedNode.add_member(:recurring_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedNode.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ARN"))
    ReservedNode.type = Types::ReservedNode
    ReservedNodeAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ReservedNodeAlreadyExistsFault.type = Types::ReservedNodeAlreadyExistsFault
    ReservedNodeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNode, traits: {"smithy.api#xmlName" => "ReservedNode"})
    ReservedNodeNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ReservedNodeNotFoundFault.type = Types::ReservedNodeNotFoundFault
    ReservedNodeQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ReservedNodeQuotaExceededFault.type = Types::ReservedNodeQuotaExceededFault
    ReservedNodesOffering.add_member(:reserved_nodes_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ReservedNodesOfferingId"))
    ReservedNodesOffering.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NodeType"))
    ReservedNodesOffering.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "Duration", traits: {"smithy.api#default" => 0}))
    ReservedNodesOffering.add_member(:fixed_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "FixedPrice", traits: {"smithy.api#default" => 0}))
    ReservedNodesOffering.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "OfferingType"))
    ReservedNodesOffering.add_member(:recurring_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedNodesOffering.type = Types::ReservedNodesOffering
    ReservedNodesOfferingList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodesOffering, traits: {"smithy.api#xmlName" => "ReservedNodesOffering"})
    ReservedNodesOfferingNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ReservedNodesOfferingNotFoundFault.type = Types::ReservedNodesOfferingNotFoundFault
    ResetParameterGroupRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupName", traits: {"smithy.api#required" => {}}))
    ResetParameterGroupRequest.add_member(:all_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "AllParameters", traits: {"smithy.api#default" => false}))
    ResetParameterGroupRequest.add_member(:parameter_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameList, location_name: "ParameterNames"))
    ResetParameterGroupRequest.type = Types::ResetParameterGroupRequest
    ResetParameterGroupResponse.add_member(:parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroup, location_name: "ParameterGroup"))
    ResetParameterGroupResponse.type = Types::ResetParameterGroupResponse
    ReshardingStatus.add_member(:slot_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotMigration, location_name: "SlotMigration"))
    ReshardingStatus.type = Types::ReshardingStatus
    SecurityGroupIdsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, traits: {"smithy.api#xmlName" => "SecurityGroupId"})
    SecurityGroupMembership.add_member(:security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SecurityGroupId"))
    SecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Status"))
    SecurityGroupMembership.type = Types::SecurityGroupMembership
    SecurityGroupMembershipList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupMembership)
    ServiceLinkedRoleNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ServiceLinkedRoleNotFoundFault.type = Types::ServiceLinkedRoleNotFoundFault
    ServiceUpdate.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ClusterName"))
    ServiceUpdate.add_member(:service_update_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ServiceUpdateName"))
    ServiceUpdate.add_member(:release_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, location_name: "ReleaseDate"))
    ServiceUpdate.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    ServiceUpdate.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateStatus, location_name: "Status"))
    ServiceUpdate.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateType, location_name: "Type"))
    ServiceUpdate.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Engine"))
    ServiceUpdate.add_member(:nodes_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NodesUpdated"))
    ServiceUpdate.add_member(:auto_update_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, location_name: "AutoUpdateStartDate"))
    ServiceUpdate.type = Types::ServiceUpdate
    ServiceUpdateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdate, traits: {"smithy.api#xmlName" => "ServiceUpdate"})
    ServiceUpdateNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ServiceUpdateNotFoundFault.type = Types::ServiceUpdateNotFoundFault
    ServiceUpdateRequest.add_member(:service_update_name_to_apply, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ServiceUpdateNameToApply"))
    ServiceUpdateRequest.type = Types::ServiceUpdateRequest
    ServiceUpdateStatus.add_member(:not_applied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_APPLIED", traits: {"smithy.api#enumValue" => "available"}))
    ServiceUpdateStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "in-progress"}))
    ServiceUpdateStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "complete"}))
    ServiceUpdateStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCHEDULED", traits: {"smithy.api#enumValue" => "scheduled"}))
    ServiceUpdateStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateStatus)
    ServiceUpdateType.add_member(:security_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECURITY_UPDATE", traits: {"smithy.api#enumValue" => "security-update"}))
    Shard.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    Shard.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Status"))
    Shard.add_member(:slots, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Slots"))
    Shard.add_member(:nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeList, location_name: "Nodes"))
    Shard.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "NumberOfNodes"))
    Shard.type = Types::Shard
    ShardConfiguration.add_member(:slots, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Slots"))
    ShardConfiguration.add_member(:replica_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "ReplicaCount"))
    ShardConfiguration.type = Types::ShardConfiguration
    ShardConfigurationRequest.add_member(:shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "ShardCount", traits: {"smithy.api#default" => 0}))
    ShardConfigurationRequest.type = Types::ShardConfigurationRequest
    ShardDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    ShardDetail.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardConfiguration, location_name: "Configuration"))
    ShardDetail.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Size"))
    ShardDetail.add_member(:snapshot_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, location_name: "SnapshotCreationTime"))
    ShardDetail.type = Types::ShardDetail
    ShardDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ShardDetail)
    ShardList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Shard, traits: {"smithy.api#xmlName" => "Shard"})
    ShardNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ShardNotFoundFault.type = Types::ShardNotFoundFault
    ShardsPerClusterQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ShardsPerClusterQuotaExceededFault.type = Types::ShardsPerClusterQuotaExceededFault
    SlotMigration.add_member(:progress_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "ProgressPercentage", traits: {"smithy.api#default" => 0}))
    SlotMigration.type = Types::SlotMigration
    Snapshot.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    Snapshot.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Status"))
    Snapshot.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Source"))
    Snapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "KmsKeyId"))
    Snapshot.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ARN"))
    Snapshot.add_member(:cluster_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterConfiguration, location_name: "ClusterConfiguration"))
    Snapshot.add_member(:data_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTieringStatus, location_name: "DataTiering"))
    Snapshot.type = Types::Snapshot
    SnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    SnapshotAlreadyExistsFault.type = Types::SnapshotAlreadyExistsFault
    SnapshotArnsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, traits: {"smithy.api#xmlName" => "SnapshotArn"})
    SnapshotList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot)
    SnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    SnapshotNotFoundFault.type = Types::SnapshotNotFoundFault
    SnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    SnapshotQuotaExceededFault.type = Types::SnapshotQuotaExceededFault
    SourceType.add_member(:node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "node", traits: {"smithy.api#enumValue" => "node"}))
    SourceType.add_member(:parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "parameter_group", traits: {"smithy.api#enumValue" => "parameter-group"}))
    SourceType.add_member(:subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "subnet_group", traits: {"smithy.api#enumValue" => "subnet-group"}))
    SourceType.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "cluster", traits: {"smithy.api#enumValue" => "cluster"}))
    SourceType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "user", traits: {"smithy.api#enumValue" => "user"}))
    SourceType.add_member(:acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "acl", traits: {"smithy.api#enumValue" => "acl"}))
    Subnet.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Identifier"))
    Subnet.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, location_name: "AvailabilityZone"))
    Subnet.add_member(:supported_network_types, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTypeList, location_name: "SupportedNetworkTypes"))
    Subnet.type = Types::Subnet
    SubnetGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    SubnetGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    SubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "VpcId"))
    SubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, location_name: "Subnets"))
    SubnetGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ARN"))
    SubnetGroup.add_member(:supported_network_types, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTypeList, location_name: "SupportedNetworkTypes"))
    SubnetGroup.type = Types::SubnetGroup
    SubnetGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    SubnetGroupAlreadyExistsFault.type = Types::SubnetGroupAlreadyExistsFault
    SubnetGroupInUseFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    SubnetGroupInUseFault.type = Types::SubnetGroupInUseFault
    SubnetGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetGroup)
    SubnetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    SubnetGroupNotFoundFault.type = Types::SubnetGroupNotFoundFault
    SubnetGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    SubnetGroupQuotaExceededFault.type = Types::SubnetGroupQuotaExceededFault
    SubnetIdentifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, traits: {"smithy.api#xmlName" => "SubnetIdentifier"})
    SubnetInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    SubnetInUse.type = Types::SubnetInUse
    SubnetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Subnet, traits: {"smithy.api#xmlName" => "Subnet"})
    SubnetNotAllowedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    SubnetNotAllowedFault.type = Types::SubnetNotAllowedFault
    SubnetQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    SubnetQuotaExceededFault.type = Types::SubnetQuotaExceededFault
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Value"))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, traits: {"smithy.api#xmlName" => "Tag"})
    TagNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    TagNotFoundFault.type = Types::TagNotFoundFault
    TagQuotaPerResourceExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    TagQuotaPerResourceExceeded.type = Types::TagQuotaPerResourceExceeded
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "TagList"))
    TagResourceResponse.type = Types::TagResourceResponse
    TestFailoverNotAvailableFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    TestFailoverNotAvailableFault.type = Types::TestFailoverNotAvailableFault
    UnprocessedCluster.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ClusterName"))
    UnprocessedCluster.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ErrorType"))
    UnprocessedCluster.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ErrorMessage"))
    UnprocessedCluster.type = Types::UnprocessedCluster
    UnprocessedClusterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedCluster, traits: {"smithy.api#xmlName" => "UnprocessedCluster"})
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "TagList"))
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateACLRequest.add_member(:acl_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ACLName", traits: {"smithy.api#required" => {}}))
    UpdateACLRequest.add_member(:user_names_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameListInput, location_name: "UserNamesToAdd"))
    UpdateACLRequest.add_member(:user_names_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameListInput, location_name: "UserNamesToRemove"))
    UpdateACLRequest.type = Types::UpdateACLRequest
    UpdateACLResponse.add_member(:acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ACL, location_name: "ACL"))
    UpdateACLResponse.type = Types::UpdateACLResponse
    UpdateClusterRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ClusterName", traits: {"smithy.api#required" => {}}))
    UpdateClusterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    UpdateClusterRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdsList, location_name: "SecurityGroupIds"))
    UpdateClusterRequest.add_member(:maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MaintenanceWindow"))
    UpdateClusterRequest.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicArn"))
    UpdateClusterRequest.add_member(:sns_topic_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnsTopicStatus"))
    UpdateClusterRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupName"))
    UpdateClusterRequest.add_member(:snapshot_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SnapshotWindow"))
    UpdateClusterRequest.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, location_name: "SnapshotRetentionLimit"))
    UpdateClusterRequest.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NodeType"))
    UpdateClusterRequest.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Engine"))
    UpdateClusterRequest.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EngineVersion"))
    UpdateClusterRequest.add_member(:replica_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaConfigurationRequest, location_name: "ReplicaConfiguration"))
    UpdateClusterRequest.add_member(:shard_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardConfigurationRequest, location_name: "ShardConfiguration"))
    UpdateClusterRequest.add_member(:acl_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ACLName, location_name: "ACLName"))
    UpdateClusterRequest.add_member(:ip_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: IpDiscovery, location_name: "IpDiscovery"))
    UpdateClusterRequest.type = Types::UpdateClusterRequest
    UpdateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, location_name: "Cluster"))
    UpdateClusterResponse.type = Types::UpdateClusterResponse
    UpdateMultiRegionClusterRequest.add_member(:multi_region_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionClusterName", traits: {"smithy.api#required" => {}}))
    UpdateMultiRegionClusterRequest.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "NodeType"))
    UpdateMultiRegionClusterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    UpdateMultiRegionClusterRequest.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "EngineVersion"))
    UpdateMultiRegionClusterRequest.add_member(:shard_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardConfigurationRequest, location_name: "ShardConfiguration"))
    UpdateMultiRegionClusterRequest.add_member(:multi_region_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MultiRegionParameterGroupName"))
    UpdateMultiRegionClusterRequest.add_member(:update_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateStrategy, location_name: "UpdateStrategy"))
    UpdateMultiRegionClusterRequest.type = Types::UpdateMultiRegionClusterRequest
    UpdateMultiRegionClusterResponse.add_member(:multi_region_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionCluster, location_name: "MultiRegionCluster"))
    UpdateMultiRegionClusterResponse.type = Types::UpdateMultiRegionClusterResponse
    UpdateParameterGroupRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ParameterGroupName", traits: {"smithy.api#required" => {}}))
    UpdateParameterGroupRequest.add_member(:parameter_name_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameValueList, location_name: "ParameterNameValues", traits: {"smithy.api#required" => {}}))
    UpdateParameterGroupRequest.type = Types::UpdateParameterGroupRequest
    UpdateParameterGroupResponse.add_member(:parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroup, location_name: "ParameterGroup"))
    UpdateParameterGroupResponse.type = Types::UpdateParameterGroupResponse
    UpdateStrategy.add_member(:coordinated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COORDINATED", traits: {"smithy.api#enumValue" => "coordinated"}))
    UpdateStrategy.add_member(:uncoordinated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNCOORDINATED", traits: {"smithy.api#enumValue" => "uncoordinated"}))
    UpdateSubnetGroupRequest.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SubnetGroupName", traits: {"smithy.api#required" => {}}))
    UpdateSubnetGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Description"))
    UpdateSubnetGroupRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, location_name: "SubnetIds"))
    UpdateSubnetGroupRequest.type = Types::UpdateSubnetGroupRequest
    UpdateSubnetGroupResponse.add_member(:subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetGroup, location_name: "SubnetGroup"))
    UpdateSubnetGroupResponse.type = Types::UpdateSubnetGroupResponse
    UpdateUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, location_name: "UserName", traits: {"smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:authentication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMode, location_name: "AuthenticationMode"))
    UpdateUserRequest.add_member(:access_string, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessString, location_name: "AccessString"))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, location_name: "User"))
    UpdateUserResponse.type = Types::UpdateUserResponse
    User.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Name"))
    User.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Status"))
    User.add_member(:access_string, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "AccessString"))
    User.add_member(:acl_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ACLNameList, location_name: "ACLNames"))
    User.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "MinimumEngineVersion"))
    User.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: Authentication, location_name: "Authentication"))
    User.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ARN"))
    User.type = Types::User
    UserAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    UserAlreadyExistsFault.type = Types::UserAlreadyExistsFault
    UserList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: User)
    UserNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UserName)
    UserNameListInput.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UserName)
    UserNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    UserNotFoundFault.type = Types::UserNotFoundFault
    UserQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    UserQuotaExceededFault.type = Types::UserQuotaExceededFault

    AmazonMemoryDB = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.memorydb#AmazonMemoryDB"
      service.name = "AmazonMemoryDB"
      service.version = "2021-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "MemoryDB", "arnNamespace" => "memorydb", "cloudFormationName" => "MemoryDB", "cloudTrailEventSource" => "memorydb.amazonaws.com", "endpointPrefix" => "memory-db"}, "aws.auth#sigv4" => {"name" => "memorydb"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon MemoryDB", "smithy.api#xmlNamespace" => {"uri" => "http://memorydb.amazonaws.com/doc/2021-01-01/"}}
      service.add_operation(:batch_update_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#BatchUpdateCluster"
        operation.name = "BatchUpdateCluster"
        operation.input = BatchUpdateClusterRequest
        operation.output = BatchUpdateClusterResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUpdateNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:copy_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CopySnapshot"
        operation.name = "CopySnapshot"
        operation.input = CopySnapshotRequest
        operation.output = CopySnapshotResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidSnapshotStateFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SnapshotAlreadyExistsFault
        operation.errors << SnapshotNotFoundFault
        operation.errors << SnapshotQuotaExceededFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateACL"
        operation.name = "CreateACL"
        operation.input = CreateACLRequest
        operation.output = CreateACLResponse
        operation.errors << ACLAlreadyExistsFault
        operation.errors << ACLQuotaExceededFault
        operation.errors << DefaultUserRequired
        operation.errors << DuplicateUserNameFault
        operation.errors << InvalidParameterValueException
        operation.errors << TagQuotaPerResourceExceeded
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = CreateClusterRequest
        operation.output = CreateClusterResponse
        operation.errors << ACLNotFoundFault
        operation.errors << ClusterAlreadyExistsFault
        operation.errors << ClusterQuotaForCustomerExceededFault
        operation.errors << InsufficientClusterCapacityFault
        operation.errors << InvalidACLStateFault
        operation.errors << InvalidCredentialsException
        operation.errors << InvalidMultiRegionClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << MultiRegionClusterNotFoundFault
        operation.errors << NodeQuotaForClusterExceededFault
        operation.errors << NodeQuotaForCustomerExceededFault
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << ShardsPerClusterQuotaExceededFault
        operation.errors << SubnetGroupNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_multi_region_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateMultiRegionCluster"
        operation.name = "CreateMultiRegionCluster"
        operation.input = CreateMultiRegionClusterRequest
        operation.output = CreateMultiRegionClusterResponse
        operation.errors << ClusterQuotaForCustomerExceededFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << MultiRegionClusterAlreadyExistsFault
        operation.errors << MultiRegionParameterGroupNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateParameterGroup"
        operation.name = "CreateParameterGroup"
        operation.input = CreateParameterGroupRequest
        operation.output = CreateParameterGroupResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterGroupStateFault
        operation.errors << InvalidParameterValueException
        operation.errors << ParameterGroupAlreadyExistsFault
        operation.errors << ParameterGroupQuotaExceededFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateSnapshot"
        operation.name = "CreateSnapshot"
        operation.input = CreateSnapshotRequest
        operation.output = CreateSnapshotResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SnapshotAlreadyExistsFault
        operation.errors << SnapshotQuotaExceededFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateSubnetGroup"
        operation.name = "CreateSubnetGroup"
        operation.input = CreateSubnetGroupRequest
        operation.output = CreateSubnetGroupResponse
        operation.errors << InvalidSubnet
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SubnetGroupAlreadyExistsFault
        operation.errors << SubnetGroupQuotaExceededFault
        operation.errors << SubnetNotAllowedFault
        operation.errors << SubnetQuotaExceededFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#CreateUser"
        operation.name = "CreateUser"
        operation.input = CreateUserRequest
        operation.output = CreateUserResponse
        operation.errors << DuplicateUserNameFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << TagQuotaPerResourceExceeded
        operation.errors << UserAlreadyExistsFault
        operation.errors << UserQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:delete_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteACL"
        operation.name = "DeleteACL"
        operation.input = DeleteACLRequest
        operation.output = DeleteACLResponse
        operation.errors << ACLNotFoundFault
        operation.errors << InvalidACLStateFault
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = DeleteClusterRequest
        operation.output = DeleteClusterResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SnapshotAlreadyExistsFault
        operation.traits = {}
      end)
      service.add_operation(:delete_multi_region_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteMultiRegionCluster"
        operation.name = "DeleteMultiRegionCluster"
        operation.input = DeleteMultiRegionClusterRequest
        operation.output = DeleteMultiRegionClusterResponse
        operation.errors << InvalidMultiRegionClusterStateFault
        operation.errors << InvalidParameterValueException
        operation.errors << MultiRegionClusterNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteParameterGroup"
        operation.name = "DeleteParameterGroup"
        operation.input = DeleteParameterGroupRequest
        operation.output = DeleteParameterGroupResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterGroupStateFault
        operation.errors << InvalidParameterValueException
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteSnapshot"
        operation.name = "DeleteSnapshot"
        operation.input = DeleteSnapshotRequest
        operation.output = DeleteSnapshotResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidSnapshotStateFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SnapshotNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteSubnetGroup"
        operation.name = "DeleteSubnetGroup"
        operation.input = DeleteSubnetGroupRequest
        operation.output = DeleteSubnetGroupResponse
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SubnetGroupInUseFault
        operation.errors << SubnetGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = DeleteUserRequest
        operation.output = DeleteUserResponse
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidUserStateFault
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_ac_ls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeACLs"
        operation.name = "DescribeACLs"
        operation.input = DescribeACLsRequest
        operation.output = DescribeACLsResponse
        operation.errors << ACLNotFoundFault
        operation.errors << InvalidParameterCombinationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeACLs.new
      end)
      service.add_operation(:describe_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeClusters"
        operation.name = "DescribeClusters"
        operation.input = DescribeClustersRequest
        operation.output = DescribeClustersResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusters.new
      end)
      service.add_operation(:describe_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeEngineVersions"
        operation.name = "DescribeEngineVersions"
        operation.input = DescribeEngineVersionsRequest
        operation.output = DescribeEngineVersionsResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEngineVersions.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = DescribeEventsRequest
        operation.output = DescribeEventsResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_multi_region_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeMultiRegionClusters"
        operation.name = "DescribeMultiRegionClusters"
        operation.input = DescribeMultiRegionClustersRequest
        operation.output = DescribeMultiRegionClustersResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << MultiRegionClusterNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMultiRegionClusters.new
      end)
      service.add_operation(:describe_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeParameterGroups"
        operation.name = "DescribeParameterGroups"
        operation.input = DescribeParameterGroupsRequest
        operation.output = DescribeParameterGroupsResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeParameterGroups.new
      end)
      service.add_operation(:describe_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeParameters"
        operation.name = "DescribeParameters"
        operation.input = DescribeParametersRequest
        operation.output = DescribeParametersResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeParameters.new
      end)
      service.add_operation(:describe_reserved_nodes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeReservedNodes"
        operation.name = "DescribeReservedNodes"
        operation.input = DescribeReservedNodesRequest
        operation.output = DescribeReservedNodesResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ReservedNodeNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodes.new
      end)
      service.add_operation(:describe_reserved_nodes_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeReservedNodesOfferings"
        operation.name = "DescribeReservedNodesOfferings"
        operation.input = DescribeReservedNodesOfferingsRequest
        operation.output = DescribeReservedNodesOfferingsResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ReservedNodesOfferingNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodesOfferings.new
      end)
      service.add_operation(:describe_service_updates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeServiceUpdates"
        operation.name = "DescribeServiceUpdates"
        operation.input = DescribeServiceUpdatesRequest
        operation.output = DescribeServiceUpdatesResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeServiceUpdates.new
      end)
      service.add_operation(:describe_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeSnapshots"
        operation.name = "DescribeSnapshots"
        operation.input = DescribeSnapshotsRequest
        operation.output = DescribeSnapshotsResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SnapshotNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshots.new
      end)
      service.add_operation(:describe_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeSubnetGroups"
        operation.name = "DescribeSubnetGroups"
        operation.input = DescribeSubnetGroupsRequest
        operation.output = DescribeSubnetGroupsResponse
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SubnetGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSubnetGroups.new
      end)
      service.add_operation(:describe_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#DescribeUsers"
        operation.name = "DescribeUsers"
        operation.input = DescribeUsersRequest
        operation.output = DescribeUsersResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << UserNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUsers.new
      end)
      service.add_operation(:failover_shard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#FailoverShard"
        operation.name = "FailoverShard"
        operation.input = FailoverShardRequest
        operation.output = FailoverShardResponse
        operation.errors << APICallRateForCustomerExceededFault
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidKMSKeyFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ShardNotFoundFault
        operation.errors << TestFailoverNotAvailableFault
        operation.traits = {}
      end)
      service.add_operation(:list_allowed_multi_region_cluster_updates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#ListAllowedMultiRegionClusterUpdates"
        operation.name = "ListAllowedMultiRegionClusterUpdates"
        operation.input = ListAllowedMultiRegionClusterUpdatesRequest
        operation.output = ListAllowedMultiRegionClusterUpdatesResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << MultiRegionClusterNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:list_allowed_node_type_updates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#ListAllowedNodeTypeUpdates"
        operation.name = "ListAllowedNodeTypeUpdates"
        operation.input = ListAllowedNodeTypeUpdatesRequest
        operation.output = ListAllowedNodeTypeUpdatesResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#ListTags"
        operation.name = "ListTags"
        operation.input = ListTagsRequest
        operation.output = ListTagsResponse
        operation.errors << ACLNotFoundFault
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidARNFault
        operation.errors << InvalidClusterStateFault
        operation.errors << MultiRegionClusterNotFoundFault
        operation.errors << MultiRegionParameterGroupNotFoundFault
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SnapshotNotFoundFault
        operation.errors << SubnetGroupNotFoundFault
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:purchase_reserved_nodes_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#PurchaseReservedNodesOffering"
        operation.name = "PurchaseReservedNodesOffering"
        operation.input = PurchaseReservedNodesOfferingRequest
        operation.output = PurchaseReservedNodesOfferingResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ReservedNodeAlreadyExistsFault
        operation.errors << ReservedNodeQuotaExceededFault
        operation.errors << ReservedNodesOfferingNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:reset_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#ResetParameterGroup"
        operation.name = "ResetParameterGroup"
        operation.input = ResetParameterGroupRequest
        operation.output = ResetParameterGroupResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterGroupStateFault
        operation.errors << InvalidParameterValueException
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ACLNotFoundFault
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidARNFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterValueException
        operation.errors << MultiRegionClusterNotFoundFault
        operation.errors << MultiRegionParameterGroupNotFoundFault
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SnapshotNotFoundFault
        operation.errors << SubnetGroupNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ACLNotFoundFault
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidARNFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterValueException
        operation.errors << MultiRegionClusterNotFoundFault
        operation.errors << MultiRegionParameterGroupNotFoundFault
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SnapshotNotFoundFault
        operation.errors << SubnetGroupNotFoundFault
        operation.errors << TagNotFoundFault
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:update_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UpdateACL"
        operation.name = "UpdateACL"
        operation.input = UpdateACLRequest
        operation.output = UpdateACLResponse
        operation.errors << ACLNotFoundFault
        operation.errors << DefaultUserRequired
        operation.errors << DuplicateUserNameFault
        operation.errors << InvalidACLStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:update_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = UpdateClusterRequest
        operation.output = UpdateClusterResponse
        operation.errors << ACLNotFoundFault
        operation.errors << ClusterNotFoundFault
        operation.errors << ClusterQuotaForCustomerExceededFault
        operation.errors << InvalidACLStateFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidKMSKeyFault
        operation.errors << InvalidNodeStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << NodeQuotaForClusterExceededFault
        operation.errors << NodeQuotaForCustomerExceededFault
        operation.errors << NoOperationFault
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << ShardsPerClusterQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:update_multi_region_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UpdateMultiRegionCluster"
        operation.name = "UpdateMultiRegionCluster"
        operation.input = UpdateMultiRegionClusterRequest
        operation.output = UpdateMultiRegionClusterResponse
        operation.errors << InvalidMultiRegionClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << MultiRegionClusterNotFoundFault
        operation.errors << MultiRegionParameterGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:update_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UpdateParameterGroup"
        operation.name = "UpdateParameterGroup"
        operation.input = UpdateParameterGroupRequest
        operation.output = UpdateParameterGroupResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterGroupStateFault
        operation.errors << InvalidParameterValueException
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:update_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UpdateSubnetGroup"
        operation.name = "UpdateSubnetGroup"
        operation.input = UpdateSubnetGroupRequest
        operation.output = UpdateSubnetGroupResponse
        operation.errors << InvalidSubnet
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SubnetGroupNotFoundFault
        operation.errors << SubnetInUse
        operation.errors << SubnetNotAllowedFault
        operation.errors << SubnetQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.memorydb#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = UpdateUserRequest
        operation.output = UpdateUserResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidUserStateFault
        operation.errors << UserNotFoundFault
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
