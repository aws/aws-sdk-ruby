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
  class ElastiCache

    # Client class for Amazon ElastiCache.
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method authorize_cache_security_group_ingress(options = {})
      # Calls the AuthorizeCacheSecurityGroupIngress API operation.
      # @param [Hash] options
      #   * `:cache_security_group_name` - *required* - (String) The name of
      #     the Cache Security Group to authorize.
      #   * `:ec2_security_group_name` - *required* - (String) Name of the EC2
      #     Security Group to include in the authorization.
      #   * `:ec2_security_group_owner_id` - *required* - (String) AWS Account
      #     Number of the owner of the security group specified in the
      #     EC2SecurityGroupName parameter. The AWS Access Key ID is not an
      #     acceptable value.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:owner_id` - (String)
      #   * `:cache_security_group_name` - (String)
      #   * `:description` - (String)
      #   * `:ec_2_security_groups` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:ec2_security_group_name` - (String)
      #     * `:ec2_security_group_owner_id` - (String)

      # @!method create_cache_cluster(options = {})
      # Calls the CreateCacheCluster API operation.
      # @param [Hash] options
      #   * `:cache_cluster_id` - *required* - (String) The Cache Cluster
      #     identifier. This parameter is stored as a lowercase string.
      #     Constraints: Must contain from 1 to 20 alphanumeric characters or
      #     hyphens. First character must be a letter. Cannot end with a hyphen
      #     or contain two consecutive hyphens. Example: mycachecluster
      #   * `:num_cache_nodes` - *required* - (Integer) The number of Cache
      #     Nodes the Cache Cluster should have.
      #   * `:cache_node_type` - *required* - (String) The compute and memory
      #     capacity of nodes in a Cache Cluster. Valid values: cache.m1.large
      #     | cache.m1.xlarge | cache.m2.xlarge | cache.m2.2xlarge |
      #     cache.m2.4xlarge | cache.c1.xlarge
      #   * `:engine` - *required* - (String) The name of the cache engine to
      #     be used for this Cache Cluster. Currently, memcached is the only
      #     cache engine supported by the service.
      #   * `:engine_version` - (String) The version of the cache engine to be
      #     used for this cluster.
      #   * `:cache_parameter_group_name` - (String) The name of the cache
      #     parameter group to associate with this Cache cluster. If this
      #     argument is omitted, the default CacheParameterGroup for the
      #     specified engine will be used.
      #   * `:cache_subnet_group_name` - (String) The name of the Cache Subnet
      #     Group to be used for the Cache Cluster. Use this parameter only
      #     when you are creating a cluster in an Amazon Virtual Private Cloud
      #     (VPC).
      #   * `:cache_security_group_names` - (Array<String>) A list of Cache
      #     Security Group Names to associate with this Cache Cluster.
      #   * `:security_group_ids` - (Array<String>) Specifies the VPC Security
      #     Groups associated with the Cache Cluster. Use this parameter only
      #     when you are creating a cluster in an Amazon Virtual Private Cloud
      #     (VPC).
      #   * `:preferred_availability_zone` - (String) The EC2 Availability Zone
      #     that the Cache Cluster will be created in. In normal use, all
      #     CacheNodes belonging to a CacheCluster are placed in the preferred
      #     availability zone. In rare circumstances, some of the CacheNodes
      #     might temporarily be in a different availability zone. Default:
      #     System chosen (random) availability zone.
      #   * `:preferred_maintenance_window` - (String) The weekly time range
      #     (in UTC) during which system maintenance can occur. Example:
      #     sun:05:00-sun:09:00
      #   * `:port` - (Integer) The port number on which each of the Cache
      #     Nodes will accept connections.
      #   * `:notification_topic_arn` - (String) The Amazon Resource Name (ARN)
      #     of the Amazon Simple Notification Service (SNS) topic to which
      #     notifications will be sent. The Amazon SNS topic owner must be the
      #     same as the Cache Cluster owner.
      #   * `:auto_minor_version_upgrade` - (Boolean) Indicates that minor
      #     engine upgrades will be applied automatically to the Cache Cluster
      #     during the maintenance window. Default: `true`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cache_cluster_id` - (String)
      #   * `:configuration_endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:client_download_landing_page` - (String)
      #   * `:cache_node_type` - (String)
      #   * `:engine` - (String)
      #   * `:engine_version` - (String)
      #   * `:cache_cluster_status` - (String)
      #   * `:num_cache_nodes` - (Integer)
      #   * `:preferred_availability_zone` - (String)
      #   * `:cache_cluster_create_time` - (Time)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:num_cache_nodes` - (Integer)
      #     * `:cache_node_ids_to_remove` - (Array<String>)
      #     * `:engine_version` - (String)
      #   * `:notification_configuration` - (Hash)
      #     * `:topic_arn` - (String)
      #     * `:topic_status` - (String)
      #   * `:cache_security_groups` - (Array<Hash>)
      #     * `:cache_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:cache_parameter_group` - (Hash)
      #     * `:cache_parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #     * `:cache_node_ids_to_reboot` - (Array<String>)
      #   * `:cache_subnet_group_name` - (String)
      #   * `:cache_nodes` - (Array<Hash>)
      #     * `:cache_node_id` - (String)
      #     * `:cache_node_status` - (String)
      #     * `:cache_node_create_time` - (Time)
      #     * `:endpoint` - (Hash)
      #       * `:address` - (String)
      #       * `:port` - (Integer)
      #     * `:parameter_group_status` - (String)
      #   * `:auto_minor_version_upgrade` - (Boolean)
      #   * `:security_groups` - (Array<Hash>)
      #     * `:security_group_id` - (String)
      #     * `:status` - (String)

      # @!method create_cache_parameter_group(options = {})
      # Calls the CreateCacheParameterGroup API operation.
      # @param [Hash] options
      #   * `:cache_parameter_group_name` - *required* - (String) The name of
      #     the Cache Parameter Group.
      #   * `:cache_parameter_group_family` - *required* - (String) The name of
      #     the Cache Parameter Group Family the Cache Parameter Group can be
      #     used with. Currently, memcached1.4 is the only cache parameter
      #     group family supported by the service.
      #   * `:description` - *required* - (String) The description for the
      #     Cache Parameter Group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cache_parameter_group_name` - (String)
      #   * `:cache_parameter_group_family` - (String)
      #   * `:description` - (String)

      # @!method create_cache_security_group(options = {})
      # Calls the CreateCacheSecurityGroup API operation.
      # @param [Hash] options
      #   * `:cache_security_group_name` - *required* - (String) The name for
      #     the Cache Security Group. This value is stored as a lowercase
      #     string. Constraints: Must contain no more than 255 alphanumeric
      #     characters. Must not be "Default". Example: mysecuritygroup
      #   * `:description` - *required* - (String) The description for the
      #     Cache Security Group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:owner_id` - (String)
      #   * `:cache_security_group_name` - (String)
      #   * `:description` - (String)
      #   * `:ec_2_security_groups` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:ec2_security_group_name` - (String)
      #     * `:ec2_security_group_owner_id` - (String)

      # @!method create_cache_subnet_group(options = {})
      # Calls the CreateCacheSubnetGroup API operation.
      # @param [Hash] options
      #   * `:cache_subnet_group_name` - *required* - (String) The name for the
      #     Cache Subnet Group. This value is stored as a lowercase string.
      #     Constraints: Must contain no more than 255 alphanumeric characters
      #     or hyphens. Example: mysubnetgroup
      #   * `:cache_subnet_group_description` - *required* - (String) The
      #     description for the Cache Subnet Group.
      #   * `:subnet_ids` - *required* - (Array<String>) The EC2 Subnet IDs for
      #     the Cache Subnet Group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cache_subnet_group_name` - (String)
      #   * `:cache_subnet_group_description` - (String)
      #   * `:vpc_id` - (String)
      #   * `:subnets` - (Array<Hash>)
      #     * `:subnet_identifier` - (String)
      #     * `:subnet_availability_zone` - (Hash)
      #       * `:name` - (String)

      # @!method delete_cache_cluster(options = {})
      # Calls the DeleteCacheCluster API operation.
      # @param [Hash] options
      #   * `:cache_cluster_id` - *required* - (String) The Cache Cluster
      #     identifier for the Cache Cluster to be deleted. This parameter
      #     isn't case sensitive.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cache_cluster_id` - (String)
      #   * `:configuration_endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:client_download_landing_page` - (String)
      #   * `:cache_node_type` - (String)
      #   * `:engine` - (String)
      #   * `:engine_version` - (String)
      #   * `:cache_cluster_status` - (String)
      #   * `:num_cache_nodes` - (Integer)
      #   * `:preferred_availability_zone` - (String)
      #   * `:cache_cluster_create_time` - (Time)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:num_cache_nodes` - (Integer)
      #     * `:cache_node_ids_to_remove` - (Array<String>)
      #     * `:engine_version` - (String)
      #   * `:notification_configuration` - (Hash)
      #     * `:topic_arn` - (String)
      #     * `:topic_status` - (String)
      #   * `:cache_security_groups` - (Array<Hash>)
      #     * `:cache_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:cache_parameter_group` - (Hash)
      #     * `:cache_parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #     * `:cache_node_ids_to_reboot` - (Array<String>)
      #   * `:cache_subnet_group_name` - (String)
      #   * `:cache_nodes` - (Array<Hash>)
      #     * `:cache_node_id` - (String)
      #     * `:cache_node_status` - (String)
      #     * `:cache_node_create_time` - (Time)
      #     * `:endpoint` - (Hash)
      #       * `:address` - (String)
      #       * `:port` - (Integer)
      #     * `:parameter_group_status` - (String)
      #   * `:auto_minor_version_upgrade` - (Boolean)
      #   * `:security_groups` - (Array<Hash>)
      #     * `:security_group_id` - (String)
      #     * `:status` - (String)

      # @!method delete_cache_parameter_group(options = {})
      # Calls the DeleteCacheParameterGroup API operation.
      # @param [Hash] options
      #   * `:cache_parameter_group_name` - *required* - (String) The name of
      #     the Cache Parameter Group to delete. The specified cache security
      #     group must not be associated with any Cache clusters.
      # @return [Core::Response]

      # @!method delete_cache_security_group(options = {})
      # Calls the DeleteCacheSecurityGroup API operation.
      # @param [Hash] options
      #   * `:cache_security_group_name` - *required* - (String) The name of
      #     the Cache Security Group to delete. You cannot delete the default
      #     security group.
      # @return [Core::Response]

      # @!method delete_cache_subnet_group(options = {})
      # Calls the DeleteCacheSubnetGroup API operation.
      # @param [Hash] options
      #   * `:cache_subnet_group_name` - *required* - (String) The name of the
      #     Cache Subnet Group to delete. Constraints: Must contain no more
      #     than 255 alphanumeric characters or hyphens.
      # @return [Core::Response]

      # @!method describe_cache_clusters(options = {})
      # Calls the DescribeCacheClusters API operation.
      # @param [Hash] options
      #   * `:cache_cluster_id` - (String) The user-supplied cluster
      #     identifier. If this parameter is specified, only information about
      #     that specific Cache Cluster is returned. This parameter isn't case
      #     sensitive.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved. Default: 100 Constraints:
      #     minimum 20, maximum 100
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeCacheClusters request. If this parameter is specified, the
      #     response includes only records beyond the marker, up to the value
      #     specified by MaxRecords.
      #   * `:show_cache_node_info` - (Boolean) An optional flag that can be
      #     included in the DescribeCacheCluster request to retrieve Cache
      #     Nodes information.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:cache_clusters` - (Array<Hash>)
      #     * `:cache_cluster_id` - (String)
      #     * `:configuration_endpoint` - (Hash)
      #       * `:address` - (String)
      #       * `:port` - (Integer)
      #     * `:client_download_landing_page` - (String)
      #     * `:cache_node_type` - (String)
      #     * `:engine` - (String)
      #     * `:engine_version` - (String)
      #     * `:cache_cluster_status` - (String)
      #     * `:num_cache_nodes` - (Integer)
      #     * `:preferred_availability_zone` - (String)
      #     * `:cache_cluster_create_time` - (Time)
      #     * `:preferred_maintenance_window` - (String)
      #     * `:pending_modified_values` - (Hash)
      #       * `:num_cache_nodes` - (Integer)
      #       * `:cache_node_ids_to_remove` - (Array<String>)
      #       * `:engine_version` - (String)
      #     * `:notification_configuration` - (Hash)
      #       * `:topic_arn` - (String)
      #       * `:topic_status` - (String)
      #     * `:cache_security_groups` - (Array<Hash>)
      #       * `:cache_security_group_name` - (String)
      #       * `:status` - (String)
      #     * `:cache_parameter_group` - (Hash)
      #       * `:cache_parameter_group_name` - (String)
      #       * `:parameter_apply_status` - (String)
      #       * `:cache_node_ids_to_reboot` - (Array<String>)
      #     * `:cache_subnet_group_name` - (String)
      #     * `:cache_nodes` - (Array<Hash>)
      #       * `:cache_node_id` - (String)
      #       * `:cache_node_status` - (String)
      #       * `:cache_node_create_time` - (Time)
      #       * `:endpoint` - (Hash)
      #         * `:address` - (String)
      #         * `:port` - (Integer)
      #       * `:parameter_group_status` - (String)
      #     * `:auto_minor_version_upgrade` - (Boolean)
      #     * `:security_groups` - (Array<Hash>)
      #       * `:security_group_id` - (String)
      #       * `:status` - (String)

      # @!method describe_cache_engine_versions(options = {})
      # Calls the DescribeCacheEngineVersions API operation.
      # @param [Hash] options
      #   * `:engine` - (String) The cache engine to return.
      #   * `:engine_version` - (String) The cache engine version to return.
      #     Example: 1.4.14
      #   * `:cache_parameter_group_family` - (String) The name of a specific
      #     Cache Parameter Group family to return details for. Constraints:
      #     Must be 1 to 255 alphanumeric characters First character must be a
      #     letter Cannot end with a hyphen or contain two consecutive hyphens
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved.
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeCacheParameterGroups request. If this parameter is
      #     specified, the response includes only records beyond the marker, up
      #     to the value specified by MaxRecords.
      #   * `:default_only` - (Boolean) Indicates that only the default version
      #     of the specified engine or engine and major version combination is
      #     returned.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:cache_engine_versions` - (Array<Hash>)
      #     * `:engine` - (String)
      #     * `:engine_version` - (String)
      #     * `:cache_parameter_group_family` - (String)
      #     * `:cache_engine_description` - (String)
      #     * `:cache_engine_version_description` - (String)

      # @!method describe_cache_parameter_groups(options = {})
      # Calls the DescribeCacheParameterGroups API operation.
      # @param [Hash] options
      #   * `:cache_parameter_group_name` - (String) The name of a specific
      #     cache parameter group to return details for.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved.
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeCacheParameterGroups request. If this parameter is
      #     specified, the response includes only records beyond the marker, up
      #     to the value specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:cache_parameter_groups` - (Array<Hash>)
      #     * `:cache_parameter_group_name` - (String)
      #     * `:cache_parameter_group_family` - (String)
      #     * `:description` - (String)

      # @!method describe_cache_parameters(options = {})
      # Calls the DescribeCacheParameters API operation.
      # @param [Hash] options
      #   * `:cache_parameter_group_name` - *required* - (String) The name of a
      #     specific cache parameter group to return details for.
      #   * `:source` - (String) The parameter types to return. Valid values:
      #     user | system | engine-default
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved.
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeCacheClusters request. If this parameter is specified, the
      #     response includes only records beyond the marker, up to the value
      #     specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
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
      #   * `:cache_node_type_specific_parameters` - (Array<Hash>)
      #     * `:parameter_name` - (String)
      #     * `:description` - (String)
      #     * `:source` - (String)
      #     * `:data_type` - (String)
      #     * `:allowed_values` - (String)
      #     * `:is_modifiable` - (Boolean)
      #     * `:minimum_engine_version` - (String)
      #     * `:cache_node_type_specific_values` - (Array<Hash>)
      #       * `:cache_node_type` - (String)
      #       * `:value` - (String)

      # @!method describe_cache_security_groups(options = {})
      # Calls the DescribeCacheSecurityGroups API operation.
      # @param [Hash] options
      #   * `:cache_security_group_name` - (String) The name of the Cache
      #     Security Group to return details for.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved. Default: 100 Constraints:
      #     minimum 20, maximum 100
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeCacheClusters request. If this parameter is specified, the
      #     response includes only records beyond the marker, up to the value
      #     specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:cache_security_groups` - (Array<Hash>)
      #     * `:owner_id` - (String)
      #     * `:cache_security_group_name` - (String)
      #     * `:description` - (String)
      #     * `:ec_2_security_groups` - (Array<Hash>)
      #       * `:status` - (String)
      #       * `:ec2_security_group_name` - (String)
      #       * `:ec2_security_group_owner_id` - (String)

      # @!method describe_cache_subnet_groups(options = {})
      # Calls the DescribeCacheSubnetGroups API operation.
      # @param [Hash] options
      #   * `:cache_subnet_group_name` - (String) The name of the Cache Subnet
      #     Group to return details for.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved. Default: 100 Constraints:
      #     minimum 20, maximum 100
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeCacheSubnetGroups request. If this parameter is specified,
      #     the response includes only records beyond the marker, up to the
      #     value specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:cache_subnet_groups` - (Array<Hash>)
      #     * `:cache_subnet_group_name` - (String)
      #     * `:cache_subnet_group_description` - (String)
      #     * `:vpc_id` - (String)
      #     * `:subnets` - (Array<Hash>)
      #       * `:subnet_identifier` - (String)
      #       * `:subnet_availability_zone` - (Hash)
      #         * `:name` - (String)

      # @!method describe_engine_default_parameters(options = {})
      # Calls the DescribeEngineDefaultParameters API operation.
      # @param [Hash] options
      #   * `:cache_parameter_group_family` - *required* - (String) The name of
      #     the Cache Parameter Group Family. Currently, memcached1.4 is the
      #     only cache parameter group family supported by the service.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved.
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeCacheClusters request. If this parameter is specified, the
      #     response includes only records beyond the marker, up to the value
      #     specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cache_parameter_group_family` - (String)
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
      #   * `:cache_node_type_specific_parameters` - (Array<Hash>)
      #     * `:parameter_name` - (String)
      #     * `:description` - (String)
      #     * `:source` - (String)
      #     * `:data_type` - (String)
      #     * `:allowed_values` - (String)
      #     * `:is_modifiable` - (Boolean)
      #     * `:minimum_engine_version` - (String)
      #     * `:cache_node_type_specific_values` - (Array<Hash>)
      #       * `:cache_node_type` - (String)
      #       * `:value` - (String)

      # @!method describe_events(options = {})
      # Calls the DescribeEvents API operation.
      # @param [Hash] options
      #   * `:source_identifier` - (String) The identifier of the event source
      #     for which events will be returned. If not specified, then all
      #     sources are included in the response.
      #   * `:source_type` - (String) The event source to retrieve events for.
      #     If no value is specified, all events are returned. Valid values
      #     include:
      #     * `cache-cluster`
      #     * `cache-parameter-group`
      #     * `cache-security-group`
      #     * `cache-subnet-group`
      #   * `:start_time` - (String<ISO8601 datetime>) The beginning of the
      #     time interval to retrieve events for, specified in ISO 8601 format.
      #   * `:end_time` - (String<ISO8601 datetime>) The end of the time
      #     interval for which to retrieve events, specified in ISO 8601
      #     format.
      #   * `:duration` - (Integer) The number of minutes to retrieve events
      #     for.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved.
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeCacheClusters request. If this parameter is specified, the
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

      # @!method describe_reserved_cache_nodes(options = {})
      # Calls the DescribeReservedCacheNodes API operation.
      # @param [Hash] options
      #   * `:reserved_cache_node_id` - (String) The reserved Cache Node
      #     identifier filter value. Specify this parameter to show only the
      #     reservation that matches the specified reservation ID.
      #   * `:reserved_cache_nodes_offering_id` - (String) The offering
      #     identifier filter value. Specify this parameter to show only
      #     purchased reservations matching the specified offering identifier.
      #   * `:cache_node_type` - (String) The Cache Node type filter value.
      #     Specify this parameter to show only those reservations matching the
      #     specified Cache Nodes type.
      #   * `:duration` - (String) The duration filter value, specified in
      #     years or seconds. Specify this parameter to show only reservations
      #     for this duration. Valid Values: 1 | 3 | 31536000 | 94608000
      #   * `:product_description` - (String) The product description filter
      #     value. Specify this parameter to show only those reservations
      #     matching the specified product description.
      #   * `:offering_type` - (String) The offering type filter value. Specify
      #     this parameter to show only the available offerings matching the
      #     specified offering type. Valid Values: "Light Utilization" |
      #     "Medium Utilization" | "Heavy Utilization"
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more than the MaxRecords value is available, a
      #     marker is included in the response so that the following results
      #     can be retrieved. Default: 100 Constraints: minimum 20, maximum 100
      #   * `:marker` - (String) The marker provided in the previous request.
      #     If this parameter is specified, the response includes records
      #     beyond the marker only, up to MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:reserved_cache_nodes` - (Array<Hash>)
      #     * `:reserved_cache_node_id` - (String)
      #     * `:reserved_cache_nodes_offering_id` - (String)
      #     * `:cache_node_type` - (String)
      #     * `:start_time` - (Time)
      #     * `:duration` - (Integer)
      #     * `:fixed_price` - (Numeric)
      #     * `:usage_price` - (Numeric)
      #     * `:cache_node_count` - (Integer)
      #     * `:product_description` - (String)
      #     * `:offering_type` - (String)
      #     * `:state` - (String)
      #     * `:recurring_charges` - (Array<Hash>)
      #       * `:recurring_charge_amount` - (Numeric)
      #       * `:recurring_charge_frequency` - (String)

      # @!method describe_reserved_cache_nodes_offerings(options = {})
      # Calls the DescribeReservedCacheNodesOfferings API operation.
      # @param [Hash] options
      #   * `:reserved_cache_nodes_offering_id` - (String) The offering
      #     identifier filter value. Specify this parameter to show only the
      #     available offering that matches the specified reservation
      #     identifier. Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706
      #   * `:cache_node_type` - (String) The Cache Node type filter value.
      #     Specify this parameter to show only the available offerings
      #     matching the specified Cache Node type.
      #   * `:duration` - (String) Duration filter value, specified in years or
      #     seconds. Specify this parameter to show only reservations for this
      #     duration. Valid Values: 1 | 3 | 31536000 | 94608000
      #   * `:product_description` - (String) Product description filter value.
      #     Specify this parameter to show only the available offerings
      #     matching the specified product description.
      #   * `:offering_type` - (String) The offering type filter value. Specify
      #     this parameter to show only the available offerings matching the
      #     specified offering type. Valid Values: "Light Utilization" |
      #     "Medium Utilization" | "Heavy Utilization"
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more than the MaxRecords value is available, a
      #     marker is included in the response so that the following results
      #     can be retrieved. Default: 100 Constraints: minimum 20, maximum 100
      #   * `:marker` - (String) The marker provided in the previous request.
      #     If this parameter is specified, the response includes records
      #     beyond the marker only, up to MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:reserved_cache_nodes_offerings` - (Array<Hash>)
      #     * `:reserved_cache_nodes_offering_id` - (String)
      #     * `:cache_node_type` - (String)
      #     * `:duration` - (Integer)
      #     * `:fixed_price` - (Numeric)
      #     * `:usage_price` - (Numeric)
      #     * `:product_description` - (String)
      #     * `:offering_type` - (String)
      #     * `:recurring_charges` - (Array<Hash>)
      #       * `:recurring_charge_amount` - (Numeric)
      #       * `:recurring_charge_frequency` - (String)

      # @!method modify_cache_cluster(options = {})
      # Calls the ModifyCacheCluster API operation.
      # @param [Hash] options
      #   * `:cache_cluster_id` - *required* - (String) The Cache Cluster
      #     identifier. This value is stored as a lowercase string.
      #   * `:num_cache_nodes` - (Integer) The number of Cache Nodes the Cache
      #     Cluster should have. If NumCacheNodes is greater than the existing
      #     number of Cache Nodes, Cache Nodes will be added. If NumCacheNodes
      #     is less than the existing number of Cache Nodes, Cache Nodes will
      #     be removed. When removing Cache Nodes, the Ids of the specific
      #     Cache Nodes to be removed must be supplied using the
      #     CacheNodeIdsToRemove parameter.
      #   * `:cache_node_ids_to_remove` - (Array<String>) The list of Cache
      #     Node IDs to be removed. This parameter is only valid when
      #     NumCacheNodes is less than the existing number of Cache Nodes. The
      #     number of Cache Node Ids supplied in this parameter must match the
      #     difference between the existing number of Cache Nodes in the
      #     cluster and the new NumCacheNodes requested.
      #   * `:cache_security_group_names` - (Array<String>) A list of Cache
      #     Security Group Names to authorize on this Cache Cluster. This
      #     change is asynchronously applied as soon as possible. Constraints:
      #     Must contain no more than 255 alphanumeric characters. Must not be
      #     "Default".
      #   * `:security_group_ids` - (Array<String>) Specifies the VPC Security
      #     Groups associated with the Cache Cluster. This parameter can be
      #     used only with clusters that are created in an Amazon Virtual
      #     Private Cloud (VPC).
      #   * `:preferred_maintenance_window` - (String) The weekly time range
      #     (in UTC) during which system maintenance can occur, which may
      #     result in an outage. This change is made immediately. If moving
      #     this window to the current time, there must be at least 120 minutes
      #     between the current time and end of the window to ensure pending
      #     changes are applied.
      #   * `:notification_topic_arn` - (String) The Amazon Resource Name (ARN)
      #     of the SNS topic to which notifications will be sent. The SNS topic
      #     owner must be same as the Cache Cluster owner.
      #   * `:cache_parameter_group_name` - (String) The name of the Cache
      #     Parameter Group to apply to this Cache Cluster. This change is
      #     asynchronously applied as soon as possible for parameters when the
      #     ApplyImmediately parameter is specified as `true` for this request.
      #   * `:notification_topic_status` - (String) The status of the Amazon
      #     SNS notification topic. The value can be active or inactive.
      #     Notifications are sent only if the status is active.
      #   * `:apply_immediately` - (Boolean) Specifies whether or not the
      #     modifications in this request and any pending modifications are
      #     asynchronously applied as soon as possible, regardless of the
      #     PreferredMaintenanceWindow setting for the Cache Cluster. If this
      #     parameter is passed as `false` , changes to the Cache Cluster are
      #     applied on the next maintenance reboot, or the next failure reboot,
      #     whichever occurs first. Default: `false`
      #   * `:engine_version` - (String) The version of the cache engine to
      #     upgrade this cluster to.
      #   * `:auto_minor_version_upgrade` - (Boolean) Indicates that minor
      #     engine upgrades will be applied automatically to the Cache Cluster
      #     during the maintenance window. Default: `true`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cache_cluster_id` - (String)
      #   * `:configuration_endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:client_download_landing_page` - (String)
      #   * `:cache_node_type` - (String)
      #   * `:engine` - (String)
      #   * `:engine_version` - (String)
      #   * `:cache_cluster_status` - (String)
      #   * `:num_cache_nodes` - (Integer)
      #   * `:preferred_availability_zone` - (String)
      #   * `:cache_cluster_create_time` - (Time)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:num_cache_nodes` - (Integer)
      #     * `:cache_node_ids_to_remove` - (Array<String>)
      #     * `:engine_version` - (String)
      #   * `:notification_configuration` - (Hash)
      #     * `:topic_arn` - (String)
      #     * `:topic_status` - (String)
      #   * `:cache_security_groups` - (Array<Hash>)
      #     * `:cache_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:cache_parameter_group` - (Hash)
      #     * `:cache_parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #     * `:cache_node_ids_to_reboot` - (Array<String>)
      #   * `:cache_subnet_group_name` - (String)
      #   * `:cache_nodes` - (Array<Hash>)
      #     * `:cache_node_id` - (String)
      #     * `:cache_node_status` - (String)
      #     * `:cache_node_create_time` - (Time)
      #     * `:endpoint` - (Hash)
      #       * `:address` - (String)
      #       * `:port` - (Integer)
      #     * `:parameter_group_status` - (String)
      #   * `:auto_minor_version_upgrade` - (Boolean)
      #   * `:security_groups` - (Array<Hash>)
      #     * `:security_group_id` - (String)
      #     * `:status` - (String)

      # @!method modify_cache_parameter_group(options = {})
      # Calls the ModifyCacheParameterGroup API operation.
      # @param [Hash] options
      #   * `:cache_parameter_group_name` - *required* - (String) The name of
      #     the cache parameter group to modify.
      #   * `:parameter_name_values` - *required* - (Array<Hash>) An array of
      #     parameter names and values for the parameter update. At least one
      #     parameter name and value must be supplied; subsequent arguments are
      #     optional. A maximum of 20 parameters may be modified in a single
      #     request.
      #     * `:parameter_name` - (String) Specifies the name of the parameter.
      #     * `:parameter_value` - (String) Specifies the value of the
      #       parameter.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cache_parameter_group_name` - (String)

      # @!method modify_cache_subnet_group(options = {})
      # Calls the ModifyCacheSubnetGroup API operation.
      # @param [Hash] options
      #   * `:cache_subnet_group_name` - *required* - (String) The name for the
      #     Cache Subnet Group. This value is stored as a lowercase string.
      #     Constraints: Must contain no more than 255 alphanumeric characters
      #     or hyphens. Example: mysubnetgroup
      #   * `:cache_subnet_group_description` - (String) The description for
      #     the Cache Subnet Group.
      #   * `:subnet_ids` - (Array<String>) The EC2 Subnet IDs for the Cache
      #     Subnet Group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cache_subnet_group_name` - (String)
      #   * `:cache_subnet_group_description` - (String)
      #   * `:vpc_id` - (String)
      #   * `:subnets` - (Array<Hash>)
      #     * `:subnet_identifier` - (String)
      #     * `:subnet_availability_zone` - (Hash)
      #       * `:name` - (String)

      # @!method purchase_reserved_cache_nodes_offering(options = {})
      # Calls the PurchaseReservedCacheNodesOffering API operation.
      # @param [Hash] options
      #   * `:reserved_cache_nodes_offering_id` - *required* - (String) The ID
      #     of the Reserved Cache Node offering to purchase. Example:
      #     438012d3-4052-4cc7-b2e3-8d3372e0e706
      #   * `:reserved_cache_node_id` - (String) Customer-specified identifier
      #     to track this reservation. Example: myreservationID
      #   * `:cache_node_count` - (Integer) The number of instances to reserve.
      #     Default: 1
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:reserved_cache_node_id` - (String)
      #   * `:reserved_cache_nodes_offering_id` - (String)
      #   * `:cache_node_type` - (String)
      #   * `:start_time` - (Time)
      #   * `:duration` - (Integer)
      #   * `:fixed_price` - (Numeric)
      #   * `:usage_price` - (Numeric)
      #   * `:cache_node_count` - (Integer)
      #   * `:product_description` - (String)
      #   * `:offering_type` - (String)
      #   * `:state` - (String)
      #   * `:recurring_charges` - (Array<Hash>)
      #     * `:recurring_charge_amount` - (Numeric)
      #     * `:recurring_charge_frequency` - (String)

      # @!method reboot_cache_cluster(options = {})
      # Calls the RebootCacheCluster API operation.
      # @param [Hash] options
      #   * `:cache_cluster_id` - *required* - (String) The Cache Cluster
      #     identifier. This parameter is stored as a lowercase string.
      #   * `:cache_node_ids_to_reboot` - *required* - (Array<String>) A list
      #     of Cache Cluster Node Ids to reboot. To reboot an entire cache
      #     cluster, specify all cache cluster node Ids.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cache_cluster_id` - (String)
      #   * `:configuration_endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:client_download_landing_page` - (String)
      #   * `:cache_node_type` - (String)
      #   * `:engine` - (String)
      #   * `:engine_version` - (String)
      #   * `:cache_cluster_status` - (String)
      #   * `:num_cache_nodes` - (Integer)
      #   * `:preferred_availability_zone` - (String)
      #   * `:cache_cluster_create_time` - (Time)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:num_cache_nodes` - (Integer)
      #     * `:cache_node_ids_to_remove` - (Array<String>)
      #     * `:engine_version` - (String)
      #   * `:notification_configuration` - (Hash)
      #     * `:topic_arn` - (String)
      #     * `:topic_status` - (String)
      #   * `:cache_security_groups` - (Array<Hash>)
      #     * `:cache_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:cache_parameter_group` - (Hash)
      #     * `:cache_parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #     * `:cache_node_ids_to_reboot` - (Array<String>)
      #   * `:cache_subnet_group_name` - (String)
      #   * `:cache_nodes` - (Array<Hash>)
      #     * `:cache_node_id` - (String)
      #     * `:cache_node_status` - (String)
      #     * `:cache_node_create_time` - (Time)
      #     * `:endpoint` - (Hash)
      #       * `:address` - (String)
      #       * `:port` - (Integer)
      #     * `:parameter_group_status` - (String)
      #   * `:auto_minor_version_upgrade` - (Boolean)
      #   * `:security_groups` - (Array<Hash>)
      #     * `:security_group_id` - (String)
      #     * `:status` - (String)

      # @!method reset_cache_parameter_group(options = {})
      # Calls the ResetCacheParameterGroup API operation.
      # @param [Hash] options
      #   * `:cache_parameter_group_name` - *required* - (String) The name of
      #     the Cache Parameter Group.
      #   * `:reset_all_parameters` - (Boolean) Specifies whether ( `true` ) or
      #     not ( `false` ) to reset all parameters in the Cache Parameter
      #     Group to default values.
      #   * `:parameter_name_values` - *required* - (Array<Hash>) An array of
      #     parameter names which should be reset. If not resetting the entire
      #     CacheParameterGroup, at least one parameter name must be supplied.
      #     * `:parameter_name` - (String) Specifies the name of the parameter.
      #     * `:parameter_value` - (String) Specifies the value of the
      #       parameter.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:cache_parameter_group_name` - (String)

      # @!method revoke_cache_security_group_ingress(options = {})
      # Calls the RevokeCacheSecurityGroupIngress API operation.
      # @param [Hash] options
      #   * `:cache_security_group_name` - *required* - (String) The name of
      #     the Cache Security Group to revoke ingress from.
      #   * `:ec2_security_group_name` - *required* - (String) The name of the
      #     EC2 Security Group to revoke access from.
      #   * `:ec2_security_group_owner_id` - *required* - (String) The AWS
      #     Account Number of the owner of the security group specified in the
      #     EC2SecurityGroupName parameter. The AWS Access Key ID is not an
      #     acceptable value.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:owner_id` - (String)
      #   * `:cache_security_group_name` - (String)
      #   * `:description` - (String)
      #   * `:ec_2_security_groups` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:ec2_security_group_name` - (String)
      #     * `:ec2_security_group_owner_id` - (String)

      # end client methods #

      define_client_methods('2012-11-15')

    end
  end
end
