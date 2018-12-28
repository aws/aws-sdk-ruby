# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DAX
  # @api private
  module ClientApi

    include Seahorse::Model

    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    AwsQueryErrorMessage = Shapes::StringShape.new(name: 'AwsQueryErrorMessage')
    ChangeType = Shapes::StringShape.new(name: 'ChangeType')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterAlreadyExistsFault = Shapes::StructureShape.new(name: 'ClusterAlreadyExistsFault')
    ClusterList = Shapes::ListShape.new(name: 'ClusterList')
    ClusterNameList = Shapes::ListShape.new(name: 'ClusterNameList')
    ClusterNotFoundFault = Shapes::StructureShape.new(name: 'ClusterNotFoundFault')
    ClusterQuotaForCustomerExceededFault = Shapes::StructureShape.new(name: 'ClusterQuotaForCustomerExceededFault')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateParameterGroupRequest = Shapes::StructureShape.new(name: 'CreateParameterGroupRequest')
    CreateParameterGroupResponse = Shapes::StructureShape.new(name: 'CreateParameterGroupResponse')
    CreateSubnetGroupRequest = Shapes::StructureShape.new(name: 'CreateSubnetGroupRequest')
    CreateSubnetGroupResponse = Shapes::StructureShape.new(name: 'CreateSubnetGroupResponse')
    DecreaseReplicationFactorRequest = Shapes::StructureShape.new(name: 'DecreaseReplicationFactorRequest')
    DecreaseReplicationFactorResponse = Shapes::StructureShape.new(name: 'DecreaseReplicationFactorResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteParameterGroupRequest = Shapes::StructureShape.new(name: 'DeleteParameterGroupRequest')
    DeleteParameterGroupResponse = Shapes::StructureShape.new(name: 'DeleteParameterGroupResponse')
    DeleteSubnetGroupRequest = Shapes::StructureShape.new(name: 'DeleteSubnetGroupRequest')
    DeleteSubnetGroupResponse = Shapes::StructureShape.new(name: 'DeleteSubnetGroupResponse')
    DescribeClustersRequest = Shapes::StructureShape.new(name: 'DescribeClustersRequest')
    DescribeClustersResponse = Shapes::StructureShape.new(name: 'DescribeClustersResponse')
    DescribeDefaultParametersRequest = Shapes::StructureShape.new(name: 'DescribeDefaultParametersRequest')
    DescribeDefaultParametersResponse = Shapes::StructureShape.new(name: 'DescribeDefaultParametersResponse')
    DescribeEventsRequest = Shapes::StructureShape.new(name: 'DescribeEventsRequest')
    DescribeEventsResponse = Shapes::StructureShape.new(name: 'DescribeEventsResponse')
    DescribeParameterGroupsRequest = Shapes::StructureShape.new(name: 'DescribeParameterGroupsRequest')
    DescribeParameterGroupsResponse = Shapes::StructureShape.new(name: 'DescribeParameterGroupsResponse')
    DescribeParametersRequest = Shapes::StructureShape.new(name: 'DescribeParametersRequest')
    DescribeParametersResponse = Shapes::StructureShape.new(name: 'DescribeParametersResponse')
    DescribeSubnetGroupsRequest = Shapes::StructureShape.new(name: 'DescribeSubnetGroupsRequest')
    DescribeSubnetGroupsResponse = Shapes::StructureShape.new(name: 'DescribeSubnetGroupsResponse')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventList = Shapes::ListShape.new(name: 'EventList')
    IncreaseReplicationFactorRequest = Shapes::StructureShape.new(name: 'IncreaseReplicationFactorRequest')
    IncreaseReplicationFactorResponse = Shapes::StructureShape.new(name: 'IncreaseReplicationFactorResponse')
    InsufficientClusterCapacityFault = Shapes::StructureShape.new(name: 'InsufficientClusterCapacityFault')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerOptional = Shapes::IntegerShape.new(name: 'IntegerOptional')
    InvalidARNFault = Shapes::StructureShape.new(name: 'InvalidARNFault')
    InvalidClusterStateFault = Shapes::StructureShape.new(name: 'InvalidClusterStateFault')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
    InvalidParameterGroupStateFault = Shapes::StructureShape.new(name: 'InvalidParameterGroupStateFault')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidSubnet = Shapes::StructureShape.new(name: 'InvalidSubnet')
    InvalidVPCNetworkStateFault = Shapes::StructureShape.new(name: 'InvalidVPCNetworkStateFault')
    IsModifiable = Shapes::StringShape.new(name: 'IsModifiable')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    Node = Shapes::StructureShape.new(name: 'Node')
    NodeIdentifierList = Shapes::ListShape.new(name: 'NodeIdentifierList')
    NodeList = Shapes::ListShape.new(name: 'NodeList')
    NodeNotFoundFault = Shapes::StructureShape.new(name: 'NodeNotFoundFault')
    NodeQuotaForClusterExceededFault = Shapes::StructureShape.new(name: 'NodeQuotaForClusterExceededFault')
    NodeQuotaForCustomerExceededFault = Shapes::StructureShape.new(name: 'NodeQuotaForCustomerExceededFault')
    NodeTypeSpecificValue = Shapes::StructureShape.new(name: 'NodeTypeSpecificValue')
    NodeTypeSpecificValueList = Shapes::ListShape.new(name: 'NodeTypeSpecificValueList')
    NotificationConfiguration = Shapes::StructureShape.new(name: 'NotificationConfiguration')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterGroup = Shapes::StructureShape.new(name: 'ParameterGroup')
    ParameterGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'ParameterGroupAlreadyExistsFault')
    ParameterGroupList = Shapes::ListShape.new(name: 'ParameterGroupList')
    ParameterGroupNameList = Shapes::ListShape.new(name: 'ParameterGroupNameList')
    ParameterGroupNotFoundFault = Shapes::StructureShape.new(name: 'ParameterGroupNotFoundFault')
    ParameterGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'ParameterGroupQuotaExceededFault')
    ParameterGroupStatus = Shapes::StructureShape.new(name: 'ParameterGroupStatus')
    ParameterList = Shapes::ListShape.new(name: 'ParameterList')
    ParameterNameValue = Shapes::StructureShape.new(name: 'ParameterNameValue')
    ParameterNameValueList = Shapes::ListShape.new(name: 'ParameterNameValueList')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    RebootNodeRequest = Shapes::StructureShape.new(name: 'RebootNodeRequest')
    RebootNodeResponse = Shapes::StructureShape.new(name: 'RebootNodeResponse')
    SSEDescription = Shapes::StructureShape.new(name: 'SSEDescription')
    SSEEnabled = Shapes::BooleanShape.new(name: 'SSEEnabled')
    SSESpecification = Shapes::StructureShape.new(name: 'SSESpecification')
    SSEStatus = Shapes::StringShape.new(name: 'SSEStatus')
    SecurityGroupIdentifierList = Shapes::ListShape.new(name: 'SecurityGroupIdentifierList')
    SecurityGroupMembership = Shapes::StructureShape.new(name: 'SecurityGroupMembership')
    SecurityGroupMembershipList = Shapes::ListShape.new(name: 'SecurityGroupMembershipList')
    ServiceLinkedRoleNotFoundFault = Shapes::StructureShape.new(name: 'ServiceLinkedRoleNotFoundFault')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    String = Shapes::StringShape.new(name: 'String')
    Subnet = Shapes::StructureShape.new(name: 'Subnet')
    SubnetGroup = Shapes::StructureShape.new(name: 'SubnetGroup')
    SubnetGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'SubnetGroupAlreadyExistsFault')
    SubnetGroupInUseFault = Shapes::StructureShape.new(name: 'SubnetGroupInUseFault')
    SubnetGroupList = Shapes::ListShape.new(name: 'SubnetGroupList')
    SubnetGroupNameList = Shapes::ListShape.new(name: 'SubnetGroupNameList')
    SubnetGroupNotFoundFault = Shapes::StructureShape.new(name: 'SubnetGroupNotFoundFault')
    SubnetGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'SubnetGroupQuotaExceededFault')
    SubnetIdentifierList = Shapes::ListShape.new(name: 'SubnetIdentifierList')
    SubnetInUse = Shapes::StructureShape.new(name: 'SubnetInUse')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    SubnetQuotaExceededFault = Shapes::StructureShape.new(name: 'SubnetQuotaExceededFault')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagNotFoundFault = Shapes::StructureShape.new(name: 'TagNotFoundFault')
    TagQuotaPerResourceExceeded = Shapes::StructureShape.new(name: 'TagQuotaPerResourceExceeded')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateClusterRequest = Shapes::StructureShape.new(name: 'UpdateClusterRequest')
    UpdateClusterResponse = Shapes::StructureShape.new(name: 'UpdateClusterResponse')
    UpdateParameterGroupRequest = Shapes::StructureShape.new(name: 'UpdateParameterGroupRequest')
    UpdateParameterGroupResponse = Shapes::StructureShape.new(name: 'UpdateParameterGroupResponse')
    UpdateSubnetGroupRequest = Shapes::StructureShape.new(name: 'UpdateSubnetGroupRequest')
    UpdateSubnetGroupResponse = Shapes::StructureShape.new(name: 'UpdateSubnetGroupResponse')

    AvailabilityZoneList.member = Shapes::ShapeRef.new(shape: String)

    Cluster.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "ClusterName"))
    Cluster.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Cluster.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "ClusterArn"))
    Cluster.add_member(:total_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "TotalNodes"))
    Cluster.add_member(:active_nodes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ActiveNodes"))
    Cluster.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    Cluster.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Cluster.add_member(:cluster_discovery_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "ClusterDiscoveryEndpoint"))
    Cluster.add_member(:node_ids_to_remove, Shapes::ShapeRef.new(shape: NodeIdentifierList, location_name: "NodeIdsToRemove"))
    Cluster.add_member(:nodes, Shapes::ShapeRef.new(shape: NodeList, location_name: "Nodes"))
    Cluster.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    Cluster.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "NotificationConfiguration"))
    Cluster.add_member(:subnet_group, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroup"))
    Cluster.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupMembershipList, location_name: "SecurityGroups"))
    Cluster.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamRoleArn"))
    Cluster.add_member(:parameter_group, Shapes::ShapeRef.new(shape: ParameterGroupStatus, location_name: "ParameterGroup"))
    Cluster.add_member(:sse_description, Shapes::ShapeRef.new(shape: SSEDescription, location_name: "SSEDescription"))
    Cluster.struct_class = Types::Cluster

    ClusterList.member = Shapes::ShapeRef.new(shape: Cluster)

    ClusterNameList.member = Shapes::ShapeRef.new(shape: String)

    CreateClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterName"))
    CreateClusterRequest.add_member(:node_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "NodeType"))
    CreateClusterRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateClusterRequest.add_member(:replication_factor, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ReplicationFactor"))
    CreateClusterRequest.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "AvailabilityZones"))
    CreateClusterRequest.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupName"))
    CreateClusterRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdentifierList, location_name: "SecurityGroupIds"))
    CreateClusterRequest.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateClusterRequest.add_member(:notification_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "NotificationTopicArn"))
    CreateClusterRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "IamRoleArn"))
    CreateClusterRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    CreateClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateClusterRequest.add_member(:sse_specification, Shapes::ShapeRef.new(shape: SSESpecification, location_name: "SSESpecification"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateParameterGroupRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    CreateParameterGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateParameterGroupRequest.struct_class = Types::CreateParameterGroupRequest

    CreateParameterGroupResponse.add_member(:parameter_group, Shapes::ShapeRef.new(shape: ParameterGroup, location_name: "ParameterGroup"))
    CreateParameterGroupResponse.struct_class = Types::CreateParameterGroupResponse

    CreateSubnetGroupRequest.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubnetGroupName"))
    CreateSubnetGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateSubnetGroupRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    CreateSubnetGroupRequest.struct_class = Types::CreateSubnetGroupRequest

    CreateSubnetGroupResponse.add_member(:subnet_group, Shapes::ShapeRef.new(shape: SubnetGroup, location_name: "SubnetGroup"))
    CreateSubnetGroupResponse.struct_class = Types::CreateSubnetGroupResponse

    DecreaseReplicationFactorRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterName"))
    DecreaseReplicationFactorRequest.add_member(:new_replication_factor, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "NewReplicationFactor"))
    DecreaseReplicationFactorRequest.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "AvailabilityZones"))
    DecreaseReplicationFactorRequest.add_member(:node_ids_to_remove, Shapes::ShapeRef.new(shape: NodeIdentifierList, location_name: "NodeIdsToRemove"))
    DecreaseReplicationFactorRequest.struct_class = Types::DecreaseReplicationFactorRequest

    DecreaseReplicationFactorResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    DecreaseReplicationFactorResponse.struct_class = Types::DecreaseReplicationFactorResponse

    DeleteClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterName"))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DeleteParameterGroupRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    DeleteParameterGroupRequest.struct_class = Types::DeleteParameterGroupRequest

    DeleteParameterGroupResponse.add_member(:deletion_message, Shapes::ShapeRef.new(shape: String, location_name: "DeletionMessage"))
    DeleteParameterGroupResponse.struct_class = Types::DeleteParameterGroupResponse

    DeleteSubnetGroupRequest.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubnetGroupName"))
    DeleteSubnetGroupRequest.struct_class = Types::DeleteSubnetGroupRequest

    DeleteSubnetGroupResponse.add_member(:deletion_message, Shapes::ShapeRef.new(shape: String, location_name: "DeletionMessage"))
    DeleteSubnetGroupResponse.struct_class = Types::DeleteSubnetGroupResponse

    DescribeClustersRequest.add_member(:cluster_names, Shapes::ShapeRef.new(shape: ClusterNameList, location_name: "ClusterNames"))
    DescribeClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeClustersRequest.struct_class = Types::DescribeClustersRequest

    DescribeClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: ClusterList, location_name: "Clusters"))
    DescribeClustersResponse.struct_class = Types::DescribeClustersResponse

    DescribeDefaultParametersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeDefaultParametersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeDefaultParametersRequest.struct_class = Types::DescribeDefaultParametersRequest

    DescribeDefaultParametersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeDefaultParametersResponse.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterList, location_name: "Parameters"))
    DescribeDefaultParametersResponse.struct_class = Types::DescribeDefaultParametersResponse

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

    DescribeParameterGroupsRequest.add_member(:parameter_group_names, Shapes::ShapeRef.new(shape: ParameterGroupNameList, location_name: "ParameterGroupNames"))
    DescribeParameterGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeParameterGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeParameterGroupsRequest.struct_class = Types::DescribeParameterGroupsRequest

    DescribeParameterGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeParameterGroupsResponse.add_member(:parameter_groups, Shapes::ShapeRef.new(shape: ParameterGroupList, location_name: "ParameterGroups"))
    DescribeParameterGroupsResponse.struct_class = Types::DescribeParameterGroupsResponse

    DescribeParametersRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ParameterGroupName"))
    DescribeParametersRequest.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    DescribeParametersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeParametersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeParametersRequest.struct_class = Types::DescribeParametersRequest

    DescribeParametersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeParametersResponse.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterList, location_name: "Parameters"))
    DescribeParametersResponse.struct_class = Types::DescribeParametersResponse

    DescribeSubnetGroupsRequest.add_member(:subnet_group_names, Shapes::ShapeRef.new(shape: SubnetGroupNameList, location_name: "SubnetGroupNames"))
    DescribeSubnetGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxResults"))
    DescribeSubnetGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeSubnetGroupsRequest.struct_class = Types::DescribeSubnetGroupsRequest

    DescribeSubnetGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeSubnetGroupsResponse.add_member(:subnet_groups, Shapes::ShapeRef.new(shape: SubnetGroupList, location_name: "SubnetGroups"))
    DescribeSubnetGroupsResponse.struct_class = Types::DescribeSubnetGroupsResponse

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "Address"))
    Endpoint.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    Endpoint.struct_class = Types::Endpoint

    Event.add_member(:source_name, Shapes::ShapeRef.new(shape: String, location_name: "SourceName"))
    Event.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    Event.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Event.add_member(:date, Shapes::ShapeRef.new(shape: TStamp, location_name: "Date"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    IncreaseReplicationFactorRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterName"))
    IncreaseReplicationFactorRequest.add_member(:new_replication_factor, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "NewReplicationFactor"))
    IncreaseReplicationFactorRequest.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "AvailabilityZones"))
    IncreaseReplicationFactorRequest.struct_class = Types::IncreaseReplicationFactorRequest

    IncreaseReplicationFactorResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    IncreaseReplicationFactorResponse.struct_class = Types::IncreaseReplicationFactorResponse

    KeyList.member = Shapes::ShapeRef.new(shape: String)

    ListTagsRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    ListTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    Node.add_member(:node_id, Shapes::ShapeRef.new(shape: String, location_name: "NodeId"))
    Node.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    Node.add_member(:node_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "NodeCreateTime"))
    Node.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    Node.add_member(:node_status, Shapes::ShapeRef.new(shape: String, location_name: "NodeStatus"))
    Node.add_member(:parameter_group_status, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupStatus"))
    Node.struct_class = Types::Node

    NodeIdentifierList.member = Shapes::ShapeRef.new(shape: String)

    NodeList.member = Shapes::ShapeRef.new(shape: Node)

    NodeTypeSpecificValue.add_member(:node_type, Shapes::ShapeRef.new(shape: String, location_name: "NodeType"))
    NodeTypeSpecificValue.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    NodeTypeSpecificValue.struct_class = Types::NodeTypeSpecificValue

    NodeTypeSpecificValueList.member = Shapes::ShapeRef.new(shape: NodeTypeSpecificValue)

    NotificationConfiguration.add_member(:topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "TopicArn"))
    NotificationConfiguration.add_member(:topic_status, Shapes::ShapeRef.new(shape: String, location_name: "TopicStatus"))
    NotificationConfiguration.struct_class = Types::NotificationConfiguration

    Parameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterName"))
    Parameter.add_member(:parameter_type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "ParameterType"))
    Parameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: String, location_name: "ParameterValue"))
    Parameter.add_member(:node_type_specific_values, Shapes::ShapeRef.new(shape: NodeTypeSpecificValueList, location_name: "NodeTypeSpecificValues"))
    Parameter.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Parameter.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    Parameter.add_member(:data_type, Shapes::ShapeRef.new(shape: String, location_name: "DataType"))
    Parameter.add_member(:allowed_values, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValues"))
    Parameter.add_member(:is_modifiable, Shapes::ShapeRef.new(shape: IsModifiable, location_name: "IsModifiable"))
    Parameter.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "ChangeType"))
    Parameter.struct_class = Types::Parameter

    ParameterGroup.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    ParameterGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ParameterGroup.struct_class = Types::ParameterGroup

    ParameterGroupList.member = Shapes::ShapeRef.new(shape: ParameterGroup)

    ParameterGroupNameList.member = Shapes::ShapeRef.new(shape: String)

    ParameterGroupStatus.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    ParameterGroupStatus.add_member(:parameter_apply_status, Shapes::ShapeRef.new(shape: String, location_name: "ParameterApplyStatus"))
    ParameterGroupStatus.add_member(:node_ids_to_reboot, Shapes::ShapeRef.new(shape: NodeIdentifierList, location_name: "NodeIdsToReboot"))
    ParameterGroupStatus.struct_class = Types::ParameterGroupStatus

    ParameterList.member = Shapes::ShapeRef.new(shape: Parameter)

    ParameterNameValue.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterName"))
    ParameterNameValue.add_member(:parameter_value, Shapes::ShapeRef.new(shape: String, location_name: "ParameterValue"))
    ParameterNameValue.struct_class = Types::ParameterNameValue

    ParameterNameValueList.member = Shapes::ShapeRef.new(shape: ParameterNameValue)

    RebootNodeRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterName"))
    RebootNodeRequest.add_member(:node_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "NodeId"))
    RebootNodeRequest.struct_class = Types::RebootNodeRequest

    RebootNodeResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "Cluster"))
    RebootNodeResponse.struct_class = Types::RebootNodeResponse

    SSEDescription.add_member(:status, Shapes::ShapeRef.new(shape: SSEStatus, location_name: "Status"))
    SSEDescription.struct_class = Types::SSEDescription

    SSESpecification.add_member(:enabled, Shapes::ShapeRef.new(shape: SSEEnabled, required: true, location_name: "Enabled"))
    SSESpecification.struct_class = Types::SSESpecification

    SecurityGroupIdentifierList.member = Shapes::ShapeRef.new(shape: String)

    SecurityGroupMembership.add_member(:security_group_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SecurityGroupIdentifier"))
    SecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    SecurityGroupMembership.struct_class = Types::SecurityGroupMembership

    SecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: SecurityGroupMembership)

    Subnet.add_member(:subnet_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "SubnetAvailabilityZone"))
    Subnet.struct_class = Types::Subnet

    SubnetGroup.add_member(:subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupName"))
    SubnetGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    SubnetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    SubnetGroup.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetList, location_name: "Subnets"))
    SubnetGroup.struct_class = Types::SubnetGroup

    SubnetGroupList.member = Shapes::ShapeRef.new(shape: SubnetGroup)

    SubnetGroupNameList.member = Shapes::ShapeRef.new(shape: String)

    SubnetIdentifierList.member = Shapes::ShapeRef.new(shape: String)

    SubnetList.member = Shapes::ShapeRef.new(shape: Subnet)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ClusterName"))
    UpdateClusterRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateClusterRequest.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    UpdateClusterRequest.add_member(:notification_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "NotificationTopicArn"))
    UpdateClusterRequest.add_member(:notification_topic_status, Shapes::ShapeRef.new(shape: String, location_name: "NotificationTopicStatus"))
    UpdateClusterRequest.add_member(:parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterGroupName"))
    UpdateClusterRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdentifierList, location_name: "SecurityGroupIds"))
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


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-04-19"

      api.metadata = {
        "apiVersion" => "2017-04-19",
        "endpointPrefix" => "dax",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Amazon DAX",
        "serviceFullName" => "Amazon DynamoDB Accelerator (DAX)",
        "serviceId" => "DAX",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonDAXV3",
        "uid" => "dax-2017-04-19",
      }

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
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
      end)

      api.add_operation(:decrease_replication_factor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DecreaseReplicationFactor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DecreaseReplicationFactorRequest)
        o.output = Shapes::ShapeRef.new(shape: DecreaseReplicationFactorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
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
      end)

      api.add_operation(:describe_default_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDefaultParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDefaultParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDefaultParametersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
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
      end)

      api.add_operation(:describe_subnet_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSubnetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSubnetGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSubnetGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: SubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
      end)

      api.add_operation(:increase_replication_factor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "IncreaseReplicationFactor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: IncreaseReplicationFactorRequest)
        o.output = Shapes::ShapeRef.new(shape: IncreaseReplicationFactorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidARNFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:reboot_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootNode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootNodeRequest)
        o.output = Shapes::ShapeRef.new(shape: RebootNodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: NodeNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
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
        o.errors << Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidARNFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidARNFault)
        o.errors << Shapes::ShapeRef.new(shape: TagNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:update_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:update_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateParameterGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateParameterGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ParameterGroupNotFoundFault)
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
      end)
    end

  end
end
