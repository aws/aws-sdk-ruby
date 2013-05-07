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
  class RDS

    # Client class for Amazon Relational Database Service (RDS).
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method add_source_identifier_to_subscription(options = {})
      # Calls the AddSourceIdentifierToSubscription API operation.
      # @param [Hash] options
      #   * `:subscription_name` - *required* - (String) The name of the RDS
      #     event notification subscription you want to add a source identifier
      #     to.
      #   * `:source_identifier` - *required* - (String) The identifier of the
      #     event source to be added. An identifier must begin with a letter
      #     and must contain only ASCII letters, digits, and hyphens; it cannot
      #     end with a hyphen or contain two consecutive hyphens. Constraints:
      #     If the source type is a DB instance, then a DBInstanceIdentifier
      #     must be supplied. If the source type is a DB security group, a
      #     DBSecurityGroupName must be supplied. If the source type is a DB
      #     parameter group, a DBParameterGroupName must be supplied. If the
      #     source type is a DB Snapshot, a DBSnapshotIdentifier must be
      #     supplied.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:customer_aws_id` - (String)
      #   * `:cust_subscription_id` - (String)
      #   * `:sns_topic_arn` - (String)
      #   * `:status` - (String)
      #   * `:subscription_creation_time` - (String)
      #   * `:source_type` - (String)
      #   * `:source_ids_list` - (Array<String>)
      #   * `:event_categories_list` - (Array<String>)
      #   * `:enabled` - (Boolean)

      # @!method add_tags_to_resource(options = {})
      # Calls the AddTagsToResource API operation.
      # @param [Hash] options
      #   * `:resource_name` - *required* - (String) The DB Instance the tags
      #     will be added to.
      #   * `:tags` - *required* - (Array<Hash>) The tags to be assigned to the
      #     DB Instance.
      #     * `:key` - (String) A key is the required name of the tag. The
      #       string value can be from 1 to 128 Unicode characters in length
      #       and cannot be prefixed with "aws:". The string may only contain
      #       only the set of Unicode letters, digits, white-space, '_', '.',
      #       '/', '=', '+', '-' (Java regex:
      #       "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").
      #     * `:value` - (String) A value is the optional value of the tag. The
      #       string value can be from 1 to 256 Unicode characters in length
      #       and cannot be prefixed with "aws:". The string may only contain
      #       only the set of Unicode letters, digits, white-space, '_', '.',
      #       '/', '=', '+', '-' (Java regex:
      #       "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").
      # @return [Core::Response]

      # @!method authorize_db_security_group_ingress(options = {})
      # Calls the AuthorizeDBSecurityGroupIngress API operation.
      # @param [Hash] options
      #   * `:db_security_group_name` - *required* - (String) The name of the
      #     DB Security Group to authorize.
      #   * `:cidrip` - (String) The IP range to authorize.
      #   * `:ec2_security_group_name` - (String) Name of the EC2 Security
      #     Group to authorize.
      #   * `:ec2_security_group_id` - (String) Id of the EC2 Security Group to
      #     authorize. For VPC DB Security Groups, EC2SecurityGroupId must be
      #     provided. Otherwise, EC2SecurityGroupOwnerId and either
      #     EC2SecurityGroupName or EC2SecurityGroupId must be provided.
      #   * `:ec2_security_group_owner_id` - (String) AWS Account Number of the
      #     owner of the security group specified in the EC2SecurityGroupName
      #     parameter. The AWS Access Key ID is not an acceptable value.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:owner_id` - (String)
      #   * `:db_security_group_name` - (String)
      #   * `:db_security_group_description` - (String)
      #   * `:vpc_id` - (String)
      #   * `:ec_2_security_groups` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:ec2_security_group_name` - (String)
      #     * `:ec2_security_group_id` - (String)
      #     * `:ec2_security_group_owner_id` - (String)
      #   * `:ip_ranges` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:cidrip` - (String)

      # @!method copy_db_snapshot(options = {})
      # Calls the CopyDBSnapshot API operation.
      # @param [Hash] options
      #   * `:source_db_snapshot_identifier` - *required* - (String) The
      #     identifier for the source DB snapshot. Constraints: Must be the
      #     identifier for a valid automated snapshot in the "available" state.
      #     Example: rds:mydb-2012-01-15-00-01
      #   * `:target_db_snapshot_identifier` - *required* - (String) The
      #     identifier for the copied snapshot. Constraints: Cannot be null,
      #     empty, or blank Must contain from 1 to 255 alphanumeric characters
      #     or hyphens First character must be a letter Cannot end with a
      #     hyphen or contain two consecutive hyphens Example: my-db-snapshot
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_snapshot_identifier` - (String)
      #   * `:db_instance_identifier` - (String)
      #   * `:snapshot_create_time` - (Time)
      #   * `:engine` - (String)
      #   * `:allocated_storage` - (Integer)
      #   * `:status` - (String)
      #   * `:port` - (Integer)
      #   * `:availability_zone` - (String)
      #   * `:vpc_id` - (String)
      #   * `:instance_create_time` - (Time)
      #   * `:master_username` - (String)
      #   * `:engine_version` - (String)
      #   * `:license_model` - (String)
      #   * `:snapshot_type` - (String)
      #   * `:iops` - (Integer)
      #   * `:option_group_name` - (String)

      # @!method create_db_instance(options = {})
      # Calls the CreateDBInstance API operation.
      # @param [Hash] options
      #   * `:db_name` - (String) The name of the database to create when the
      #     DB Instance is created. If this parameter is not specified, no
      #     database is created in the DB Instance.
      #   * `:db_instance_identifier` - *required* - (String) The DB Instance
      #     identifier. This parameter is stored as a lowercase string.
      #   * `:allocated_storage` - *required* - (Integer) The amount of storage
      #     (in gigabytes) to be initially allocated for the database instance.
      #   * `:db_instance_class` - *required* - (String) The compute and memory
      #     capacity of the DB Instance.
      #   * `:engine` - *required* - (String) The name of the database engine
      #     to be used for this instance.
      #   * `:master_username` - *required* - (String) The name of master user
      #     for the client DB Instance.
      #   * `:master_user_password` - *required* - (String) The password for
      #     the master DB Instance user.
      #   * `:db_security_groups` - (Array<String>) A list of DB Security
      #     Groups to associate with this DB Instance.
      #   * `:vpc_security_group_ids` - (Array<String>) A list of Ec2 Vpc
      #     Security Groups to associate with this DB Instance. Default: The
      #     default Ec2 Vpc Security Group for the DB Subnet group's Vpc.
      #   * `:availability_zone` - (String) The EC2 Availability Zone that the
      #     database instance will be created in.
      #   * `:db_subnet_group_name` - (String) A DB Subnet Group to associate
      #     with this DB Instance. If there is no DB Subnet Group, then it is a
      #     non-VPC DB instance.
      #   * `:preferred_maintenance_window` - (String) The weekly time range
      #     (in UTC) during which system maintenance can occur.
      #   * `:db_parameter_group_name` - (String) The name of the database
      #     parameter group to associate with this DB instance. If this
      #     argument is omitted, the default DBParameterGroup for the specified
      #     engine will be used.
      #   * `:backup_retention_period` - (Integer) The number of days for which
      #     automated backups are retained. Setting this parameter to a
      #     positive number enables backups. Setting this parameter to 0
      #     disables automated backups.
      #   * `:preferred_backup_window` - (String) The daily time range during
      #     which automated backups are created if automated backups are
      #     enabled, as determined by the BackupRetentionPeriod.
      #   * `:port` - (Integer) The port number on which the database accepts
      #     connections.
      #   * `:multi_az` - (Boolean) Specifies if the DB Instance is a Multi-AZ
      #     deployment. You cannot set the AvailabilityZone parameter if the
      #     MultiAZ parameter is set to `true` .
      #   * `:engine_version` - (String) The version number of the database
      #     engine to use. Example: 5.1.42
      #   * `:auto_minor_version_upgrade` - (Boolean) Indicates that minor
      #     engine upgrades will be applied automatically to the DB Instance
      #     during the maintenance window. Default: `true`
      #   * `:license_model` - (String) License model information for this DB
      #     Instance. Valid values: license-included | bring-your-own-license |
      #     general-public-license
      #   * `:iops` - (Integer) The amount of provisioned input/output
      #     operations per second to be initially allocated for the database
      #     instance. Constraints: Must be an integer Type: Integer
      #   * `:option_group_name` - (String) Indicates that the DB Instance
      #     should be associated with the specified option group.
      #   * `:character_set_name` - (String) For supported engines, indicates
      #     that the DB Instance should be associated with the specified
      #     CharacterSet.
      #   * `:publicly_accessible` - (Boolean) Specifies the accessibility
      #     options for the DB Instance. A value of `true` specifies an
      #     Internet-facing instance with a publicly resolvable DNS name, which
      #     resolves to a public IP address. A value of `false` specifies an
      #     internal instance with a DNS name that resolves to a private IP
      #     address. Default: The default behavior varies depending on whether
      #     a VPC has been requested or not. The following list shows the
      #     default behavior in each case. Default VPC: `true` VPC: `false` If
      #     no DB subnet group has been specified as part of the request and
      #     the PubliclyAccessible value has not been set, the DB instance will
      #     be publicly accessible. If a specific DB subnet group has been
      #     specified as part of the request and the PubliclyAccessible value
      #     has not been set, the DB instance will be private.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_instance_identifier` - (String)
      #   * `:db_instance_class` - (String)
      #   * `:engine` - (String)
      #   * `:db_instance_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:allocated_storage` - (Integer)
      #   * `:instance_create_time` - (Time)
      #   * `:preferred_backup_window` - (String)
      #   * `:backup_retention_period` - (Integer)
      #   * `:db_security_groups` - (Array<Hash>)
      #     * `:db_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:db_parameter_groups` - (Array<Hash>)
      #     * `:db_parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:availability_zone` - (String)
      #   * `:db_subnet_group` - (Hash)
      #     * `:db_subnet_group_name` - (String)
      #     * `:db_subnet_group_description` - (String)
      #     * `:vpc_id` - (String)
      #     * `:subnet_group_status` - (String)
      #     * `:subnets` - (Array<Hash>)
      #       * `:subnet_identifier` - (String)
      #       * `:subnet_availability_zone` - (Hash)
      #         * `:name` - (String)
      #         * `:provisioned_iops_capable` - (Boolean)
      #       * `:subnet_status` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:db_instance_class` - (String)
      #     * `:allocated_storage` - (Integer)
      #     * `:master_user_password` - (String)
      #     * `:port` - (Integer)
      #     * `:backup_retention_period` - (Integer)
      #     * `:multi_az` - (Boolean)
      #     * `:engine_version` - (String)
      #     * `:iops` - (Integer)
      #     * `:db_instance_identifier` - (String)
      #   * `:latest_restorable_time` - (Time)
      #   * `:multi_az` - (Boolean)
      #   * `:engine_version` - (String)
      #   * `:auto_minor_version_upgrade` - (Boolean)
      #   * `:read_replica_source_db_instance_identifier` - (String)
      #   * `:read_replica_db_instance_identifiers` - (Array<String>)
      #   * `:license_model` - (String)
      #   * `:iops` - (Integer)
      #   * `:option_group_memberships` - (Array<Hash>)
      #     * `:option_group_name` - (String)
      #     * `:status` - (String)
      #   * `:character_set_name` - (String)
      #   * `:secondary_availability_zone` - (String)
      #   * `:publicly_accessible` - (Boolean)

      # @!method create_db_instance_read_replica(options = {})
      # Calls the CreateDBInstanceReadReplica API operation.
      # @param [Hash] options
      #   * `:db_instance_identifier` - *required* - (String) The DB Instance
      #     identifier of the Read Replica. This is the unique key that
      #     identifies a DB Instance. This parameter is stored as a lowercase
      #     string.
      #   * `:source_db_instance_identifier` - *required* - (String) The
      #     identifier of the DB Instance that will act as the source for the
      #     Read Replica. Each DB Instance can have up to five Read Replicas.
      #     Constraints: Must be the identifier of an existing DB Instance that
      #     is not already a Read Replica DB Instance.
      #   * `:db_instance_class` - (String) The compute and memory capacity of
      #     the Read Replica. Valid Values: db.m1.small | db.m1.large |
      #     db.m1.xlarge | db.m2.xlarge |db.m2.2xlarge | db.m2.4xlarge Default:
      #     Inherits from the source DB Instance.
      #   * `:availability_zone` - (String) The Amazon EC2 Availability Zone
      #     that the Read Replica will be created in. Default: A random,
      #     system-chosen Availability Zone in the endpoint's region. Example:
      #     us-east-1d
      #   * `:port` - (Integer) The port number that the DB Instance uses for
      #     connections. Default: Inherits from the source DB Instance Valid
      #     Values: 1150-65535
      #   * `:auto_minor_version_upgrade` - (Boolean) Indicates that minor
      #     engine upgrades will be applied automatically to the Read Replica
      #     during the maintenance window. Default: Inherits from the source DB
      #     Instance
      #   * `:iops` - (Integer) The amount of Provisioned IOPS (input/output
      #     operations per second) to be initially allocated for the DB
      #     Instance.
      #   * `:option_group_name` - (String) The option group the DB instance
      #     will be associated with. If omitted, the default Option Group for
      #     the engine specified will be used.
      #   * `:publicly_accessible` - (Boolean) Specifies the accessibility
      #     options for the DB Instance. A value of `true` specifies an
      #     Internet-facing instance with a publicly resolvable DNS name, which
      #     resolves to a public IP address. A value of `false` specifies an
      #     internal instance with a DNS name that resolves to a private IP
      #     address. Default: The default behavior varies depending on whether
      #     a VPC has been requested or not. The following list shows the
      #     default behavior in each case. Default VPC: `true` VPC: `false` If
      #     no DB subnet group has been specified as part of the request and
      #     the PubliclyAccessible value has not been set, the DB instance will
      #     be publicly accessible. If a specific DB subnet group has been
      #     specified as part of the request and the PubliclyAccessible value
      #     has not been set, the DB instance will be private.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_instance_identifier` - (String)
      #   * `:db_instance_class` - (String)
      #   * `:engine` - (String)
      #   * `:db_instance_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:allocated_storage` - (Integer)
      #   * `:instance_create_time` - (Time)
      #   * `:preferred_backup_window` - (String)
      #   * `:backup_retention_period` - (Integer)
      #   * `:db_security_groups` - (Array<Hash>)
      #     * `:db_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:db_parameter_groups` - (Array<Hash>)
      #     * `:db_parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:availability_zone` - (String)
      #   * `:db_subnet_group` - (Hash)
      #     * `:db_subnet_group_name` - (String)
      #     * `:db_subnet_group_description` - (String)
      #     * `:vpc_id` - (String)
      #     * `:subnet_group_status` - (String)
      #     * `:subnets` - (Array<Hash>)
      #       * `:subnet_identifier` - (String)
      #       * `:subnet_availability_zone` - (Hash)
      #         * `:name` - (String)
      #         * `:provisioned_iops_capable` - (Boolean)
      #       * `:subnet_status` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:db_instance_class` - (String)
      #     * `:allocated_storage` - (Integer)
      #     * `:master_user_password` - (String)
      #     * `:port` - (Integer)
      #     * `:backup_retention_period` - (Integer)
      #     * `:multi_az` - (Boolean)
      #     * `:engine_version` - (String)
      #     * `:iops` - (Integer)
      #     * `:db_instance_identifier` - (String)
      #   * `:latest_restorable_time` - (Time)
      #   * `:multi_az` - (Boolean)
      #   * `:engine_version` - (String)
      #   * `:auto_minor_version_upgrade` - (Boolean)
      #   * `:read_replica_source_db_instance_identifier` - (String)
      #   * `:read_replica_db_instance_identifiers` - (Array<String>)
      #   * `:license_model` - (String)
      #   * `:iops` - (Integer)
      #   * `:option_group_memberships` - (Array<Hash>)
      #     * `:option_group_name` - (String)
      #     * `:status` - (String)
      #   * `:character_set_name` - (String)
      #   * `:secondary_availability_zone` - (String)
      #   * `:publicly_accessible` - (Boolean)

      # @!method create_db_parameter_group(options = {})
      # Calls the CreateDBParameterGroup API operation.
      # @param [Hash] options
      #   * `:db_parameter_group_name` - *required* - (String) The name of the
      #     DB Parameter Group.
      #   * `:db_parameter_group_family` - *required* - (String) The name of
      #     the DB Parameter Group Family the DB Parameter Group can be used
      #     with.
      #   * `:description` - *required* - (String) The description for the DB
      #     Parameter Group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_parameter_group_name` - (String)
      #   * `:db_parameter_group_family` - (String)
      #   * `:description` - (String)

      # @!method create_db_security_group(options = {})
      # Calls the CreateDBSecurityGroup API operation.
      # @param [Hash] options
      #   * `:db_security_group_name` - *required* - (String) The name for the
      #     DB Security Group. This value is stored as a lowercase string.
      #   * `:db_security_group_description` - *required* - (String) The
      #     description for the DB Security Group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:owner_id` - (String)
      #   * `:db_security_group_name` - (String)
      #   * `:db_security_group_description` - (String)
      #   * `:vpc_id` - (String)
      #   * `:ec_2_security_groups` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:ec2_security_group_name` - (String)
      #     * `:ec2_security_group_id` - (String)
      #     * `:ec2_security_group_owner_id` - (String)
      #   * `:ip_ranges` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:cidrip` - (String)

      # @!method create_db_snapshot(options = {})
      # Calls the CreateDBSnapshot API operation.
      # @param [Hash] options
      #   * `:db_snapshot_identifier` - *required* - (String) The identifier
      #     for the DB Snapshot.
      #   * `:db_instance_identifier` - *required* - (String) The DB Instance
      #     identifier. This is the unique key that identifies a DB Instance.
      #     This parameter isn't case sensitive.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_snapshot_identifier` - (String)
      #   * `:db_instance_identifier` - (String)
      #   * `:snapshot_create_time` - (Time)
      #   * `:engine` - (String)
      #   * `:allocated_storage` - (Integer)
      #   * `:status` - (String)
      #   * `:port` - (Integer)
      #   * `:availability_zone` - (String)
      #   * `:vpc_id` - (String)
      #   * `:instance_create_time` - (Time)
      #   * `:master_username` - (String)
      #   * `:engine_version` - (String)
      #   * `:license_model` - (String)
      #   * `:snapshot_type` - (String)
      #   * `:iops` - (Integer)
      #   * `:option_group_name` - (String)

      # @!method create_db_subnet_group(options = {})
      # Calls the CreateDBSubnetGroup API operation.
      # @param [Hash] options
      #   * `:db_subnet_group_name` - *required* - (String) The name for the DB
      #     Subnet Group. This value is stored as a lowercase string.
      #     Constraints: Must contain no more than 255 alphanumeric characters
      #     or hyphens. Must not be "Default". Example: mySubnetgroup
      #   * `:db_subnet_group_description` - *required* - (String) The
      #     description for the DB Subnet Group.
      #   * `:subnet_ids` - *required* - (Array<String>) The EC2 Subnet IDs for
      #     the DB Subnet Group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_subnet_group_name` - (String)
      #   * `:db_subnet_group_description` - (String)
      #   * `:vpc_id` - (String)
      #   * `:subnet_group_status` - (String)
      #   * `:subnets` - (Array<Hash>)
      #     * `:subnet_identifier` - (String)
      #     * `:subnet_availability_zone` - (Hash)
      #       * `:name` - (String)
      #       * `:provisioned_iops_capable` - (Boolean)
      #     * `:subnet_status` - (String)

      # @!method create_event_subscription(options = {})
      # Calls the CreateEventSubscription API operation.
      # @param [Hash] options
      #   * `:subscription_name` - *required* - (String) The name of the
      #     subscription. Constraints: The name must be less than 255
      #     characters.
      #   * `:sns_topic_arn` - *required* - (String) The Amazon Resource Name
      #     (ARN) of the SNS topic created for event notification. The ARN is
      #     created by Amazon SNS when you create a topic and subscribe to it.
      #   * `:source_type` - (String) The type of source that will be
      #     generating the events. For example, if you want to be notified of
      #     events generated by a DB instance, you would set this parameter to
      #     db-instance. if this value is not specified, all events are
      #     returned. Valid values: db-instance | db-parameter-group |
      #     db-security-group | db-snapshot
      #   * `:event_categories` - (Array<String>) A list of event categories
      #     for a SourceType that you want to subscribe to. You can see a list
      #     of the categories for a given SourceType in the Events topic in the
      #     Amazon RDS User Guide or by using the DescribeEventCategories
      #     action.
      #   * `:source_ids` - (Array<String>) The list of identifiers of the
      #     event sources for which events will be returned. If not specified,
      #     then all sources are included in the response. An identifier must
      #     begin with a letter and must contain only ASCII letters, digits,
      #     and hyphens; it cannot end with a hyphen or contain two consecutive
      #     hyphens. Constraints: If SourceIds are supplied, SourceType must
      #     also be provided. If the source type is a DB instance, then a
      #     DBInstanceIdentifier must be supplied. If the source type is a DB
      #     security group, a DBSecurityGroupName must be supplied. If the
      #     source type is a DB parameter group, a DBParameterGroupName must be
      #     supplied. If the source type is a DB Snapshot, a
      #     DBSnapshotIdentifier must be supplied.
      #   * `:enabled` - (Boolean) A Boolean value; set to `true` to activate
      #     the subscription, set to `false` to create the subscription but not
      #     active it.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:customer_aws_id` - (String)
      #   * `:cust_subscription_id` - (String)
      #   * `:sns_topic_arn` - (String)
      #   * `:status` - (String)
      #   * `:subscription_creation_time` - (String)
      #   * `:source_type` - (String)
      #   * `:source_ids_list` - (Array<String>)
      #   * `:event_categories_list` - (Array<String>)
      #   * `:enabled` - (Boolean)

      # @!method create_option_group(options = {})
      # Calls the CreateOptionGroup API operation.
      # @param [Hash] options
      #   * `:option_group_name` - *required* - (String) Specifies the name of
      #     the option group to be created. Constraints: Must be 1 to 255
      #     alphanumeric characters or hyphens First character must be a letter
      #     Cannot end with a hyphen or contain two consecutive hyphens
      #     Example: myOptiongroup
      #   * `:engine_name` - *required* - (String) Specifies the name of the
      #     engine that this option group should be associated with.
      #   * `:major_engine_version` - *required* - (String) Specifies the major
      #     version of the engine that this option group should be associated
      #     with.
      #   * `:option_group_description` - *required* - (String) The description
      #     of the option group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:option_group_name` - (String)
      #   * `:option_group_description` - (String)
      #   * `:engine_name` - (String)
      #   * `:major_engine_version` - (String)
      #   * `:options` - (Array<Hash>)
      #     * `:option_name` - (String)
      #     * `:option_description` - (String)
      #     * `:persistent` - (Boolean)
      #     * `:port` - (Integer)
      #     * `:option_settings` - (Array<Hash>)
      #       * `:name` - (String)
      #       * `:value` - (String)
      #       * `:default_value` - (String)
      #       * `:description` - (String)
      #       * `:apply_type` - (String)
      #       * `:data_type` - (String)
      #       * `:allowed_values` - (String)
      #       * `:is_modifiable` - (Boolean)
      #       * `:is_collection` - (Boolean)
      #     * `:db_security_group_memberships` - (Array<Hash>)
      #       * `:db_security_group_name` - (String)
      #       * `:status` - (String)
      #     * `:vpc_security_group_memberships` - (Array<Hash>)
      #       * `:vpc_security_group_id` - (String)
      #       * `:status` - (String)
      #   * `:allows_vpc_and_non_vpc_instance_memberships` - (Boolean)
      #   * `:vpc_id` - (String)

      # @!method delete_db_instance(options = {})
      # Calls the DeleteDBInstance API operation.
      # @param [Hash] options
      #   * `:db_instance_identifier` - *required* - (String) The DB Instance
      #     identifier for the DB Instance to be deleted. This parameter isn't
      #     case sensitive.
      #   * `:skip_final_snapshot` - (Boolean)
      #   * `:final_db_snapshot_identifier` - (String) Determines whether a
      #     final DB Snapshot is created before the DB Instance is deleted. If
      #     `true` , no DBSnapshot is created. If `false` , a DB Snapshot is
      #     created before the DB Instance is deleted.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_instance_identifier` - (String)
      #   * `:db_instance_class` - (String)
      #   * `:engine` - (String)
      #   * `:db_instance_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:allocated_storage` - (Integer)
      #   * `:instance_create_time` - (Time)
      #   * `:preferred_backup_window` - (String)
      #   * `:backup_retention_period` - (Integer)
      #   * `:db_security_groups` - (Array<Hash>)
      #     * `:db_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:db_parameter_groups` - (Array<Hash>)
      #     * `:db_parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:availability_zone` - (String)
      #   * `:db_subnet_group` - (Hash)
      #     * `:db_subnet_group_name` - (String)
      #     * `:db_subnet_group_description` - (String)
      #     * `:vpc_id` - (String)
      #     * `:subnet_group_status` - (String)
      #     * `:subnets` - (Array<Hash>)
      #       * `:subnet_identifier` - (String)
      #       * `:subnet_availability_zone` - (Hash)
      #         * `:name` - (String)
      #         * `:provisioned_iops_capable` - (Boolean)
      #       * `:subnet_status` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:db_instance_class` - (String)
      #     * `:allocated_storage` - (Integer)
      #     * `:master_user_password` - (String)
      #     * `:port` - (Integer)
      #     * `:backup_retention_period` - (Integer)
      #     * `:multi_az` - (Boolean)
      #     * `:engine_version` - (String)
      #     * `:iops` - (Integer)
      #     * `:db_instance_identifier` - (String)
      #   * `:latest_restorable_time` - (Time)
      #   * `:multi_az` - (Boolean)
      #   * `:engine_version` - (String)
      #   * `:auto_minor_version_upgrade` - (Boolean)
      #   * `:read_replica_source_db_instance_identifier` - (String)
      #   * `:read_replica_db_instance_identifiers` - (Array<String>)
      #   * `:license_model` - (String)
      #   * `:iops` - (Integer)
      #   * `:option_group_memberships` - (Array<Hash>)
      #     * `:option_group_name` - (String)
      #     * `:status` - (String)
      #   * `:character_set_name` - (String)
      #   * `:secondary_availability_zone` - (String)
      #   * `:publicly_accessible` - (Boolean)

      # @!method delete_db_parameter_group(options = {})
      # Calls the DeleteDBParameterGroup API operation.
      # @param [Hash] options
      #   * `:db_parameter_group_name` - *required* - (String) The name of the
      #     DB Parameter Group. The specified database security group must not
      #     be associated with any DB instances.
      # @return [Core::Response]

      # @!method delete_db_security_group(options = {})
      # Calls the DeleteDBSecurityGroup API operation.
      # @param [Hash] options
      #   * `:db_security_group_name` - *required* - (String) The name of the
      #     database security group to delete.
      # @return [Core::Response]

      # @!method delete_db_snapshot(options = {})
      # Calls the DeleteDBSnapshot API operation.
      # @param [Hash] options
      #   * `:db_snapshot_identifier` - *required* - (String) The DBSnapshot
      #     identifier.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_snapshot_identifier` - (String)
      #   * `:db_instance_identifier` - (String)
      #   * `:snapshot_create_time` - (Time)
      #   * `:engine` - (String)
      #   * `:allocated_storage` - (Integer)
      #   * `:status` - (String)
      #   * `:port` - (Integer)
      #   * `:availability_zone` - (String)
      #   * `:vpc_id` - (String)
      #   * `:instance_create_time` - (Time)
      #   * `:master_username` - (String)
      #   * `:engine_version` - (String)
      #   * `:license_model` - (String)
      #   * `:snapshot_type` - (String)
      #   * `:iops` - (Integer)
      #   * `:option_group_name` - (String)

      # @!method delete_db_subnet_group(options = {})
      # Calls the DeleteDBSubnetGroup API operation.
      # @param [Hash] options
      #   * `:db_subnet_group_name` - *required* - (String) The name of the
      #     database subnet group to delete. You cannot delete the default
      #     subnet group. Constraints: Must be 1 to 255 alphanumeric characters
      #     First character must be a letter Cannot end with a hyphen or
      #     contain two consecutive hyphens
      # @return [Core::Response]

      # @!method delete_event_subscription(options = {})
      # Calls the DeleteEventSubscription API operation.
      # @param [Hash] options
      #   * `:subscription_name` - *required* - (String) The name of the RDS
      #     event notification subscription you want to delete.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:customer_aws_id` - (String)
      #   * `:cust_subscription_id` - (String)
      #   * `:sns_topic_arn` - (String)
      #   * `:status` - (String)
      #   * `:subscription_creation_time` - (String)
      #   * `:source_type` - (String)
      #   * `:source_ids_list` - (Array<String>)
      #   * `:event_categories_list` - (Array<String>)
      #   * `:enabled` - (Boolean)

      # @!method delete_option_group(options = {})
      # Calls the DeleteOptionGroup API operation.
      # @param [Hash] options
      #   * `:option_group_name` - *required* - (String) The name of the option
      #     group to be deleted. You cannot delete default Option Groups.
      # @return [Core::Response]

      # @!method describe_db_engine_versions(options = {})
      # Calls the DescribeDBEngineVersions API operation.
      # @param [Hash] options
      #   * `:engine` - (String) The database engine to return.
      #   * `:engine_version` - (String) The database engine version to return.
      #   * `:db_parameter_group_family` - (String) The name of a specific
      #     database parameter group family to return details for. Constraints:
      #     Must be 1 to 255 alphanumeric characters First character must be a
      #     letter Cannot end with a hyphen or contain two consecutive hyphens
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more than the MaxRecords value is available, a
      #     marker is included in the response so that the following results
      #     can be retrieved. Default: 100 Constraints: minimum 20, maximum 100
      #   * `:marker` - (String) The marker provided in the previous request.
      #     If this parameter is specified, the response includes records
      #     beyond the marker only, up to MaxRecords.
      #   * `:default_only` - (Boolean) Indicates that only the default version
      #     of the specified engine or engine and major version combination is
      #     returned.
      #   * `:list_supported_character_sets` - (Boolean) If this parameter is
      #     specified, and if the requested engine supports the
      #     CharacterSetName parameter for CreateDBInstance, the response
      #     includes a list of supported character sets for each engine
      #     version.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:db_engine_versions` - (Array<Hash>)
      #     * `:engine` - (String)
      #     * `:engine_version` - (String)
      #     * `:db_parameter_group_family` - (String)
      #     * `:db_engine_description` - (String)
      #     * `:db_engine_version_description` - (String)
      #     * `:default_character_set` - (Hash)
      #       * `:character_set_name` - (String)
      #       * `:character_set_description` - (String)
      #     * `:supported_character_sets` - (Array<Hash>)
      #       * `:character_set_name` - (String)
      #       * `:character_set_description` - (String)

      # @!method describe_db_instances(options = {})
      # Calls the DescribeDBInstances API operation.
      # @param [Hash] options
      #   * `:db_instance_identifier` - (String) The user-supplied instance
      #     identifier. If this parameter is specified, information from only
      #     the specific DB Instance is returned. This parameter isn't case
      #     sensitive.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved.
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeDBInstances request. If this parameter is specified, the
      #     response includes only records beyond the marker, up to the value
      #     specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:db_instances` - (Array<Hash>)
      #     * `:db_instance_identifier` - (String)
      #     * `:db_instance_class` - (String)
      #     * `:engine` - (String)
      #     * `:db_instance_status` - (String)
      #     * `:master_username` - (String)
      #     * `:db_name` - (String)
      #     * `:endpoint` - (Hash)
      #       * `:address` - (String)
      #       * `:port` - (Integer)
      #     * `:allocated_storage` - (Integer)
      #     * `:instance_create_time` - (Time)
      #     * `:preferred_backup_window` - (String)
      #     * `:backup_retention_period` - (Integer)
      #     * `:db_security_groups` - (Array<Hash>)
      #       * `:db_security_group_name` - (String)
      #       * `:status` - (String)
      #     * `:vpc_security_groups` - (Array<Hash>)
      #       * `:vpc_security_group_id` - (String)
      #       * `:status` - (String)
      #     * `:db_parameter_groups` - (Array<Hash>)
      #       * `:db_parameter_group_name` - (String)
      #       * `:parameter_apply_status` - (String)
      #     * `:availability_zone` - (String)
      #     * `:db_subnet_group` - (Hash)
      #       * `:db_subnet_group_name` - (String)
      #       * `:db_subnet_group_description` - (String)
      #       * `:vpc_id` - (String)
      #       * `:subnet_group_status` - (String)
      #       * `:subnets` - (Array<Hash>)
      #         * `:subnet_identifier` - (String)
      #         * `:subnet_availability_zone` - (Hash)
      #           * `:name` - (String)
      #           * `:provisioned_iops_capable` - (Boolean)
      #         * `:subnet_status` - (String)
      #     * `:preferred_maintenance_window` - (String)
      #     * `:pending_modified_values` - (Hash)
      #       * `:db_instance_class` - (String)
      #       * `:allocated_storage` - (Integer)
      #       * `:master_user_password` - (String)
      #       * `:port` - (Integer)
      #       * `:backup_retention_period` - (Integer)
      #       * `:multi_az` - (Boolean)
      #       * `:engine_version` - (String)
      #       * `:iops` - (Integer)
      #       * `:db_instance_identifier` - (String)
      #     * `:latest_restorable_time` - (Time)
      #     * `:multi_az` - (Boolean)
      #     * `:engine_version` - (String)
      #     * `:auto_minor_version_upgrade` - (Boolean)
      #     * `:read_replica_source_db_instance_identifier` - (String)
      #     * `:read_replica_db_instance_identifiers` - (Array<String>)
      #     * `:license_model` - (String)
      #     * `:iops` - (Integer)
      #     * `:option_group_memberships` - (Array<Hash>)
      #       * `:option_group_name` - (String)
      #       * `:status` - (String)
      #     * `:character_set_name` - (String)
      #     * `:secondary_availability_zone` - (String)
      #     * `:publicly_accessible` - (Boolean)

      # @!method describe_db_log_files(options = {})
      # Calls the DescribeDBLogFiles API operation.
      # @param [Hash] options
      #   * `:db_instance_identifier` - (String) The customer-assigned name of
      #     the DB Instance that contains the log files you want to list.
      #     Constraints: Must contain from 1 to 63 alphanumeric characters or
      #     hyphens First character must be a letter Cannot end with a hyphen
      #     or contain two consecutive hyphens
      #   * `:filename_contains` - (String) Filters the available log files for
      #     log file names that contain the specified string.
      #   * `:file_last_written` - (Integer) Filters the available log files
      #     for files written since the specified date.
      #   * `:file_size` - (Integer) Filters the available log files for files
      #     larger than the specified size.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a pagination token called a marker is included in
      #     the response so that the remaining results can be retrieved.
      #   * `:marker` - (String) The pagination token provided in the previous
      #     request. If this parameter is specified the response includes only
      #     records beyond the marker, up to MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:describe_db_log_files` - (Array<Hash>)
      #     * `:log_file_name` - (String)
      #     * `:last_written` - (Integer)
      #     * `:size` - (Integer)
      #   * `:marker` - (String)

      # @!method describe_db_parameter_groups(options = {})
      # Calls the DescribeDBParameterGroups API operation.
      # @param [Hash] options
      #   * `:db_parameter_group_name` - (String) The name of a specific
      #     database parameter group to return details for.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved.
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeDBInstances request. If this parameter is specified, the
      #     response includes only records beyond the marker, up to the value
      #     specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:db_parameter_groups` - (Array<Hash>)
      #     * `:db_parameter_group_name` - (String)
      #     * `:db_parameter_group_family` - (String)
      #     * `:description` - (String)

      # @!method describe_db_parameters(options = {})
      # Calls the DescribeDBParameters API operation.
      # @param [Hash] options
      #   * `:db_parameter_group_name` - *required* - (String) The name of a
      #     specific database parameter group to return details for.
      #   * `:source` - (String) The parameter types to return.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved.
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeDBInstances request. If this parameter is specified, the
      #     response includes only records beyond the marker, up to the value
      #     specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:parameters` - (Array<Hash>)
      #     * `:parameter_name` - (String)
      #     * `:parameter_value` - (String)
      #     * `:description` - (String)
      #     * `:source` - (String)
      #     * `:apply_type` - (String)
      #     * `:data_type` - (String)
      #     * `:allowed_values` - (String)
      #     * `:is_modifiable` - (Boolean)
      #     * `:minimum_engine_version` - (String)
      #     * `:apply_method` - (String)
      #   * `:marker` - (String)

      # @!method describe_db_security_groups(options = {})
      # Calls the DescribeDBSecurityGroups API operation.
      # @param [Hash] options
      #   * `:db_security_group_name` - (String) The name of the DB Security
      #     Group to return details for.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved.
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeDBInstances request. If this parameter is specified, the
      #     response includes only records beyond the marker, up to the value
      #     specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:db_security_groups` - (Array<Hash>)
      #     * `:owner_id` - (String)
      #     * `:db_security_group_name` - (String)
      #     * `:db_security_group_description` - (String)
      #     * `:vpc_id` - (String)
      #     * `:ec_2_security_groups` - (Array<Hash>)
      #       * `:status` - (String)
      #       * `:ec2_security_group_name` - (String)
      #       * `:ec2_security_group_id` - (String)
      #       * `:ec2_security_group_owner_id` - (String)
      #     * `:ip_ranges` - (Array<Hash>)
      #       * `:status` - (String)
      #       * `:cidrip` - (String)

      # @!method describe_db_snapshots(options = {})
      # Calls the DescribeDBSnapshots API operation.
      # @param [Hash] options
      #   * `:db_instance_identifier` - (String) The unique identifier for the
      #     Amazon RDS DB snapshot. This value is stored as a lowercase string.
      #   * `:db_snapshot_identifier` - (String) The DB Instance identifier.
      #     This parameter isn't case sensitive.
      #   * `:snapshot_type` - (String) An optional snapshot type for which
      #     snapshots will be returned. If not specified, the returned results
      #     will include snapshots of all types.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved.
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeDBInstances request. If this parameter is specified, the
      #     response includes only records beyond the marker, up to the value
      #     specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:db_snapshots` - (Array<Hash>)
      #     * `:db_snapshot_identifier` - (String)
      #     * `:db_instance_identifier` - (String)
      #     * `:snapshot_create_time` - (Time)
      #     * `:engine` - (String)
      #     * `:allocated_storage` - (Integer)
      #     * `:status` - (String)
      #     * `:port` - (Integer)
      #     * `:availability_zone` - (String)
      #     * `:vpc_id` - (String)
      #     * `:instance_create_time` - (Time)
      #     * `:master_username` - (String)
      #     * `:engine_version` - (String)
      #     * `:license_model` - (String)
      #     * `:snapshot_type` - (String)
      #     * `:iops` - (Integer)
      #     * `:option_group_name` - (String)

      # @!method describe_db_subnet_groups(options = {})
      # Calls the DescribeDBSubnetGroups API operation.
      # @param [Hash] options
      #   * `:db_subnet_group_name` - (String) The name of the DB Subnet Group
      #     to return details for.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved. Default: 100 Constraints:
      #     minimum 20, maximum 100
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeDBSubnetGroups request. If this parameter is specified, the
      #     response includes only records beyond the marker, up to the value
      #     specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:db_subnet_groups` - (Array<Hash>)
      #     * `:db_subnet_group_name` - (String)
      #     * `:db_subnet_group_description` - (String)
      #     * `:vpc_id` - (String)
      #     * `:subnet_group_status` - (String)
      #     * `:subnets` - (Array<Hash>)
      #       * `:subnet_identifier` - (String)
      #       * `:subnet_availability_zone` - (Hash)
      #         * `:name` - (String)
      #         * `:provisioned_iops_capable` - (Boolean)
      #       * `:subnet_status` - (String)

      # @!method describe_engine_default_parameters(options = {})
      # Calls the DescribeEngineDefaultParameters API operation.
      # @param [Hash] options
      #   * `:db_parameter_group_family` - *required* - (String) The name of
      #     the DB Parameter Group Family.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved.
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeDBInstances request. If this parameter is specified, the
      #     response includes only records beyond the marker, up to the value
      #     specified by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_parameter_group_family` - (String)
      #   * `:marker` - (String)
      #   * `:parameters` - (Array<Hash>)
      #     * `:parameter_name` - (String)
      #     * `:parameter_value` - (String)
      #     * `:description` - (String)
      #     * `:source` - (String)
      #     * `:apply_type` - (String)
      #     * `:data_type` - (String)
      #     * `:allowed_values` - (String)
      #     * `:is_modifiable` - (Boolean)
      #     * `:minimum_engine_version` - (String)
      #     * `:apply_method` - (String)

      # @!method describe_event_categories(options = {})
      # Calls the DescribeEventCategories API operation.
      # @param [Hash] options
      #   * `:source_type` - (String) The type of source that will be
      #     generating the events. Valid values: db-instance |
      #     db-parameter-group | db-security-group | db-snapshot
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:event_categories_map_list` - (Array<Hash>)
      #     * `:source_type` - (String)
      #     * `:event_categories` - (Array<String>)

      # @!method describe_event_subscriptions(options = {})
      # Calls the DescribeEventSubscriptions API operation.
      # @param [Hash] options
      #   * `:subscription_name` - (String) The name of the RDS event
      #     notification subscription you want to describe.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a pagination token called a marker is included in
      #     the response so that the remaining results can be retrieved.
      #     Default: 100 Constraints: minimum 20, maximum 100
      #   * `:marker` - (String) An optional pagination token provided by a
      #     previous DescribeOrderableDBInstanceOptions request. If this
      #     parameter is specified, the response includes only records beyond
      #     the marker, up to the value specified by MaxRecords .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:event_subscriptions_list` - (Array<Hash>)
      #     * `:customer_aws_id` - (String)
      #     * `:cust_subscription_id` - (String)
      #     * `:sns_topic_arn` - (String)
      #     * `:status` - (String)
      #     * `:subscription_creation_time` - (String)
      #     * `:source_type` - (String)
      #     * `:source_ids_list` - (Array<String>)
      #     * `:event_categories_list` - (Array<String>)
      #     * `:enabled` - (Boolean)

      # @!method describe_events(options = {})
      # Calls the DescribeEvents API operation.
      # @param [Hash] options
      #   * `:source_identifier` - (String) The identifier of the event source
      #     for which events will be returned. If not specified, then all
      #     sources are included in the response.
      #   * `:source_type` - (String) The event source to retrieve events for.
      #     If no value is specified, all events are returned. Valid values
      #     include:
      #     * `db-instance`
      #     * `db-parameter-group`
      #     * `db-security-group`
      #     * `db-snapshot`
      #   * `:start_time` - (String<ISO8601 datetime>) The beginning of the
      #     time interval to retrieve events for, specified in ISO 8601 format.
      #   * `:end_time` - (String<ISO8601 datetime>) The end of the time
      #     interval for which to retrieve events, specified in ISO 8601
      #     format.
      #   * `:duration` - (Integer) The number of minutes to retrieve events
      #     for.
      #   * `:event_categories` - (Array<String>) A list of event categories
      #     that trigger notifications for a event notification subscription.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved.
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeDBInstances request. If this parameter is specified, the
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
      #     * `:event_categories` - (Array<String>)
      #     * `:date` - (Time)

      # @!method describe_option_group_options(options = {})
      # Calls the DescribeOptionGroupOptions API operation.
      # @param [Hash] options
      #   * `:engine_name` - *required* - (String) A required parameter.
      #     Options available for the given Engine name will be described.
      #   * `:major_engine_version` - (String) If specified, filters the
      #     results to include only options for the specified major engine
      #     version.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a pagination token called a marker is included in
      #     the response so that the remaining results can be retrieved.
      #     Default: 100 Constraints: minimum 20, maximum 100
      #   * `:marker` - (String) An optional pagination token provided by a
      #     previous request. If this parameter is specified, the response
      #     includes only records beyond the marker, up to the value specified
      #     by MaxRecords.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:option_group_options` - (Array<Hash>)
      #     * `:name` - (String)
      #     * `:description` - (String)
      #     * `:engine_name` - (String)
      #     * `:major_engine_version` - (String)
      #     * `:minimum_required_minor_engine_version` - (String)
      #     * `:port_required` - (Boolean)
      #     * `:default_port` - (Integer)
      #     * `:options_depended_on` - (Array<String>)
      #     * `:persistent` - (Boolean)
      #     * `:option_group_option_settings` - (Array<Hash>)
      #       * `:setting_name` - (String)
      #       * `:setting_description` - (String)
      #       * `:default_value` - (String)
      #       * `:apply_type` - (String)
      #       * `:allowed_values` - (String)
      #       * `:is_modifiable` - (Boolean)
      #   * `:marker` - (String)

      # @!method describe_option_groups(options = {})
      # Calls the DescribeOptionGroups API operation.
      # @param [Hash] options
      #   * `:option_group_name` - (String) The name of the option group to
      #     describe. Cannot be supplied together with EngineName or
      #     MajorEngineVersion.
      #   * `:marker` - (String) An optional pagination token provided by a
      #     previous DescribeOptionGroups request. If this parameter is
      #     specified, the response includes only records beyond the marker, up
      #     to the value specified by MaxRecords.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a pagination token called a marker is included in
      #     the response so that the remaining results can be retrieved.
      #     Default: 100 Constraints: minimum 20, maximum 100
      #   * `:engine_name` - (String) Filters the list of option groups to only
      #     include groups associated with a specific database engine.
      #   * `:major_engine_version` - (String) Filters the list of option
      #     groups to only include groups associated with a specific database
      #     engine version. If specified, then EngineName must also be
      #     specified.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:option_groups_list` - (Array<Hash>)
      #     * `:option_group_name` - (String)
      #     * `:option_group_description` - (String)
      #     * `:engine_name` - (String)
      #     * `:major_engine_version` - (String)
      #     * `:options` - (Array<Hash>)
      #       * `:option_name` - (String)
      #       * `:option_description` - (String)
      #       * `:persistent` - (Boolean)
      #       * `:port` - (Integer)
      #       * `:option_settings` - (Array<Hash>)
      #         * `:name` - (String)
      #         * `:value` - (String)
      #         * `:default_value` - (String)
      #         * `:description` - (String)
      #         * `:apply_type` - (String)
      #         * `:data_type` - (String)
      #         * `:allowed_values` - (String)
      #         * `:is_modifiable` - (Boolean)
      #         * `:is_collection` - (Boolean)
      #       * `:db_security_group_memberships` - (Array<Hash>)
      #         * `:db_security_group_name` - (String)
      #         * `:status` - (String)
      #       * `:vpc_security_group_memberships` - (Array<Hash>)
      #         * `:vpc_security_group_id` - (String)
      #         * `:status` - (String)
      #     * `:allows_vpc_and_non_vpc_instance_memberships` - (Boolean)
      #     * `:vpc_id` - (String)
      #   * `:marker` - (String)

      # @!method describe_orderable_db_instance_options(options = {})
      # Calls the DescribeOrderableDBInstanceOptions API operation.
      # @param [Hash] options
      #   * `:engine` - *required* - (String) The name of the engine to
      #     retrieve DB Instance options for.
      #   * `:engine_version` - (String) The engine version filter value.
      #     Specify this parameter to show only the available offerings
      #     matching the specified engine version.
      #   * `:db_instance_class` - (String) The DB Instance class filter value.
      #     Specify this parameter to show only the available offerings
      #     matching the specified DB Instance class.
      #   * `:license_model` - (String) The license model filter value. Specify
      #     this parameter to show only the available offerings matching the
      #     specified license model.
      #   * `:vpc` - (Boolean) The VPC filter value. Specify this parameter to
      #     show only the available VPC or non-VPC offerings.
      #   * `:max_records` - (Integer) The maximum number of records to include
      #     in the response. If more records exist than the specified
      #     MaxRecords value, a marker is included in the response so that the
      #     remaining results may be retrieved. Default: 100 Constraints:
      #     minimum 20, maximum 100
      #   * `:marker` - (String) An optional marker provided in the previous
      #     DescribeOrderableDBInstanceOptions request. If this parameter is
      #     specified, the response includes only records beyond the marker, up
      #     to the value specified by MaxRecords .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:orderable_db_instance_options` - (Array<Hash>)
      #     * `:engine` - (String)
      #     * `:engine_version` - (String)
      #     * `:db_instance_class` - (String)
      #     * `:license_model` - (String)
      #     * `:availability_zones` - (Array<Hash>)
      #       * `:name` - (String)
      #       * `:provisioned_iops_capable` - (Boolean)
      #     * `:multi_az_capable` - (Boolean)
      #     * `:read_replica_capable` - (Boolean)
      #     * `:vpc` - (Boolean)
      #   * `:marker` - (String)

      # @!method describe_reserved_db_instances(options = {})
      # Calls the DescribeReservedDBInstances API operation.
      # @param [Hash] options
      #   * `:reserved_db_instance_id` - (String) The reserved DB Instance
      #     identifier filter value. Specify this parameter to show only the
      #     reservation that matches the specified reservation ID.
      #   * `:reserved_db_instances_offering_id` - (String) The offering
      #     identifier filter value. Specify this parameter to show only
      #     purchased reservations matching the specified offering identifier.
      #   * `:db_instance_class` - (String) The DB Instance class filter value.
      #     Specify this parameter to show only those reservations matching the
      #     specified DB Instances class.
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
      #   * `:multi_az` - (Boolean) The Multi-AZ filter value. Specify this
      #     parameter to show only those reservations matching the specified
      #     Multi-AZ parameter.
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
      #   * `:reserved_db_instances` - (Array<Hash>)
      #     * `:reserved_db_instance_id` - (String)
      #     * `:reserved_db_instances_offering_id` - (String)
      #     * `:db_instance_class` - (String)
      #     * `:start_time` - (Time)
      #     * `:duration` - (Integer)
      #     * `:fixed_price` - (Numeric)
      #     * `:usage_price` - (Numeric)
      #     * `:currency_code` - (String)
      #     * `:db_instance_count` - (Integer)
      #     * `:product_description` - (String)
      #     * `:offering_type` - (String)
      #     * `:multi_az` - (Boolean)
      #     * `:state` - (String)
      #     * `:recurring_charges` - (Array<Hash>)
      #       * `:recurring_charge_amount` - (Numeric)
      #       * `:recurring_charge_frequency` - (String)

      # @!method describe_reserved_db_instances_offerings(options = {})
      # Calls the DescribeReservedDBInstancesOfferings API operation.
      # @param [Hash] options
      #   * `:reserved_db_instances_offering_id` - (String) The offering
      #     identifier filter value. Specify this parameter to show only the
      #     available offering that matches the specified reservation
      #     identifier. Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706
      #   * `:db_instance_class` - (String) The DB Instance class filter value.
      #     Specify this parameter to show only the available offerings
      #     matching the specified DB Instance class.
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
      #   * `:multi_az` - (Boolean) The Multi-AZ filter value. Specify this
      #     parameter to show only the available offerings matching the
      #     specified Multi-AZ parameter.
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
      #   * `:reserved_db_instances_offerings` - (Array<Hash>)
      #     * `:reserved_db_instances_offering_id` - (String)
      #     * `:db_instance_class` - (String)
      #     * `:duration` - (Integer)
      #     * `:fixed_price` - (Numeric)
      #     * `:usage_price` - (Numeric)
      #     * `:currency_code` - (String)
      #     * `:product_description` - (String)
      #     * `:offering_type` - (String)
      #     * `:multi_az` - (Boolean)
      #     * `:recurring_charges` - (Array<Hash>)
      #       * `:recurring_charge_amount` - (Numeric)
      #       * `:recurring_charge_frequency` - (String)

      # @!method download_db_log_file_portion(options = {})
      # Calls the DownloadDBLogFilePortion API operation.
      # @param [Hash] options
      #   * `:db_instance_identifier` - (String)
      #   * `:log_file_name` - (String)
      #   * `:marker` - (String) The pagination token provided in the previous
      #     request. If this parameter is specified the response includes only
      #     records beyond the marker, up to MaxRecords.
      #   * `:number_of_lines` - (Integer) The number of lines remaining to be
      #     downloaded.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:log_file_data` - (String)
      #   * `:marker` - (String)
      #   * `:additional_data_pending` - (Boolean)

      # @!method list_tags_for_resource(options = {})
      # Calls the ListTagsForResource API operation.
      # @param [Hash] options
      #   * `:resource_name` - *required* - (String) The DB Instance with tags
      #     to be listed.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:tag_list` - (Array<Hash>)
      #     * `:key` - (String)
      #     * `:value` - (String)

      # @!method modify_db_instance(options = {})
      # Calls the ModifyDBInstance API operation.
      # @param [Hash] options
      #   * `:db_instance_identifier` - *required* - (String) The DB Instance
      #     identifier. This value is stored as a lowercase string.
      #   * `:allocated_storage` - (Integer) The new storage capacity of the
      #     RDS instance. This change does not result in an outage and is
      #     applied during the next maintenance window unless the
      #     ApplyImmediately parameter is specified as `true` for this request.
      #   * `:db_instance_class` - (String) The new compute and memory capacity
      #     of the DB Instance. Passing a value for this parameter causes an
      #     outage during the change and is applied during the next maintenance
      #     window, unless the ApplyImmediately parameter is specified as
      #     `true` for this request.
      #   * `:db_security_groups` - (Array<String>) A list of DB Security
      #     Groups to authorize on this DB Instance. This change is
      #     asynchronously applied as soon as possible.
      #   * `:vpc_security_group_ids` - (Array<String>) A list of Ec2 Vpc
      #     Security Groups to authorize on this DB Instance. This change is
      #     asynchronously applied as soon as possible. Constraints: Must be 1
      #     to 255 alphanumeric characters First character must be a letter
      #     Cannot end with a hyphen or contain two consecutive hyphens
      #   * `:apply_immediately` - (Boolean) Specifies whether or not the
      #     modifications in this request and any pending modifications are
      #     asynchronously applied as soon as possible, regardless of the
      #     PreferredMaintenanceWindow setting for the DB Instance. If this
      #     parameter is passed as `false` , changes to the DB Instance are
      #     applied on the next call to RebootDBInstance, the next maintenance
      #     reboot, or the next failure reboot, whichever occurs first.
      #   * `:master_user_password` - (String) The new password for the DB
      #     Instance master user. This change is asynchronously applied as soon
      #     as possible. Between the time of the request and the completion of
      #     the request, the MasterUserPassword element exists in the
      #     PendingModifiedValues element of the operation response.
      #   * `:db_parameter_group_name` - (String) The name of the DB Parameter
      #     Group to apply to this DB Instance. This change is asynchronously
      #     applied as soon as possible for parameters when the
      #     ApplyImmediately parameter is specified as `true` for this request.
      #   * `:backup_retention_period` - (Integer) The number of days to retain
      #     automated backups. Setting this parameter to a positive number
      #     enables backups. Setting this parameter to 0 disables automated
      #     backups.
      #   * `:preferred_backup_window` - (String) The daily time range during
      #     which automated backups are created if automated backups are
      #     enabled, as determined by the BackupRetentionPeriod.
      #   * `:preferred_maintenance_window` - (String) The weekly time range
      #     (in UTC) during which system maintenance can occur, which may
      #     result in an outage. This change is made immediately. If moving
      #     this window to the current time, there must be at least 120 minutes
      #     between the current time and end of the window to ensure pending
      #     changes are applied.
      #   * `:multi_az` - (Boolean) Specifies if the DB Instance is a Multi-AZ
      #     deployment. Constraints: Cannot be specified if the DB Instance is
      #     a read replica.
      #   * `:engine_version` - (String) The version number of the database
      #     engine to upgrade to. For major version upgrades, if a nondefault
      #     DB Parameter Group is currently in use, a new DB Parameter Group in
      #     the DB Parameter Group Family for the new engine version must be
      #     specified. The new DB Parameter Group can be the default for that
      #     DB Parameter Group Family. Example: 5.1.42
      #   * `:allow_major_version_upgrade` - (Boolean) Indicates that major
      #     version upgrades are allowed. Constraints: This parameter must be
      #     set to `true` when specifying a value for the EngineVersion
      #     parameter that is a different major version than the DB Instance's
      #     current version.
      #   * `:auto_minor_version_upgrade` - (Boolean) Indicates that minor
      #     version upgrades will be applied automatically to the DB Instance
      #     during the maintenance window.
      #   * `:iops` - (Integer) The new provisioned I/O operations per second
      #     of the RDS instance. This change does not result in an outage and
      #     is applied during the next maintenance window unless the
      #     ApplyImmediately parameter is specified as `true` for this request.
      #     Default: Uses existing setting Constraints: Value supplied must be
      #     at least 10% greater than the current value. Values that are not at
      #     least 10% greater than the existing value are rounded up so that
      #     they are 10% greater than the current value. Type: Integer
      #   * `:option_group_name` - (String) Indicates that the DB Instance
      #     should be associated with the specified option group.
      #   * `:new_db_instance_identifier` - (String) The new DB Instance
      #     identifier for the DB Instance when renaming a DB Instance. This
      #     value is stored as a lowercase string. Constraints: Must contain
      #     from 1 to 63 alphanumeric characters or hyphens First character
      #     must be a letter Cannot end with a hyphen or contain two
      #     consecutive hyphens
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_instance_identifier` - (String)
      #   * `:db_instance_class` - (String)
      #   * `:engine` - (String)
      #   * `:db_instance_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:allocated_storage` - (Integer)
      #   * `:instance_create_time` - (Time)
      #   * `:preferred_backup_window` - (String)
      #   * `:backup_retention_period` - (Integer)
      #   * `:db_security_groups` - (Array<Hash>)
      #     * `:db_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:db_parameter_groups` - (Array<Hash>)
      #     * `:db_parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:availability_zone` - (String)
      #   * `:db_subnet_group` - (Hash)
      #     * `:db_subnet_group_name` - (String)
      #     * `:db_subnet_group_description` - (String)
      #     * `:vpc_id` - (String)
      #     * `:subnet_group_status` - (String)
      #     * `:subnets` - (Array<Hash>)
      #       * `:subnet_identifier` - (String)
      #       * `:subnet_availability_zone` - (Hash)
      #         * `:name` - (String)
      #         * `:provisioned_iops_capable` - (Boolean)
      #       * `:subnet_status` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:db_instance_class` - (String)
      #     * `:allocated_storage` - (Integer)
      #     * `:master_user_password` - (String)
      #     * `:port` - (Integer)
      #     * `:backup_retention_period` - (Integer)
      #     * `:multi_az` - (Boolean)
      #     * `:engine_version` - (String)
      #     * `:iops` - (Integer)
      #     * `:db_instance_identifier` - (String)
      #   * `:latest_restorable_time` - (Time)
      #   * `:multi_az` - (Boolean)
      #   * `:engine_version` - (String)
      #   * `:auto_minor_version_upgrade` - (Boolean)
      #   * `:read_replica_source_db_instance_identifier` - (String)
      #   * `:read_replica_db_instance_identifiers` - (Array<String>)
      #   * `:license_model` - (String)
      #   * `:iops` - (Integer)
      #   * `:option_group_memberships` - (Array<Hash>)
      #     * `:option_group_name` - (String)
      #     * `:status` - (String)
      #   * `:character_set_name` - (String)
      #   * `:secondary_availability_zone` - (String)
      #   * `:publicly_accessible` - (Boolean)

      # @!method modify_db_parameter_group(options = {})
      # Calls the ModifyDBParameterGroup API operation.
      # @param [Hash] options
      #   * `:db_parameter_group_name` - *required* - (String) The name of the
      #     database parameter group.
      #   * `:parameters` - *required* - (Array<Hash>) An array of parameter
      #     names, values, and the apply method for the parameter update. At
      #     least one parameter name, value, and apply method must be supplied;
      #     subsequent arguments are optional. A maximum of 20 parameters may
      #     be modified in a single request.
      #     * `:parameter_name` - (String) Specifies the name of the parameter.
      #     * `:parameter_value` - (String) Specifies the value of the
      #       parameter.
      #     * `:description` - (String) Provides a description of the
      #       parameter.
      #     * `:source` - (String) Indicates the source of the parameter value.
      #     * `:apply_type` - (String) Specifies the engine specific parameters
      #       type.
      #     * `:data_type` - (String) Specifies the valid data type for the
      #       parameter.
      #     * `:allowed_values` - (String) Specifies the valid range of values
      #       for the parameter.
      #     * `:is_modifiable` - (Boolean) Indicates whether ( `true` ) or not
      #       ( `false` ) the parameter can be modified. Some parameters have
      #       security or operational implications that prevent them from being
      #       changed.
      #     * `:minimum_engine_version` - (String) The earliest engine version
      #       to which the parameter can apply.
      #     * `:apply_method` - (String) Indicates when to apply parameter
      #       updates. Valid values include:
      #       * `immediate`
      #       * `pending-reboot`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_parameter_group_name` - (String)

      # @!method modify_db_subnet_group(options = {})
      # Calls the ModifyDBSubnetGroup API operation.
      # @param [Hash] options
      #   * `:db_subnet_group_name` - *required* - (String) The name for the DB
      #     Subnet Group. This value is stored as a lowercase string.
      #     Constraints: Must contain no more than 255 alphanumeric characters
      #     or hyphens. Must not be "Default". Example: mySubnetgroup
      #   * `:db_subnet_group_description` - (String) The description for the
      #     DB Subnet Group.
      #   * `:subnet_ids` - *required* - (Array<String>) The EC2 Subnet IDs for
      #     the DB Subnet Group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_subnet_group_name` - (String)
      #   * `:db_subnet_group_description` - (String)
      #   * `:vpc_id` - (String)
      #   * `:subnet_group_status` - (String)
      #   * `:subnets` - (Array<Hash>)
      #     * `:subnet_identifier` - (String)
      #     * `:subnet_availability_zone` - (Hash)
      #       * `:name` - (String)
      #       * `:provisioned_iops_capable` - (Boolean)
      #     * `:subnet_status` - (String)

      # @!method modify_event_subscription(options = {})
      # Calls the ModifyEventSubscription API operation.
      # @param [Hash] options
      #   * `:subscription_name` - *required* - (String) The name of the RDS
      #     event notification subscription.
      #   * `:sns_topic_arn` - (String) The Amazon Resource Name (ARN) of the
      #     SNS topic created for event notification. The ARN is created by
      #     Amazon SNS when you create a topic and subscribe to it.
      #   * `:source_type` - (String) The type of source that will be
      #     generating the events. For example, if you want to be notified of
      #     events generated by a DB instance, you would set this parameter to
      #     db-instance. if this value is not specified, all events are
      #     returned. Valid values: db-instance | db-parameter-group |
      #     db-security-group | db-snapshot
      #   * `:event_categories` - (Array<String>) A list of event categories
      #     for a SourceType that you want to subscribe to. You can see a list
      #     of the categories for a given SourceType in the Events topic in the
      #     Amazon RDS User Guide or by using the DescribeEventCategories
      #     action.
      #   * `:enabled` - (Boolean) A Boolean value; set to `true` to activate
      #     the subscription.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:customer_aws_id` - (String)
      #   * `:cust_subscription_id` - (String)
      #   * `:sns_topic_arn` - (String)
      #   * `:status` - (String)
      #   * `:subscription_creation_time` - (String)
      #   * `:source_type` - (String)
      #   * `:source_ids_list` - (Array<String>)
      #   * `:event_categories_list` - (Array<String>)
      #   * `:enabled` - (Boolean)

      # @!method modify_option_group(options = {})
      # Calls the ModifyOptionGroup API operation.
      # @param [Hash] options
      #   * `:option_group_name` - *required* - (String) The name of the option
      #     group to be modified.
      #   * `:options_to_include` - (Array<Hash>) Options in this list are
      #     added to the Option Group or, if already present, the specified
      #     configuration is used to update the existing configuration.
      #     * `:option_name` - *required* - (String) The configuration of
      #       options to include in a group.
      #     * `:port` - (Integer) The optional port for the option.
      #     * `:db_security_group_memberships` - (Array<String>) A list of
      #       DBSecurityGroupMemebrship name strings used for this option.
      #     * `:vpc_security_group_memberships` - (Array<String>) A list of
      #       VpcSecurityGroupMemebrship name strings used for this option.
      #     * `:option_settings` - (Array<Hash>) A list of option settings
      #       applied for this option.
      #       * `:name` - (String) The name of the setting.
      #       * `:value` - (String) The value of this setting.
      #       * `:default_value` - (String) Default value for this setting.
      #       * `:description` - (String) The description of the setting.
      #       * `:apply_type` - (String) Specifies the apply type for this
      #         setting.
      #       * `:data_type` - (String) Specifies the valid data type of this
      #         setting
      #       * `:allowed_values` - (String) Specifies a valid list/range of
      #         values allowed for this setting.
      #       * `:is_modifiable` - (Boolean) Indicates if the setting is
      #         modifiable or not.
      #       * `:is_collection` - (Boolean) Indicates if the value for the
      #         setting can be a list of values or a single value.
      #   * `:options_to_remove` - (Array<String>) Options in this list are
      #     removed from the Option Group.
      #   * `:apply_immediately` - (Boolean) Indicates whether the changes
      #     should be applied immediately, or during the next maintenance
      #     window for each instance associated with the Option Group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:option_group_name` - (String)
      #   * `:option_group_description` - (String)
      #   * `:engine_name` - (String)
      #   * `:major_engine_version` - (String)
      #   * `:options` - (Array<Hash>)
      #     * `:option_name` - (String)
      #     * `:option_description` - (String)
      #     * `:persistent` - (Boolean)
      #     * `:port` - (Integer)
      #     * `:option_settings` - (Array<Hash>)
      #       * `:name` - (String)
      #       * `:value` - (String)
      #       * `:default_value` - (String)
      #       * `:description` - (String)
      #       * `:apply_type` - (String)
      #       * `:data_type` - (String)
      #       * `:allowed_values` - (String)
      #       * `:is_modifiable` - (Boolean)
      #       * `:is_collection` - (Boolean)
      #     * `:db_security_group_memberships` - (Array<Hash>)
      #       * `:db_security_group_name` - (String)
      #       * `:status` - (String)
      #     * `:vpc_security_group_memberships` - (Array<Hash>)
      #       * `:vpc_security_group_id` - (String)
      #       * `:status` - (String)
      #   * `:allows_vpc_and_non_vpc_instance_memberships` - (Boolean)
      #   * `:vpc_id` - (String)

      # @!method promote_read_replica(options = {})
      # Calls the PromoteReadReplica API operation.
      # @param [Hash] options
      #   * `:db_instance_identifier` - *required* - (String) The DB Instance
      #     identifier. This value is stored as a lowercase string.
      #     Constraints: Must be the identifier for an existing Read Replica DB
      #     Instance Must contain from 1 to 63 alphanumeric characters or
      #     hyphens First character must be a letter Cannot end with a hyphen
      #     or contain two consecutive hyphens Example: mydbinstance
      #   * `:backup_retention_period` - (Integer) The number of days to retain
      #     automated backups. Setting this parameter to a positive number
      #     enables backups. Setting this parameter to 0 disables automated
      #     backups. Default: 1 Constraints: Must be a value from 0 to 8
      #   * `:preferred_backup_window` - (String) The daily time range during
      #     which automated backups are created if automated backups are
      #     enabled, using the BackupRetentionPeriod parameter. Default: A
      #     30-minute window selected at random from an 8-hour block of time
      #     per region. The following list shows the time blocks for each
      #     region from which the default backup windows are assigned. US-East
      #     (Northern Virginia) Region: 03:00-11:00 UTC US-West (Northern
      #     California) Region: 06:00-14:00 UTC EU (Ireland) Region:
      #     22:00-06:00 UTC Asia Pacific (Singapore) Region: 14:00-22:00 UTC
      #     Asia Pacific (Tokyo) Region: 17:00-03:00 UTC Constraints: Must be
      #     in the format hh24:mi-hh24:mi. Times should be Universal Time
      #     Coordinated (UTC). Must not conflict with the preferred maintenance
      #     window. Must be at least 30 minutes.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_instance_identifier` - (String)
      #   * `:db_instance_class` - (String)
      #   * `:engine` - (String)
      #   * `:db_instance_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:allocated_storage` - (Integer)
      #   * `:instance_create_time` - (Time)
      #   * `:preferred_backup_window` - (String)
      #   * `:backup_retention_period` - (Integer)
      #   * `:db_security_groups` - (Array<Hash>)
      #     * `:db_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:db_parameter_groups` - (Array<Hash>)
      #     * `:db_parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:availability_zone` - (String)
      #   * `:db_subnet_group` - (Hash)
      #     * `:db_subnet_group_name` - (String)
      #     * `:db_subnet_group_description` - (String)
      #     * `:vpc_id` - (String)
      #     * `:subnet_group_status` - (String)
      #     * `:subnets` - (Array<Hash>)
      #       * `:subnet_identifier` - (String)
      #       * `:subnet_availability_zone` - (Hash)
      #         * `:name` - (String)
      #         * `:provisioned_iops_capable` - (Boolean)
      #       * `:subnet_status` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:db_instance_class` - (String)
      #     * `:allocated_storage` - (Integer)
      #     * `:master_user_password` - (String)
      #     * `:port` - (Integer)
      #     * `:backup_retention_period` - (Integer)
      #     * `:multi_az` - (Boolean)
      #     * `:engine_version` - (String)
      #     * `:iops` - (Integer)
      #     * `:db_instance_identifier` - (String)
      #   * `:latest_restorable_time` - (Time)
      #   * `:multi_az` - (Boolean)
      #   * `:engine_version` - (String)
      #   * `:auto_minor_version_upgrade` - (Boolean)
      #   * `:read_replica_source_db_instance_identifier` - (String)
      #   * `:read_replica_db_instance_identifiers` - (Array<String>)
      #   * `:license_model` - (String)
      #   * `:iops` - (Integer)
      #   * `:option_group_memberships` - (Array<Hash>)
      #     * `:option_group_name` - (String)
      #     * `:status` - (String)
      #   * `:character_set_name` - (String)
      #   * `:secondary_availability_zone` - (String)
      #   * `:publicly_accessible` - (Boolean)

      # @!method purchase_reserved_db_instances_offering(options = {})
      # Calls the PurchaseReservedDBInstancesOffering API operation.
      # @param [Hash] options
      #   * `:reserved_db_instances_offering_id` - *required* - (String) The ID
      #     of the Reserved DB Instance offering to purchase. Example:
      #     438012d3-4052-4cc7-b2e3-8d3372e0e706
      #   * `:reserved_db_instance_id` - (String) Customer-specified identifier
      #     to track this reservation. Example: myreservationID
      #   * `:db_instance_count` - (Integer) The number of instances to
      #     reserve. Default: 1
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:reserved_db_instance_id` - (String)
      #   * `:reserved_db_instances_offering_id` - (String)
      #   * `:db_instance_class` - (String)
      #   * `:start_time` - (Time)
      #   * `:duration` - (Integer)
      #   * `:fixed_price` - (Numeric)
      #   * `:usage_price` - (Numeric)
      #   * `:currency_code` - (String)
      #   * `:db_instance_count` - (Integer)
      #   * `:product_description` - (String)
      #   * `:offering_type` - (String)
      #   * `:multi_az` - (Boolean)
      #   * `:state` - (String)
      #   * `:recurring_charges` - (Array<Hash>)
      #     * `:recurring_charge_amount` - (Numeric)
      #     * `:recurring_charge_frequency` - (String)

      # @!method reboot_db_instance(options = {})
      # Calls the RebootDBInstance API operation.
      # @param [Hash] options
      #   * `:db_instance_identifier` - *required* - (String) The DB Instance
      #     identifier. This parameter is stored as a lowercase string.
      #   * `:force_failover` - (Boolean) When `true` , the reboot will be
      #     conducted through a MultiAZ failover. Constraint: You cannot
      #     specify `true` if the instance is not configured for MultiAZ.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_instance_identifier` - (String)
      #   * `:db_instance_class` - (String)
      #   * `:engine` - (String)
      #   * `:db_instance_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:allocated_storage` - (Integer)
      #   * `:instance_create_time` - (Time)
      #   * `:preferred_backup_window` - (String)
      #   * `:backup_retention_period` - (Integer)
      #   * `:db_security_groups` - (Array<Hash>)
      #     * `:db_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:db_parameter_groups` - (Array<Hash>)
      #     * `:db_parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:availability_zone` - (String)
      #   * `:db_subnet_group` - (Hash)
      #     * `:db_subnet_group_name` - (String)
      #     * `:db_subnet_group_description` - (String)
      #     * `:vpc_id` - (String)
      #     * `:subnet_group_status` - (String)
      #     * `:subnets` - (Array<Hash>)
      #       * `:subnet_identifier` - (String)
      #       * `:subnet_availability_zone` - (Hash)
      #         * `:name` - (String)
      #         * `:provisioned_iops_capable` - (Boolean)
      #       * `:subnet_status` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:db_instance_class` - (String)
      #     * `:allocated_storage` - (Integer)
      #     * `:master_user_password` - (String)
      #     * `:port` - (Integer)
      #     * `:backup_retention_period` - (Integer)
      #     * `:multi_az` - (Boolean)
      #     * `:engine_version` - (String)
      #     * `:iops` - (Integer)
      #     * `:db_instance_identifier` - (String)
      #   * `:latest_restorable_time` - (Time)
      #   * `:multi_az` - (Boolean)
      #   * `:engine_version` - (String)
      #   * `:auto_minor_version_upgrade` - (Boolean)
      #   * `:read_replica_source_db_instance_identifier` - (String)
      #   * `:read_replica_db_instance_identifiers` - (Array<String>)
      #   * `:license_model` - (String)
      #   * `:iops` - (Integer)
      #   * `:option_group_memberships` - (Array<Hash>)
      #     * `:option_group_name` - (String)
      #     * `:status` - (String)
      #   * `:character_set_name` - (String)
      #   * `:secondary_availability_zone` - (String)
      #   * `:publicly_accessible` - (Boolean)

      # @!method remove_source_identifier_from_subscription(options = {})
      # Calls the RemoveSourceIdentifierFromSubscription API operation.
      # @param [Hash] options
      #   * `:subscription_name` - *required* - (String) The name of the RDS
      #     event notification subscription you want to remove a source
      #     identifier from.
      #   * `:source_identifier` - *required* - (String) The source identifier
      #     to be removed from the subscription, such as the DB instance
      #     identifier for a DB instance or the name of a security group.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:customer_aws_id` - (String)
      #   * `:cust_subscription_id` - (String)
      #   * `:sns_topic_arn` - (String)
      #   * `:status` - (String)
      #   * `:subscription_creation_time` - (String)
      #   * `:source_type` - (String)
      #   * `:source_ids_list` - (Array<String>)
      #   * `:event_categories_list` - (Array<String>)
      #   * `:enabled` - (Boolean)

      # @!method remove_tags_from_resource(options = {})
      # Calls the RemoveTagsFromResource API operation.
      # @param [Hash] options
      #   * `:resource_name` - *required* - (String) The DB Instance the tags
      #     will be removed from.
      #   * `:tag_keys` - *required* - (Array<String>) The tag key (name) of
      #     the tag to be removed.
      # @return [Core::Response]

      # @!method reset_db_parameter_group(options = {})
      # Calls the ResetDBParameterGroup API operation.
      # @param [Hash] options
      #   * `:db_parameter_group_name` - *required* - (String) The name of the
      #     DB Parameter Group.
      #   * `:reset_all_parameters` - (Boolean) Specifies whether ( `true` ) or
      #     not ( `false` ) to reset all parameters in the DB Parameter Group
      #     to default values.
      #   * `:parameters` - (Array<Hash>) An array of parameter names, values,
      #     and the apply method for the parameter update. At least one
      #     parameter name, value, and apply method must be supplied;
      #     subsequent arguments are optional. A maximum of 20 parameters may
      #     be modified in a single request.
      #     * `:parameter_name` - (String) Specifies the name of the parameter.
      #     * `:parameter_value` - (String) Specifies the value of the
      #       parameter.
      #     * `:description` - (String) Provides a description of the
      #       parameter.
      #     * `:source` - (String) Indicates the source of the parameter value.
      #     * `:apply_type` - (String) Specifies the engine specific parameters
      #       type.
      #     * `:data_type` - (String) Specifies the valid data type for the
      #       parameter.
      #     * `:allowed_values` - (String) Specifies the valid range of values
      #       for the parameter.
      #     * `:is_modifiable` - (Boolean) Indicates whether ( `true` ) or not
      #       ( `false` ) the parameter can be modified. Some parameters have
      #       security or operational implications that prevent them from being
      #       changed.
      #     * `:minimum_engine_version` - (String) The earliest engine version
      #       to which the parameter can apply.
      #     * `:apply_method` - (String) Indicates when to apply parameter
      #       updates. Valid values include:
      #       * `immediate`
      #       * `pending-reboot`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_parameter_group_name` - (String)

      # @!method restore_db_instance_from_db_snapshot(options = {})
      # Calls the RestoreDBInstanceFromDBSnapshot API operation.
      # @param [Hash] options
      #   * `:db_instance_identifier` - *required* - (String) The identifier
      #     for the DB Snapshot to restore from.
      #   * `:db_snapshot_identifier` - *required* - (String) Name of the DB
      #     Instance to create from the DB Snapshot. This parameter isn't case
      #     sensitive.
      #   * `:db_instance_class` - (String) The compute and memory capacity of
      #     the Amazon RDS DB instance.
      #   * `:port` - (Integer) The port number on which the database accepts
      #     connections.
      #   * `:availability_zone` - (String) The EC2 Availability Zone that the
      #     database instance will be created in.
      #   * `:db_subnet_group_name` - (String) The DB Subnet Group name to use
      #     for the new instance.
      #   * `:multi_az` - (Boolean) Specifies if the DB Instance is a Multi-AZ
      #     deployment. Constraint: You cannot specify the AvailabilityZone
      #     parameter if the MultiAZ parameter is set to `true` .
      #   * `:publicly_accessible` - (Boolean) Specifies the accessibility
      #     options for the DB Instance. A value of `true` specifies an
      #     Internet-facing instance with a publicly resolvable DNS name, which
      #     resolves to a public IP address. A value of `false` specifies an
      #     internal instance with a DNS name that resolves to a private IP
      #     address. Default: The default behavior varies depending on whether
      #     a VPC has been requested or not. The following list shows the
      #     default behavior in each case. Default VPC: `true` VPC: `false` If
      #     no DB subnet group has been specified as part of the request and
      #     the PubliclyAccessible value has not been set, the DB instance will
      #     be publicly accessible. If a specific DB subnet group has been
      #     specified as part of the request and the PubliclyAccessible value
      #     has not been set, the DB instance will be private.
      #   * `:auto_minor_version_upgrade` - (Boolean) Indicates that minor
      #     version upgrades will be applied automatically to the DB Instance
      #     during the maintenance window.
      #   * `:license_model` - (String) License model information for the
      #     restored DB Instance. Default: Same as source. Valid values:
      #     license-included | bring-your-own-license | general-public-license
      #   * `:db_name` - (String) The database name for the restored DB
      #     Instance. This parameter doesn't apply to the MySQL engine.
      #   * `:engine` - (String) The database engine to use for the new
      #     instance. Default: The same as source Constraint: Must be
      #     compatible with the engine of the source Example: oracle-ee
      #   * `:iops` - (Integer) The amount of Provisioned IOPS (input/output
      #     operations per second) to be initially allocated for the DB
      #     Instance. Constraints: Must be an integer greater than 1000.
      #   * `:option_group_name` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_instance_identifier` - (String)
      #   * `:db_instance_class` - (String)
      #   * `:engine` - (String)
      #   * `:db_instance_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:allocated_storage` - (Integer)
      #   * `:instance_create_time` - (Time)
      #   * `:preferred_backup_window` - (String)
      #   * `:backup_retention_period` - (Integer)
      #   * `:db_security_groups` - (Array<Hash>)
      #     * `:db_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:db_parameter_groups` - (Array<Hash>)
      #     * `:db_parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:availability_zone` - (String)
      #   * `:db_subnet_group` - (Hash)
      #     * `:db_subnet_group_name` - (String)
      #     * `:db_subnet_group_description` - (String)
      #     * `:vpc_id` - (String)
      #     * `:subnet_group_status` - (String)
      #     * `:subnets` - (Array<Hash>)
      #       * `:subnet_identifier` - (String)
      #       * `:subnet_availability_zone` - (Hash)
      #         * `:name` - (String)
      #         * `:provisioned_iops_capable` - (Boolean)
      #       * `:subnet_status` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:db_instance_class` - (String)
      #     * `:allocated_storage` - (Integer)
      #     * `:master_user_password` - (String)
      #     * `:port` - (Integer)
      #     * `:backup_retention_period` - (Integer)
      #     * `:multi_az` - (Boolean)
      #     * `:engine_version` - (String)
      #     * `:iops` - (Integer)
      #     * `:db_instance_identifier` - (String)
      #   * `:latest_restorable_time` - (Time)
      #   * `:multi_az` - (Boolean)
      #   * `:engine_version` - (String)
      #   * `:auto_minor_version_upgrade` - (Boolean)
      #   * `:read_replica_source_db_instance_identifier` - (String)
      #   * `:read_replica_db_instance_identifiers` - (Array<String>)
      #   * `:license_model` - (String)
      #   * `:iops` - (Integer)
      #   * `:option_group_memberships` - (Array<Hash>)
      #     * `:option_group_name` - (String)
      #     * `:status` - (String)
      #   * `:character_set_name` - (String)
      #   * `:secondary_availability_zone` - (String)
      #   * `:publicly_accessible` - (Boolean)

      # @!method restore_db_instance_to_point_in_time(options = {})
      # Calls the RestoreDBInstanceToPointInTime API operation.
      # @param [Hash] options
      #   * `:source_db_instance_identifier` - *required* - (String) The
      #     identifier of the source DB Instance from which to restore.
      #   * `:target_db_instance_identifier` - *required* - (String) The name
      #     of the new database instance to be created.
      #   * `:restore_time` - (String<ISO8601 datetime>) The date and time from
      #     to restore from.
      #   * `:use_latest_restorable_time` - (Boolean) Specifies whether (
      #     `true` ) or not ( `false` ) the DB Instance is restored from the
      #     latest backup time.
      #   * `:db_instance_class` - (String) The compute and memory capacity of
      #     the Amazon RDS DB instance.
      #   * `:port` - (Integer) The port number on which the database accepts
      #     connections.
      #   * `:availability_zone` - (String) The EC2 Availability Zone that the
      #     database instance will be created in.
      #   * `:db_subnet_group_name` - (String) The DB subnet group name to use
      #     for the new instance.
      #   * `:multi_az` - (Boolean) Specifies if the DB Instance is a Multi-AZ
      #     deployment. Constraint: You cannot specify the AvailabilityZone
      #     parameter if the MultiAZ parameter is set to `true` .
      #   * `:publicly_accessible` - (Boolean) Specifies the accessibility
      #     options for the DB Instance. A value of `true` specifies an
      #     Internet-facing instance with a publicly resolvable DNS name, which
      #     resolves to a public IP address. A value of `false` specifies an
      #     internal instance with a DNS name that resolves to a private IP
      #     address. Default: The default behavior varies depending on whether
      #     a VPC has been requested or not. The following list shows the
      #     default behavior in each case. Default VPC: `true` VPC: `false` If
      #     no DB subnet group has been specified as part of the request and
      #     the PubliclyAccessible value has not been set, the DB instance will
      #     be publicly accessible. If a specific DB subnet group has been
      #     specified as part of the request and the PubliclyAccessible value
      #     has not been set, the DB instance will be private.
      #   * `:auto_minor_version_upgrade` - (Boolean) Indicates that minor
      #     version upgrades will be applied automatically to the DB Instance
      #     during the maintenance window.
      #   * `:license_model` - (String) License model information for the
      #     restored DB Instance. Default: Same as source. Valid values:
      #     license-included | bring-your-own-license | general-public-license
      #   * `:db_name` - (String) The database name for the restored DB
      #     Instance. This parameter is not used for the MySQL engine.
      #   * `:engine` - (String) The database engine to use for the new
      #     instance. Default: The same as source Constraint: Must be
      #     compatible with the engine of the source Example: oracle-ee
      #   * `:iops` - (Integer) The amount of Provisioned IOPS (input/output
      #     operations per second) to be initially allocated for the DB
      #     Instance. Constraints: Must be an integer greater than 1000.
      #   * `:option_group_name` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:db_instance_identifier` - (String)
      #   * `:db_instance_class` - (String)
      #   * `:engine` - (String)
      #   * `:db_instance_status` - (String)
      #   * `:master_username` - (String)
      #   * `:db_name` - (String)
      #   * `:endpoint` - (Hash)
      #     * `:address` - (String)
      #     * `:port` - (Integer)
      #   * `:allocated_storage` - (Integer)
      #   * `:instance_create_time` - (Time)
      #   * `:preferred_backup_window` - (String)
      #   * `:backup_retention_period` - (Integer)
      #   * `:db_security_groups` - (Array<Hash>)
      #     * `:db_security_group_name` - (String)
      #     * `:status` - (String)
      #   * `:vpc_security_groups` - (Array<Hash>)
      #     * `:vpc_security_group_id` - (String)
      #     * `:status` - (String)
      #   * `:db_parameter_groups` - (Array<Hash>)
      #     * `:db_parameter_group_name` - (String)
      #     * `:parameter_apply_status` - (String)
      #   * `:availability_zone` - (String)
      #   * `:db_subnet_group` - (Hash)
      #     * `:db_subnet_group_name` - (String)
      #     * `:db_subnet_group_description` - (String)
      #     * `:vpc_id` - (String)
      #     * `:subnet_group_status` - (String)
      #     * `:subnets` - (Array<Hash>)
      #       * `:subnet_identifier` - (String)
      #       * `:subnet_availability_zone` - (Hash)
      #         * `:name` - (String)
      #         * `:provisioned_iops_capable` - (Boolean)
      #       * `:subnet_status` - (String)
      #   * `:preferred_maintenance_window` - (String)
      #   * `:pending_modified_values` - (Hash)
      #     * `:db_instance_class` - (String)
      #     * `:allocated_storage` - (Integer)
      #     * `:master_user_password` - (String)
      #     * `:port` - (Integer)
      #     * `:backup_retention_period` - (Integer)
      #     * `:multi_az` - (Boolean)
      #     * `:engine_version` - (String)
      #     * `:iops` - (Integer)
      #     * `:db_instance_identifier` - (String)
      #   * `:latest_restorable_time` - (Time)
      #   * `:multi_az` - (Boolean)
      #   * `:engine_version` - (String)
      #   * `:auto_minor_version_upgrade` - (Boolean)
      #   * `:read_replica_source_db_instance_identifier` - (String)
      #   * `:read_replica_db_instance_identifiers` - (Array<String>)
      #   * `:license_model` - (String)
      #   * `:iops` - (Integer)
      #   * `:option_group_memberships` - (Array<Hash>)
      #     * `:option_group_name` - (String)
      #     * `:status` - (String)
      #   * `:character_set_name` - (String)
      #   * `:secondary_availability_zone` - (String)
      #   * `:publicly_accessible` - (Boolean)

      # @!method revoke_db_security_group_ingress(options = {})
      # Calls the RevokeDBSecurityGroupIngress API operation.
      # @param [Hash] options
      #   * `:db_security_group_name` - *required* - (String) The name of the
      #     DB Security Group to revoke ingress from.
      #   * `:cidrip` - (String) The IP range to revoke access from.
      #   * `:ec2_security_group_name` - (String) The name of the EC2 Security
      #     Group to revoke access from.
      #   * `:ec2_security_group_id` - (String) The id of the EC2 Security
      #     Group to revoke access from. For VPC DB Security Groups,
      #     EC2SecurityGroupId must be provided. Otherwise,
      #     EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
      #     EC2SecurityGroupId must be provided.
      #   * `:ec2_security_group_owner_id` - (String) The AWS Account Number of
      #     the owner of the security group specified in the
      #     EC2SecurityGroupName parameter. The AWS Access Key ID is not an
      #     acceptable value.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:owner_id` - (String)
      #   * `:db_security_group_name` - (String)
      #   * `:db_security_group_description` - (String)
      #   * `:vpc_id` - (String)
      #   * `:ec_2_security_groups` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:ec2_security_group_name` - (String)
      #     * `:ec2_security_group_id` - (String)
      #     * `:ec2_security_group_owner_id` - (String)
      #   * `:ip_ranges` - (Array<Hash>)
      #     * `:status` - (String)
      #     * `:cidrip` - (String)

      # end client methods #

      define_client_methods('2013-02-12')

    end
  end
end
