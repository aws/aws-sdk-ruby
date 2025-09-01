# frozen_string_literal: true

# This is generated code!

module Aws::DAX
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AvailabilityZoneList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#AvailabilityZoneList', name: 'AvailabilityZoneList')
    AwsQueryErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dax#AwsQueryErrorMessage', name: 'AwsQueryErrorMessage')
    ChangeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.dax#ChangeType', name: 'ChangeType')
    Cluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#Cluster', name: 'Cluster')
    ClusterAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ClusterAlreadyExistsFault', name: 'ClusterAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterEndpointEncryptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.dax#ClusterEndpointEncryptionType', name: 'ClusterEndpointEncryptionType')
    ClusterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#ClusterList', name: 'ClusterList')
    ClusterNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#ClusterNameList', name: 'ClusterNameList')
    ClusterNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ClusterNotFoundFault', name: 'ClusterNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterQuotaForCustomerExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ClusterQuotaForCustomerExceededFault', name: 'ClusterQuotaForCustomerExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterQuotaForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#CreateClusterRequest', name: 'CreateClusterRequest')
    CreateClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#CreateClusterResponse', name: 'CreateClusterResponse')
    CreateParameterGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#CreateParameterGroupRequest', name: 'CreateParameterGroupRequest')
    CreateParameterGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#CreateParameterGroupResponse', name: 'CreateParameterGroupResponse')
    CreateSubnetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#CreateSubnetGroupRequest', name: 'CreateSubnetGroupRequest')
    CreateSubnetGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#CreateSubnetGroupResponse', name: 'CreateSubnetGroupResponse')
    DecreaseReplicationFactorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DecreaseReplicationFactorRequest', name: 'DecreaseReplicationFactorRequest')
    DecreaseReplicationFactorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DecreaseReplicationFactorResponse', name: 'DecreaseReplicationFactorResponse')
    DeleteClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DeleteClusterRequest', name: 'DeleteClusterRequest')
    DeleteClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DeleteClusterResponse', name: 'DeleteClusterResponse')
    DeleteParameterGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DeleteParameterGroupRequest', name: 'DeleteParameterGroupRequest')
    DeleteParameterGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DeleteParameterGroupResponse', name: 'DeleteParameterGroupResponse')
    DeleteSubnetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DeleteSubnetGroupRequest', name: 'DeleteSubnetGroupRequest')
    DeleteSubnetGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DeleteSubnetGroupResponse', name: 'DeleteSubnetGroupResponse')
    DescribeClustersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DescribeClustersRequest', name: 'DescribeClustersRequest')
    DescribeClustersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DescribeClustersResponse', name: 'DescribeClustersResponse')
    DescribeDefaultParametersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DescribeDefaultParametersRequest', name: 'DescribeDefaultParametersRequest')
    DescribeDefaultParametersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DescribeDefaultParametersResponse', name: 'DescribeDefaultParametersResponse')
    DescribeEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DescribeEventsRequest', name: 'DescribeEventsRequest')
    DescribeEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DescribeEventsResponse', name: 'DescribeEventsResponse')
    DescribeParameterGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DescribeParameterGroupsRequest', name: 'DescribeParameterGroupsRequest')
    DescribeParameterGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DescribeParameterGroupsResponse', name: 'DescribeParameterGroupsResponse')
    DescribeParametersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DescribeParametersRequest', name: 'DescribeParametersRequest')
    DescribeParametersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DescribeParametersResponse', name: 'DescribeParametersResponse')
    DescribeSubnetGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DescribeSubnetGroupsRequest', name: 'DescribeSubnetGroupsRequest')
    DescribeSubnetGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#DescribeSubnetGroupsResponse', name: 'DescribeSubnetGroupsResponse')
    Endpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#Endpoint', name: 'Endpoint')
    Event = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#Event', name: 'Event')
    EventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#EventList', name: 'EventList')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dax#ExceptionMessage', name: 'ExceptionMessage')
    IncreaseReplicationFactorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#IncreaseReplicationFactorRequest', name: 'IncreaseReplicationFactorRequest')
    IncreaseReplicationFactorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#IncreaseReplicationFactorResponse', name: 'IncreaseReplicationFactorResponse')
    InsufficientClusterCapacityFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#InsufficientClusterCapacityFault', name: 'InsufficientClusterCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.dax#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    IntegerOptional = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.dax#IntegerOptional', name: 'IntegerOptional')
    InvalidARNFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#InvalidARNFault', name: 'InvalidARNFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidARN", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#InvalidClusterStateFault', name: 'InvalidClusterStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#InvalidParameterCombinationException', name: 'InvalidParameterCombinationException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterCombination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterGroupStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#InvalidParameterGroupStateFault', name: 'InvalidParameterGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#InvalidParameterValueException', name: 'InvalidParameterValueException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterValue", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#InvalidSubnet', name: 'InvalidSubnet', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#InvalidVPCNetworkStateFault', name: 'InvalidVPCNetworkStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IsModifiable = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.dax#IsModifiable', name: 'IsModifiable')
    KeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#KeyList', name: 'KeyList')
    ListTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ListTagsRequest', name: 'ListTagsRequest')
    ListTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ListTagsResponse', name: 'ListTagsResponse')
    Node = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#Node', name: 'Node')
    NodeIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#NodeIdentifierList', name: 'NodeIdentifierList')
    NodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#NodeList', name: 'NodeList')
    NodeNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#NodeNotFoundFault', name: 'NodeNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NodeNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NodeQuotaForClusterExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#NodeQuotaForClusterExceededFault', name: 'NodeQuotaForClusterExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NodeQuotaForClusterExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeQuotaForCustomerExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#NodeQuotaForCustomerExceededFault', name: 'NodeQuotaForCustomerExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NodeQuotaForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeTypeSpecificValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#NodeTypeSpecificValue', name: 'NodeTypeSpecificValue')
    NodeTypeSpecificValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#NodeTypeSpecificValueList', name: 'NodeTypeSpecificValueList')
    NotificationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#NotificationConfiguration', name: 'NotificationConfiguration')
    Parameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#Parameter', name: 'Parameter')
    ParameterGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ParameterGroup', name: 'ParameterGroup')
    ParameterGroupAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ParameterGroupAlreadyExistsFault', name: 'ParameterGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ParameterGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#ParameterGroupList', name: 'ParameterGroupList')
    ParameterGroupNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#ParameterGroupNameList', name: 'ParameterGroupNameList')
    ParameterGroupNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ParameterGroupNotFoundFault', name: 'ParameterGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ParameterGroupQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ParameterGroupQuotaExceededFault', name: 'ParameterGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ParameterGroupStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ParameterGroupStatus', name: 'ParameterGroupStatus')
    ParameterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#ParameterList', name: 'ParameterList')
    ParameterNameValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ParameterNameValue', name: 'ParameterNameValue')
    ParameterNameValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#ParameterNameValueList', name: 'ParameterNameValueList')
    ParameterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.dax#ParameterType', name: 'ParameterType')
    RebootNodeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#RebootNodeRequest', name: 'RebootNodeRequest')
    RebootNodeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#RebootNodeResponse', name: 'RebootNodeResponse')
    SSEDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#SSEDescription', name: 'SSEDescription')
    SSEEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.dax#SSEEnabled', name: 'SSEEnabled')
    SSESpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#SSESpecification', name: 'SSESpecification')
    SSEStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.dax#SSEStatus', name: 'SSEStatus')
    SecurityGroupIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#SecurityGroupIdentifierList', name: 'SecurityGroupIdentifierList')
    SecurityGroupMembership = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#SecurityGroupMembership', name: 'SecurityGroupMembership')
    SecurityGroupMembershipList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#SecurityGroupMembershipList', name: 'SecurityGroupMembershipList')
    ServiceLinkedRoleNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ServiceLinkedRoleNotFoundFault', name: 'ServiceLinkedRoleNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceLinkedRoleNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceQuotaExceeded", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.dax#SourceType', name: 'SourceType')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dax#String', name: 'String')
    Subnet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#Subnet', name: 'Subnet')
    SubnetGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#SubnetGroup', name: 'SubnetGroup')
    SubnetGroupAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#SubnetGroupAlreadyExistsFault', name: 'SubnetGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetGroupInUseFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#SubnetGroupInUseFault', name: 'SubnetGroupInUseFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#SubnetGroupList', name: 'SubnetGroupList')
    SubnetGroupNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#SubnetGroupNameList', name: 'SubnetGroupNameList')
    SubnetGroupNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#SubnetGroupNotFoundFault', name: 'SubnetGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubnetGroupQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#SubnetGroupQuotaExceededFault', name: 'SubnetGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#SubnetIdentifierList', name: 'SubnetIdentifierList')
    SubnetInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#SubnetInUse', name: 'SubnetInUse', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#SubnetList', name: 'SubnetList')
    SubnetQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#SubnetQuotaExceededFault', name: 'SubnetQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.dax#TStamp', name: 'TStamp')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#Tag', name: 'Tag')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dax#TagList', name: 'TagList')
    TagNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#TagNotFoundFault', name: 'TagNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TagNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TagQuotaPerResourceExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#TagQuotaPerResourceExceeded', name: 'TagQuotaPerResourceExceeded', traits: {"aws.protocols#awsQueryError" => {"code" => "TagQuotaPerResourceExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#TagResourceResponse', name: 'TagResourceResponse')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#UpdateClusterRequest', name: 'UpdateClusterRequest')
    UpdateClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#UpdateClusterResponse', name: 'UpdateClusterResponse')
    UpdateParameterGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#UpdateParameterGroupRequest', name: 'UpdateParameterGroupRequest')
    UpdateParameterGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#UpdateParameterGroupResponse', name: 'UpdateParameterGroupResponse')
    UpdateSubnetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#UpdateSubnetGroupRequest', name: 'UpdateSubnetGroupRequest')
    UpdateSubnetGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dax#UpdateSubnetGroupResponse', name: 'UpdateSubnetGroupResponse')

    AvailabilityZoneList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ChangeType.add_member(:immediate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMMEDIATE', traits: {"smithy.api#enumValue" => "IMMEDIATE"}))
    ChangeType.add_member(:requires_reboot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRES_REBOOT', traits: {"smithy.api#enumValue" => "REQUIRES_REBOOT"}))
    Cluster.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the DAX cluster.</p>"}))
    Cluster.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the cluster.</p>"}))
    Cluster.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.\n        </p>"}))
    Cluster.add_member(:total_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'TotalNodes', traits: {"smithy.api#documentation" => "<p>The total number of nodes in the cluster.</p>"}))
    Cluster.add_member(:active_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ActiveNodes', traits: {"smithy.api#documentation" => "<p>The number of nodes in the cluster that are active (i.e., capable of serving\n            requests).</p>"}))
    Cluster.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type for the nodes in the cluster. (All nodes in a DAX cluster are of\n            the same type.)</p>"}))
    Cluster.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the cluster.</p>"}))
    Cluster.add_member(:cluster_discovery_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'ClusterDiscoveryEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint for this DAX cluster, consisting of a DNS name, a port number,\n             and a URL. Applications should use the URL to configure the DAX client to find\n             their cluster.</p>"}))
    Cluster.add_member(:node_ids_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeIdentifierList, location_name: 'NodeIdsToRemove', traits: {"smithy.api#documentation" => "<p>A list of nodes to be removed from the cluster.</p>"}))
    Cluster.add_member(:nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeList, location_name: 'Nodes', traits: {"smithy.api#documentation" => "<p>A list of nodes that are currently in the cluster.</p>"}))
    Cluster.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>A range of time when maintenance of DAX cluster software will be performed. For\n            example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than\n            30 minutes, and is performed automatically within the maintenance window.</p>"}))
    Cluster.add_member(:notification_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: 'NotificationConfiguration', traits: {"smithy.api#documentation" => "<p>Describes a notification topic and its status. Notification topics are used for\n            publishing DAX events to subscribers using Amazon Simple Notification Service\n            (SNS).</p>"}))
    Cluster.add_member(:subnet_group, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroup', traits: {"smithy.api#documentation" => "<p>The subnet group where the DAX cluster is running.</p>"}))
    Cluster.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupMembershipList, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>A list of security groups, and the status of each, for the nodes in the cluster.</p>"}))
    Cluster.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX\n            will assume this role and use the role's permissions to access DynamoDB on your\n            behalf.</p>"}))
    Cluster.add_member(:parameter_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupStatus, location_name: 'ParameterGroup', traits: {"smithy.api#documentation" => "<p>The parameter group being used by nodes in the cluster.</p>"}))
    Cluster.add_member(:sse_description, Smithy::Schema::Shapes::ShapeRef.new(shape: SSEDescription, location_name: 'SSEDescription', traits: {"smithy.api#documentation" => "<p>The description of the server-side encryption status on the specified DAX cluster.</p>"}))
    Cluster.add_member(:cluster_endpoint_encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterEndpointEncryptionType, location_name: 'ClusterEndpointEncryptionType', traits: {"smithy.api#documentation" => "<p>The type of encryption supported by the cluster's endpoint. Values are:</p>\n        <ul>\n            <li>\n                <p>\n                  <code>NONE</code> for no encryption</p>\n                <p>\n                  <code>TLS</code> for Transport Layer Security</p>\n            </li>\n         </ul>"}))
    Cluster.type = Types::Cluster
    ClusterAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterAlreadyExistsFault.type = Types::ClusterAlreadyExistsFault
    ClusterEndpointEncryptionType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ClusterEndpointEncryptionType.add_member(:tls, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS', traits: {"smithy.api#enumValue" => "TLS"}))
    ClusterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster)
    ClusterNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ClusterNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterNotFoundFault.type = Types::ClusterNotFoundFault
    ClusterQuotaForCustomerExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterQuotaForCustomerExceededFault.type = Types::ClusterQuotaForCustomerExceededFault
    CreateClusterRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The cluster identifier. This parameter is stored as a lowercase\n            string.</p>\n        <p>\n            <b>Constraints:</b>\n        </p>\n        <ul>\n            <li>\n                <p>A name must contain from 1 to 20 alphanumeric characters or\n                    hyphens.</p>\n            </li>\n            <li>\n                <p>The first character must be a letter.</p>\n            </li>\n            <li>\n                <p>A name cannot end with a hyphen or contain two consecutive\n                    hyphens.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The compute and memory capacity of the nodes in the cluster.</p>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the cluster.</p>"}))
    CreateClusterRequest.add_member(:replication_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ReplicationFactor', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of nodes in the DAX cluster. A replication factor of 1 will\n            create a single-node cluster, without any read replicas. For additional fault tolerance,\n            you can create a multiple node cluster with one or more read replicas. To do this, set\n                <code>ReplicationFactor</code> to a number between 3 (one primary and two read replicas) and 10 (one primary and nine read replicas). \n                 <code>If the AvailabilityZones</code> parameter is provided, its length must equal the <code>ReplicationFactor</code>.</p>\n        <note>\n            <p>AWS recommends that you have at least two read replicas per cluster.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>The Availability Zones (AZs) in which the cluster nodes will reside after the cluster\n         has been created or updated. If provided, the length of this list must equal the <code>ReplicationFactor</code> parameter.\n         If you omit this parameter, DAX will spread the nodes across Availability Zones for the highest availability.</p>"}))
    CreateClusterRequest.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group to be used for the replication group.</p>\n        <important>\n            <p>DAX clusters can only run in an Amazon VPC environment. All of the subnets\n                that you specify in a subnet group must exist in the same VPC.</p>\n        </important>"}))
    CreateClusterRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdentifierList, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of security group IDs to be assigned to each node in the DAX cluster. (Each of the \n             security group ID is system-generated.)</p>\n        <p>If this parameter is not specified, DAX assigns the default VPC security group to\n            each node.</p>"}))
    CreateClusterRequest.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>Specifies the weekly time range during which maintenance on the DAX cluster is\n            performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock\n            UTC). The minimum maintenance window is a 60 minute period. Valid values for\n                <code>ddd</code> are:</p>\n        <ul>\n            <li>\n                <p>\n                    <code>sun</code>\n                </p>\n            </li>\n            <li>\n                <p>\n                    <code>mon</code>\n                </p>\n            </li>\n            <li>\n                <p>\n                    <code>tue</code>\n                </p>\n            </li>\n            <li>\n                <p>\n                    <code>wed</code>\n                </p>\n            </li>\n            <li>\n                <p>\n                    <code>thu</code>\n                </p>\n            </li>\n            <li>\n                <p>\n                    <code>fri</code>\n                </p>\n            </li>\n            <li>\n                <p>\n                    <code>sat</code>\n                </p>\n            </li>\n         </ul>\n        <p>Example: <code>sun:05:00-sun:09:00</code>\n        </p>\n        <note>\n            <p>If you don't specify a preferred maintenance window when you create or modify a\n                cache cluster, DAX assigns a 60-minute maintenance window on a randomly selected day\n                of the week.</p>\n         </note>"}))
    CreateClusterRequest.add_member(:notification_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotificationTopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications will\n            be sent.</p>\n        <note>\n            <p>The Amazon SNS topic owner must be same as the DAX cluster owner.</p>\n        </note>"}))
    CreateClusterRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX\n            will assume this role and use the role's permissions to access DynamoDB on your\n            behalf.</p>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The parameter group to be associated with the DAX cluster.</p>"}))
    CreateClusterRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of tags to associate with the DAX cluster.  </p>"}))
    CreateClusterRequest.add_member(:sse_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: SSESpecification, location_name: 'SSESpecification', traits: {"smithy.api#documentation" => "<p>Represents the settings used to enable server-side encryption on the cluster.</p>"}))
    CreateClusterRequest.add_member(:cluster_endpoint_encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterEndpointEncryptionType, location_name: 'ClusterEndpointEncryptionType', traits: {"smithy.api#documentation" => "<p>The type of encryption the cluster's endpoint should support. Values are:</p>\n        <ul>\n            <li>\n                <p>\n                  <code>NONE</code> for no encryption</p>\n            </li>\n            <li>\n                <p>\n                  <code>TLS</code> for Transport Layer Security</p>\n            </li>\n         </ul>"}))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>A description of the DAX cluster that you have created.</p>"}))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateParameterGroupRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group to apply to all of the clusters in this replication\n            group.</p>", "smithy.api#required" => {}}))
    CreateParameterGroupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the parameter group.</p>"}))
    CreateParameterGroupRequest.type = Types::CreateParameterGroupRequest
    CreateParameterGroupResponse.add_member(:parameter_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroup, location_name: 'ParameterGroup', traits: {"smithy.api#documentation" => "<p>Represents the output of a <i>CreateParameterGroup</i>\n            action.</p>"}))
    CreateParameterGroupResponse.type = Types::CreateParameterGroupResponse
    CreateSubnetGroupRequest.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>A name for the subnet group. This value is stored as a lowercase string. </p>", "smithy.api#required" => {}}))
    CreateSubnetGroupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the subnet group</p>"}))
    CreateSubnetGroupRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>A list of VPC subnet IDs for the subnet group.</p>", "smithy.api#required" => {}}))
    CreateSubnetGroupRequest.type = Types::CreateSubnetGroupRequest
    CreateSubnetGroupResponse.add_member(:subnet_group, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroup, location_name: 'SubnetGroup', traits: {"smithy.api#documentation" => "<p>Represents the output of a <i>CreateSubnetGroup</i>\n            operation.</p>"}))
    CreateSubnetGroupResponse.type = Types::CreateSubnetGroupResponse
    DecreaseReplicationFactorRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the DAX cluster from which you want to remove nodes.</p>", "smithy.api#required" => {}}))
    DecreaseReplicationFactorRequest.add_member(:new_replication_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NewReplicationFactor', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The new number of nodes for the DAX cluster.</p>", "smithy.api#required" => {}}))
    DecreaseReplicationFactorRequest.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>The Availability Zone(s) from which to remove nodes.</p>"}))
    DecreaseReplicationFactorRequest.add_member(:node_ids_to_remove, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeIdentifierList, location_name: 'NodeIdsToRemove', traits: {"smithy.api#documentation" => "<p>The unique identifiers of the nodes to be removed from the cluster.</p>"}))
    DecreaseReplicationFactorRequest.type = Types::DecreaseReplicationFactorRequest
    DecreaseReplicationFactorResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>A description of the DAX cluster, after you have decreased its replication\n            factor.</p>"}))
    DecreaseReplicationFactorResponse.type = Types::DecreaseReplicationFactorResponse
    DeleteClusterRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the cluster to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>A description of the DAX cluster that is being deleted.</p>"}))
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteParameterGroupRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group to delete.</p>", "smithy.api#required" => {}}))
    DeleteParameterGroupRequest.type = Types::DeleteParameterGroupRequest
    DeleteParameterGroupResponse.add_member(:deletion_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeletionMessage', traits: {"smithy.api#documentation" => "<p>A user-specified message for this action (i.e., a reason for deleting the parameter\n            group).</p>"}))
    DeleteParameterGroupResponse.type = Types::DeleteParameterGroupResponse
    DeleteSubnetGroupRequest.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group to delete.</p>", "smithy.api#required" => {}}))
    DeleteSubnetGroupRequest.type = Types::DeleteSubnetGroupRequest
    DeleteSubnetGroupResponse.add_member(:deletion_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeletionMessage', traits: {"smithy.api#documentation" => "<p>A user-specified message for this action (i.e., a reason for deleting the subnet\n            group).</p>"}))
    DeleteSubnetGroupResponse.type = Types::DeleteSubnetGroupResponse
    DescribeClustersRequest.add_member(:cluster_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNameList, location_name: 'ClusterNames', traits: {"smithy.api#documentation" => "<p>The names of the DAX clusters being described.</p>"}))
    DescribeClustersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist\n            than the specified <code>MaxResults</code> value, a token is included in the response so\n            that the remaining results can be retrieved.</p>\n        <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>"}))
    DescribeClustersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of\n            results from this action. If this parameter is specified, the response includes only\n            results beyond the token, up to the value specified by\n            <code>MaxResults</code>.</p>"}))
    DescribeClustersRequest.type = Types::DescribeClustersRequest
    DescribeClustersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Provides an identifier to allow retrieval of paginated results.</p>"}))
    DescribeClustersResponse.add_member(:clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterList, location_name: 'Clusters', traits: {"smithy.api#documentation" => "<p>The descriptions of your DAX clusters, in response to a\n            <i>DescribeClusters</i> request.</p>"}))
    DescribeClustersResponse.type = Types::DescribeClustersResponse
    DescribeDefaultParametersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist\n            than the specified <code>MaxResults</code> value, a token is included in the response so\n            that the remaining results can be retrieved.</p>\n        <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>"}))
    DescribeDefaultParametersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of\n            results from this action. If this parameter is specified, the response includes only\n            results beyond the token, up to the value specified by\n            <code>MaxResults</code>.</p>"}))
    DescribeDefaultParametersRequest.type = Types::DescribeDefaultParametersRequest
    DescribeDefaultParametersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Provides an identifier to allow retrieval of paginated results.</p>"}))
    DescribeDefaultParametersResponse.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterList, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A list of parameters.  Each element in the list represents one parameter.</p>"}))
    DescribeDefaultParametersResponse.type = Types::DescribeDefaultParametersResponse
    DescribeEventsRequest.add_member(:source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceName', traits: {"smithy.api#documentation" => "<p>The identifier of the event source for which events will be returned. If not\n            specified, then all sources are included in the response.</p>"}))
    DescribeEventsRequest.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The event source to retrieve events for. If no value is specified, all events are\n            returned.</p>"}))
    DescribeEventsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The beginning of the time interval to retrieve events for, specified in ISO 8601\n            format.</p>"}))
    DescribeEventsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end of the time interval for which to retrieve events, specified in ISO 8601\n            format.</p>"}))
    DescribeEventsRequest.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>The number of minutes' worth of events to retrieve.</p>"}))
    DescribeEventsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist\n            than the specified <code>MaxResults</code> value, a token is included in the response so\n            that the remaining results can be retrieved.</p>\n        <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>"}))
    DescribeEventsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of\n            results from this action. If this parameter is specified, the response includes only\n            results beyond the token, up to the value specified by\n            <code>MaxResults</code>.</p>"}))
    DescribeEventsRequest.type = Types::DescribeEventsRequest
    DescribeEventsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Provides an identifier to allow retrieval of paginated results.</p>"}))
    DescribeEventsResponse.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: 'Events', traits: {"smithy.api#documentation" => "<p>An array of events.  Each element in the array represents one event.</p>"}))
    DescribeEventsResponse.type = Types::DescribeEventsResponse
    DescribeParameterGroupsRequest.add_member(:parameter_group_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNameList, location_name: 'ParameterGroupNames', traits: {"smithy.api#documentation" => "<p>The names of the parameter groups.</p>"}))
    DescribeParameterGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist\n            than the specified <code>MaxResults</code> value, a token is included in the response so\n            that the remaining results can be retrieved.</p>\n        <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>"}))
    DescribeParameterGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of\n            results from this action. If this parameter is specified, the response includes only\n            results beyond the token, up to the value specified by\n            <code>MaxResults</code>.</p>"}))
    DescribeParameterGroupsRequest.type = Types::DescribeParameterGroupsRequest
    DescribeParameterGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Provides an identifier to allow retrieval of paginated results.</p>"}))
    DescribeParameterGroupsResponse.add_member(:parameter_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupList, location_name: 'ParameterGroups', traits: {"smithy.api#documentation" => "<p>An array of parameter groups.  Each element in the array represents one parameter group.</p>"}))
    DescribeParameterGroupsResponse.type = Types::DescribeParameterGroupsResponse
    DescribeParametersRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group.</p>", "smithy.api#required" => {}}))
    DescribeParametersRequest.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>How the parameter is defined. For example, <code>system</code> denotes a\n            system-defined parameter.</p>"}))
    DescribeParametersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist\n            than the specified <code>MaxResults</code> value, a token is included in the response so\n            that the remaining results can be retrieved.</p>\n        <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>"}))
    DescribeParametersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of\n            results from this action. If this parameter is specified, the response includes only\n            results beyond the token, up to the value specified by\n            <code>MaxResults</code>.</p>"}))
    DescribeParametersRequest.type = Types::DescribeParametersRequest
    DescribeParametersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Provides an identifier to allow retrieval of paginated results.</p>"}))
    DescribeParametersResponse.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterList, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A list of parameters within a parameter group.  Each element in the list represents one parameter.</p>"}))
    DescribeParametersResponse.type = Types::DescribeParametersResponse
    DescribeSubnetGroupsRequest.add_member(:subnet_group_names, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupNameList, location_name: 'SubnetGroupNames', traits: {"smithy.api#documentation" => "<p>The name of the subnet group.</p>"}))
    DescribeSubnetGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist\n            than the specified <code>MaxResults</code> value, a token is included in the response so\n            that the remaining results can be retrieved.</p>\n            <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>"}))
    DescribeSubnetGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of\n            results from this action. If this parameter is specified, the response includes only\n            results beyond the token, up to the value specified by\n            <code>MaxResults</code>.</p>"}))
    DescribeSubnetGroupsRequest.type = Types::DescribeSubnetGroupsRequest
    DescribeSubnetGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Provides an identifier to allow retrieval of paginated results.</p>"}))
    DescribeSubnetGroupsResponse.add_member(:subnet_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupList, location_name: 'SubnetGroups', traits: {"smithy.api#documentation" => "<p>An array of subnet groups.  Each element in the array represents a single subnet group.</p>"}))
    DescribeSubnetGroupsResponse.type = Types::DescribeSubnetGroupsResponse
    Endpoint.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The DNS hostname of the endpoint.</p>"}))
    Endpoint.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The port number that applications should use to connect to the endpoint.</p>"}))
    Endpoint.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'URL', traits: {"smithy.api#documentation" => "<p>The URL that applications should use to connect to the endpoint. The default\n            ports are 8111 for the \"dax\" protocol and 9111 for the \"daxs\" protocol.</p>"}))
    Endpoint.type = Types::Endpoint
    Event.add_member(:source_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceName', traits: {"smithy.api#documentation" => "<p>The source of the event. For example, if the event occurred at the node level, the\n            source would be the node ID.</p>"}))
    Event.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>Specifies the origin of this event - a cluster, a parameter group, a node ID,\n            etc.</p>"}))
    Event.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A user-defined message associated with the event.</p>"}))
    Event.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'Date', traits: {"smithy.api#documentation" => "<p>The date and time when the event occurred.</p>"}))
    Event.type = Types::Event
    EventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Event)
    IncreaseReplicationFactorRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the DAX cluster that will receive additional nodes.</p>", "smithy.api#required" => {}}))
    IncreaseReplicationFactorRequest.add_member(:new_replication_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NewReplicationFactor', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The new number of nodes for the DAX cluster.</p>", "smithy.api#required" => {}}))
    IncreaseReplicationFactorRequest.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>The Availability Zones (AZs) in which the cluster nodes will be created. All nodes\n            belonging to the cluster are placed in these Availability Zones. Use this parameter if you want\n            to distribute the nodes across multiple AZs.</p>"}))
    IncreaseReplicationFactorRequest.type = Types::IncreaseReplicationFactorRequest
    IncreaseReplicationFactorResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>A description of the DAX cluster. with its new replication factor.</p>"}))
    IncreaseReplicationFactorResponse.type = Types::IncreaseReplicationFactorResponse
    InsufficientClusterCapacityFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientClusterCapacityFault.type = Types::InsufficientClusterCapacityFault
    InvalidARNFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidARNFault.type = Types::InvalidARNFault
    InvalidClusterStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterStateFault.type = Types::InvalidClusterStateFault
    InvalidParameterCombinationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: 'message'))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterGroupStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidParameterGroupStateFault.type = Types::InvalidParameterGroupStateFault
    InvalidParameterValueException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: 'message'))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidSubnet.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidVPCNetworkStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    IsModifiable.add_member(:true, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "TRUE"}))
    IsModifiable.add_member(:false, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    IsModifiable.add_member(:conditional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONDITIONAL', traits: {"smithy.api#enumValue" => "CONDITIONAL"}))
    KeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListTagsRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the DAX resource to which the tags belong.</p>", "smithy.api#required" => {}}))
    ListTagsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An optional token returned from a prior request. Use this token for pagination of\n            results from this action. If this parameter is specified, the response includes only\n            results beyond the token.</p>"}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags currently associated with the DAX cluster.</p>"}))
    ListTagsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If this value is present, there are additional results to be displayed.  To retrieve them, call \n            <code>ListTags</code> again, with <code>NextToken</code> set to this value.</p>"}))
    ListTagsResponse.type = Types::ListTagsResponse
    Node.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>A system-generated identifier for the node.</p>"}))
    Node.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>The endpoint for the node, consisting of a DNS name and a port number. Client\n            applications can connect directly to a node endpoint, if desired (as an alternative to\n            allowing DAX client software to intelligently route requests and responses to nodes in\n            the DAX cluster.</p>"}))
    Node.add_member(:node_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NodeCreateTime', traits: {"smithy.api#documentation" => "<p>The date and time (in UNIX epoch format) when the node was launched.</p>"}))
    Node.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Availability Zone (AZ) in which the node has been deployed.</p>"}))
    Node.add_member(:node_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeStatus', traits: {"smithy.api#documentation" => "<p>The current status of the node. For example: <code>available</code>.</p>"}))
    Node.add_member(:parameter_group_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupStatus', traits: {"smithy.api#documentation" => "<p>The status of the parameter group associated with this node. For example,\n                <code>in-sync</code>.</p>"}))
    Node.type = Types::Node
    NodeIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    NodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Node)
    NodeNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NodeNotFoundFault.type = Types::NodeNotFoundFault
    NodeQuotaForClusterExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NodeQuotaForClusterExceededFault.type = Types::NodeQuotaForClusterExceededFault
    NodeQuotaForCustomerExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NodeQuotaForCustomerExceededFault.type = Types::NodeQuotaForCustomerExceededFault
    NodeTypeSpecificValue.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>A node type to which the parameter value applies.</p>"}))
    NodeTypeSpecificValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The parameter value for this node type.</p>"}))
    NodeTypeSpecificValue.type = Types::NodeTypeSpecificValue
    NodeTypeSpecificValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeTypeSpecificValue)
    NotificationConfiguration.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the topic. </p>"}))
    NotificationConfiguration.add_member(:topic_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TopicStatus', traits: {"smithy.api#documentation" => "<p>The current state of the topic. A value of “active” means that notifications will\n        be sent to the topic. A value of “inactive” means that notifications will not be sent to the\n        topic.</p>"}))
    NotificationConfiguration.type = Types::NotificationConfiguration
    Parameter.add_member(:parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName', traits: {"smithy.api#documentation" => "<p>The name of the parameter.</p>"}))
    Parameter.add_member(:parameter_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterType, location_name: 'ParameterType', traits: {"smithy.api#documentation" => "<p>Determines whether the parameter can be applied to any nodes, or only nodes of a\n            particular type.</p>"}))
    Parameter.add_member(:parameter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterValue', traits: {"smithy.api#documentation" => "<p>The value for the parameter.</p>"}))
    Parameter.add_member(:node_type_specific_values, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeTypeSpecificValueList, location_name: 'NodeTypeSpecificValues', traits: {"smithy.api#documentation" => "<p>A list of node types, and specific parameter values for each node.</p>"}))
    Parameter.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the parameter</p>"}))
    Parameter.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>How the parameter is defined. For example, <code>system</code> denotes a\n            system-defined parameter.</p>"}))
    Parameter.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataType', traits: {"smithy.api#documentation" => "<p>The data type of the parameter. For example, <code>integer</code>:</p>"}))
    Parameter.add_member(:allowed_values, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValues', traits: {"smithy.api#documentation" => "<p>A range of values within which the parameter can be set.</p>"}))
    Parameter.add_member(:is_modifiable, Smithy::Schema::Shapes::ShapeRef.new(shape: IsModifiable, location_name: 'IsModifiable', traits: {"smithy.api#documentation" => "<p>Whether the customer is allowed to modify the parameter.</p>"}))
    Parameter.add_member(:change_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeType, location_name: 'ChangeType', traits: {"smithy.api#documentation" => "<p>The conditions under which changes to this parameter can be applied. For example,\n                <code>requires-reboot</code> indicates that a new value for this parameter will only\n            take effect if a node is rebooted.</p>"}))
    Parameter.type = Types::Parameter
    ParameterGroup.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group.</p>"}))
    ParameterGroup.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the parameter group.</p>"}))
    ParameterGroup.type = Types::ParameterGroup
    ParameterGroupAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ParameterGroupAlreadyExistsFault.type = Types::ParameterGroupAlreadyExistsFault
    ParameterGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroup)
    ParameterGroupNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ParameterGroupNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ParameterGroupNotFoundFault.type = Types::ParameterGroupNotFoundFault
    ParameterGroupQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ParameterGroupQuotaExceededFault.type = Types::ParameterGroupQuotaExceededFault
    ParameterGroupStatus.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group.</p>"}))
    ParameterGroupStatus.add_member(:parameter_apply_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterApplyStatus', traits: {"smithy.api#documentation" => "<p>The status of parameter updates. </p>"}))
    ParameterGroupStatus.add_member(:node_ids_to_reboot, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeIdentifierList, location_name: 'NodeIdsToReboot', traits: {"smithy.api#documentation" => "<p>The node IDs of one or more nodes to be rebooted.</p>"}))
    ParameterGroupStatus.type = Types::ParameterGroupStatus
    ParameterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Parameter)
    ParameterNameValue.add_member(:parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName', traits: {"smithy.api#documentation" => "<p>The name of the parameter.</p>"}))
    ParameterNameValue.add_member(:parameter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterValue', traits: {"smithy.api#documentation" => "<p>The value of the parameter.</p>"}))
    ParameterNameValue.type = Types::ParameterNameValue
    ParameterNameValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterNameValue)
    ParameterType.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ParameterType.add_member(:node_type_specific, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODE_TYPE_SPECIFIC', traits: {"smithy.api#enumValue" => "NODE_TYPE_SPECIFIC"}))
    RebootNodeRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the DAX cluster containing the node to be rebooted.</p>", "smithy.api#required" => {}}))
    RebootNodeRequest.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeId', traits: {"smithy.api#documentation" => "<p>The system-assigned ID of the node to be rebooted.</p>", "smithy.api#required" => {}}))
    RebootNodeRequest.type = Types::RebootNodeRequest
    RebootNodeResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>A description of the DAX cluster after a node has been rebooted.</p>"}))
    RebootNodeResponse.type = Types::RebootNodeResponse
    SSEDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SSEStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of server-side encryption:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLING</code> - Server-side encryption is being enabled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ENABLED</code> - Server-side encryption is enabled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLING</code> - Server-side encryption is being disabled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> - Server-side encryption is disabled.</p>\n            </li>\n         </ul>"}))
    SSEDescription.type = Types::SSEDescription
    SSESpecification.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: SSEEnabled, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether server-side encryption is enabled (true) or disabled (false) on the cluster.</p>", "smithy.api#required" => {}}))
    SSESpecification.type = Types::SSESpecification
    SSEStatus.add_member(:enabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "ENABLING"}))
    SSEStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    SSEStatus.add_member(:disabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "DISABLING"}))
    SSEStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    SecurityGroupIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SecurityGroupMembership.add_member(:security_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecurityGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The unique ID for this security group.</p>"}))
    SecurityGroupMembership.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of this security group.</p>"}))
    SecurityGroupMembership.type = Types::SecurityGroupMembership
    SecurityGroupMembershipList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupMembership)
    ServiceLinkedRoleNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServiceLinkedRoleNotFoundFault.type = Types::ServiceLinkedRoleNotFoundFault
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceType.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER', traits: {"smithy.api#enumValue" => "CLUSTER"}))
    SourceType.add_member(:parameter_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARAMETER_GROUP', traits: {"smithy.api#enumValue" => "PARAMETER_GROUP"}))
    SourceType.add_member(:subnet_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_GROUP', traits: {"smithy.api#enumValue" => "SUBNET_GROUP"}))
    Subnet.add_member(:subnet_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetIdentifier', traits: {"smithy.api#documentation" => "<p>The system-assigned identifier for the subnet.</p>"}))
    Subnet.add_member(:subnet_availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetAvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Availability Zone (AZ) for the subnet.</p>"}))
    Subnet.type = Types::Subnet
    SubnetGroup.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group.</p>"}))
    SubnetGroup.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the subnet group.</p>"}))
    SubnetGroup.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.</p>"}))
    SubnetGroup.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'Subnets', traits: {"smithy.api#documentation" => "<p>A list of subnets associated with the subnet group. </p>"}))
    SubnetGroup.type = Types::SubnetGroup
    SubnetGroupAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetGroupAlreadyExistsFault.type = Types::SubnetGroupAlreadyExistsFault
    SubnetGroupInUseFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetGroupInUseFault.type = Types::SubnetGroupInUseFault
    SubnetGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroup)
    SubnetGroupNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SubnetGroupNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetGroupNotFoundFault.type = Types::SubnetGroupNotFoundFault
    SubnetGroupQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetGroupQuotaExceededFault.type = Types::SubnetGroupQuotaExceededFault
    SubnetIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SubnetInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetInUse.type = Types::SubnetInUse
    SubnetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Subnet)
    SubnetQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetQuotaExceededFault.type = Types::SubnetQuotaExceededFault
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key for the tag.  Tag keys are case sensitive. Every DAX cluster can only have\n            one tag with the same key. If you try to add an existing tag (same key), the\n            existing tag value will be updated to the new value.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the tag. Tag values are case-sensitive and can be null. </p>"}))
    Tag.type = Types::Tag
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TagNotFoundFault.type = Types::TagNotFoundFault
    TagQuotaPerResourceExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TagQuotaPerResourceExceeded.type = Types::TagQuotaPerResourceExceeded
    TagResourceRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the DAX resource to which tags should be added.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to be assigned to the DAX resource. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags that are associated with the DAX resource.</p>"}))
    TagResourceResponse.type = Types::TagResourceResponse
    UntagResourceRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the DAX resource from which the tags should be removed.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A list of tag keys. If the DAX cluster has any tags with these keys, then the tags are removed from the cluster.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tag keys that have been removed from the cluster.</p>"}))
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateClusterRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the DAX cluster to be modified.</p>", "smithy.api#required" => {}}))
    UpdateClusterRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the changes being made to the cluster.</p>"}))
    UpdateClusterRequest.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>A range of time when maintenance of DAX cluster software will be performed. For\n            example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than\n            30 minutes, and is performed automatically within the maintenance window.</p>"}))
    UpdateClusterRequest.add_member(:notification_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotificationTopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that identifies the topic.</p>"}))
    UpdateClusterRequest.add_member(:notification_topic_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotificationTopicStatus', traits: {"smithy.api#documentation" => "<p>The current state of the topic. A value of “active” means that notifications will\n        be sent to the topic. A value of “inactive” means that notifications will not be sent to the\n        topic.</p>"}))
    UpdateClusterRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of a parameter group for this cluster.</p>"}))
    UpdateClusterRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdentifierList, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of user-specified security group IDs to be assigned to each node in the DAX cluster.  If this parameter is not \n            specified, DAX assigns the default VPC security group to each node.</p>"}))
    UpdateClusterRequest.type = Types::UpdateClusterRequest
    UpdateClusterResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster', traits: {"smithy.api#documentation" => "<p>A description of the DAX cluster, after it has been modified.</p>"}))
    UpdateClusterResponse.type = Types::UpdateClusterResponse
    UpdateParameterGroupRequest.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group.</p>", "smithy.api#required" => {}}))
    UpdateParameterGroupRequest.add_member(:parameter_name_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterNameValueList, location_name: 'ParameterNameValues', traits: {"smithy.api#documentation" => "<p>An array of name-value pairs for the parameters in the group. Each element in the\n            array represents a single parameter.</p>\n            <note>\n            <p>\n               <code>record-ttl-millis</code> and <code>query-ttl-millis</code> are the only supported parameter names. For more details, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.cluster-management.html#DAX.cluster-management.custom-settings.ttl\">Configuring TTL Settings</a>.</p>\n        </note>", "smithy.api#required" => {}}))
    UpdateParameterGroupRequest.type = Types::UpdateParameterGroupRequest
    UpdateParameterGroupResponse.add_member(:parameter_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroup, location_name: 'ParameterGroup', traits: {"smithy.api#documentation" => "<p>The parameter group that has been modified.</p>"}))
    UpdateParameterGroupResponse.type = Types::UpdateParameterGroupResponse
    UpdateSubnetGroupRequest.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group.</p>", "smithy.api#required" => {}}))
    UpdateSubnetGroupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the subnet group.</p>"}))
    UpdateSubnetGroupRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>A list of subnet IDs in the subnet group.</p>"}))
    UpdateSubnetGroupRequest.type = Types::UpdateSubnetGroupRequest
    UpdateSubnetGroupResponse.add_member(:subnet_group, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroup, location_name: 'SubnetGroup', traits: {"smithy.api#documentation" => "<p>The subnet group that has been modified.</p>"}))
    UpdateSubnetGroupResponse.type = Types::UpdateSubnetGroupResponse

    AmazonDAXV3 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.dax#AmazonDAXV3"
      service.name = "AmazonDAXV3"
      service.version = "2017-04-19"
      service.traits = {"aws.api#service" => {"sdkId" => "DAX", "arnNamespace" => "dax", "cloudFormationName" => "DAX", "cloudTrailEventSource" => "dax.amazonaws.com", "endpointPrefix" => "dax"}, "aws.auth#sigv4" => {"name" => "dax"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon DynamoDB Accelerator (DAX)", "smithy.api#xmlNamespace" => {"uri" => "http://dax.amazonaws.com/doc/2017-04-19/"}}
      service.add_operation(:create_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_parameter_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#CreateParameterGroup"
        operation.name = "CreateParameterGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParameterGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParameterGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:create_subnet_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#CreateSubnetGroup"
        operation.name = "CreateSubnetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubnetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubnetGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:decrease_replication_factor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DecreaseReplicationFactor"
        operation.name = "DecreaseReplicationFactor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DecreaseReplicationFactorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DecreaseReplicationFactorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NodeNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_parameter_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DeleteParameterGroup"
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
      service.add_operation(:delete_subnet_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DeleteSubnetGroup"
        operation.name = "DeleteSubnetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubnetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubnetGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupInUseFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_clusters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DescribeClusters"
        operation.name = "DescribeClusters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClustersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClustersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_default_parameters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DescribeDefaultParameters"
        operation.name = "DescribeDefaultParameters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDefaultParametersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDefaultParametersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_parameter_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DescribeParameterGroups"
        operation.name = "DescribeParameterGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeParameterGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeParameterGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_parameters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DescribeParameters"
        operation.name = "DescribeParameters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeParametersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeParametersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_subnet_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#DescribeSubnetGroups"
        operation.name = "DescribeSubnetGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSubnetGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSubnetGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:increase_replication_factor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#IncreaseReplicationFactor"
        operation.name = "IncreaseReplicationFactor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: IncreaseReplicationFactorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: IncreaseReplicationFactorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:list_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#ListTags"
        operation.name = "ListTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidARNFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:reboot_node, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#RebootNode"
        operation.name = "RebootNode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RebootNodeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RebootNodeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NodeNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidARNFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidARNFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:update_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:update_parameter_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dax#UpdateParameterGroup"
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
        operation.id = "com.amazonaws.dax#UpdateSubnetGroup"
        operation.name = "UpdateSubnetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubnetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubnetGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetQuotaExceededFault)
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
