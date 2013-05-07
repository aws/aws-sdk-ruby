# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class Redshift

    # Client class for Amazon Redshift.
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method authorize_cluster_security_group_ingress(options = {})
      # Calls the AuthorizeClusterSecurityGroupIngress API operation.
      # @param [Hash] options
      #   * `:cluster_security_group_name` - *required* - (String) The name of
      #     the security group to which the ingress rule is added.
      #   * `:cidrip` - (String) The IP range to be added the Amazon Redshift
      #     security group.
      #   * `:ec2_security_group_name` - (String) The EC2 security group to be
      #     added the Amazon Redshift security group.
      #   * `:ec2_security_group_owner_id` - (String) The AWS account number of
      #     the owner of the security group specified by the
      #     EC2SecurityGroupName parameter. The AWS Access Key ID is not an
      #     acceptable value. Example: 111122223333
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cluster_security_group_name` - (String)
      #   * `:description` - (String)
      #   * `:ec_2_security_groups` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:ec2_security_group_name` - (String)
      #     * `:ec2_security_group_owner_id` - (String)
      #   * `:ip_ranges` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:cidrip` - (String)

      # @!method copy_cluster_snapshot(options = {})
      # Calls the CopyClusterSnapshot API operation.
      # @param [Hash] options
      #   * `:source_snapshot_identifier` - *required* - (String) The
      #     identifier for the source snapshot. Constraints: Must be the
      #     identifier for a valid automated snapshot whose state is
      #     "available".
      #   * `:target_snapshot_identifier` - *required* - (String) The
      #     identifier given to the new manual snapshot. Constraints: Cannot be
      #     null, empty, or blank. Must contain from 1 to 255 alphanumeric
      #     characters or hyphens. First character must be a letter. Cannot end
      #     with a hyphen or contain two consecutive hyphens. Must be unique
      #     for the AWS account that is making the request.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:snapshot_identifier` - (String)
      #   * `:cluster_identifier` - (String)
      #   * `:snapshot_create_time` - (Time)
      #   * `:status` - (String)
      #   * `:port` - (Integer)
      #   * `:availability_zone` - (String)
      #   * `:cluster_create_time` - (Time)
      #   * `:master_username` - (String)
      #   * `:cluster_version` - (String)
      #   * `:snapshot_type` - (String)
      #   * `:node_type` - (String)
      #   * `:number_of_nodes` - (Integer)
      #   * `:db_name` - (String)
      #   * `:vpc_id` - (String)

      # @!method create_cluster(options = {})
      # Calls the CreateCluster API operation.
      # @param [Hash] options
      #   * `:db_name` - (String) The name of the first database to be created
      #     when the cluster is created. To create additional databases after
      #     the cluster is created, connect to the cluster with a SQL client
      #     and use SQL commands to create a database. For more information, go
      #     to Create a Database in the Amazon Redshift Developer Guide.
      #     Default: dev Constraints: Must contain 1 to 64 alphanumeric
      #     characters. Must contain only lowercase letters. Cannot be a word
      #     that is reserved by the service. A list of reserved words can be
      #     found in Reserved Words in the Amazon Redshift Developer Guide.
      #   * `:cluster_identifier` - *required* - (String) A unique identifier
      #     for the cluster. You use this identifier to refer to the cluster
      #     for any subsequent cluster operations such as deleting or
      #     modifying. The identifier also appears in the Amazon Redshift
      #     console. Constraints: Must contain from 1 to 63 alphanumeric
      #     characters or hyphens. Alphabetic characters must be lowercase.
      #     First character must be a letter. Cannot end with a hyphen or
      #     contain two consecutive hyphens. Must be unique for all clusters
      #     within an AWS account. Example: myexamplecluster
      #   * `:cluster_type` - (String) The type of the cluster. When cluster
      #     type is specified as single-node, the NumberOfNodes parameter is
      #     not required. multi-node, the NumberOfNodes parameter is required.
      #     Valid Values: multi-node | single-node Default: multi-node
      #   * `:node_type` - *required* - (String) The node type to be
      #     provisioned for the cluster. For information about node types, go
      #     to Working with Clusters in the Amazon Redshift Management Guide.
      #     Valid Values: dw.hs1.xlarge | dw.hs1.8xlarge.
      #   * `:master_username` - *required* - (String) The user name associated
      #     with the master user account for the cluster that is being created.
      #     Constraints: Must be 1 - 128 alphanumeric characters. First
      #     character must be a letter. Cannot be a reserved word. A list of
      #     reserved words can be found in Reserved Words in the Amazon
      #     Redshift Developer Guide.
      #   * `:master_user_password` - *required* - (String) The password
      #     associated with the master user account for the cluster that is
      #     being created. Constraints: Must be between 8 and 64 characters in
      #     length. Must contain at least one uppercase letter. Must contain
      #     one lowercase letter. Must contain one number.
      #   * `:cluster_security_groups` - (Array<String>) A list of security
      #     groups to be associated with this cluster. Default: The default
      #     cluster security group for Amazon Redshift.
      #   * `:vpc_security_group_ids` - (Array<String>) A list of Virtual
      #     Private Cloud (VPC) security groups to associate with the cluster.
      #     Default: The default VPC security group is associated. Type: String
      #     list
      #   * `:cluster_subnet_group_name` - (String) A cluster subnet group to
      #     be associated with this cluster. If this parameter is not provided
      #     the resulting cluster will be deployed outside virtual private
      #     cloud (VPC).
      #   * `:availability_zone` - (String) The EC2 Availability Zone (AZ) in
      #     which you want Amazon Redshift to provision the cluster. For
      #     example, if you have several EC2 instances running in a specific
      #     Availability Zone, then you might want the cluster to be
      #     provisioned in the same zone in order to decrease network latency.
      #     Default: A random, system-chosen Availability Zone in the region
      #     that is specified by the endpoint. Example: us-east-1d Constraint:
      #     The specified Availability Zone must be in the same region as the
      #     current endpoint.
      #   * `:preferred_maintenance_window` - (String) The weekly time range
      #     (in UTC) during which automated cluster maintenance can occur.
      #     Format: ddd:hh24:mi-ddd:hh24:mi Default: A 30-minute window
      #     selected at random from an 8-hour block of time per region,
      #     occurring on a random day of the week. The following list shows the
      #     time blocks for each region from which the default maintenance
      #     windows are assigned. US-East (Northern Virginia) Region:
      #     03:00-11:00 UTC US-West (Northern California) Region: 06:00-14:00
      #     UTC EU (Ireland) Region: 22:00-06:00 UTC Asia Pacific (Singapore)
      #     Region: 14:00-22:00 UTC Asia Pacific (Tokyo) Region: 17:00-03:00
      #     UTC Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun
      #     Constraints: Minimum 30-minute window.
      #   * `:cluster_parameter_group_name` - (String) The name of the
      #     parameter group to be associated with this cluster. Default: The
      #     default Amazon Redshift cluster parameter group. For information
      #     about the default parameter group, go to Working with Amazon
      #     Redshift Parameter Groups Constraints: Must be 1 to 255
      #     alphanumeric characters or hyphens. First character must be a
      #     letter. Cannot end with a hyphen or contain two consecutive
      #     hyphens.
      #   * `:automated_snapshot_retention_period` - (Integer) The number of
      #     days that automated snapshots are retained. If the value is 0,
      #     automated snapshots are disabled. Even if automated snapshots are
      #     disabled, you can still create manual snapshots when you want with
      #     CreateClusterSnapshot. Default: 1 Constraints: Must be a value from
      #     0 to 35.
      #   * `:port` - (Integer) The port number on which the cluster accepts
      #     incoming connections. The cluster is accessible only via the JDBC
      #     and ODBC connection strings. Part of the connection string requires
      #     the port on which the cluster will listen for incoming connections.
      #     Default: 5439 Valid Values: 1150-65535 ???
      #   * `:cluster_version` - (String) The version of the Amazon Redshift
      #     engine software that you want to deploy on the cluster. The version
      #     selected runs on all the nodes in the cluster. Constraints: Only
      #     version 1.0 is currently available. Example: 1.0
      #   * `:allow_version_upgrade` - (Boolean) If `true` , upgrades can be
      #     applied during the maintenance window to the Amazon Redshift engine
      #     that is running on the cluster. When a new version of the Amazon
      #     Redshift engine is released, you can request that the service
      #     automatically apply upgrades during the maintenance window to the
      #     Amazon Redshift engine that is running on your cluster. Default:
      #     `true`
      #   * `:number_of_nodes` - (Integer) The number of compute nodes in the
      #     cluster. This parameter is required when the ClusterType parameter
      #     is specified as multi-node. For information about determining how
      #     many nodes you need, go to Working with Clusters in the Amazon
      #     Redshift Management Guide. If you don't specify this parameter, you
      #     get a single-node cluster. When requesting a multi-node cluster,
      #     you must specify the number of nodes that you want in the cluster.
      #     Default: 1 Constraints: Value must be at least 1 and no more than
      #     100.
      #   * `:publicly_accessible` - (Boolean) If `true` , the cluster can be
      #     accessed from a public network.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cluster_identifier` - (String)
      #   * `:node_type` - (String)
      #   * `:cluster_status` - (String)
      #   * `:modify_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:cluster_create_time` - (Time)
      #   * `:automated_snapshot_retention_period` - (Integer)
      #   * `:cluster_security_groups` - (Array<Hash>)
      #     * `:cluster_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:cluster_parameter_groups` - (Array<Hash>)
      #     * `:parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:cluster_subnet_group_name` - (String)
      #   * `:vpc_id` - (String)
      #   * `:availability_zone` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:master_user_password` - (String)
      #     * `:node_type` - (String)
      #     * `:number_of_nodes` - (Integer)
      #     * `:cluster_type` - (String)
      #     * `:cluster_version` - (String)
      #     * `:automated_snapshot_retention_period` - (Integer)
      #   * `:cluster_version` - (String)
      #   * `:allow_version_upgrade` - (Boolean)
      #   * `:number_of_nodes` - (Integer)
      #   * `:publicly_accessible` - (Boolean)

      # @!method create_cluster_parameter_group(options = {})
      # Calls the CreateClusterParameterGroup API operation.
      # @param [Hash] options
      #   * `:parameter_group_name` - *required* - (String) The name of the
      #     cluster parameter group. Constraints: Must be 1 to 255 alphanumeric
      #     characters or hyphens First character must be a letter. Cannot end
      #     with a hyphen or contain two consecutive hyphens. Must be unique
      #     withing your AWS account. This value is stored as a lower-case
      #     string.
      #   * `:parameter_group_family` - *required* - (String) The Amazon
      #     Redshift engine version to which the cluster parameter group
      #     applies. The cluster engine version determines the set of
      #     parameters. To get a list of valid parameter group family names,
      #     you can call DescribeClusterParameterGroups. By default, Amazon
      #     Redshift returns a list of all the parameter groups that are owned
      #     by your AWS account, including the default parameter groups for
      #     each Amazon Redshift engine version. The parameter group family
      #     names associated with the default parameter groups provide you the
      #     valid values. For example, a valid family name is "redshift-1.0".
      #   * `:description` - *required* - (String) A description of the
      #     parameter group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:parameter_group_name` - (String)
      #   * `:parameter_group_family` - (String)
      #   * `:description` - (String)

      # @!method create_cluster_security_group(options = {})
      # Calls the CreateClusterSecurityGroup API operation.
      # @param [Hash] options
      #   * `:cluster_security_group_name` - *required* - (String) The name for
      #     the security group. Amazon Redshift stores the value as a lowercase
      #     string. Constraints: Must contain no more than 255 alphanumeric
      #     characters or hyphens. Must not be "Default". Must be unique for
      #     all security groups that are created by your AWS account. Example:
      #     examplesecuritygroup
      #   * `:description` - *required* - (String) A description for the
      #     security group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cluster_security_group_name` - (String)
      #   * `:description` - (String)
      #   * `:ec_2_security_groups` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:ec2_security_group_name` - (String)
      #     * `:ec2_security_group_owner_id` - (String)
      #   * `:ip_ranges` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:cidrip` - (String)

      # @!method create_cluster_snapshot(options = {})
      # Calls the CreateClusterSnapshot API operation.
      # @param [Hash] options
      #   * `:snapshot_identifier` - *required* - (String) A unique identifier
      #     for the snapshot that you are requesting. This identifier must be
      #     unique for all snapshots within the AWS account. Constraints:
      #     Cannot be null, empty, or blank Must contain from 1 to 255
      #     alphanumeric characters or hyphens First character must be a letter
      #     Cannot end with a hyphen or contain two consecutive hyphens
      #     Example: my-snapshot-id
      #   * `:cluster_identifier` - *required* - (String) The cluster
      #     identifier for which you want a snapshot.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:snapshot_identifier` - (String)
      #   * `:cluster_identifier` - (String)
      #   * `:snapshot_create_time` - (Time)
      #   * `:status` - (String)
      #   * `:port` - (Integer)
      #   * `:availability_zone` - (String)
      #   * `:cluster_create_time` - (Time)
      #   * `:master_username` - (String)
      #   * `:cluster_version` - (String)
      #   * `:snapshot_type` - (String)
      #   * `:node_type` - (String)
      #   * `:number_of_nodes` - (Integer)
      #   * `:db_name` - (String)
      #   * `:vpc_id` - (String)

      # @!method create_cluster_subnet_group(options = {})
      # Calls the CreateClusterSubnetGroup API operation.
      # @param [Hash] options
      #   * `:cluster_subnet_group_name` - *required* - (String) The name for
      #     the subnet group. Amazon Redshift stores the value as a lowercase
      #     string. Constraints: Must contain no more than 255 alphanumeric
      #     characters or hyphens. Must not be "Default". Must be unique for
      #     all subnet groups that are created by your AWS account. Example:
      #     examplesubnetgroup
      #   * `:description` - *required* - (String) A description for the subnet
      #     group.
      #   * `:subnet_ids` - *required* - (Array<String>) An array of VPC subnet
      #     IDs. A maximum of 20 subnets can be modified in a single request.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cluster_subnet_group_name` - (String)
      #   * `:description` - (String)
      #   * `:vpc_id` - (String)
      #   * `:subnet_group_status` - (String)
      #   * `:subnets` - (Array<Hash>)
      #     * `:subnet_identifier` - (String)
      #     * `:subnet_availability_zone` - (Hash)
      #       * `:name` - (String)
      #     * `:subnet_status` - (String)

      # @!method delete_cluster(options = {})
      # Calls the DeleteCluster API operation.
      # @param [Hash] options
      #   * `:cluster_identifier` - *required* - (String) The identifier of the
      #     cluster to be deleted. Constraints: Must contain lowercase
      #     characters. Must contain from 1 to 63 alphanumeric characters or
      #     hyphens. First character must be a letter. Cannot end with a hyphen
      #     or contain two consecutive hyphens.
      #   * `:skip_final_cluster_snapshot` - (Boolean) Determines whether a
      #     final snapshot of the cluster is created before Amazon Redshift
      #     deletes the cluster. If `true` , a final cluster snapshot is not
      #     created. If `false` , a final cluster snapshot is created before
      #     the cluster is deleted. The FinalClusterSnapshotIdentifier
      #     parameter must be specified if SkipFinalClusterSnapshot is `false`
      #     . Default: `false`
      #   * `:final_cluster_snapshot_identifier` - (String) The identifier of
      #     the final snapshot that is to be created immediately before
      #     deleting the cluster. If this parameter is provided,
      #     SkipFinalClusterSnapshot must be `false` . Constraints: Must be 1
      #     to 255 alphanumeric characters. First character must be a letter.
      #     Cannot end with a hyphen or contain two consecutive hyphens.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cluster_identifier` - (String)
      #   * `:node_type` - (String)
      #   * `:cluster_status` - (String)
      #   * `:modify_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:cluster_create_time` - (Time)
      #   * `:automated_snapshot_retention_period` - (Integer)
      #   * `:cluster_security_groups` - (Array<Hash>)
      #     * `:cluster_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:cluster_parameter_groups` - (Array<Hash>)
      #     * `:parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:cluster_subnet_group_name` - (String)
      #   * `:vpc_id` - (String)
      #   * `:availability_zone` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:master_user_password` - (String)
      #     * `:node_type` - (String)
      #     * `:number_of_nodes` - (Integer)
      #     * `:cluster_type` - (String)
      #     * `:cluster_version` - (String)
      #     * `:automated_snapshot_retention_period` - (Integer)
      #   * `:cluster_version` - (String)
      #   * `:allow_version_upgrade` - (Boolean)
      #   * `:number_of_nodes` - (Integer)
      #   * `:publicly_accessible` - (Boolean)

      # @!method delete_cluster_parameter_group(options = {})
      # Calls the DeleteClusterParameterGroup API operation.
      # @param [Hash] options
      #   * `:parameter_group_name` - *required* - (String) The name of the
      #     parameter group to be deleted. Constraints: Must be the name of an
      #     existing cluster parameter group. Cannot delete a default cluster
      #     parameter group.
      # @return [Core::Response]

      # @!method delete_cluster_security_group(options = {})
      # Calls the DeleteClusterSecurityGroup API operation.
      # @param [Hash] options
      #   * `:cluster_security_group_name` - *required* - (String) The name of
      #     the cluster security group to be deleted.
      # @return [Core::Response]

      # @!method delete_cluster_snapshot(options = {})
      # Calls the DeleteClusterSnapshot API operation.
      # @param [Hash] options
      #   * `:snapshot_identifier` - *required* - (String) The unique
      #     identifier of the manual snapshot to be deleted. Constraints: Must
      #     be the name of an existing snapshot that is in the available state.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:snapshot_identifier` - (String)
      #   * `:cluster_identifier` - (String)
      #   * `:snapshot_create_time` - (Time)
      #   * `:status` - (String)
      #   * `:port` - (Integer)
      #   * `:availability_zone` - (String)
      #   * `:cluster_create_time` - (Time)
      #   * `:master_username` - (String)
      #   * `:cluster_version` - (String)
      #   * `:snapshot_type` - (String)
      #   * `:node_type` - (String)
      #   * `:number_of_nodes` - (Integer)
      #   * `:db_name` - (String)
      #   * `:vpc_id` - (String)

      # @!method delete_cluster_subnet_group(options = {})
      # Calls the DeleteClusterSubnetGroup API operation.
      # @param [Hash] options
      #   * `:cluster_subnet_group_name` - *required* - (String) The name of
      #     the cluster subnet group name to be deleted.
      # @return [Core::Response]

      # @!method describe_cluster_parameter_groups(options = {})
      # Calls the DescribeClusterParameterGroups API operation.
      # @param [Hash] options
      #   * `:parameter_group_name` - (String) The name of a specific parameter
      #     group for which to return details. By default, details about all
      #     parameter groups and the default parameter group are returned.
      #   * `:max_records` - (Integer) The maximum number of parameter group
      #     records to include in the response. If more records exist than the
      #     specified MaxRecords value, the response includes a marker that you
      #     can use in a subsequent DescribeClusterParameterGroups request to
      #     retrieve the next set of records. Default: 100 Constraints: Value
      #     must be at least 20 and no more than 100.
      #   * `:marker` - (String) An optional marker returned by a previous
      #     DescribeClusterParameterGroups request to indicate the first
      #     parameter group that the current request will return.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:parameter_groups` - (Array<Hash>)
      #     * `:parameter_group_name` - (String)
      #     * `:parameter_group_family` - (String)
      #     * `:description` - (String)

      # @!method describe_cluster_parameters(options = {})
      # Calls the DescribeClusterParameters API operation.
      # @param [Hash] options
      #   * `:parameter_group_name` - *required* - (String) The name of a
      #     cluster parameter group for which to return details.
      #   * `:source` - (String) The parameter types to return. Specify user to
      #     show parameters that are different form the default. Similarly,
      #     specify engine-default to show parameters that are the same as the
      #     default parameter group. Default: All parameter types returned.
      #     Valid Values: user | engine-default
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, response includes a marker that you can specify
      #     in your subsequent request to retrieve remaining result. Default:
      #     100 Constraints: Value must be at least 20 and no more than 100.
      #   * `:marker` - (String) An optional marker returned from a previous
      #     DescribeClusterParameters request. If this parameter is specified,
      #     the response includes only records beyond the specified marker, up
      #     to the value specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:parameters` - (Array<Hash>)
      #     * `:parameter_name` - (String)
      #     * `:parameter_value` - (String)
      #     * `:description` - (String)
      #     * `:source` - (String)
      #     * `:data_type` - (String)
      #     * `:allowed_values` - (String)
      #     * `:is_modifiable` - (Boolean)
      #     * `:minimum_engine_version` - (String)
      #   * `:marker` - (String)

      # @!method describe_cluster_security_groups(options = {})
      # Calls the DescribeClusterSecurityGroups API operation.
      # @param [Hash] options
      #   * `:cluster_security_group_name` - (String) The name of a cluster
      #     security group for which you are requesting details. You can
      #     specify either the Marker parameter or a ClusterSecurityGroupName
      #     parameter, but not both. Example: securitygroup1
      #   * `:max_records` - (Integer) The maximum number of records to be
      #     included in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response, which you
      #     can use in a subsequent DescribeClusterSecurityGroups request.
      #     Default: 100 Constraints: Value must be at least 20 and no more
      #     than 100.
      #   * `:marker` - (String) An optional marker returned by a previous
      #     DescribeClusterSecurityGroups request to indicate the first
      #     security group that the current request will return. You can
      #     specify either the Marker parameter or a ClusterSecurityGroupName
      #     parameter, but not both.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:cluster_security_groups` - (Array<Hash>)
      #     * `:cluster_security_group_name` - (String)
      #     * `:description` - (String)
      #     * `:ec_2_security_groups` - (Array<Hash>)
      #       * `:status` - (String)
      #       * `:ec2_security_group_name` - (String)
      #       * `:ec2_security_group_owner_id` - (String)
      #     * `:ip_ranges` - (Array<Hash>)
      #       * `:status` - (String)
      #       * `:cidrip` - (String)

      # @!method describe_cluster_snapshots(options = {})
      # Calls the DescribeClusterSnapshots API operation.
      # @param [Hash] options
      #   * `:cluster_identifier` - (String) The identifier of the cluster for
      #     which information about snapshots is requested.
      #   * `:snapshot_identifier` - (String) The snapshot identifier of the
      #     snapshot about which to return information.
      #   * `:snapshot_type` - (String) The type of snapshots for which you are
      #     requesting information. By default, snapshots of all types are
      #     returned. Valid Values: automated | manual
      #   * `:start_time` - (String<ISO8601 datetime>) A value that requests
      #     only snapshots created at or after the specified time. The time
      #     value is specified in ISO 8601 format. For more information about
      #     ISO 8601, go to the ISO8601 Wikipedia page. Example:
      #     2012-07-16T18:00:00Z
      #   * `:end_time` - (String<ISO8601 datetime>) A time value that requests
      #     only snapshots created at or before the specified time. The time
      #     value is specified in ISO 8601 format. For more information about
      #     ISO 8601, go to the ISO8601 Wikipedia page. Example:
      #     2012-07-16T18:00:00Z
      #   * `:max_records` - (Integer) The maximum number of snapshot records
      #     to include in the response. If more records exist than the
      #     specified MaxRecords value, the response returns a marker that you
      #     can use in a subsequent DescribeClusterSnapshots request in order
      #     to retrieve the next set of snapshot records. Default: 100
      #     Constraints: Must be at least 20 and no more than 100.
      #   * `:marker` - (String) An optional marker returned by a previous
      #     DescribeClusterSnapshots request to indicate the first snapshot
      #     that the request will return.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:snapshots` - (Array<Hash>)
      #     * `:snapshot_identifier` - (String)
      #     * `:cluster_identifier` - (String)
      #     * `:snapshot_create_time` - (Time)
      #     * `:status` - (String)
      #     * `:port` - (Integer)
      #     * `:availability_zone` - (String)
      #     * `:cluster_create_time` - (Time)
      #     * `:master_username` - (String)
      #     * `:cluster_version` - (String)
      #     * `:snapshot_type` - (String)
      #     * `:node_type` - (String)
      #     * `:number_of_nodes` - (Integer)
      #     * `:db_name` - (String)
      #     * `:vpc_id` - (String)

      # @!method describe_cluster_subnet_groups(options = {})
      # Calls the DescribeClusterSubnetGroups API operation.
      # @param [Hash] options
      #   * `:cluster_subnet_group_name` - (String) The name of the cluster
      #     subnet group for which information is requested.
      #   * `:max_records` - (Integer) The maximum number of cluster subnet
      #     group records to include in the response. If more records exist
      #     than the specified MaxRecords value, the response returns a marker
      #     that you can use in a subsequent DescribeClusterSubnetGroups
      #     request in order to retrieve the next set of cluster subnet group
      #     records. Default: 100 Constraints: Must be at least 20 and no more
      #     than 100.
      #   * `:marker` - (String) An optional marker returned by a previous
      #     DescribeClusterSubnetGroups request to indicate the first cluster
      #     subnet group that the request will return.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:cluster_subnet_groups` - (Array<Hash>)
      #     * `:cluster_subnet_group_name` - (String)
      #     * `:description` - (String)
      #     * `:vpc_id` - (String)
      #     * `:subnet_group_status` - (String)
      #     * `:subnets` - (Array<Hash>)
      #       * `:subnet_identifier` - (String)
      #       * `:subnet_availability_zone` - (Hash)
      #         * `:name` - (String)
      #       * `:subnet_status` - (String)

      # @!method describe_cluster_versions(options = {})
      # Calls the DescribeClusterVersions API operation.
      # @param [Hash] options
      #   * `:cluster_version` - (String) The specific cluster version to
      #     return. Example: 1.0
      #   * `:cluster_parameter_group_family` - (String) The name of a specific
      #     cluster parameter group family to return details for. Constraints:
      #     Must be 1 to 255 alphanumeric characters First character must be a
      #     letter Cannot end with a hyphen or contain two consecutive hyphens
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more than the MaxRecords value is available, a
      #     marker is included in the response so that the following results
      #     can be retrieved. Default: 100 Constraints: Value must be at least
      #     20 and no more than 100.
      #   * `:marker` - (String) The marker returned from a previous request.
      #     If this parameter is specified, the response includes records
      #     beyond the marker only, up to MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:cluster_versions` - (Array<Hash>)
      #     * `:cluster_version` - (String)
      #     * `:cluster_parameter_group_family` - (String)
      #     * `:description` - (String)

      # @!method describe_clusters(options = {})
      # Calls the DescribeClusters API operation.
      # @param [Hash] options
      #   * `:cluster_identifier` - (String) The unique identifier of a cluster
      #     whose properties you are requesting. This parameter isn't case
      #     sensitive. The default is that all clusters defined for an account
      #     are returned.
      #   * `:max_records` - (Integer) The maximum number of records that the
      #     response can include. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response that can be
      #     used in a new DescribeClusters request to continue listing results.
      #     Default: 100 Constraints: Value must be at least 20 and no more
      #     than 100.
      #   * `:marker` - (String) An optional marker returned by a previous
      #     DescribeClusters request to indicate the first cluster that the
      #     current DescribeClusters request will return. You can specify
      #     either a Marker parameter or a ClusterIdentifier parameter in a
      #     DescribeClusters request, but not both.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:clusters` - (Array<Hash>)
      #     * `:cluster_identifier` - (String)
      #     * `:node_type` - (String)
      #     * `:cluster_status` - (String)
      #     * `:modify_status` - (String)
      #     * `:master_username` - (String)
      #     * `:db_name` - (String)
      #     * `:endpoint` - (Hash)
      #       * `:address` - (String)
      #       * `:port` - (Integer)
      #     * `:cluster_create_time` - (Time)
      #     * `:automated_snapshot_retention_period` - (Integer)
      #     * `:cluster_security_groups` - (Array<Hash>)
      #       * `:cluster_security_group_name` - (String)
      #       * `:status` - (String)
      #     * `:vpc_security_groups` - (Array<Hash>)
      #       * `:vpc_security_group_id` - (String)
      #       * `:status` - (String)
      #     * `:cluster_parameter_groups` - (Array<Hash>)
      #       * `:parameter_group_name` - (String)
      #       * `:parameter_apply_status` - (String)
      #     * `:cluster_subnet_group_name` - (String)
      #     * `:vpc_id` - (String)
      #     * `:availability_zone` - (String)
      #     * `:preferred_maintenance_window` - (String)
      #     * `:pending_modified_values` - (Hash)
      #       * `:master_user_password` - (String)
      #       * `:node_type` - (String)
      #       * `:number_of_nodes` - (Integer)
      #       * `:cluster_type` - (String)
      #       * `:cluster_version` - (String)
      #       * `:automated_snapshot_retention_period` - (Integer)
      #     * `:cluster_version` - (String)
      #     * `:allow_version_upgrade` - (Boolean)
      #     * `:number_of_nodes` - (Integer)
      #     * `:publicly_accessible` - (Boolean)

      # @!method describe_default_cluster_parameters(options = {})
      # Calls the DescribeDefaultClusterParameters API operation.
      # @param [Hash] options
      #   * `:parameter_group_family` - *required* - (String) The name of the
      #     cluster parameter group family.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved. Default: 100 Constraints: Value
      #     must be at least 20 and no more than 100.
      #   * `:marker` - (String) An optional marker returned from a previous
      #     DescribeDefaultClusterParameters request. If this parameter is
      #     specified, the response includes only records beyond the marker, up
      #     to the value specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:parameter_group_family` - (String)
      #   * `:marker` - (String)
      #   * `:parameters` - (Array<Hash>)
      #     * `:parameter_name` - (String)
      #     * `:parameter_value` - (String)
      #     * `:description` - (String)
      #     * `:source` - (String)
      #     * `:data_type` - (String)
      #     * `:allowed_values` - (String)
      #     * `:is_modifiable` - (Boolean)
      #     * `:minimum_engine_version` - (String)

      # @!method describe_events(options = {})
      # Calls the DescribeEvents API operation.
      # @param [Hash] options
      #   * `:source_identifier` - (String) The identifier of the event source
      #     for which events will be returned. If this parameter is not
      #     specified, then all sources are included in the response.
      #     Constraints: If SourceIdentifier is supplied, SourceType must also
      #     be provided. Specify a cluster identifier when SourceType is
      #     cluster. Specify a cluster security group name when SourceType is
      #     cluster-security-group. Specify a cluster parameter group name when
      #     SourceType is cluster-parameter-group. Specify a cluster snapshot
      #     identifier when SourceType is cluster-snapshot.
      #   * `:source_type` - (String) The event source to retrieve events for.
      #     If no value is specified, all events are returned. Constraints: If
      #     SourceType is supplied, SourceIdentifier must also be provided.
      #     Specify cluster when SourceIdentifier is a cluster identifier.
      #     Specify cluster-security-group when SourceIdentifier is a cluster
      #     security group name. Specify cluster-parameter-group when
      #     SourceIdentifier is a cluster parameter group name. Specify
      #     cluster-snapshot when SourceIdentifier is a cluster snapshot
      #     identifier. Valid values include:
      #     * `cluster`
      #     * `cluster-parameter-group`
      #     * `cluster-security-group`
      #     * `cluster-snapshot`
      #   * `:start_time` - (String<ISO8601 datetime>) The beginning of the
      #     time interval to retrieve events for, specified in ISO 8601 format.
      #     For more information about ISO 8601, go to the ISO8601 Wikipedia
      #     page. Example: 2009-07-08T18:00Z
      #   * `:end_time` - (String<ISO8601 datetime>) The end of the time
      #     interval for which to retrieve events, specified in ISO 8601
      #     format. For more information about ISO 8601, go to the ISO8601
      #     Wikipedia page. Example: 2009-07-08T18:00Z
      #   * `:duration` - (Integer) The number of minutes prior to the time of
      #     the request for which to retrieve events. For example, if the
      #     request is sent at 18:00 and you specify a druration of 60, then
      #     only events which have occurred after 17:00 will be returned.
      #     Default: 60
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved. Default: 100 Constraints: Value
      #     must be at least 20 and no more than 100.
      #   * `:marker` - (String) An optional marker returned from a previous
      #     DescribeEvents request. If this parameter is specified, the
      #     response includes only records beyond the marker, up to the value
      #     specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:events` - (Array<Hash>)
      #     * `:source_identifier` - (String)
      #     * `:source_type` - (String)
      #     * `:message` - (String)
      #     * `:date` - (Time)

      # @!method describe_orderable_cluster_options(options = {})
      # Calls the DescribeOrderableClusterOptions API operation.
      # @param [Hash] options
      #   * `:cluster_version` - (String) The version filter value. Specify
      #     this parameter to show only the available offerings matching the
      #     specified version. Default: All versions. Constraints: Must be one
      #     of the version returned from DescribeClusterVersions.
      #   * `:node_type` - (String) The node type filter value. Specify this
      #     parameter to show only the available offerings matching the
      #     specified node type.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved. Default: 100 Constraints:
      #     minimum 20, maximum 100.
      #   * `:marker` - (String) An optional marker returned from a previous
      #     DescribeOrderableClusterOptions request. If this parameter is
      #     specified, the response includes only records beyond the marker, up
      #     to the value specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:orderable_cluster_options` - (Array<Hash>)
      #     * `:cluster_version` - (String)
      #     * `:cluster_type` - (String)
      #     * `:node_type` - (String)
      #     * `:availability_zones` - (Array<Hash>)
      #       * `:name` - (String)
      #   * `:marker` - (String)

      # @!method describe_reserved_node_offerings(options = {})
      # Calls the DescribeReservedNodeOfferings API operation.
      # @param [Hash] options
      #   * `:reserved_node_offering_id` - (String) The unique identifier for
      #     the offering.
      #   * `:node_type` - (String) The node type you can purchase. For more
      #     information about managing parameter groups, go to Working with
      #     Clusters in the Amazon Redshift Management Guide.
      #   * `:duration` - (String) The duration, in seconds, for which the
      #     offering will reserve the node.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved. Default: 100 Constraints:
      #     minimum 20, maximum 100.
      #   * `:marker` - (String) An optional marker returned by a previous
      #     DescribeReservedNodeOfferings request to indicate the first
      #     offering that the request will return. You can specify either a
      #     Marker parameter or a ClusterIdentifier parameter in a
      #     DescribeClusters request, but not both.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:reserved_node_offerings` - (Array<Hash>)
      #     * `:reserved_node_offering_id` - (String)
      #     * `:node_type` - (String)
      #     * `:duration` - (Integer)
      #     * `:fixed_price` - (Numeric)
      #     * `:usage_price` - (Numeric)
      #     * `:currency_code` - (String)
      #     * `:offering_type` - (String)
      #     * `:recurring_charges` - (Array<Hash>)
      #       * `:recurring_charge_amount` - (Numeric)
      #       * `:recurring_charge_frequency` - (String)

      # @!method describe_reserved_nodes(options = {})
      # Calls the DescribeReservedNodes API operation.
      # @param [Hash] options
      #   * `:reserved_node_id` - (String) Customer specified identifier for
      #     the node reservation.
      #   * `:reserved_node_offering_id` - (String) The reserved node offering
      #     identifier.
      #   * `:node_type` - (String) The node type reserved.
      #   * `:duration` - (String) Duration, in seconds, for which the node is
      #     reserved.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved. Default: 100 Constraints:
      #     minimum 20, maximum 100.
      #   * `:marker` - (String) An optional marker returned by a previous
      #     DescribeReservedNodes request to indicate the first parameter group
      #     that the current request will return.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:reserved_nodes` - (Array<Hash>)
      #     * `:reserved_node_id` - (String)
      #     * `:reserved_node_offering_id` - (String)
      #     * `:node_type` - (String)
      #     * `:start_time` - (Time)
      #     * `:duration` - (Integer)
      #     * `:fixed_price` - (Numeric)
      #     * `:usage_price` - (Numeric)
      #     * `:currency_code` - (String)
      #     * `:node_count` - (Integer)
      #     * `:state` - (String)
      #     * `:offering_type` - (String)
      #     * `:recurring_charges` - (Array<Hash>)
      #       * `:recurring_charge_amount` - (Numeric)
      #       * `:recurring_charge_frequency` - (String)

      # @!method describe_resize(options = {})
      # Calls the DescribeResize API operation.
      # @param [Hash] options
      #   * `:cluster_identifier` - *required* - (String) The unique identifier
      #     of a cluster whose resize progress you are requesting. This
      #     parameter isn't case sensitive. The default is that all clusters
      #     defined for an account are returned.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:target_node_type` - (String)
      #   * `:target_number_of_nodes` - (Integer)
      #   * `:target_cluster_type` - (String)
      #   * `:status` - (String)
      #   * `:import_tables_completed` - (Array<String>)
      #   * `:import_tables_in_progress` - (Array<String>)
      #   * `:import_tables_not_started` - (Array<String>)

      # @!method modify_cluster(options = {})
      # Calls the ModifyCluster API operation.
      # @param [Hash] options
      #   * `:cluster_identifier` - *required* - (String) The unique identifier
      #     of the cluster to be modified. Example: examplecluster
      #   * `:cluster_type` - (String) The new cluster type. When you submit
      #     your cluster resize request, your existing cluster goes into a
      #     read-only mode. After Amazon Redshift provisions a new cluster
      #     based on your resize requirements, there will be outage for a
      #     period while the old cluster is deleted and your connection is
      #     switched to the new cluster. You can use DescribeResize to track
      #     the progress of the resize request. Valid Values: multi-node |
      #     single-node
      #   * `:node_type` - (String) The new node type of the cluster. If you
      #     specify a new node type you must also specify the number of nodes
      #     parameter also. When you submit your cluster resize request, your
      #     existing cluster goes into a read-only mode. After Amazon Redshift
      #     provisions a new cluster based on your resize requirements, there
      #     will be outage for a period while the old cluster is deleted and
      #     your connection is switched to the new cluster. You can use
      #     DescribeResize to track the progress of the resize request. Valid
      #     Values: dw.hs1.xlarge | dw.hs1.8xlarge
      #   * `:number_of_nodes` - (Integer) The new number of nodes of the
      #     cluster. If you specify a new number of nodes, you must also
      #     specify the node type parameter also. When you submit your cluster
      #     resize request, your existing cluster goes into a read-only mode.
      #     After Amazon Redshift provisions a new cluster based on your resize
      #     requirements, there will be outage for a period while the old
      #     cluster is deleted and your connection is switched to the new
      #     cluster. You can use DescribeResize to track the progress of the
      #     resize request. Valid Values: Integer greater than 0
      #   * `:cluster_security_groups` - (Array<String>) A list of cluster
      #     security groups to be authorized on this cluster. This change is
      #     asynchronously applied as soon as possible. Security groups
      #     currently associated with the cluster and not in the list of groups
      #     to apply, will be revoked from the cluster. Constraints: Must be 1
      #     to 255 alphanumeric characters or hyphens First character must be a
      #     letter Cannot end with a hyphen or contain two consecutive hyphens
      #   * `:vpc_security_group_ids` - (Array<String>) A list of Virtual
      #     Private Cloud (VPC) security groups to associate with the cluster.
      #   * `:master_user_password` - (String) The new password for the cluster
      #     master user. This change is asynchronously applied as soon as
      #     possible. Between the time of the request and the completion of the
      #     request, the MasterUserPassword element exists in the
      #     PendingModifiedValues element of the operation response. Operations
      #     never return the password, so this operation provides a way to
      #     regain access to the master user account for a cluster if the
      #     password is lost. Default: Uses existing setting. Constraints: Must
      #     be between 8 and 64 characters in length. Must contain at least one
      #     uppercase letter. Must contain one lowercase letter. Must contain
      #     one number.
      #   * `:cluster_parameter_group_name` - (String) The name of the cluster
      #     parameter group to apply to this cluster. This change is applied
      #     only after the cluster is rebooted. To reboot a cluster use
      #     RebootCluster. Default: Uses existing setting. Constraints: The
      #     cluster parameter group must be in the same parameter group family
      #     that matches the cluster version.
      #   * `:automated_snapshot_retention_period` - (Integer) The number of
      #     days that automated snapshots are retained. If the value is 0,
      #     automated snapshots are disabled. Even if automated snapshots are
      #     disabled, you can still create manual snapshots when you want with
      #     CreateClusterSnapshot. If you decrease the automated snapshot
      #     retention period from its current value, existing automated
      #     snapshots which fall outside of the new retention period will be
      #     immediately deleted. Default: Uses existing setting. Constraints:
      #     Must be a value from 0 to 35.
      #   * `:preferred_maintenance_window` - (String) The weekly time range
      #     (in UTC) during which system maintenance can occur, if necessary.
      #     If system maintenance is necessary during the window, it may result
      #     in an outage. This maintenance window change is made immediately.
      #     If the new maintenance window indicates the current time, there
      #     must be at least 120 minutes between the current time and end of
      #     the window in order to ensure that pending changes are applied.
      #     Default: Uses existing setting. Format: ddd:hh24:mi-ddd:hh24:mi,
      #     for example wed:07:30-wed:08:00. Valid Days: Mon | Tue | Wed | Thu
      #     | Fri | Sat | Sun Constraints: Must be at least 30 minutes.
      #   * `:cluster_version` - (String) The new version number of the Amazon
      #     Redshift engine to upgrade to. For major version upgrades, if a
      #     non-default cluster parameter group is currently in use, a new
      #     cluster parameter group in the cluster parameter group family for
      #     the new version must be specified. The new cluster parameter group
      #     can be the default for that cluster parameter group family. For
      #     more information about managing parameter groups, go to Working
      #     with Parameter Groups in the Amazon Redshift Management Guide.
      #     Example: 1.0
      #   * `:allow_version_upgrade` - (Boolean) If `true` , upgrades will be
      #     applied automatically to the cluster during the maintenance window.
      #     Default: `false`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cluster_identifier` - (String)
      #   * `:node_type` - (String)
      #   * `:cluster_status` - (String)
      #   * `:modify_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:cluster_create_time` - (Time)
      #   * `:automated_snapshot_retention_period` - (Integer)
      #   * `:cluster_security_groups` - (Array<Hash>)
      #     * `:cluster_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:cluster_parameter_groups` - (Array<Hash>)
      #     * `:parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:cluster_subnet_group_name` - (String)
      #   * `:vpc_id` - (String)
      #   * `:availability_zone` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:master_user_password` - (String)
      #     * `:node_type` - (String)
      #     * `:number_of_nodes` - (Integer)
      #     * `:cluster_type` - (String)
      #     * `:cluster_version` - (String)
      #     * `:automated_snapshot_retention_period` - (Integer)
      #   * `:cluster_version` - (String)
      #   * `:allow_version_upgrade` - (Boolean)
      #   * `:number_of_nodes` - (Integer)
      #   * `:publicly_accessible` - (Boolean)

      # @!method modify_cluster_parameter_group(options = {})
      # Calls the ModifyClusterParameterGroup API operation.
      # @param [Hash] options
      #   * `:parameter_group_name` - *required* - (String) The name of the
      #     parameter group to be modified.
      #   * `:parameters` - *required* - (Array<Hash>) An array of parameters
      #     to be modified. A maximum of 20 parameters can be modified in a
      #     single request. For each parameter to be modified, you must supply
      #     at least the parameter name and parameter value; other name-value
      #     pairs of the parameter are optional.
      #     * `:parameter_name` - (String) The name of the parameter.
      #     * `:parameter_value` - (String) The value of the parameter.
      #     * `:description` - (String) A description of the parameter.
      #     * `:source` - (String) The source of the parameter value, such as
      #       "engine-default" or "user".
      #     * `:data_type` - (String) The data type of the parameter.
      #     * `:allowed_values` - (String) The valid range of values for the
      #       parameter.
      #     * `:is_modifiable` - (Boolean) If `true` , the parameter can be
      #       modified. Some parameters have security or operational
      #       implications that prevent them from being changed.
      #     * `:minimum_engine_version` - (String) The earliest engine version
      #       to which the parameter can apply.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:parameter_group_name` - (String)
      #   * `:parameter_group_status` - (String)

      # @!method modify_cluster_subnet_group(options = {})
      # Calls the ModifyClusterSubnetGroup API operation.
      # @param [Hash] options
      #   * `:cluster_subnet_group_name` - *required* - (String) The name of
      #     the parameter group to be modified.
      #   * `:description` - (String) The name of the parameter group to be
      #     modified.
      #   * `:subnet_ids` - *required* - (Array<String>) An array of VPC subnet
      #     IDs. A maximum of 20 subnets can be modified in a single request.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cluster_subnet_group_name` - (String)
      #   * `:description` - (String)
      #   * `:vpc_id` - (String)
      #   * `:subnet_group_status` - (String)
      #   * `:subnets` - (Array<Hash>)
      #     * `:subnet_identifier` - (String)
      #     * `:subnet_availability_zone` - (Hash)
      #       * `:name` - (String)
      #     * `:subnet_status` - (String)

      # @!method purchase_reserved_node_offering(options = {})
      # Calls the PurchaseReservedNodeOffering API operation.
      # @param [Hash] options
      #   * `:reserved_node_offering_id` - *required* - (String) The unique
      #     identifier of the reserved node offering you want to purchase.
      #   * `:reserved_node_id` - (String)
      #   * `:node_count` - (Integer) The number of reserved nodes you want to
      #     purchase. Default: 1
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:reserved_node_id` - (String)
      #   * `:reserved_node_offering_id` - (String)
      #   * `:node_type` - (String)
      #   * `:start_time` - (Time)
      #   * `:duration` - (Integer)
      #   * `:fixed_price` - (Numeric)
      #   * `:usage_price` - (Numeric)
      #   * `:currency_code` - (String)
      #   * `:node_count` - (Integer)
      #   * `:state` - (String)
      #   * `:offering_type` - (String)
      #   * `:recurring_charges` - (Array<Hash>)
      #     * `:recurring_charge_amount` - (Numeric)
      #     * `:recurring_charge_frequency` - (String)

      # @!method reboot_cluster(options = {})
      # Calls the RebootCluster API operation.
      # @param [Hash] options
      #   * `:cluster_identifier` - *required* - (String) The cluster
      #     identifier.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cluster_identifier` - (String)
      #   * `:node_type` - (String)
      #   * `:cluster_status` - (String)
      #   * `:modify_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:cluster_create_time` - (Time)
      #   * `:automated_snapshot_retention_period` - (Integer)
      #   * `:cluster_security_groups` - (Array<Hash>)
      #     * `:cluster_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:cluster_parameter_groups` - (Array<Hash>)
      #     * `:parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:cluster_subnet_group_name` - (String)
      #   * `:vpc_id` - (String)
      #   * `:availability_zone` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:master_user_password` - (String)
      #     * `:node_type` - (String)
      #     * `:number_of_nodes` - (Integer)
      #     * `:cluster_type` - (String)
      #     * `:cluster_version` - (String)
      #     * `:automated_snapshot_retention_period` - (Integer)
      #   * `:cluster_version` - (String)
      #   * `:allow_version_upgrade` - (Boolean)
      #   * `:number_of_nodes` - (Integer)
      #   * `:publicly_accessible` - (Boolean)

      # @!method reset_cluster_parameter_group(options = {})
      # Calls the ResetClusterParameterGroup API operation.
      # @param [Hash] options
      #   * `:parameter_group_name` - *required* - (String) The name of the
      #     cluster parameter group to be reset.
      #   * `:reset_all_parameters` - (Boolean) If `true` , all parameters in
      #     the specified parameter group will be reset to their default
      #     values. Default: `true`
      #   * `:parameters` - (Array<Hash>) An array of names of parameters to be
      #     reset. If ResetAllParameters option is not used, then at least one
      #     parameter name must be supplied. Constraints: A maximum of 20
      #     parameters can be reset in a single request.
      #     * `:parameter_name` - (String) The name of the parameter.
      #     * `:parameter_value` - (String) The value of the parameter.
      #     * `:description` - (String) A description of the parameter.
      #     * `:source` - (String) The source of the parameter value, such as
      #       "engine-default" or "user".
      #     * `:data_type` - (String) The data type of the parameter.
      #     * `:allowed_values` - (String) The valid range of values for the
      #       parameter.
      #     * `:is_modifiable` - (Boolean) If `true` , the parameter can be
      #       modified. Some parameters have security or operational
      #       implications that prevent them from being changed.
      #     * `:minimum_engine_version` - (String) The earliest engine version
      #       to which the parameter can apply.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:parameter_group_name` - (String)
      #   * `:parameter_group_status` - (String)

      # @!method restore_from_cluster_snapshot(options = {})
      # Calls the RestoreFromClusterSnapshot API operation.
      # @param [Hash] options
      #   * `:cluster_identifier` - *required* - (String) The identifier of the
      #     cluster that will be created from restoring the snapshot.
      #     Constraints: Must contain from 1 to 63 alphanumeric characters or
      #     hyphens. Alphabetic characters must be lowercase. First character
      #     must be a letter. Cannot end with a hyphen or contain two
      #     consecutive hyphens. Must be unique for all clusters within an AWS
      #     account.
      #   * `:snapshot_identifier` - *required* - (String) The name of the
      #     snapshot from which to create the new cluster. This parameter isn't
      #     case sensitive. Example: my-snapshot-id
      #   * `:port` - (Integer) The port number on which the cluster accepts
      #     connections. Default: The same port as the original cluster.
      #     Constraints: Must be between 1115 and 65535.
      #   * `:availability_zone` - (String) The Amazon EC2 Availability Zone in
      #     which to restore the cluster. Default: A random, system-chosen
      #     Availability Zone. Example: us-east-1a
      #   * `:allow_version_upgrade` - (Boolean) If `true` , upgrades can be
      #     applied during the maintenance window to the Amazon Redshift engine
      #     that is running on the cluster. Default: `true`
      #   * `:cluster_subnet_group_name` - (String) The name of the subnet
      #     group where you want to cluster restored. A snapshot of cluster in
      #     VPC can be restored only in VPC. Therefore, you must provide subnet
      #     group name where you want the cluster restored.
      #   * `:publicly_accessible` - (Boolean) If `true` , the cluster can be
      #     accessed from a public network.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cluster_identifier` - (String)
      #   * `:node_type` - (String)
      #   * `:cluster_status` - (String)
      #   * `:modify_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:cluster_create_time` - (Time)
      #   * `:automated_snapshot_retention_period` - (Integer)
      #   * `:cluster_security_groups` - (Array<Hash>)
      #     * `:cluster_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:cluster_parameter_groups` - (Array<Hash>)
      #     * `:parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:cluster_subnet_group_name` - (String)
      #   * `:vpc_id` - (String)
      #   * `:availability_zone` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:master_user_password` - (String)
      #     * `:node_type` - (String)
      #     * `:number_of_nodes` - (Integer)
      #     * `:cluster_type` - (String)
      #     * `:cluster_version` - (String)
      #     * `:automated_snapshot_retention_period` - (Integer)
      #   * `:cluster_version` - (String)
      #   * `:allow_version_upgrade` - (Boolean)
      #   * `:number_of_nodes` - (Integer)
      #   * `:publicly_accessible` - (Boolean)

      # @!method revoke_cluster_security_group_ingress(options = {})
      # Calls the RevokeClusterSecurityGroupIngress API operation.
      # @param [Hash] options
      #   * `:cluster_security_group_name` - *required* - (String) The name of
      #     the security Group from which to revoke the ingress rule.
      #   * `:cidrip` - (String) The IP range for which to revoke access. This
      #     range must be a valid Classless Inter-Domain Routing (CIDR) block
      #     of IP addresses. If CIDRIP is specified, EC2SecurityGroupName and
      #     EC2SecurityGroupOwnerId cannot be provided.
      #   * `:ec2_security_group_name` - (String) The name of the EC2 Security
      #     Group whose access is to be revoked. If EC2SecurityGroupName is
      #     specified, EC2SecurityGroupOwnerId must also be provided and CIDRIP
      #     cannot be provided.
      #   * `:ec2_security_group_owner_id` - (String) The AWS account number of
      #     the owner of the security group specified in the
      #     EC2SecurityGroupName parameter. The AWS access key ID is not an
      #     acceptable value. If EC2SecurityGroupOwnerId is specified,
      #     EC2SecurityGroupName must also be provided. and CIDRIP cannot be
      #     provided. Example: 111122223333
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cluster_security_group_name` - (String)
      #   * `:description` - (String)
      #   * `:ec_2_security_groups` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:ec2_security_group_name` - (String)
      #     * `:ec2_security_group_owner_id` - (String)
      #   * `:ip_ranges` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:cidrip` - (String)

      # end client methods #

      define_client_methods('2012-12-01')

    end
  end
end
