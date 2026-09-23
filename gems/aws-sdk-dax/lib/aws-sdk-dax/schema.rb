# frozen_string_literal: true

# This is generated code!

module Aws::DAX
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#AvailabilityZoneList", name: "AvailabilityZoneList")
    AwsQueryErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dax#AwsQueryErrorMessage", name: "AwsQueryErrorMessage")
    ChangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dax#ChangeType", name: "ChangeType")
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#Cluster", name: "Cluster")
    ClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ClusterAlreadyExistsFault", name: "ClusterAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterEndpointEncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dax#ClusterEndpointEncryptionType", name: "ClusterEndpointEncryptionType")
    ClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#ClusterList", name: "ClusterList")
    ClusterNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#ClusterNameList", name: "ClusterNameList")
    ClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ClusterNotFoundFault", name: "ClusterNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterQuotaForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ClusterQuotaForCustomerExceededFault", name: "ClusterQuotaForCustomerExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterQuotaForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#CreateClusterRequest", name: "CreateClusterRequest")
    CreateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#CreateClusterResponse", name: "CreateClusterResponse")
    CreateParameterGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#CreateParameterGroupRequest", name: "CreateParameterGroupRequest")
    CreateParameterGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#CreateParameterGroupResponse", name: "CreateParameterGroupResponse")
    CreateSubnetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#CreateSubnetGroupRequest", name: "CreateSubnetGroupRequest")
    CreateSubnetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#CreateSubnetGroupResponse", name: "CreateSubnetGroupResponse")
    DecreaseReplicationFactorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DecreaseReplicationFactorRequest", name: "DecreaseReplicationFactorRequest")
    DecreaseReplicationFactorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DecreaseReplicationFactorResponse", name: "DecreaseReplicationFactorResponse")
    DeleteClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DeleteClusterRequest", name: "DeleteClusterRequest")
    DeleteClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DeleteClusterResponse", name: "DeleteClusterResponse")
    DeleteParameterGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DeleteParameterGroupRequest", name: "DeleteParameterGroupRequest")
    DeleteParameterGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DeleteParameterGroupResponse", name: "DeleteParameterGroupResponse")
    DeleteSubnetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DeleteSubnetGroupRequest", name: "DeleteSubnetGroupRequest")
    DeleteSubnetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DeleteSubnetGroupResponse", name: "DeleteSubnetGroupResponse")
    DescribeClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DescribeClustersRequest", name: "DescribeClustersRequest")
    DescribeClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DescribeClustersResponse", name: "DescribeClustersResponse")
    DescribeDefaultParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DescribeDefaultParametersRequest", name: "DescribeDefaultParametersRequest")
    DescribeDefaultParametersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DescribeDefaultParametersResponse", name: "DescribeDefaultParametersResponse")
    DescribeEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DescribeEventsRequest", name: "DescribeEventsRequest")
    DescribeEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DescribeEventsResponse", name: "DescribeEventsResponse")
    DescribeParameterGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DescribeParameterGroupsRequest", name: "DescribeParameterGroupsRequest")
    DescribeParameterGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DescribeParameterGroupsResponse", name: "DescribeParameterGroupsResponse")
    DescribeParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DescribeParametersRequest", name: "DescribeParametersRequest")
    DescribeParametersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DescribeParametersResponse", name: "DescribeParametersResponse")
    DescribeSubnetGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DescribeSubnetGroupsRequest", name: "DescribeSubnetGroupsRequest")
    DescribeSubnetGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#DescribeSubnetGroupsResponse", name: "DescribeSubnetGroupsResponse")
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#Endpoint", name: "Endpoint")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#Event", name: "Event")
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#EventList", name: "EventList")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dax#ExceptionMessage", name: "ExceptionMessage")
    IncreaseReplicationFactorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#IncreaseReplicationFactorRequest", name: "IncreaseReplicationFactorRequest")
    IncreaseReplicationFactorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#IncreaseReplicationFactorResponse", name: "IncreaseReplicationFactorResponse")
    InsufficientClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#InsufficientClusterCapacityFault", name: "InsufficientClusterCapacityFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dax#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dax#IntegerOptional", name: "IntegerOptional")
    InvalidARNFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#InvalidARNFault", name: "InvalidARNFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidARN", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#InvalidClusterStateFault", name: "InvalidClusterStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#InvalidParameterCombinationException", name: "InvalidParameterCombinationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterCombination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#InvalidParameterGroupStateFault", name: "InvalidParameterGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterValue", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#InvalidSubnet", name: "InvalidSubnet", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#InvalidVPCNetworkStateFault", name: "InvalidVPCNetworkStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IsModifiable = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dax#IsModifiable", name: "IsModifiable")
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#KeyList", name: "KeyList")
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ListTagsRequest", name: "ListTagsRequest")
    ListTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ListTagsResponse", name: "ListTagsResponse")
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dax#NetworkType", name: "NetworkType")
    NetworkTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#NetworkTypeList", name: "NetworkTypeList")
    Node = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#Node", name: "Node")
    NodeIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#NodeIdentifierList", name: "NodeIdentifierList")
    NodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#NodeList", name: "NodeList")
    NodeNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#NodeNotFoundFault", name: "NodeNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NodeNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NodeQuotaForClusterExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#NodeQuotaForClusterExceededFault", name: "NodeQuotaForClusterExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NodeQuotaForClusterExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeQuotaForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#NodeQuotaForCustomerExceededFault", name: "NodeQuotaForCustomerExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NodeQuotaForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeTypeSpecificValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#NodeTypeSpecificValue", name: "NodeTypeSpecificValue")
    NodeTypeSpecificValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#NodeTypeSpecificValueList", name: "NodeTypeSpecificValueList")
    NotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#NotificationConfiguration", name: "NotificationConfiguration")
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#Parameter", name: "Parameter")
    ParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ParameterGroup", name: "ParameterGroup")
    ParameterGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ParameterGroupAlreadyExistsFault", name: "ParameterGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#ParameterGroupList", name: "ParameterGroupList")
    ParameterGroupNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#ParameterGroupNameList", name: "ParameterGroupNameList")
    ParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ParameterGroupNotFoundFault", name: "ParameterGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ParameterGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ParameterGroupQuotaExceededFault", name: "ParameterGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ParameterGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ParameterGroupStatus", name: "ParameterGroupStatus")
    ParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#ParameterList", name: "ParameterList")
    ParameterNameValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ParameterNameValue", name: "ParameterNameValue")
    ParameterNameValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#ParameterNameValueList", name: "ParameterNameValueList")
    ParameterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dax#ParameterType", name: "ParameterType")
    RebootNodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#RebootNodeRequest", name: "RebootNodeRequest")
    RebootNodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#RebootNodeResponse", name: "RebootNodeResponse")
    SSEDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#SSEDescription", name: "SSEDescription")
    SSEEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dax#SSEEnabled", name: "SSEEnabled")
    SSESpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#SSESpecification", name: "SSESpecification")
    SSEStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dax#SSEStatus", name: "SSEStatus")
    SecurityGroupIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#SecurityGroupIdentifierList", name: "SecurityGroupIdentifierList")
    SecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#SecurityGroupMembership", name: "SecurityGroupMembership")
    SecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#SecurityGroupMembershipList", name: "SecurityGroupMembershipList")
    ServiceLinkedRoleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ServiceLinkedRoleNotFoundFault", name: "ServiceLinkedRoleNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceLinkedRoleNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceQuotaExceeded", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dax#SourceType", name: "SourceType")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dax#String", name: "String")
    Subnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#Subnet", name: "Subnet")
    SubnetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#SubnetGroup", name: "SubnetGroup")
    SubnetGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#SubnetGroupAlreadyExistsFault", name: "SubnetGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetGroupInUseFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#SubnetGroupInUseFault", name: "SubnetGroupInUseFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#SubnetGroupList", name: "SubnetGroupList")
    SubnetGroupNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#SubnetGroupNameList", name: "SubnetGroupNameList")
    SubnetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#SubnetGroupNotFoundFault", name: "SubnetGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubnetGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#SubnetGroupQuotaExceededFault", name: "SubnetGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#SubnetIdentifierList", name: "SubnetIdentifierList")
    SubnetInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#SubnetInUse", name: "SubnetInUse", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#SubnetList", name: "SubnetList")
    SubnetNotAllowedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#SubnetNotAllowedFault", name: "SubnetNotAllowedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetNotAllowedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#SubnetQuotaExceededFault", name: "SubnetQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dax#TStamp", name: "TStamp")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#Tag", name: "Tag")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dax#TagList", name: "TagList")
    TagNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#TagNotFoundFault", name: "TagNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "TagNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TagQuotaPerResourceExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#TagQuotaPerResourceExceeded", name: "TagQuotaPerResourceExceeded", traits: {"aws.protocols#awsQueryError" => {"code" => "TagQuotaPerResourceExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#TagResourceResponse", name: "TagResourceResponse")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#UpdateClusterRequest", name: "UpdateClusterRequest")
    UpdateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#UpdateClusterResponse", name: "UpdateClusterResponse")
    UpdateParameterGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#UpdateParameterGroupRequest", name: "UpdateParameterGroupRequest")
    UpdateParameterGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#UpdateParameterGroupResponse", name: "UpdateParameterGroupResponse")
    UpdateSubnetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#UpdateSubnetGroupRequest", name: "UpdateSubnetGroupRequest")
    UpdateSubnetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dax#UpdateSubnetGroupResponse", name: "UpdateSubnetGroupResponse")

    AvailabilityZoneList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ChangeType.add_member(:immediate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMMEDIATE", traits: {"smithy.api#enumValue" => "IMMEDIATE"}))
    ChangeType.add_member(:requires_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRES_REBOOT", traits: {"smithy.api#enumValue" => "REQUIRES_REBOOT"}))
    Cluster.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName"))
    Cluster.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Cluster.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn"))
    Cluster.add_member(:total_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "TotalNodes"))
    Cluster.add_member(:active_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ActiveNodes"))
    Cluster.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    Cluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    Cluster.add_member(:cluster_discovery_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "ClusterDiscoveryEndpoint"))
    Cluster.add_member(:node_ids_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeIdentifierList, name: "NodeIdsToRemove"))
    Cluster.add_member(:nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeList, name: "Nodes"))
    Cluster.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    Cluster.add_member(:notification_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfiguration, name: "NotificationConfiguration"))
    Cluster.add_member(:subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroup"))
    Cluster.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupMembershipList, name: "SecurityGroups"))
    Cluster.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRoleArn"))
    Cluster.add_member(:parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroupStatus, name: "ParameterGroup"))
    Cluster.add_member(:sse_description, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEDescription, name: "SSEDescription"))
    Cluster.add_member(:cluster_endpoint_encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterEndpointEncryptionType, name: "ClusterEndpointEncryptionType"))
    Cluster.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    Cluster.type = Types::Cluster
    ClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterAlreadyExistsFault.type = Types::ClusterAlreadyExistsFault
    ClusterEndpointEncryptionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ClusterEndpointEncryptionType.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS", traits: {"smithy.api#enumValue" => "TLS"}))
    ClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "member"))
    ClusterNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterNotFoundFault.type = Types::ClusterNotFoundFault
    ClusterQuotaForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterQuotaForCustomerExceededFault.type = Types::ClusterQuotaForCustomerExceededFault
    CreateClusterRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateClusterRequest.add_member(:replication_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ReplicationFactor", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneList, name: "AvailabilityZones"))
    CreateClusterRequest.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupName"))
    CreateClusterRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdentifierList, name: "SecurityGroupIds"))
    CreateClusterRequest.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    CreateClusterRequest.add_member(:notification_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NotificationTopicArn"))
    CreateClusterRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName"))
    CreateClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateClusterRequest.add_member(:sse_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: SSESpecification, name: "SSESpecification"))
    CreateClusterRequest.add_member(:cluster_endpoint_encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterEndpointEncryptionType, name: "ClusterEndpointEncryptionType"))
    CreateClusterRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateParameterGroupRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName", traits: {"smithy.api#required" => {}}))
    CreateParameterGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateParameterGroupRequest.type = Types::CreateParameterGroupRequest
    CreateParameterGroupResponse.add_member(:parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroup, name: "ParameterGroup"))
    CreateParameterGroupResponse.type = Types::CreateParameterGroupResponse
    CreateSubnetGroupRequest.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupName", traits: {"smithy.api#required" => {}}))
    CreateSubnetGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateSubnetGroupRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    CreateSubnetGroupRequest.type = Types::CreateSubnetGroupRequest
    CreateSubnetGroupResponse.add_member(:subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetGroup, name: "SubnetGroup"))
    CreateSubnetGroupResponse.type = Types::CreateSubnetGroupResponse
    DecreaseReplicationFactorRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName", traits: {"smithy.api#required" => {}}))
    DecreaseReplicationFactorRequest.add_member(:new_replication_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NewReplicationFactor", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DecreaseReplicationFactorRequest.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneList, name: "AvailabilityZones"))
    DecreaseReplicationFactorRequest.add_member(:node_ids_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeIdentifierList, name: "NodeIdsToRemove"))
    DecreaseReplicationFactorRequest.type = Types::DecreaseReplicationFactorRequest
    DecreaseReplicationFactorResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    DecreaseReplicationFactorResponse.type = Types::DecreaseReplicationFactorResponse
    DeleteClusterRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName", traits: {"smithy.api#required" => {}}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteParameterGroupRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName", traits: {"smithy.api#required" => {}}))
    DeleteParameterGroupRequest.type = Types::DeleteParameterGroupRequest
    DeleteParameterGroupResponse.add_member(:deletion_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeletionMessage"))
    DeleteParameterGroupResponse.type = Types::DeleteParameterGroupResponse
    DeleteSubnetGroupRequest.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupName", traits: {"smithy.api#required" => {}}))
    DeleteSubnetGroupRequest.type = Types::DeleteSubnetGroupRequest
    DeleteSubnetGroupResponse.add_member(:deletion_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeletionMessage"))
    DeleteSubnetGroupResponse.type = Types::DeleteSubnetGroupResponse
    DescribeClustersRequest.add_member(:cluster_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterNameList, name: "ClusterNames"))
    DescribeClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxResults"))
    DescribeClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeClustersRequest.type = Types::DescribeClustersRequest
    DescribeClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeClustersResponse.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterList, name: "Clusters"))
    DescribeClustersResponse.type = Types::DescribeClustersResponse
    DescribeDefaultParametersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxResults"))
    DescribeDefaultParametersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeDefaultParametersRequest.type = Types::DescribeDefaultParametersRequest
    DescribeDefaultParametersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeDefaultParametersResponse.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterList, name: "Parameters"))
    DescribeDefaultParametersResponse.type = Types::DescribeDefaultParametersResponse
    DescribeEventsRequest.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceName"))
    DescribeEventsRequest.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    DescribeEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    DescribeEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    DescribeEventsRequest.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Duration"))
    DescribeEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxResults"))
    DescribeEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeEventsRequest.type = Types::DescribeEventsRequest
    DescribeEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, name: "Events"))
    DescribeEventsResponse.type = Types::DescribeEventsResponse
    DescribeParameterGroupsRequest.add_member(:parameter_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroupNameList, name: "ParameterGroupNames"))
    DescribeParameterGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxResults"))
    DescribeParameterGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeParameterGroupsRequest.type = Types::DescribeParameterGroupsRequest
    DescribeParameterGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeParameterGroupsResponse.add_member(:parameter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroupList, name: "ParameterGroups"))
    DescribeParameterGroupsResponse.type = Types::DescribeParameterGroupsResponse
    DescribeParametersRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName", traits: {"smithy.api#required" => {}}))
    DescribeParametersRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    DescribeParametersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxResults"))
    DescribeParametersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeParametersRequest.type = Types::DescribeParametersRequest
    DescribeParametersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeParametersResponse.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterList, name: "Parameters"))
    DescribeParametersResponse.type = Types::DescribeParametersResponse
    DescribeSubnetGroupsRequest.add_member(:subnet_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetGroupNameList, name: "SubnetGroupNames"))
    DescribeSubnetGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxResults"))
    DescribeSubnetGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeSubnetGroupsRequest.type = Types::DescribeSubnetGroupsRequest
    DescribeSubnetGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeSubnetGroupsResponse.add_member(:subnet_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetGroupList, name: "SubnetGroups"))
    DescribeSubnetGroupsResponse.type = Types::DescribeSubnetGroupsResponse
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Address"))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port", traits: {"smithy.api#default" => 0}))
    Endpoint.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "URL"))
    Endpoint.type = Types::Endpoint
    Event.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceName"))
    Event.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    Event.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    Event.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "Date"))
    Event.type = Types::Event
    EventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member"))
    IncreaseReplicationFactorRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName", traits: {"smithy.api#required" => {}}))
    IncreaseReplicationFactorRequest.add_member(:new_replication_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NewReplicationFactor", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    IncreaseReplicationFactorRequest.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneList, name: "AvailabilityZones"))
    IncreaseReplicationFactorRequest.type = Types::IncreaseReplicationFactorRequest
    IncreaseReplicationFactorResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    IncreaseReplicationFactorResponse.type = Types::IncreaseReplicationFactorResponse
    InsufficientClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InsufficientClusterCapacityFault.type = Types::InsufficientClusterCapacityFault
    InvalidARNFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidARNFault.type = Types::InvalidARNFault
    InvalidClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidClusterStateFault.type = Types::InvalidClusterStateFault
    InvalidParameterCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsQueryErrorMessage, name: "message"))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidParameterGroupStateFault.type = Types::InvalidParameterGroupStateFault
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsQueryErrorMessage, name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidVPCNetworkStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    IsModifiable.add_member(:true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUE", traits: {"smithy.api#enumValue" => "TRUE"}))
    IsModifiable.add_member(:false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FALSE", traits: {"smithy.api#enumValue" => "FALSE"}))
    IsModifiable.add_member(:conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONDITIONAL", traits: {"smithy.api#enumValue" => "CONDITIONAL"}))
    KeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ListTagsRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    ListTagsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListTagsResponse.type = Types::ListTagsResponse
    NetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "ipv4"}))
    NetworkType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "ipv6"}))
    NetworkType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "dual_stack"}))
    NetworkTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "member"))
    Node.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeId"))
    Node.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "Endpoint"))
    Node.add_member(:node_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NodeCreateTime"))
    Node.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    Node.add_member(:node_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeStatus"))
    Node.add_member(:parameter_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupStatus"))
    Node.type = Types::Node
    NodeIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    NodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Node, name: "member"))
    NodeNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    NodeNotFoundFault.type = Types::NodeNotFoundFault
    NodeQuotaForClusterExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    NodeQuotaForClusterExceededFault.type = Types::NodeQuotaForClusterExceededFault
    NodeQuotaForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    NodeQuotaForCustomerExceededFault.type = Types::NodeQuotaForCustomerExceededFault
    NodeTypeSpecificValue.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    NodeTypeSpecificValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    NodeTypeSpecificValue.type = Types::NodeTypeSpecificValue
    NodeTypeSpecificValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeTypeSpecificValue, name: "member"))
    NotificationConfiguration.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicArn"))
    NotificationConfiguration.add_member(:topic_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicStatus"))
    NotificationConfiguration.type = Types::NotificationConfiguration
    Parameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterName"))
    Parameter.add_member(:parameter_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterType, name: "ParameterType"))
    Parameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterValue"))
    Parameter.add_member(:node_type_specific_values, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeTypeSpecificValueList, name: "NodeTypeSpecificValues"))
    Parameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Parameter.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    Parameter.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataType"))
    Parameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AllowedValues"))
    Parameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::MemberShape.new(target: IsModifiable, name: "IsModifiable"))
    Parameter.add_member(:change_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeType, name: "ChangeType"))
    Parameter.type = Types::Parameter
    ParameterGroup.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName"))
    ParameterGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ParameterGroup.type = Types::ParameterGroup
    ParameterGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ParameterGroupAlreadyExistsFault.type = Types::ParameterGroupAlreadyExistsFault
    ParameterGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroup, name: "member"))
    ParameterGroupNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ParameterGroupNotFoundFault.type = Types::ParameterGroupNotFoundFault
    ParameterGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ParameterGroupQuotaExceededFault.type = Types::ParameterGroupQuotaExceededFault
    ParameterGroupStatus.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName"))
    ParameterGroupStatus.add_member(:parameter_apply_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterApplyStatus"))
    ParameterGroupStatus.add_member(:node_ids_to_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeIdentifierList, name: "NodeIdsToReboot"))
    ParameterGroupStatus.type = Types::ParameterGroupStatus
    ParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "member"))
    ParameterNameValue.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterName"))
    ParameterNameValue.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterValue"))
    ParameterNameValue.type = Types::ParameterNameValue
    ParameterNameValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameValue, name: "member"))
    ParameterType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ParameterType.add_member(:node_type_specific, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODE_TYPE_SPECIFIC", traits: {"smithy.api#enumValue" => "NODE_TYPE_SPECIFIC"}))
    RebootNodeRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName", traits: {"smithy.api#required" => {}}))
    RebootNodeRequest.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeId", traits: {"smithy.api#required" => {}}))
    RebootNodeRequest.type = Types::RebootNodeRequest
    RebootNodeResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    RebootNodeResponse.type = Types::RebootNodeResponse
    SSEDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEStatus, name: "Status"))
    SSEDescription.type = Types::SSEDescription
    SSESpecification.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEEnabled, name: "Enabled", traits: {"smithy.api#required" => {}}))
    SSESpecification.type = Types::SSESpecification
    SSEStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    SSEStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    SSEStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    SSEStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SecurityGroupIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SecurityGroupMembership.add_member(:security_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecurityGroupIdentifier"))
    SecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    SecurityGroupMembership.type = Types::SecurityGroupMembership
    SecurityGroupMembershipList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupMembership, name: "member"))
    ServiceLinkedRoleNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServiceLinkedRoleNotFoundFault.type = Types::ServiceLinkedRoleNotFoundFault
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceType.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER", traits: {"smithy.api#enumValue" => "CLUSTER"}))
    SourceType.add_member(:parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARAMETER_GROUP", traits: {"smithy.api#enumValue" => "PARAMETER_GROUP"}))
    SourceType.add_member(:subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNET_GROUP", traits: {"smithy.api#enumValue" => "SUBNET_GROUP"}))
    Subnet.add_member(:subnet_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetAvailabilityZone"))
    Subnet.add_member(:supported_network_types, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTypeList, name: "SupportedNetworkTypes"))
    Subnet.type = Types::Subnet
    SubnetGroup.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupName"))
    SubnetGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    SubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    SubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, name: "Subnets"))
    SubnetGroup.add_member(:supported_network_types, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTypeList, name: "SupportedNetworkTypes"))
    SubnetGroup.type = Types::SubnetGroup
    SubnetGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubnetGroupAlreadyExistsFault.type = Types::SubnetGroupAlreadyExistsFault
    SubnetGroupInUseFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubnetGroupInUseFault.type = Types::SubnetGroupInUseFault
    SubnetGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetGroup, name: "member"))
    SubnetGroupNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SubnetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubnetGroupNotFoundFault.type = Types::SubnetGroupNotFoundFault
    SubnetGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubnetGroupQuotaExceededFault.type = Types::SubnetGroupQuotaExceededFault
    SubnetIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SubnetInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubnetInUse.type = Types::SubnetInUse
    SubnetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnet, name: "member"))
    SubnetNotAllowedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubnetNotAllowedFault.type = Types::SubnetNotAllowedFault
    SubnetQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubnetQuotaExceededFault.type = Types::SubnetQuotaExceededFault
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TagNotFoundFault.type = Types::TagNotFoundFault
    TagQuotaPerResourceExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TagQuotaPerResourceExceeded.type = Types::TagQuotaPerResourceExceeded
    TagResourceRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    TagResourceResponse.type = Types::TagResourceResponse
    UntagResourceRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateClusterRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName", traits: {"smithy.api#required" => {}}))
    UpdateClusterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UpdateClusterRequest.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    UpdateClusterRequest.add_member(:notification_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NotificationTopicArn"))
    UpdateClusterRequest.add_member(:notification_topic_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NotificationTopicStatus"))
    UpdateClusterRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName"))
    UpdateClusterRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdentifierList, name: "SecurityGroupIds"))
    UpdateClusterRequest.type = Types::UpdateClusterRequest
    UpdateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    UpdateClusterResponse.type = Types::UpdateClusterResponse
    UpdateParameterGroupRequest.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName", traits: {"smithy.api#required" => {}}))
    UpdateParameterGroupRequest.add_member(:parameter_name_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameValueList, name: "ParameterNameValues", traits: {"smithy.api#required" => {}}))
    UpdateParameterGroupRequest.type = Types::UpdateParameterGroupRequest
    UpdateParameterGroupResponse.add_member(:parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroup, name: "ParameterGroup"))
    UpdateParameterGroupResponse.type = Types::UpdateParameterGroupResponse
    UpdateSubnetGroupRequest.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupName", traits: {"smithy.api#required" => {}}))
    UpdateSubnetGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UpdateSubnetGroupRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, name: "SubnetIds"))
    UpdateSubnetGroupRequest.type = Types::UpdateSubnetGroupRequest
    UpdateSubnetGroupResponse.add_member(:subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetGroup, name: "SubnetGroup"))
    UpdateSubnetGroupResponse.type = Types::UpdateSubnetGroupResponse

    AmazonDAXV3 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.dax#AmazonDAXV3"
      service.name = "AmazonDAXV3"
      service.version = "2017-04-19"
      service.traits = {"aws.api#service" => {"sdkId" => "DAX", "arnNamespace" => "dax", "cloudFormationName" => "DAX", "cloudTrailEventSource" => "dax.amazonaws.com", "endpointPrefix" => "dax"}, "aws.auth#sigv4" => {"name" => "dax"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon DynamoDB Accelerator (DAX)", "smithy.api#xmlNamespace" => {"uri" => "http://dax.amazonaws.com/doc/2017-04-19/"}}
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = CreateClusterRequest
        operation.output = CreateClusterResponse
        operation.errors << ClusterAlreadyExistsFault
        operation.errors << ClusterQuotaForCustomerExceededFault
        operation.errors << InsufficientClusterCapacityFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterGroupStateFault
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << NodeQuotaForClusterExceededFault
        operation.errors << NodeQuotaForCustomerExceededFault
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << ServiceQuotaExceededException
        operation.errors << SubnetGroupNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#CreateParameterGroup"
        operation.name = "CreateParameterGroup"
        operation.input = CreateParameterGroupRequest
        operation.output = CreateParameterGroupResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterGroupStateFault
        operation.errors << InvalidParameterValueException
        operation.errors << ParameterGroupAlreadyExistsFault
        operation.errors << ParameterGroupQuotaExceededFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:create_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#CreateSubnetGroup"
        operation.name = "CreateSubnetGroup"
        operation.input = CreateSubnetGroupRequest
        operation.output = CreateSubnetGroupResponse
        operation.errors << InvalidSubnet
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SubnetGroupAlreadyExistsFault
        operation.errors << SubnetGroupQuotaExceededFault
        operation.errors << SubnetNotAllowedFault
        operation.errors << SubnetQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:decrease_replication_factor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DecreaseReplicationFactor"
        operation.name = "DecreaseReplicationFactor"
        operation.input = DecreaseReplicationFactorRequest
        operation.output = DecreaseReplicationFactorResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << NodeNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = DeleteClusterRequest
        operation.output = DeleteClusterResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DeleteParameterGroup"
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
      service.add_operation(:delete_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DeleteSubnetGroup"
        operation.name = "DeleteSubnetGroup"
        operation.input = DeleteSubnetGroupRequest
        operation.output = DeleteSubnetGroupResponse
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SubnetGroupInUseFault
        operation.errors << SubnetGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DescribeClusters"
        operation.name = "DescribeClusters"
        operation.input = DescribeClustersRequest
        operation.output = DescribeClustersResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_default_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DescribeDefaultParameters"
        operation.name = "DescribeDefaultParameters"
        operation.input = DescribeDefaultParametersRequest
        operation.output = DescribeDefaultParametersResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = DescribeEventsRequest
        operation.output = DescribeEventsResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DescribeParameterGroups"
        operation.name = "DescribeParameterGroups"
        operation.input = DescribeParameterGroupsRequest
        operation.output = DescribeParameterGroupsResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DescribeParameters"
        operation.name = "DescribeParameters"
        operation.input = DescribeParametersRequest
        operation.output = DescribeParametersResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DescribeSubnetGroups"
        operation.name = "DescribeSubnetGroups"
        operation.input = DescribeSubnetGroupsRequest
        operation.output = DescribeSubnetGroupsResponse
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << SubnetGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:increase_replication_factor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#IncreaseReplicationFactor"
        operation.name = "IncreaseReplicationFactor"
        operation.input = IncreaseReplicationFactorRequest
        operation.output = IncreaseReplicationFactorResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InsufficientClusterCapacityFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << NodeQuotaForClusterExceededFault
        operation.errors << NodeQuotaForCustomerExceededFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#ListTags"
        operation.name = "ListTags"
        operation.input = ListTagsRequest
        operation.output = ListTagsResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidARNFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:reboot_node, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#RebootNode"
        operation.name = "RebootNode"
        operation.input = RebootNodeRequest
        operation.output = RebootNodeResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << NodeNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidARNFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidARNFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << TagNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:update_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = UpdateClusterRequest
        operation.output = UpdateClusterResponse
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterGroupStateFault
        operation.errors << InvalidParameterValueException
        operation.errors << ParameterGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:update_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#UpdateParameterGroup"
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
        operation.id = "com.amazonaws.dax#UpdateSubnetGroup"
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
