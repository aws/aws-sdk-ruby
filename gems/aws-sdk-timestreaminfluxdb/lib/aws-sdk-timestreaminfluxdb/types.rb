# frozen_string_literal: true

# This is generated code!

module Aws::TimestreamInfluxDB
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for node modes in the DbCluster.</p>
    # @!attribute ingest_query_instances
    #   <p>The number of instances in the DbCluster which can both ingest and query.</p>
    #   @return [Integer]
    # @!attribute query_only_instances
    #   <p>The number of instances in the DbCluster which can only query.</p>
    #   @return [Integer]
    # @!attribute dedicated_compactor
    #   <p>Indicates if the compactor instance is a standalone instance or not.</p>
    #   @return [Boolean]
    class ClusterConfiguration < Struct.new(
      nil,
      :ingest_query_instances,
      :query_only_instances,
      :dedicated_compactor,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request conflicts with an existing resource in Timestream for InfluxDB.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier for the Timestream for InfluxDB resource associated with the request.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of Timestream for InfluxDB resource associated with the request.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the backup. Must be unique within the account and region.</p>
    #   @return [String]
    # @!attribute db_resource_id
    #   <p>The id of the DB instance or DB cluster to back up.</p>
    #   @return [String]
    # @!attribute retention_days
    #   <p>The number of days to retain the backup. Valid values are 1 to 3650.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of key-value pairs to associate with the backup.</p>
    #   @return [Hash<String, String>]
    class CreateDbBackupInput < Struct.new(
      nil,
      :name,
      :db_resource_id,
      :retention_days,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Service-generated unique identifier of the backup.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-provided name of the backup.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the backup.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the backup.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the backup was created.</p>
    #   @return [Time]
    # @!attribute expires_after
    #   <p>The date after which the backup will be automatically deleted.</p>
    #   @return [String]
    # @!attribute db_resource_id
    #   <p>The identifier of the DB resource that the backup was created from.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of backup.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>The engine type of the resource that the backup was created from.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>The deployment type of the resource that the backup was created from.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ARN used for encryption of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute cluster_configuration
    #   <p>The cluster configuration of the resource at the time of backup.</p>
    #   @return [Types::ClusterConfiguration]
    # @!attribute db_parameter_group_id
    #   <p>The identifier of the DB parameter group associated with the backup.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The DB instance type of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>The log delivery configuration of the resource at the time of backup.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute failover_mode
    #   <p>The failover mode of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The storage type of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The allocated storage of the resource at the time of backup, in GiB.</p>
    #   @return [Integer]
    # @!attribute vpc_subnet_ids
    #   <p>The VPC subnet IDs associated with the resource at the time of backup.</p>
    #   @return [Array<String>]
    # @!attribute vpc_security_group_ids
    #   <p>The VPC security group IDs associated with the resource at the time of backup.</p>
    #   @return [Array<String>]
    # @!attribute publicly_accessible
    #   <p>Indicates whether the resource was publicly accessible at the time of backup.</p>
    #   @return [Boolean]
    # @!attribute port
    #   <p>The port number of the resource at the time of backup.</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>The network type of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute influx_auth_parameters_secret_arn
    #   <p>The ARN of the Secrets Manager secret containing the InfluxDB auth parameters.</p>
    #   @return [String]
    # @!attribute maintenance_schedule
    #   <p>The maintenance schedule of the resource at the time of backup.</p>
    #   @return [Types::MaintenanceSchedule]
    class CreateDbBackupOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :created_at,
      :expires_after,
      :db_resource_id,
      :type,
      :engine_type,
      :deployment_type,
      :kms_key_id,
      :cluster_configuration,
      :db_parameter_group_id,
      :db_instance_type,
      :log_delivery_configuration,
      :failover_mode,
      :db_storage_type,
      :allocated_storage,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :publicly_accessible,
      :port,
      :network_type,
      :influx_auth_parameters_secret_arn,
      :maintenance_schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name that uniquely identifies the DB cluster when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. DB cluster names must be unique per customer and per region.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. For example, my-user1. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. These attributes will be stored in a secret created in Secrets Manager in your account.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password of the initial admin user created in InfluxDB. This password will allow
    #               you to access the InfluxDB UI to perform various administrative tasks and also use the
    #               InfluxDB CLI to create an operator token. These attributes will be stored in a secret created in Secrets Manager in your account.</p>
    #   @return [String]
    # @!attribute organization
    #   <p>The name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #            <p>Valid Values: 1024-65535</p>
    #            <p>Default: 8086 for InfluxDB v2, 8181 for InfluxDB v3</p>
    #            <p>Constraints: The value can't be 2375-2376, 7788-7799, 8090, or 51678-51680</p>
    #   @return [Integer]
    # @!attribute db_parameter_group_identifier
    #   <p>The ID of the DB parameter group to assign to your DB cluster. DB parameter groups specify how the database is configured. For example, DB parameter groups can specify the limit for query concurrency.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The Timestream for InfluxDB DB instance type to run InfluxDB on.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type to read and write InfluxDB data.</p>
    #            <p>You can choose between three different types of provisioned Influx IOPS Included storage according to your workload requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Influx I/O Included 3000 IOPS</p>
    #               </li>
    #               <li>
    #                  <p>Influx I/O Included 12000 IOPS</p>
    #               </li>
    #               <li>
    #                  <p>Influx I/O Included 16000 IOPS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage to allocate for your DB storage type in GiB (gibibytes).</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>Specifies whether the network type of the Timestream for InfluxDB cluster is IPv4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    #   @return [String]
    # @!attribute publicly_accessible
    #   <p>Configures the Timestream for InfluxDB cluster with a public IP to facilitate access from outside the VPC.</p>
    #   @return [Boolean]
    # @!attribute vpc_subnet_ids
    #   <p>A list of VPC subnet IDs to associate with the DB cluster. Provide at least two VPC subnet IDs in different Availability Zones when deploying with a Multi-AZ standby.</p>
    #   @return [Array<String>]
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security group IDs to associate with the Timestream for InfluxDB cluster.</p>
    #   @return [Array<String>]
    # @!attribute deployment_type
    #   <p>Specifies the type of cluster to create.</p>
    #   @return [String]
    # @!attribute failover_mode
    #   <p>Specifies the behavior of failure recovery when the primary node of the cluster fails.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to a specified S3 bucket.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute maintenance_schedule
    #   <p>Specifies the maintenance schedule for the DB cluster, including the preferred maintenance window and timezone.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute db_backup_configurations
    #   <p>A list of backup configurations to enable automated backups for the DB cluster.</p>
    #   @return [Array<Types::DbBackupConfiguration>]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier to use for encryption of the DB cluster. Can be a key ID, key ARN, alias name, or alias ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs to associate with the DB instance.</p>
    #   @return [Hash<String, String>]
    class CreateDbClusterInput < Struct.new(
      nil,
      :name,
      :username,
      :password,
      :organization,
      :bucket,
      :port,
      :db_parameter_group_identifier,
      :db_instance_type,
      :db_storage_type,
      :allocated_storage,
      :network_type,
      :publicly_accessible,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :deployment_type,
      :failover_mode,
      :log_delivery_configuration,
      :maintenance_schedule,
      :db_backup_configurations,
      :kms_key_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_id
    #   <p>A service-generated unique identifier.</p>
    #   @return [String]
    # @!attribute db_cluster_status
    #   <p>The status of the DB cluster.</p>
    #   @return [String]
    class CreateDbClusterOutput < Struct.new(
      nil,
      :db_cluster_id,
      :db_cluster_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. DB instance names must be unique per customer and per region.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. For example, my-user1. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. These attributes will be stored in a Secret created in Amazon Secrets Manager in your account.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password of the initial admin user created in InfluxDB v2. This password will allow
    #               you to access the InfluxDB UI to perform various administrative tasks and also use the
    #               InfluxDB CLI to create an operator token. These attributes will be stored in a Secret
    #               created in Secrets Manager in your account.</p>
    #   @return [String]
    # @!attribute organization
    #   <p>The name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The Timestream for InfluxDB DB instance type to run InfluxDB on.</p>
    #   @return [String]
    # @!attribute vpc_subnet_ids
    #   <p>A list of VPC subnet IDs to associate with the DB instance. Provide at least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.</p>
    #   @return [Array<String>]
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security group IDs to associate with the DB instance.</p>
    #   @return [Array<String>]
    # @!attribute publicly_accessible
    #   <p>Configures the DB instance with a public IP to facilitate access.</p>
    #   @return [Boolean]
    # @!attribute db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type to read and write InfluxDB data.</p>
    #            <p>You can choose between 3 different types of provisioned Influx IOPS included storage according to your workloads requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Influx IO Included 3000 IOPS</p>
    #               </li>
    #               <li>
    #                  <p>Influx IO Included 12000 IOPS</p>
    #               </li>
    #               <li>
    #                  <p>Influx IO Included 16000 IOPS</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage to allocate for your DB storage type in GiB (gibibytes).</p>
    #   @return [Integer]
    # @!attribute db_parameter_group_identifier
    #   <p>The id of the DB parameter group to assign to your DB instance. DB parameter groups specify how the database is configured. For example, DB parameter groups can specify the limit for query concurrency.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>Specifies whether the DB instance will be deployed as a standalone instance or with a Multi-AZ standby for high availability.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to a specified S3 bucket.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute maintenance_schedule
    #   <p>Specifies the maintenance schedule for the DB instance, including the preferred maintenance window and timezone.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute tags
    #   <p>A list of key-value pairs to associate with the DB instance.</p>
    #   @return [Hash<String, String>]
    # @!attribute port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #            <p>Valid Values: 1024-65535</p>
    #            <p>Default: 8086</p>
    #            <p>Constraints: The value can't be 2375-2376, 7788-7799, 8090, or 51678-51680</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    #   @return [String]
    # @!attribute db_backup_configurations
    #   <p>A list of backup configurations to enable automated backups for the DB instance.</p>
    #   @return [Array<Types::DbBackupConfiguration>]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier to use for encryption of the DB instance. Can be a key ID, key ARN, alias name, or alias ARN.</p>
    #   @return [String]
    class CreateDbInstanceInput < Struct.new(
      nil,
      :name,
      :username,
      :password,
      :organization,
      :bucket,
      :db_instance_type,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :publicly_accessible,
      :db_storage_type,
      :allocated_storage,
      :db_parameter_group_identifier,
      :deployment_type,
      :log_delivery_configuration,
      :maintenance_schedule,
      :tags,
      :port,
      :network_type,
      :db_backup_configurations,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>A service-generated unique identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-supplied name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DB instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the DB instance.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which InfluxDB accepts connections. The default value is 8086.</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The Timestream for InfluxDB instance type that InfluxDB runs on.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type that InfluxDB stores data on.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage allocated for your DB storage type (in gibibytes).</p>
    #   @return [Integer]
    # @!attribute deployment_type
    #   <p>Specifies whether the Timestream for InfluxDB is deployed as Single-AZ or with a MultiAZ Standby for High availability.</p>
    #   @return [String]
    # @!attribute vpc_subnet_ids
    #   <p>A list of VPC subnet IDs associated with the DB instance.</p>
    #   @return [Array<String>]
    # @!attribute publicly_accessible
    #   <p>Indicates if the DB instance has a public IP to facilitate access.</p>
    #   @return [Boolean]
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security group IDs associated with the DB instance.</p>
    #   @return [Array<String>]
    # @!attribute db_parameter_group_identifier
    #   <p>The id of the DB parameter group assigned to your DB instance.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the DB instance resides.</p>
    #   @return [String]
    # @!attribute secondary_availability_zone
    #   <p>The Availability Zone in which the standby instance is located when deploying with a MultiAZ standby instance.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to send to specified S3 bucket.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute influx_auth_parameters_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret containing the initial InfluxDB authorization parameters. The secret value is a JSON formatted key-value pair holding InfluxDB authorization values: organization, bucket, username, and password.</p>
    #   @return [String]
    # @!attribute db_cluster_id
    #   <p>Specifies the DbCluster to which this DbInstance belongs to.</p>
    #   @return [String]
    # @!attribute instance_mode
    #   <p>Specifies the DbInstance's role in the cluster.</p>
    #   @return [String]
    # @!attribute instance_modes
    #   <p>Specifies the DbInstance's roles in the cluster.</p>
    #   @return [Array<String>]
    # @!attribute maintenance_schedule
    #   <p>The maintenance schedule for the DB instance.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute last_maintenance_time
    #   <p>The timestamp of the last completed maintenance operation on the DB instance.</p>
    #   @return [Time]
    # @!attribute next_maintenance_time
    #   <p>The timestamp of the next scheduled maintenance operation on the DB instance.</p>
    #   @return [Time]
    # @!attribute db_backup_configurations
    #   <p>The backup configurations for the DB instance.</p>
    #   @return [Array<Types::DbBackupConfigurationOutput>]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ARN used for encryption of the DB instance.</p>
    #   @return [String]
    class CreateDbInstanceOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :endpoint,
      :port,
      :network_type,
      :db_instance_type,
      :db_storage_type,
      :allocated_storage,
      :deployment_type,
      :vpc_subnet_ids,
      :publicly_accessible,
      :vpc_security_group_ids,
      :db_parameter_group_identifier,
      :availability_zone,
      :secondary_availability_zone,
      :log_delivery_configuration,
      :influx_auth_parameters_secret_arn,
      :db_cluster_id,
      :instance_mode,
      :instance_modes,
      :maintenance_schedule,
      :last_maintenance_time,
      :next_maintenance_time,
      :db_backup_configurations,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the DB parameter group. The name must be unique per customer and per region.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the DB parameter group.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of the parameters that comprise the DB parameter group.</p>
    #   @return [Types::Parameters]
    # @!attribute tags
    #   <p>A list of key-value pairs to associate with the DB parameter group.</p>
    #   @return [Hash<String, String>]
    class CreateDbParameterGroupInput < Struct.new(
      nil,
      :name,
      :description,
      :parameters,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>A service-generated unique identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-supplied name that uniquely identifies the DB parameter group when interacting with the Amazon Timestream for InfluxDB API and CLI commands.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARM) of the DB parameter group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the DB parameter group.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of the parameters that comprise the DB parameter group.</p>
    #   @return [Types::Parameters]
    class CreateDbParameterGroupOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :description,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for an automated backup schedule.</p>
    # @!attribute type
    #   <p>The type of automated backup schedule. Valid values are HOURLY, DAILY, WEEKLY, MONTHLY, CUSTOM_SCHEDULE, and CONTINUOUS.</p>
    #   @return [String]
    # @!attribute retention_days
    #   <p>The number of days to retain automated backups. Valid values are 1 to 365.</p>
    #   @return [Integer]
    # @!attribute enabled
    #   <p>Specifies whether this backup configuration is enabled.</p>
    #   @return [Boolean]
    # @!attribute custom_schedule
    #   <p>A custom cron schedule expression for the backup. Required when type is CUSTOM_SCHEDULE.</p>
    #   @return [String]
    class DbBackupConfiguration < Struct.new(
      nil,
      :type,
      :retention_days,
      :enabled,
      :custom_schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration and status for an automated backup schedule.</p>
    # @!attribute type
    #   <p>The type of automated backup schedule.</p>
    #   @return [String]
    # @!attribute retention_days
    #   <p>The number of days automated backups are retained.</p>
    #   @return [Integer]
    # @!attribute enabled
    #   <p>Indicates whether this backup configuration is enabled.</p>
    #   @return [Boolean]
    # @!attribute custom_schedule
    #   <p>The custom cron schedule expression for the backup, if applicable.</p>
    #   @return [String]
    # @!attribute next_automated_backup_time
    #   <p>The next scheduled time for an automated backup to be taken.</p>
    #   @return [Time]
    class DbBackupConfigurationOutput < Struct.new(
      nil,
      :type,
      :retention_days,
      :enabled,
      :custom_schedule,
      :next_automated_backup_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of a Timestream for InfluxDB backup.</p>
    # @!attribute id
    #   <p>Service-generated unique identifier of the backup.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-provided name of the backup.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the backup.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the backup. Valid values are IN_PROGRESS, COMPLETED, FAILED, DELETING, and DELETED.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the backup was created.</p>
    #   @return [Time]
    # @!attribute expires_after
    #   <p>The date after which the backup will be automatically deleted.</p>
    #   @return [String]
    # @!attribute db_resource_id
    #   <p>The identifier of the DB resource that the backup was created from.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of backup. Valid values are HOURLY, DAILY, WEEKLY, MONTHLY, CUSTOM_SCHEDULE, ON_DEMAND, and CONTINUOUS.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>The engine type of the resource that the backup was created from.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>The deployment type of the resource that the backup was created from.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ARN used for encryption of the resource at the time of backup.</p>
    #   @return [String]
    class DbBackupSummary < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :created_at,
      :expires_after,
      :db_resource_id,
      :type,
      :engine_type,
      :deployment_type,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a summary of a Timestream for InfluxDB cluster.</p>
    # @!attribute id
    #   <p>Service-generated unique identifier of the DB cluster to retrieve.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Customer supplied name of the Timestream for InfluxDB cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DB cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the DB cluster.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint used to connect to the Timestream for InfluxDB cluster for write and read operations.</p>
    #   @return [String]
    # @!attribute reader_endpoint
    #   <p>The endpoint used to connect to the Timestream for InfluxDB cluster for read-only operations.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #   @return [Integer]
    # @!attribute deployment_type
    #   <p>Deployment type of the DB cluster</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The Timestream for InfluxDB DB instance type that InfluxDB runs on.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>Specifies whether the network type of the Timestream for InfluxDB Cluster is IPv4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type that InfluxDB stores data on.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage allocated for your DB storage type (in gibibytes).</p>
    #   @return [Integer]
    # @!attribute engine_type
    #   <p>The engine type of your DB cluster.</p>
    #   @return [String]
    class DbClusterSummary < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :endpoint,
      :reader_endpoint,
      :port,
      :deployment_type,
      :db_instance_type,
      :network_type,
      :db_storage_type,
      :allocated_storage,
      :engine_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of a DB instance belonging to a DB cluster.</p>
    # @!attribute id
    #   <p>The service-generated unique identifier of the DB instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A service-generated name for the DB instance based on the customer-supplied name for the DB cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DB instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the DB instance.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>Specifies whether the network type of the Timestream for InfluxDB instance is IPv4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The Timestream for InfluxDB instance type to run InfluxDB on.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The storage type for your DB instance.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage allocated for your DB storage type in GiB (gibibytes).</p>
    #   @return [Integer]
    # @!attribute deployment_type
    #   <p>Specifies the deployment type if applicable.</p>
    #   @return [String]
    # @!attribute instance_mode
    #   <p>Specifies the DB instance's role in the cluster.</p>
    #   @return [String]
    # @!attribute instance_modes
    #   <p>Specifies the DB instance's roles in the cluster.</p>
    #   @return [Array<String>]
    class DbInstanceForClusterSummary < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :endpoint,
      :port,
      :network_type,
      :db_instance_type,
      :db_storage_type,
      :allocated_storage,
      :deployment_type,
      :instance_mode,
      :instance_modes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of a DB instance.</p>
    # @!attribute id
    #   <p>The service-generated unique identifier of the DB instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>This customer-supplied name uniquely identifies the DB instance when interacting with
    #               the Amazon Timestream for InfluxDB API and CLI commands.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DB instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the DB instance.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The Timestream for InfluxDB instance type to run InfluxDB on.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The storage type for your DB instance.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage to allocate for your DbStorageType in GiB (gibibytes).</p>
    #   @return [Integer]
    # @!attribute deployment_type
    #   <p>Single-Instance or with a MultiAZ Standby for High availability.</p>
    #   @return [String]
    class DbInstanceSummary < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :endpoint,
      :port,
      :network_type,
      :db_instance_type,
      :db_storage_type,
      :allocated_storage,
      :deployment_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of a DB parameter group.</p>
    # @!attribute id
    #   <p>A service-generated unique identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>This customer-supplied name uniquely identifies the parameter group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DB parameter group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the DB parameter group.</p>
    #   @return [String]
    class DbParameterGroupSummary < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the backup to delete.</p>
    #   @return [String]
    class DeleteDbBackupInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Service-generated unique identifier of the deleted backup.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-provided name of the deleted backup.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted backup.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the backup.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the backup was created.</p>
    #   @return [Time]
    # @!attribute expires_after
    #   <p>The date after which the backup was set to be automatically deleted.</p>
    #   @return [String]
    # @!attribute db_resource_id
    #   <p>The identifier of the DB resource that the backup was created from.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of backup.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>The engine type of the resource that the backup was created from.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>The deployment type of the resource that the backup was created from.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ARN used for encryption of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute cluster_configuration
    #   <p>The cluster configuration of the resource at the time of backup.</p>
    #   @return [Types::ClusterConfiguration]
    # @!attribute db_parameter_group_id
    #   <p>The identifier of the DB parameter group associated with the backup.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The DB instance type of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>The log delivery configuration of the resource at the time of backup.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute failover_mode
    #   <p>The failover mode of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The storage type of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The allocated storage of the resource at the time of backup, in GiB.</p>
    #   @return [Integer]
    # @!attribute vpc_subnet_ids
    #   <p>The VPC subnet IDs associated with the resource at the time of backup.</p>
    #   @return [Array<String>]
    # @!attribute vpc_security_group_ids
    #   <p>The VPC security group IDs associated with the resource at the time of backup.</p>
    #   @return [Array<String>]
    # @!attribute publicly_accessible
    #   <p>Indicates whether the resource was publicly accessible at the time of backup.</p>
    #   @return [Boolean]
    # @!attribute port
    #   <p>The port number of the resource at the time of backup.</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>The network type of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute influx_auth_parameters_secret_arn
    #   <p>The ARN of the Secrets Manager secret containing the InfluxDB auth parameters.</p>
    #   @return [String]
    # @!attribute maintenance_schedule
    #   <p>The maintenance schedule of the resource at the time of backup.</p>
    #   @return [Types::MaintenanceSchedule]
    class DeleteDbBackupOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :created_at,
      :expires_after,
      :db_resource_id,
      :type,
      :engine_type,
      :deployment_type,
      :kms_key_id,
      :cluster_configuration,
      :db_parameter_group_id,
      :db_instance_type,
      :log_delivery_configuration,
      :failover_mode,
      :db_storage_type,
      :allocated_storage,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :publicly_accessible,
      :port,
      :network_type,
      :influx_auth_parameters_secret_arn,
      :maintenance_schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_id
    #   <p>Service-generated unique identifier of the DB cluster.</p>
    #   @return [String]
    # @!attribute retain_automated_backups
    #   <p>Specifies whether to retain automated backups after the DB cluster is deleted. If set to true, automated backups are not deleted and can be restored later.</p>
    #   @return [Boolean]
    class DeleteDbClusterInput < Struct.new(
      nil,
      :db_cluster_id,
      :retain_automated_backups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_status
    #   <p>The status of the DB cluster.</p>
    #   @return [String]
    class DeleteDbClusterOutput < Struct.new(
      nil,
      :db_cluster_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the DB instance.</p>
    #   @return [String]
    # @!attribute retain_automated_backups
    #   <p>Specifies whether to retain automated backups after the DB instance is deleted. If set to true, automated backups are not deleted and can be restored later.</p>
    #   @return [Boolean]
    class DeleteDbInstanceInput < Struct.new(
      nil,
      :identifier,
      :retain_automated_backups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>A service-generated unique identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-supplied name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DB instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the DB instance.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The Timestream for InfluxDB instance type that InfluxDB runs on.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type that InfluxDB stores data on.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage allocated for your DB storage type (in gibibytes).</p>
    #   @return [Integer]
    # @!attribute deployment_type
    #   <p>Specifies whether the Timestream for InfluxDB is deployed as Single-AZ or with a MultiAZ Standby for High availability.</p>
    #   @return [String]
    # @!attribute vpc_subnet_ids
    #   <p>A list of VPC subnet IDs associated with the DB instance.</p>
    #   @return [Array<String>]
    # @!attribute publicly_accessible
    #   <p>Indicates if the DB instance has a public IP to facilitate access.</p>
    #   @return [Boolean]
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security group IDs associated with the DB instance.</p>
    #   @return [Array<String>]
    # @!attribute db_parameter_group_identifier
    #   <p>The id of the DB parameter group assigned to your DB instance.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the DB instance resides.</p>
    #   @return [String]
    # @!attribute secondary_availability_zone
    #   <p>The Availability Zone in which the standby instance is located when deploying with a MultiAZ standby instance.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to send to specified S3 bucket.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute influx_auth_parameters_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret containing the initial InfluxDB authorization parameters. The secret value is a JSON formatted key-value pair holding InfluxDB authorization values: organization, bucket, username, and password.</p>
    #   @return [String]
    # @!attribute db_cluster_id
    #   <p>Specifies the DbCluster to which this DbInstance belongs to.</p>
    #   @return [String]
    # @!attribute instance_mode
    #   <p>Specifies the DbInstance's role in the cluster.</p>
    #   @return [String]
    # @!attribute instance_modes
    #   <p>Specifies the DbInstance's roles in the cluster.</p>
    #   @return [Array<String>]
    # @!attribute maintenance_schedule
    #   <p>The maintenance schedule for the DB instance.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute last_maintenance_time
    #   <p>The timestamp of the last completed maintenance operation on the DB instance.</p>
    #   @return [Time]
    # @!attribute next_maintenance_time
    #   <p>The timestamp of the next scheduled maintenance operation on the DB instance.</p>
    #   @return [Time]
    # @!attribute db_backup_configurations
    #   <p>The backup configurations that were associated with the deleted DB instance.</p>
    #   @return [Array<Types::DbBackupConfigurationOutput>]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ARN that was used for encryption of the deleted DB instance.</p>
    #   @return [String]
    class DeleteDbInstanceOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :endpoint,
      :port,
      :network_type,
      :db_instance_type,
      :db_storage_type,
      :allocated_storage,
      :deployment_type,
      :vpc_subnet_ids,
      :publicly_accessible,
      :vpc_security_group_ids,
      :db_parameter_group_identifier,
      :availability_zone,
      :secondary_availability_zone,
      :log_delivery_configuration,
      :influx_auth_parameters_secret_arn,
      :db_cluster_id,
      :instance_mode,
      :instance_modes,
      :maintenance_schedule,
      :last_maintenance_time,
      :next_maintenance_time,
      :db_backup_configurations,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Duration for InfluxDB parameters in Timestream for InfluxDB.</p>
    # @!attribute duration_type
    #   <p>The type of duration for InfluxDB parameters.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of duration for InfluxDB parameters.</p>
    #   @return [Integer]
    class Duration < Struct.new(
      nil,
      :duration_type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the backup to retrieve information for.</p>
    #   @return [String]
    class GetDbBackupInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Service-generated unique identifier of the backup.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-provided name of the backup.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the backup.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the backup.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the backup was created.</p>
    #   @return [Time]
    # @!attribute expires_after
    #   <p>The date after which the backup will be automatically deleted.</p>
    #   @return [String]
    # @!attribute db_resource_id
    #   <p>The identifier of the DB resource that the backup was created from.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of backup.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>The engine type of the resource that the backup was created from.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>The deployment type of the resource that the backup was created from.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ARN used for encryption of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute cluster_configuration
    #   <p>The cluster configuration of the resource at the time of backup.</p>
    #   @return [Types::ClusterConfiguration]
    # @!attribute db_parameter_group_id
    #   <p>The identifier of the DB parameter group associated with the backup.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The DB instance type of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>The log delivery configuration of the resource at the time of backup.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute failover_mode
    #   <p>The failover mode of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The storage type of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The allocated storage of the resource at the time of backup, in GiB.</p>
    #   @return [Integer]
    # @!attribute vpc_subnet_ids
    #   <p>The VPC subnet IDs associated with the resource at the time of backup.</p>
    #   @return [Array<String>]
    # @!attribute vpc_security_group_ids
    #   <p>The VPC security group IDs associated with the resource at the time of backup.</p>
    #   @return [Array<String>]
    # @!attribute publicly_accessible
    #   <p>Indicates whether the resource was publicly accessible at the time of backup.</p>
    #   @return [Boolean]
    # @!attribute port
    #   <p>The port number of the resource at the time of backup.</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>The network type of the resource at the time of backup.</p>
    #   @return [String]
    # @!attribute influx_auth_parameters_secret_arn
    #   <p>The ARN of the Secrets Manager secret containing the InfluxDB auth parameters.</p>
    #   @return [String]
    # @!attribute maintenance_schedule
    #   <p>The maintenance schedule of the resource at the time of backup.</p>
    #   @return [Types::MaintenanceSchedule]
    class GetDbBackupOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :created_at,
      :expires_after,
      :db_resource_id,
      :type,
      :engine_type,
      :deployment_type,
      :kms_key_id,
      :cluster_configuration,
      :db_parameter_group_id,
      :db_instance_type,
      :log_delivery_configuration,
      :failover_mode,
      :db_storage_type,
      :allocated_storage,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :publicly_accessible,
      :port,
      :network_type,
      :influx_auth_parameters_secret_arn,
      :maintenance_schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_id
    #   <p>Service-generated unique identifier of the DB cluster to retrieve.</p>
    #   @return [String]
    class GetDbClusterInput < Struct.new(
      nil,
      :db_cluster_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Service-generated unique identifier of the DB cluster to retrieve.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Customer-supplied name of the Timestream for InfluxDB cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DB cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the DB cluster.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint used to connect to the Timestream for InfluxDB cluster for write and read operations.</p>
    #   @return [String]
    # @!attribute reader_endpoint
    #   <p>The endpoint used to connect to the Timestream for InfluxDB cluster for read-only operations.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #   @return [Integer]
    # @!attribute deployment_type
    #   <p>Deployment type of the DB cluster.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The Timestream for InfluxDB instance type that InfluxDB runs on.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>Specifies whether the network type of the Timestream for InfluxDB cluster is IPv4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type that InfluxDB stores data on.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage allocated for your DB storage type (in gibibytes).</p>
    #   @return [Integer]
    # @!attribute engine_type
    #   <p>The engine type of your DB cluster.</p>
    #   @return [String]
    # @!attribute publicly_accessible
    #   <p>Indicates if the DB cluster has a public IP to facilitate access from outside the VPC.</p>
    #   @return [Boolean]
    # @!attribute db_parameter_group_identifier
    #   <p>The ID of the DB parameter group assigned to your DB cluster.</p>
    #   @return [String]
    # @!attribute effective_db_parameter_group_identifier
    #   <p>The ID of the DB parameter group actually applied to your DB cluster. When the service applies optimized defaults, it creates a service-managed DB parameter group and this field reflects that group, while dbParameterGroupIdentifier reflects the customer-provided DB parameter group. When no service-managed DB parameter group is applied, this value matches dbParameterGroupIdentifier.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to send to specified S3 bucket.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute maintenance_schedule
    #   <p>The maintenance schedule for the DB cluster.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute last_maintenance_time
    #   <p>The timestamp of the last completed maintenance operation on the DB cluster.</p>
    #   @return [Time]
    # @!attribute next_maintenance_time
    #   <p>The timestamp of the next scheduled maintenance operation on the DB cluster.</p>
    #   @return [Time]
    # @!attribute influx_auth_parameters_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret containing the initial InfluxDB authorization parameters. The secret value is a JSON formatted key-value pair holding InfluxDB authorization values: organization, bucket, username, and password.</p>
    #   @return [String]
    # @!attribute vpc_subnet_ids
    #   <p>A list of VPC subnet IDs associated with the DB cluster.</p>
    #   @return [Array<String>]
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security group IDs associated with the DB cluster.</p>
    #   @return [Array<String>]
    # @!attribute failover_mode
    #   <p>The configured failover mode for the DB cluster.</p>
    #   @return [String]
    # @!attribute cluster_configuration
    #   <p>Configuration for node modes in the DbCluster.</p>
    #   @return [Types::ClusterConfiguration]
    # @!attribute db_backup_configurations
    #   <p>The backup configurations for the DB cluster.</p>
    #   @return [Array<Types::DbBackupConfigurationOutput>]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ARN used for encryption of the DB cluster.</p>
    #   @return [String]
    class GetDbClusterOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :endpoint,
      :reader_endpoint,
      :port,
      :deployment_type,
      :db_instance_type,
      :network_type,
      :db_storage_type,
      :allocated_storage,
      :engine_type,
      :publicly_accessible,
      :db_parameter_group_identifier,
      :effective_db_parameter_group_identifier,
      :log_delivery_configuration,
      :maintenance_schedule,
      :last_maintenance_time,
      :next_maintenance_time,
      :influx_auth_parameters_secret_arn,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :failover_mode,
      :cluster_configuration,
      :db_backup_configurations,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the DB instance.</p>
    #   @return [String]
    class GetDbInstanceInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>A service-generated unique identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-supplied name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DB instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the DB instance.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The Timestream for InfluxDB instance type that InfluxDB runs on.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type that InfluxDB stores data on.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage allocated for your DB storage type (in gibibytes).</p>
    #   @return [Integer]
    # @!attribute deployment_type
    #   <p>Specifies whether the Timestream for InfluxDB is deployed as Single-AZ or with a MultiAZ Standby for High availability.</p>
    #   @return [String]
    # @!attribute vpc_subnet_ids
    #   <p>A list of VPC subnet IDs associated with the DB instance.</p>
    #   @return [Array<String>]
    # @!attribute publicly_accessible
    #   <p>Indicates if the DB instance has a public IP to facilitate access.</p>
    #   @return [Boolean]
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security group IDs associated with the DB instance.</p>
    #   @return [Array<String>]
    # @!attribute db_parameter_group_identifier
    #   <p>The id of the DB parameter group assigned to your DB instance.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the DB instance resides.</p>
    #   @return [String]
    # @!attribute secondary_availability_zone
    #   <p>The Availability Zone in which the standby instance is located when deploying with a MultiAZ standby instance.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to send to specified S3 bucket.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute influx_auth_parameters_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret containing the initial InfluxDB authorization parameters. The secret value is a JSON formatted key-value pair holding InfluxDB authorization values: organization, bucket, username, and password.</p>
    #   @return [String]
    # @!attribute db_cluster_id
    #   <p>Specifies the DbCluster to which this DbInstance belongs to.</p>
    #   @return [String]
    # @!attribute instance_mode
    #   <p>Specifies the DbInstance's role in the cluster.</p>
    #   @return [String]
    # @!attribute instance_modes
    #   <p>Specifies the DbInstance's roles in the cluster.</p>
    #   @return [Array<String>]
    # @!attribute maintenance_schedule
    #   <p>The maintenance schedule for the DB instance.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute last_maintenance_time
    #   <p>The timestamp of the last completed maintenance operation on the DB instance.</p>
    #   @return [Time]
    # @!attribute next_maintenance_time
    #   <p>The timestamp of the next scheduled maintenance operation on the DB instance.</p>
    #   @return [Time]
    # @!attribute db_backup_configurations
    #   <p>The backup configurations for the DB instance.</p>
    #   @return [Array<Types::DbBackupConfigurationOutput>]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ARN used for encryption of the DB instance.</p>
    #   @return [String]
    class GetDbInstanceOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :endpoint,
      :port,
      :network_type,
      :db_instance_type,
      :db_storage_type,
      :allocated_storage,
      :deployment_type,
      :vpc_subnet_ids,
      :publicly_accessible,
      :vpc_security_group_ids,
      :db_parameter_group_identifier,
      :availability_zone,
      :secondary_availability_zone,
      :log_delivery_configuration,
      :influx_auth_parameters_secret_arn,
      :db_cluster_id,
      :instance_mode,
      :instance_modes,
      :maintenance_schedule,
      :last_maintenance_time,
      :next_maintenance_time,
      :db_backup_configurations,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the DB parameter group.</p>
    #   @return [String]
    class GetDbParameterGroupInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>A service-generated unique identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-supplied name that uniquely identifies the DB parameter group when interacting with the Amazon Timestream for InfluxDB API and CLI commands.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DB parameter group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the DB parameter group.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters that comprise the DB parameter group.</p>
    #   @return [Types::Parameters]
    class GetDbParameterGroupOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :description,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>All the customer-modifiable InfluxDB v2 parameters in Timestream for InfluxDB.</p>
    # @!attribute flux_log_enabled
    #   <p>Include option to show detailed logs for Flux queries.</p>
    #            <p>Default: false</p>
    #   @return [Boolean]
    # @!attribute log_level
    #   <p>Log output level. InfluxDB outputs log entries with severity levels greater than or equal to the level specified.</p>
    #            <p>Default: info</p>
    #   @return [String]
    # @!attribute no_tasks
    #   <p>Disable the task scheduler. If problematic tasks prevent InfluxDB from starting, use this option to start InfluxDB without scheduling or executing tasks.</p>
    #            <p>Default: false</p>
    #   @return [Boolean]
    # @!attribute query_concurrency
    #   <p>Number of queries allowed to execute concurrently. Setting to 0 allows an unlimited number of concurrent queries.</p>
    #            <p>Default: 0</p>
    #   @return [Integer]
    # @!attribute query_queue_size
    #   <p>Maximum number of queries allowed in execution queue. When queue limit is reached, new queries are rejected. Setting to 0 allows an unlimited number of queries in the queue.</p>
    #            <p>Default: 0</p>
    #   @return [Integer]
    # @!attribute tracing_type
    #   <p>Enable tracing in InfluxDB and specifies the tracing type. Tracing is disabled by default.</p>
    #   @return [String]
    # @!attribute metrics_disabled
    #   <p>Disable the HTTP /metrics endpoint which exposes <a href="https://docs.influxdata.com/influxdb/v2/reference/internals/metrics/">internal InfluxDB metrics</a>.</p>
    #            <p>Default: false</p>
    #   @return [Boolean]
    # @!attribute http_idle_timeout
    #   <p>Maximum duration the server should keep established connections alive while waiting for new requests. Set to 0 for no timeout.</p>
    #            <p>Default: 3 minutes</p>
    #   @return [Types::Duration]
    # @!attribute http_read_header_timeout
    #   <p>Maximum duration the server should try to read HTTP headers for new requests. Set to 0 for no timeout.</p>
    #            <p>Default: 10 seconds</p>
    #   @return [Types::Duration]
    # @!attribute http_read_timeout
    #   <p>Maximum duration the server should try to read the entirety of new requests. Set to 0 for no timeout.</p>
    #            <p>Default: 0</p>
    #   @return [Types::Duration]
    # @!attribute http_write_timeout
    #   <p>Maximum duration the server should spend processing and responding to write requests. Set to 0 for no timeout.</p>
    #            <p>Default: 0</p>
    #   @return [Types::Duration]
    # @!attribute influxql_max_select_buckets
    #   <p>Maximum number of group by time buckets a SELECT statement can create. 0 allows an unlimited number of buckets.</p>
    #            <p>Default: 0</p>
    #   @return [Integer]
    # @!attribute influxql_max_select_point
    #   <p>Maximum number of points a SELECT statement can process. 0 allows an unlimited number of points. InfluxDB checks the point count every second (so queries exceeding the maximum aren’t immediately aborted).</p>
    #            <p>Default: 0</p>
    #   @return [Integer]
    # @!attribute influxql_max_select_series
    #   <p>Maximum number of series a SELECT statement can return. 0 allows an unlimited number of series.</p>
    #            <p>Default: 0</p>
    #   @return [Integer]
    # @!attribute pprof_disabled
    #   <p>Disable the /debug/pprof HTTP endpoint. This endpoint provides runtime profiling data and can be helpful when debugging.</p>
    #            <p>Default: true</p>
    #   @return [Boolean]
    # @!attribute query_initial_memory_bytes
    #   <p>Initial bytes of memory allocated for a query.</p>
    #            <p>Default: 0</p>
    #   @return [Integer]
    # @!attribute query_max_memory_bytes
    #   <p>Maximum total bytes of memory allowed for all running queries. When this limit is reached, new queries are rejected. Setting to 0 allows unlimited memory usage.</p>
    #            <p>Default: 0</p>
    #   @return [Integer]
    # @!attribute query_memory_bytes
    #   <p>Maximum bytes of memory allowed for a single query. Must be greater or equal to queryInitialMemoryBytes.</p>
    #            <p>Default: 0</p>
    #   @return [Integer]
    # @!attribute session_length
    #   <p>Specifies the Time to Live (TTL) in minutes for newly created user sessions.</p>
    #            <p>Default: 60</p>
    #   @return [Integer]
    # @!attribute session_renew_disabled
    #   <p>Disables automatically extending a user’s session TTL on each request. By default, every request sets the session’s expiration time to five minutes from now. When disabled, sessions expire after the specified <a href="https://docs.influxdata.com/influxdb/v2/reference/config-options/#session-length">session length</a> and the user is redirected to the login page, even if recently active.</p>
    #            <p>Default: false</p>
    #   @return [Boolean]
    # @!attribute storage_cache_max_memory_size
    #   <p>Maximum size (in bytes) a shard’s cache can reach before it starts rejecting writes. Must be greater than storageCacheSnapShotMemorySize and lower than instance’s total memory capacity. We recommend setting it to below 15% of the total memory capacity.</p>
    #            <p>Default: 1073741824</p>
    #   @return [Integer]
    # @!attribute storage_cache_snapshot_memory_size
    #   <p>Size (in bytes) at which the storage engine will snapshot the cache and write it to a TSM file to make more memory available. Must not be greater than storageCacheMaxMemorySize.</p>
    #            <p>Default: 26214400</p>
    #   @return [Integer]
    # @!attribute storage_cache_snapshot_write_cold_duration
    #   <p>Duration at which the storage engine will snapshot the cache and write it to a new TSM file if the shard hasn’t received writes or deletes.</p>
    #            <p>Default: 10 minutes</p>
    #   @return [Types::Duration]
    # @!attribute storage_compact_full_write_cold_duration
    #   <p>Duration at which the storage engine will compact all TSM files in a shard if it hasn't received writes or deletes.</p>
    #            <p>Default: 4 hours</p>
    #   @return [Types::Duration]
    # @!attribute storage_compact_throughput_burst
    #   <p>Rate limit (in bytes per second) that TSM compactions can write to disk.</p>
    #            <p>Default: 50331648</p>
    #   @return [Integer]
    # @!attribute storage_max_concurrent_compactions
    #   <p>Maximum number of full and level compactions that can run concurrently. A value of 0 results in 50% of runtime.GOMAXPROCS(0) used at runtime. Any number greater than zero limits compactions to that value. This setting does not apply to cache snapshotting.</p>
    #            <p>Default: 0</p>
    #   @return [Integer]
    # @!attribute storage_max_index_log_file_size
    #   <p>Size (in bytes) at which an index write-ahead log (WAL) file will compact into an index file. Lower sizes will cause log files to be compacted more quickly and result in lower heap usage at the expense of write throughput.</p>
    #            <p>Default: 1048576</p>
    #   @return [Integer]
    # @!attribute storage_no_validate_field_size
    #   <p>Skip field size validation on incoming write requests.</p>
    #            <p>Default: false</p>
    #   @return [Boolean]
    # @!attribute storage_retention_check_interval
    #   <p>Interval of retention policy enforcement checks. Must be greater than 0.</p>
    #            <p>Default: 30 minutes</p>
    #   @return [Types::Duration]
    # @!attribute storage_series_file_max_concurrent_snapshot_compactions
    #   <p>Maximum number of snapshot compactions that can run concurrently across all series partitions in a database.</p>
    #            <p>Default: 0</p>
    #   @return [Integer]
    # @!attribute storage_series_id_set_cache_size
    #   <p>Size of the internal cache used in the TSI index to store previously calculated series results. Cached results are returned quickly rather than needing to be recalculated when a subsequent query with the same tag key/value predicate is executed. Setting this value to 0 will disable the cache and may decrease query performance.</p>
    #            <p>Default: 100</p>
    #   @return [Integer]
    # @!attribute storage_wal_max_concurrent_writes
    #   <p>Maximum number writes to the WAL directory to attempt at the same time. Setting this value to 0 results in number of processing units available x2.</p>
    #            <p>Default: 0</p>
    #   @return [Integer]
    # @!attribute storage_wal_max_write_delay
    #   <p>Maximum amount of time a write request to the WAL directory will wait when the <a href="https://docs.influxdata.com/influxdb/v2/reference/config-options/#storage-wal-max-concurrent-writes">maximum number of concurrent active writes to the WAL directory has been met</a>. Set to 0 to disable the timeout.</p>
    #            <p>Default: 10 minutes</p>
    #   @return [Types::Duration]
    # @!attribute ui_disabled
    #   <p>Disable the InfluxDB user interface (UI). The UI is enabled by default.</p>
    #            <p>Default: false</p>
    #   @return [Boolean]
    class InfluxDBv2Parameters < Struct.new(
      nil,
      :flux_log_enabled,
      :log_level,
      :no_tasks,
      :query_concurrency,
      :query_queue_size,
      :tracing_type,
      :metrics_disabled,
      :http_idle_timeout,
      :http_read_header_timeout,
      :http_read_timeout,
      :http_write_timeout,
      :influxql_max_select_buckets,
      :influxql_max_select_point,
      :influxql_max_select_series,
      :pprof_disabled,
      :query_initial_memory_bytes,
      :query_max_memory_bytes,
      :query_memory_bytes,
      :session_length,
      :session_renew_disabled,
      :storage_cache_max_memory_size,
      :storage_cache_snapshot_memory_size,
      :storage_cache_snapshot_write_cold_duration,
      :storage_compact_full_write_cold_duration,
      :storage_compact_throughput_burst,
      :storage_max_concurrent_compactions,
      :storage_max_index_log_file_size,
      :storage_no_validate_field_size,
      :storage_retention_check_interval,
      :storage_series_file_max_concurrent_snapshot_compactions,
      :storage_series_id_set_cache_size,
      :storage_wal_max_concurrent_writes,
      :storage_wal_max_write_delay,
      :ui_disabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>All the customer-modifiable InfluxDB v3 Core parameters in Timestream for InfluxDB.</p>
    # @!attribute query_file_limit
    #   <p>Limits the number of Parquet files a query can access. If a query attempts to read more than this limit, InfluxDB 3 returns an error.</p>
    #            <p>Default: 432</p>
    #   @return [Integer]
    # @!attribute query_log_size
    #   <p>Defines the size of the query log. Up to this many queries remain in the log before older queries are evicted to make room for new ones.</p>
    #            <p>Default: 1000</p>
    #   @return [Integer]
    # @!attribute log_filter
    #   <p>Sets the filter directive for logs.</p>
    #   @return [String]
    # @!attribute log_format
    #   <p>Defines the message format for logs.</p>
    #            <p>Default: full</p>
    #   @return [String]
    # @!attribute data_fusion_num_threads
    #   <p>Sets the maximum number of DataFusion runtime threads to use.</p>
    #   @return [Integer]
    # @!attribute data_fusion_runtime_type
    #   <p>Specifies the DataFusion tokio runtime type.</p>
    #            <p>Default: multi-thread</p>
    #   @return [String]
    # @!attribute data_fusion_runtime_disable_lifo_slot
    #   <p>Disables the LIFO slot of the DataFusion runtime.</p>
    #   @return [Boolean]
    # @!attribute data_fusion_runtime_event_interval
    #   <p>Sets the number of scheduler ticks after which the scheduler of the DataFusion tokio runtime polls for external events–for example: timers, I/O.</p>
    #   @return [Integer]
    # @!attribute data_fusion_runtime_global_queue_interval
    #   <p>Sets the number of scheduler ticks after which the scheduler of the DataFusion runtime polls the global task queue.</p>
    #   @return [Integer]
    # @!attribute data_fusion_runtime_max_blocking_threads
    #   <p>Specifies the limit for additional threads spawned by the DataFusion runtime.</p>
    #   @return [Integer]
    # @!attribute data_fusion_runtime_max_io_events_per_tick
    #   <p>Configures the maximum number of events processed per tick by the tokio DataFusion runtime.</p>
    #   @return [Integer]
    # @!attribute data_fusion_runtime_thread_keep_alive
    #   <p>Sets a custom timeout for a thread in the blocking pool of the tokio DataFusion runtime.</p>
    #   @return [Types::Duration]
    # @!attribute data_fusion_runtime_thread_priority
    #   <p>Sets the thread priority for tokio DataFusion runtime workers.</p>
    #            <p>Default: 10</p>
    #   @return [Integer]
    # @!attribute data_fusion_max_parquet_fanout
    #   <p>When multiple parquet files are required in a sorted way (deduplication for example), specifies the maximum fanout.</p>
    #            <p>Default: 1000</p>
    #   @return [Integer]
    # @!attribute data_fusion_use_cached_parquet_loader
    #   <p>Uses a cached parquet loader when reading parquet files from the object store.</p>
    #   @return [Boolean]
    # @!attribute data_fusion_config
    #   <p>Provides custom configuration to DataFusion as a comma-separated list of key:value pairs.</p>
    #   @return [String]
    # @!attribute max_http_request_size
    #   <p>Specifies the maximum size of HTTP requests.</p>
    #            <p>Default: 10485760</p>
    #   @return [Integer]
    # @!attribute force_snapshot_mem_threshold
    #   <p>Specifies the threshold for the internal memory buffer. Supports either a percentage (portion of available memory) or absolute value in MB–for example: 70% or 100</p>
    #            <p>Default: 70%</p>
    #   @return [Types::PercentOrAbsoluteLong]
    # @!attribute wal_snapshot_size
    #   <p>Defines the number of WAL files to attempt to remove in a snapshot. This, multiplied by the interval, determines how often snapshots are taken.</p>
    #            <p>Default: 600</p>
    #   @return [Integer]
    # @!attribute wal_max_write_buffer_size
    #   <p>Specifies the maximum number of write requests that can be buffered before a flush must be executed and succeed.</p>
    #            <p>Default: 100000</p>
    #   @return [Integer]
    # @!attribute snapshotted_wal_files_to_keep
    #   <p>Specifies the number of snapshotted WAL files to retain in the object store. Flushing the WAL files does not clear the WAL files immediately; they are deleted when the number of snapshotted WAL files exceeds this number.</p>
    #            <p>Default: 300</p>
    #   @return [Integer]
    # @!attribute preemptive_cache_age
    #   <p>Specifies the interval to prefetch into the Parquet cache during compaction.</p>
    #            <p>Default: 3d</p>
    #   @return [Types::Duration]
    # @!attribute parquet_mem_cache_prune_percentage
    #   <p>Specifies the percentage of entries to prune during a prune operation on the in-memory Parquet cache.</p>
    #            <p>Default: 0.1</p>
    #   @return [Float]
    # @!attribute parquet_mem_cache_prune_interval
    #   <p>Sets the interval to check if the in-memory Parquet cache needs to be pruned.</p>
    #            <p>Default: 1s</p>
    #   @return [Types::Duration]
    # @!attribute disable_parquet_mem_cache
    #   <p>Disables the in-memory Parquet cache. By default, the cache is enabled.</p>
    #   @return [Boolean]
    # @!attribute parquet_mem_cache_query_path_duration
    #   <p>Specifies the time window for caching recent Parquet files in memory.</p>
    #            <p>Default: 5h</p>
    #   @return [Types::Duration]
    # @!attribute last_cache_eviction_interval
    #   <p>Specifies the interval to evict expired entries from the Last-N-Value cache, expressed as a human-readable duration–for example: 20s, 1m, 1h.</p>
    #            <p>Default: 10s</p>
    #   @return [Types::Duration]
    # @!attribute distinct_cache_eviction_interval
    #   <p>Specifies the interval to evict expired entries from the distinct value cache, expressed as a human-readable duration–for example: 20s, 1m, 1h.</p>
    #            <p>Default: 10s</p>
    #   @return [Types::Duration]
    # @!attribute gen1_duration
    #   <p>Specifies the duration that Parquet files are arranged into. Data timestamps land each row into a file of this duration. Supported durations are 1m, 5m, and 10m. These files are known as “generation 1” files that the compactor in InfluxDB 3 Enterprise can merge into larger generations.</p>
    #            <p>Default: 10m</p>
    #   @return [Types::Duration]
    # @!attribute exec_mem_pool_bytes
    #   <p>Specifies the size of memory pool used during query execution. Can be given as absolute value in bytes or as a percentage of the total available memory–for example: 8000000000 or 10%.</p>
    #            <p>Default: 20%</p>
    #   @return [Types::PercentOrAbsoluteLong]
    # @!attribute parquet_mem_cache_size
    #   <p>Specifies the size of the in-memory Parquet cache in megabytes or percentage of total available memory.</p>
    #            <p>Default: 20%</p>
    #   @return [Types::PercentOrAbsoluteLong]
    # @!attribute wal_replay_fail_on_error
    #   <p>Determines whether WAL replay should fail when encountering errors.</p>
    #            <p>Default: false</p>
    #   @return [Boolean]
    # @!attribute wal_replay_concurrency_limit
    #   <p>Concurrency limit during WAL replay. Setting this number too high can lead to OOM. The default is dynamically determined.</p>
    #            <p>Default: max(num_cpus, 10)</p>
    #   @return [Integer]
    # @!attribute table_index_cache_max_entries
    #   <p>Specifies the maximum number of entries in the table index cache.</p>
    #            <p>Default: 1000</p>
    #   @return [Integer]
    # @!attribute table_index_cache_concurrency_limit
    #   <p>Limits the concurrency level for table index cache operations.</p>
    #            <p>Default: 8</p>
    #   @return [Integer]
    # @!attribute gen1_lookback_duration
    #   <p>Specifies how far back to look when creating generation 1 Parquet files.</p>
    #            <p>Default: 24h</p>
    #   @return [Types::Duration]
    # @!attribute retention_check_interval
    #   <p>The interval at which retention policies are checked and enforced. Enter as a human-readable time–for example: 30m or 1h.</p>
    #            <p>Default: 30m</p>
    #   @return [Types::Duration]
    # @!attribute delete_grace_period
    #   <p>Specifies the grace period before permanently deleting data.</p>
    #            <p>Default: 24h</p>
    #   @return [Types::Duration]
    # @!attribute hard_delete_default_duration
    #   <p>Sets the default duration for hard deletion of data.</p>
    #            <p>Default: 90d</p>
    #   @return [Types::Duration]
    # @!attribute plugin_repository_url
    #   <p>Specifies the URL of the repository that InfluxDB downloads plugins from.</p>
    #   @return [String]
    # @!attribute plugin_repository_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret that holds your repository access token.</p>
    #   @return [String]
    class InfluxDBv3CoreParameters < Struct.new(
      nil,
      :query_file_limit,
      :query_log_size,
      :log_filter,
      :log_format,
      :data_fusion_num_threads,
      :data_fusion_runtime_type,
      :data_fusion_runtime_disable_lifo_slot,
      :data_fusion_runtime_event_interval,
      :data_fusion_runtime_global_queue_interval,
      :data_fusion_runtime_max_blocking_threads,
      :data_fusion_runtime_max_io_events_per_tick,
      :data_fusion_runtime_thread_keep_alive,
      :data_fusion_runtime_thread_priority,
      :data_fusion_max_parquet_fanout,
      :data_fusion_use_cached_parquet_loader,
      :data_fusion_config,
      :max_http_request_size,
      :force_snapshot_mem_threshold,
      :wal_snapshot_size,
      :wal_max_write_buffer_size,
      :snapshotted_wal_files_to_keep,
      :preemptive_cache_age,
      :parquet_mem_cache_prune_percentage,
      :parquet_mem_cache_prune_interval,
      :disable_parquet_mem_cache,
      :parquet_mem_cache_query_path_duration,
      :last_cache_eviction_interval,
      :distinct_cache_eviction_interval,
      :gen1_duration,
      :exec_mem_pool_bytes,
      :parquet_mem_cache_size,
      :wal_replay_fail_on_error,
      :wal_replay_concurrency_limit,
      :table_index_cache_max_entries,
      :table_index_cache_concurrency_limit,
      :gen1_lookback_duration,
      :retention_check_interval,
      :delete_grace_period,
      :hard_delete_default_duration,
      :plugin_repository_url,
      :plugin_repository_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>All the customer-modifiable InfluxDB v3 Enterprise parameters in Timestream for InfluxDB.</p>
    # @!attribute query_file_limit
    #   <p>Limits the number of Parquet files a query can access. If a query attempts to read more than this limit, InfluxDB 3 returns an error.</p>
    #            <p>Default: 432</p>
    #   @return [Integer]
    # @!attribute query_log_size
    #   <p>Defines the size of the query log. Up to this many queries remain in the log before older queries are evicted to make room for new ones.</p>
    #            <p>Default: 1000</p>
    #   @return [Integer]
    # @!attribute log_filter
    #   <p>Sets the filter directive for logs.</p>
    #   @return [String]
    # @!attribute log_format
    #   <p>Defines the message format for logs.</p>
    #            <p>Default: full</p>
    #   @return [String]
    # @!attribute data_fusion_num_threads
    #   <p>Sets the maximum number of DataFusion runtime threads to use.</p>
    #   @return [Integer]
    # @!attribute data_fusion_runtime_type
    #   <p>Specifies the DataFusion tokio runtime type.</p>
    #            <p>Default: multi-thread</p>
    #   @return [String]
    # @!attribute data_fusion_runtime_disable_lifo_slot
    #   <p>Disables the LIFO slot of the DataFusion runtime.</p>
    #   @return [Boolean]
    # @!attribute data_fusion_runtime_event_interval
    #   <p>Sets the number of scheduler ticks after which the scheduler of the DataFusion tokio runtime polls for external events–for example: timers, I/O.</p>
    #   @return [Integer]
    # @!attribute data_fusion_runtime_global_queue_interval
    #   <p>Sets the number of scheduler ticks after which the scheduler of the DataFusion runtime polls the global task queue.</p>
    #   @return [Integer]
    # @!attribute data_fusion_runtime_max_blocking_threads
    #   <p>Specifies the limit for additional threads spawned by the DataFusion runtime.</p>
    #   @return [Integer]
    # @!attribute data_fusion_runtime_max_io_events_per_tick
    #   <p>Configures the maximum number of events processed per tick by the tokio DataFusion runtime.</p>
    #   @return [Integer]
    # @!attribute data_fusion_runtime_thread_keep_alive
    #   <p>Sets a custom timeout for a thread in the blocking pool of the tokio DataFusion runtime.</p>
    #   @return [Types::Duration]
    # @!attribute data_fusion_runtime_thread_priority
    #   <p>Sets the thread priority for tokio DataFusion runtime workers.</p>
    #            <p>Default: 10</p>
    #   @return [Integer]
    # @!attribute data_fusion_max_parquet_fanout
    #   <p>When multiple parquet files are required in a sorted way (deduplication for example), specifies the maximum fanout.</p>
    #            <p>Default: 1000</p>
    #   @return [Integer]
    # @!attribute data_fusion_use_cached_parquet_loader
    #   <p>Uses a cached parquet loader when reading parquet files from the object store.</p>
    #   @return [Boolean]
    # @!attribute data_fusion_config
    #   <p>Provides custom configuration to DataFusion as a comma-separated list of key:value pairs.</p>
    #   @return [String]
    # @!attribute max_http_request_size
    #   <p>Specifies the maximum size of HTTP requests.</p>
    #            <p>Default: 10485760</p>
    #   @return [Integer]
    # @!attribute force_snapshot_mem_threshold
    #   <p>Specifies the threshold for the internal memory buffer. Supports either a percentage (portion of available memory) or absolute value in MB–for example: 70% or 100</p>
    #            <p>Default: 70%</p>
    #   @return [Types::PercentOrAbsoluteLong]
    # @!attribute wal_snapshot_size
    #   <p>Defines the number of WAL files to attempt to remove in a snapshot. This, multiplied by the interval, determines how often snapshots are taken.</p>
    #            <p>Default: 600</p>
    #   @return [Integer]
    # @!attribute wal_max_write_buffer_size
    #   <p>Specifies the maximum number of write requests that can be buffered before a flush must be executed and succeed.</p>
    #            <p>Default: 100000</p>
    #   @return [Integer]
    # @!attribute snapshotted_wal_files_to_keep
    #   <p>Specifies the number of snapshotted WAL files to retain in the object store. Flushing the WAL files does not clear the WAL files immediately; they are deleted when the number of snapshotted WAL files exceeds this number.</p>
    #            <p>Default: 300</p>
    #   @return [Integer]
    # @!attribute preemptive_cache_age
    #   <p>Specifies the interval to prefetch into the Parquet cache during compaction.</p>
    #            <p>Default: 3d</p>
    #   @return [Types::Duration]
    # @!attribute parquet_mem_cache_prune_percentage
    #   <p>Specifies the percentage of entries to prune during a prune operation on the in-memory Parquet cache.</p>
    #            <p>Default: 0.1</p>
    #   @return [Float]
    # @!attribute parquet_mem_cache_prune_interval
    #   <p>Sets the interval to check if the in-memory Parquet cache needs to be pruned.</p>
    #            <p>Default: 1s</p>
    #   @return [Types::Duration]
    # @!attribute disable_parquet_mem_cache
    #   <p>Disables the in-memory Parquet cache. By default, the cache is enabled.</p>
    #   @return [Boolean]
    # @!attribute parquet_mem_cache_query_path_duration
    #   <p>Specifies the time window for caching recent Parquet files in memory.</p>
    #            <p>Default: 5h</p>
    #   @return [Types::Duration]
    # @!attribute last_cache_eviction_interval
    #   <p>Specifies the interval to evict expired entries from the Last-N-Value cache, expressed as a human-readable duration–for example: 20s, 1m, 1h.</p>
    #            <p>Default: 10s</p>
    #   @return [Types::Duration]
    # @!attribute distinct_cache_eviction_interval
    #   <p>Specifies the interval to evict expired entries from the distinct value cache, expressed as a human-readable duration–for example: 20s, 1m, 1h.</p>
    #            <p>Default: 10s</p>
    #   @return [Types::Duration]
    # @!attribute gen1_duration
    #   <p>Specifies the duration that Parquet files are arranged into. Data timestamps land each row into a file of this duration. Supported durations are 1m, 5m, and 10m. These files are known as “generation 1” files, which the compactor can merge into larger generations.</p>
    #            <p>Default: 10m</p>
    #   @return [Types::Duration]
    # @!attribute exec_mem_pool_bytes
    #   <p>Specifies the size of memory pool used during query execution. Can be given as absolute value in bytes or as a percentage of the total available memory–for example: 8000000000 or 10%.</p>
    #            <p>Default: 20%</p>
    #   @return [Types::PercentOrAbsoluteLong]
    # @!attribute parquet_mem_cache_size
    #   <p>Specifies the size of the in-memory Parquet cache in megabytes or percentage of total available memory.</p>
    #            <p>Default: 20%</p>
    #   @return [Types::PercentOrAbsoluteLong]
    # @!attribute wal_replay_fail_on_error
    #   <p>Determines whether WAL replay should fail when encountering errors.</p>
    #            <p>Default: false</p>
    #   @return [Boolean]
    # @!attribute wal_replay_concurrency_limit
    #   <p>Concurrency limit during WAL replay. Setting this number too high can lead to OOM. The default is dynamically determined.</p>
    #            <p>Default: max(num_cpus, 10)</p>
    #   @return [Integer]
    # @!attribute table_index_cache_max_entries
    #   <p>Specifies the maximum number of entries in the table index cache.</p>
    #            <p>Default: 1000</p>
    #   @return [Integer]
    # @!attribute table_index_cache_concurrency_limit
    #   <p>Limits the concurrency level for table index cache operations.</p>
    #            <p>Default: 8</p>
    #   @return [Integer]
    # @!attribute gen1_lookback_duration
    #   <p>Specifies how far back to look when creating generation 1 Parquet files.</p>
    #            <p>Default: 24h</p>
    #   @return [Types::Duration]
    # @!attribute retention_check_interval
    #   <p>The interval at which retention policies are checked and enforced. Enter as a human-readable time–for example: 30m or 1h.</p>
    #            <p>Default: 30m</p>
    #   @return [Types::Duration]
    # @!attribute delete_grace_period
    #   <p>Specifies the grace period before permanently deleting data.</p>
    #            <p>Default: 24h</p>
    #   @return [Types::Duration]
    # @!attribute hard_delete_default_duration
    #   <p>Sets the default duration for hard deletion of data.</p>
    #            <p>Default: 90d</p>
    #   @return [Types::Duration]
    # @!attribute plugin_repository_url
    #   <p>Specifies the URL of the repository that InfluxDB downloads plugins from.</p>
    #   @return [String]
    # @!attribute plugin_repository_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret that holds your repository access token.</p>
    #   @return [String]
    # @!attribute ingest_query_instances
    #   <p>Specifies number of instances in the DbCluster which can both ingest and query.</p>
    #   @return [Integer]
    # @!attribute query_only_instances
    #   <p>Specifies number of instances in the DbCluster which can only query.</p>
    #   @return [Integer]
    # @!attribute dedicated_compactor
    #   <p>Specifies if the compactor instance should be a standalone instance or not.</p>
    #   @return [Boolean]
    # @!attribute compaction_row_limit
    #   <p>Specifies the soft limit for the number of rows per file that the compactor writes. The compactor may write more rows than this limit.</p>
    #            <p>Default: 1000000</p>
    #   @return [Integer]
    # @!attribute compaction_max_num_files_per_plan
    #   <p>Sets the maximum number of files included in any compaction plan.</p>
    #            <p>Default: 500</p>
    #   @return [Integer]
    # @!attribute compaction_gen2_duration
    #   <p>Specifies the duration of the first level of compaction (gen2). Later levels of compaction are multiples of this duration. This value should be equal to or greater than the gen1 duration.</p>
    #            <p>Default: 20m</p>
    #   @return [Types::Duration]
    # @!attribute compaction_multipliers
    #   <p>Specifies a comma-separated list of multiples defining the duration of each level of compaction. The number of elements in the list determines the number of compaction levels. The first element specifies the duration of the first level (gen3); subsequent levels are multiples of the previous level.</p>
    #            <p>Default: 3,4,6,5</p>
    #   @return [String]
    # @!attribute compaction_cleanup_wait
    #   <p>Specifies the amount of time that the compactor waits after finishing a compaction run to delete files marked as needing deletion during that compaction run.</p>
    #            <p>Default: 10m</p>
    #   @return [Types::Duration]
    # @!attribute compaction_check_interval
    #   <p>Specifies how often the compactor checks for new compaction work to perform.</p>
    #            <p>Default: 10s</p>
    #   @return [Types::Duration]
    # @!attribute last_value_cache_disable_from_history
    #   <p>Disables populating the last-N-value cache from historical data. If disabled, the cache is still populated with data from the write-ahead log (WAL).</p>
    #   @return [Boolean]
    # @!attribute distinct_value_cache_disable_from_history
    #   <p>Disables populating the distinct value cache from historical data. If disabled, the cache is still populated with data from the write-ahead log (WAL).</p>
    #   @return [Boolean]
    # @!attribute replication_interval
    #   <p>Specifies the interval at which data replication occurs between cluster nodes.</p>
    #            <p>Default: 250ms</p>
    #   @return [Types::Duration]
    # @!attribute catalog_sync_interval
    #   <p>Defines how often the catalog synchronizes across cluster nodes.</p>
    #            <p>Default: 10s</p>
    #   @return [Types::Duration]
    class InfluxDBv3EnterpriseParameters < Struct.new(
      nil,
      :query_file_limit,
      :query_log_size,
      :log_filter,
      :log_format,
      :data_fusion_num_threads,
      :data_fusion_runtime_type,
      :data_fusion_runtime_disable_lifo_slot,
      :data_fusion_runtime_event_interval,
      :data_fusion_runtime_global_queue_interval,
      :data_fusion_runtime_max_blocking_threads,
      :data_fusion_runtime_max_io_events_per_tick,
      :data_fusion_runtime_thread_keep_alive,
      :data_fusion_runtime_thread_priority,
      :data_fusion_max_parquet_fanout,
      :data_fusion_use_cached_parquet_loader,
      :data_fusion_config,
      :max_http_request_size,
      :force_snapshot_mem_threshold,
      :wal_snapshot_size,
      :wal_max_write_buffer_size,
      :snapshotted_wal_files_to_keep,
      :preemptive_cache_age,
      :parquet_mem_cache_prune_percentage,
      :parquet_mem_cache_prune_interval,
      :disable_parquet_mem_cache,
      :parquet_mem_cache_query_path_duration,
      :last_cache_eviction_interval,
      :distinct_cache_eviction_interval,
      :gen1_duration,
      :exec_mem_pool_bytes,
      :parquet_mem_cache_size,
      :wal_replay_fail_on_error,
      :wal_replay_concurrency_limit,
      :table_index_cache_max_entries,
      :table_index_cache_concurrency_limit,
      :gen1_lookback_duration,
      :retention_check_interval,
      :delete_grace_period,
      :hard_delete_default_duration,
      :plugin_repository_url,
      :plugin_repository_secret_arn,
      :ingest_query_instances,
      :query_only_instances,
      :dedicated_compactor,
      :compaction_row_limit,
      :compaction_max_num_files_per_plan,
      :compaction_gen2_duration,
      :compaction_multipliers,
      :compaction_cleanup_wait,
      :compaction_check_interval,
      :last_value_cache_disable_from_history,
      :distinct_value_cache_disable_from_history,
      :replication_interval,
      :catalog_sync_interval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_resource_id
    #   <p>The identifier of the DB instance or DB cluster to list backups for. If not specified, returns all backups in the account and region.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the nextToken value as an argument of a subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in the output. If the total number of items available is more than the value specified, a nextToken is provided in the output. To resume pagination, provide the nextToken value as an argument of a subsequent API invocation.</p>
    #   @return [Integer]
    class ListDbBackupsInput < Struct.new(
      nil,
      :db_resource_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of Timestream for InfluxDB backup summaries.</p>
    #   @return [Array<Types::DbBackupSummary>]
    # @!attribute next_token
    #   <p>Token from a previous call of the operation. When this value is provided, the service returns results from where the previous response left off.</p>
    #   @return [String]
    class ListDbBackupsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the nextToken value as an argument of a subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in the output. If the total number of items available is more than the value specified, a nextToken is provided in the output. To resume pagination, provide the nextToken value as an argument of a subsequent API invocation.</p>
    #   @return [Integer]
    class ListDbClustersInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of Timestream for InfluxDB cluster summaries.</p>
    #   @return [Array<Types::DbClusterSummary>]
    # @!attribute next_token
    #   <p>Token from a previous call of the operation. When this value is provided, the
    #               service returns results from where the previous response left off.</p>
    #   @return [String]
    class ListDbClustersOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_id
    #   <p>Service-generated unique identifier of the DB cluster.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the nextToken value as an argument of a subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in the output. If the total number of items available is more than the value specified, a nextToken is provided in the output. To resume pagination, provide the nextToken value as an argument of a subsequent API invocation.</p>
    #   @return [Integer]
    class ListDbInstancesForClusterInput < Struct.new(
      nil,
      :db_cluster_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of Timestream for InfluxDB instance summaries belonging to the cluster.</p>
    #   @return [Array<Types::DbInstanceForClusterSummary>]
    # @!attribute next_token
    #   <p>Token from a previous call of the operation. When this value is provided, the
    #               service returns results from where the previous response left off.</p>
    #   @return [String]
    class ListDbInstancesForClusterOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #   @return [Integer]
    class ListDbInstancesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of Timestream for InfluxDB DB instance summaries.</p>
    #   @return [Array<Types::DbInstanceSummary>]
    # @!attribute next_token
    #   <p>Token from a previous call of the operation. When this value is provided, the
    #               service returns results from where the previous response left off.</p>
    #   @return [String]
    class ListDbInstancesOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #   @return [Integer]
    class ListDbParameterGroupsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of Timestream for InfluxDB DB parameter group summaries.</p>
    #   @return [Array<Types::DbParameterGroupSummary>]
    # @!attribute next_token
    #   <p>Token from a previous call of the operation. When this value is provided, the
    #               service returns results from where the previous response left off.</p>
    #   @return [String]
    class ListDbParameterGroupsOutput < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tagged resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags used to categorize and track resources.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for sending InfluxDB engine logs to send to specified S3 bucket.</p>
    # @!attribute s3_configuration
    #   <p>Configuration for S3 bucket log delivery.</p>
    #   @return [Types::S3Configuration]
    class LogDeliveryConfiguration < Struct.new(
      nil,
      :s3_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the maintenance schedule for a DB instance or cluster, defining when maintenance operations such as patching can be performed.</p>
    # @!attribute timezone
    #   <p>The IANA timezone identifier for the maintenance window. Format: Region/City or UTC. For example, America/New_York or UTC.</p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>The preferred maintenance window in the format ddd:HH:MM-ddd:HH:MM (UTC). Day must be one of: Mon, Tue, Wed, Thu, Fri, Sat, Sun. For example, Sun:02:00-Sun:06:00. Provide an empty string to let the system choose a window.</p>
    #   @return [String]
    class MaintenanceSchedule < Struct.new(
      nil,
      :timezone,
      :preferred_maintenance_window,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters that comprise the parameter group.</p>
    # @!attribute influx_d_bv2
    #   <p>All the customer-modifiable InfluxDB v2 parameters in Timestream for InfluxDB.</p>
    #   @return [Types::InfluxDBv2Parameters]
    # @!attribute influx_d_bv3_core
    #   <p>All the customer-modifiable InfluxDB v3 Core parameters in Timestream for InfluxDB.</p>
    #   @return [Types::InfluxDBv3CoreParameters]
    # @!attribute influx_d_bv3_enterprise
    #   <p>All the customer-modifiable InfluxDB v3 Enterprise parameters in Timestream for InfluxDB.</p>
    #   @return [Types::InfluxDBv3EnterpriseParameters]
    class Parameters < Struct.new(
      :influx_d_bv2,
      :influx_d_bv3_core,
      :influx_d_bv3_enterprise,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class InfluxDBv2 < Parameters; end
      class InfluxDBv3Core < Parameters; end
      class InfluxDBv3Enterprise < Parameters; end
      class Unknown < Parameters; end
    end

    # <p>Percent or Absolute Long for InfluxDB parameters</p>
    # @!attribute percent
    #   <p>Percent for InfluxDB parameters.</p>
    #   @return [String]
    # @!attribute absolute
    #   <p>Absolute long for InfluxDB parameters.</p>
    #   @return [Integer]
    class PercentOrAbsoluteLong < Struct.new(
      :percent,
      :absolute,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Percent < PercentOrAbsoluteLong; end
      class Absolute < PercentOrAbsoluteLong; end
      class Unknown < PercentOrAbsoluteLong; end
    end

    # @!attribute db_cluster_id
    #   <p>Service-generated unique identifier of the DB cluster to reboot.</p>
    #   @return [String]
    # @!attribute instance_ids
    #   <p>A list of service-generated unique DB Instance Ids belonging to the DB Cluster to reboot.</p>
    #   @return [Array<String>]
    class RebootDbClusterInput < Struct.new(
      nil,
      :db_cluster_id,
      :instance_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_status
    #   <p>The status of the DB Cluster.</p>
    #   @return [String]
    class RebootDbClusterOutput < Struct.new(
      nil,
      :db_cluster_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the DB instance to reboot.</p>
    #   @return [String]
    class RebootDbInstanceInput < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>A service-generated unique identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-supplied name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DB instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the DB instance.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The Timestream for InfluxDB instance type that InfluxDB runs on.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type that InfluxDB stores data on.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage allocated for your DB storage type (in gibibytes).</p>
    #   @return [Integer]
    # @!attribute deployment_type
    #   <p>Specifies whether the Timestream for InfluxDB is deployed as Single-AZ or with a MultiAZ Standby for High availability.</p>
    #   @return [String]
    # @!attribute vpc_subnet_ids
    #   <p>A list of VPC subnet IDs associated with the DB instance.</p>
    #   @return [Array<String>]
    # @!attribute publicly_accessible
    #   <p>Indicates if the DB instance has a public IP to facilitate access.</p>
    #   @return [Boolean]
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security group IDs associated with the DB instance.</p>
    #   @return [Array<String>]
    # @!attribute db_parameter_group_identifier
    #   <p>The id of the DB parameter group assigned to your DB instance.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the DB instance resides.</p>
    #   @return [String]
    # @!attribute secondary_availability_zone
    #   <p>The Availability Zone in which the standby instance is located when deploying with a MultiAZ standby instance.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to send to specified S3 bucket.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute influx_auth_parameters_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret containing the initial InfluxDB authorization parameters. The secret value is a JSON formatted key-value pair holding InfluxDB authorization values: organization, bucket, username, and password.</p>
    #   @return [String]
    # @!attribute db_cluster_id
    #   <p>Specifies the DbCluster to which this DbInstance belongs to.</p>
    #   @return [String]
    # @!attribute instance_mode
    #   <p>Specifies the DbInstance's role in the cluster.</p>
    #   @return [String]
    # @!attribute instance_modes
    #   <p>Specifies the DbInstance's roles in the cluster.</p>
    #   @return [Array<String>]
    # @!attribute maintenance_schedule
    #   <p>The maintenance schedule for the DB instance.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute last_maintenance_time
    #   <p>The timestamp of the last completed maintenance operation on the DB instance.</p>
    #   @return [Time]
    # @!attribute next_maintenance_time
    #   <p>The timestamp of the next scheduled maintenance operation on the DB instance.</p>
    #   @return [Time]
    # @!attribute db_backup_configurations
    #   <p>The backup configurations for the DB instance.</p>
    #   @return [Array<Types::DbBackupConfigurationOutput>]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ARN used for encryption of the DB instance.</p>
    #   @return [String]
    class RebootDbInstanceOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :endpoint,
      :port,
      :network_type,
      :db_instance_type,
      :db_storage_type,
      :allocated_storage,
      :deployment_type,
      :vpc_subnet_ids,
      :publicly_accessible,
      :vpc_security_group_ids,
      :db_parameter_group_identifier,
      :availability_zone,
      :secondary_availability_zone,
      :log_delivery_configuration,
      :influx_auth_parameters_secret_arn,
      :db_cluster_id,
      :instance_mode,
      :instance_modes,
      :maintenance_schedule,
      :last_maintenance_time,
      :next_maintenance_time,
      :db_backup_configurations,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource was not found or does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier for the Timestream for InfluxDB resource associated with the request.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of Timestream for InfluxDB resource associated with the request.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the new resource to create from the restore. If restoring to an existing resource, the name must match the existing resource name.</p>
    #   @return [String]
    # @!attribute db_backup_id
    #   <p>The identifier of the backup to restore from.</p>
    #   @return [String]
    # @!attribute restore_to_time
    #   <p>The point in time to restore to, for continuous backups. Must be within the backup's retention window.</p>
    #   @return [Time]
    # @!attribute restore_mode
    #   <p>Specifies whether to restore to a new resource or replace the existing resource. Valid values are NEW_RESOURCE (default) and REPLACE_EXISTING.</p>
    #   @return [String]
    # @!attribute vpc_subnet_ids
    #   <p>A list of VPC subnet IDs for the restored resource. If not specified, the restored resource uses the same subnets as the backup.</p>
    #   @return [Array<String>]
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security group IDs for the restored resource. If not specified, the restored resource uses the same security groups as the backup.</p>
    #   @return [Array<String>]
    # @!attribute publicly_accessible
    #   <p>Specifies whether the restored resource is publicly accessible.</p>
    #   @return [Boolean]
    # @!attribute log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to the specified S3 bucket for the restored resource.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute maintenance_schedule
    #   <p>The maintenance schedule for the restored resource.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute tags
    #   <p>A list of key-value pairs to associate with the restored resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute port
    #   <p>The port number on which the restored InfluxDB resource accepts connections.</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>Specifies the network type of the restored resource. Valid values are IPV4 and DUAL.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>Specifies the deployment type of the restored resource. Valid values are SINGLE_AZ, WITH_MULTIAZ_STANDBY, and MULTI_NODE_READ_REPLICAS.</p>
    #   @return [String]
    # @!attribute db_backup_configurations
    #   <p>A list of backup configurations to apply to the restored resource.</p>
    #   @return [Array<Types::DbBackupConfiguration>]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier to use for encryption of the restored resource. Can be a key ID, key ARN, alias name, or alias ARN.</p>
    #   @return [String]
    class RestoreFromDbBackupInput < Struct.new(
      nil,
      :name,
      :db_backup_id,
      :restore_to_time,
      :restore_mode,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :publicly_accessible,
      :log_delivery_configuration,
      :maintenance_schedule,
      :tags,
      :port,
      :network_type,
      :deployment_type,
      :db_backup_configurations,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restored_db_resource_id
    #   <p>The identifier of the restored DB resource.</p>
    #   @return [String]
    # @!attribute restore_status
    #   <p>The status of the restore operation.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the restored resource. Valid values are DB_INSTANCE and DB_CLUSTER.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>The engine type of the restored resource.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>The deployment type of the restored resource.</p>
    #   @return [String]
    class RestoreFromDbBackupOutput < Struct.new(
      nil,
      :restored_db_resource_id,
      :restore_status,
      :resource_type,
      :engine_type,
      :deployment_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for S3 bucket log delivery.</p>
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket to deliver logs to.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Indicates whether log delivery to the S3 bucket is enabled.</p>
    #   @return [Boolean]
    class S3Configuration < Struct.new(
      nil,
      :bucket_name,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds the service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tagged resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags used to categorize and track resources.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds the caller should wait before retrying.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tagged resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys used to identify the tags.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_id
    #   <p>Service-generated unique identifier of the DB cluster to update.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>The log delivery configuration to apply to the DB cluster.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute db_parameter_group_identifier
    #   <p>Update the DB cluster to use the specified DB parameter group.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Update the DB cluster to use the specified port.</p>
    #   @return [Integer]
    # @!attribute db_instance_type
    #   <p>Update the DB cluster to use the specified DB instance Type.</p>
    #   @return [String]
    # @!attribute failover_mode
    #   <p>Update the DB cluster's failover behavior.</p>
    #   @return [String]
    # @!attribute maintenance_schedule
    #   <p>Specifies the maintenance schedule for the DB cluster, including the preferred maintenance window and timezone.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute db_backup_configurations
    #   <p>A list of backup configurations to update for the DB cluster.</p>
    #   @return [Array<Types::DbBackupConfiguration>]
    class UpdateDbClusterInput < Struct.new(
      nil,
      :db_cluster_id,
      :log_delivery_configuration,
      :db_parameter_group_identifier,
      :port,
      :db_instance_type,
      :failover_mode,
      :maintenance_schedule,
      :db_backup_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_status
    #   <p>The status of the DB cluster.</p>
    #   @return [String]
    class UpdateDbClusterOutput < Struct.new(
      nil,
      :db_cluster_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the DB instance.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to send to specified S3 bucket.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute db_parameter_group_identifier
    #   <p>The id of the DB parameter group to assign to your DB instance. DB parameter groups specify how the database is configured. For example, DB parameter groups can specify the limit for query concurrency.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #            <p>If you change the Port value, your database restarts immediately.</p>
    #            <p>Valid Values: 1024-65535</p>
    #            <p>Default: 8086</p>
    #            <p>Constraints: The value can't be 2375-2376, 7788-7799, 8090, or 51678-51680</p>
    #   @return [Integer]
    # @!attribute db_instance_type
    #   <p>The Timestream for InfluxDB DB instance type to run InfluxDB on.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>Specifies whether the DB instance will be deployed as a standalone instance or with a Multi-AZ standby for high availability.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type that InfluxDB stores data on.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage to allocate for your DB storage type (in gibibytes).</p>
    #   @return [Integer]
    # @!attribute maintenance_schedule
    #   <p>Specifies the maintenance schedule for the DB instance, including the preferred maintenance window and timezone.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute db_backup_configurations
    #   <p>A list of backup configurations to update for the DB instance.</p>
    #   @return [Array<Types::DbBackupConfiguration>]
    class UpdateDbInstanceInput < Struct.new(
      nil,
      :identifier,
      :log_delivery_configuration,
      :db_parameter_group_identifier,
      :port,
      :db_instance_type,
      :deployment_type,
      :db_storage_type,
      :allocated_storage,
      :maintenance_schedule,
      :db_backup_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>A service-generated unique identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>This customer-supplied name uniquely identifies the DB instance when interacting with
    #               the Amazon Timestream for InfluxDB API and CLI commands.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the DB instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the DB instance.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint used to connect to InfluxDB. The default InfluxDB port is 8086.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    #   @return [String]
    # @!attribute db_instance_type
    #   <p>The Timestream for InfluxDB instance type that InfluxDB runs on.</p>
    #   @return [String]
    # @!attribute db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type that InfluxDB stores data on.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage allocated for your DB storage type (in gibibytes).</p>
    #   @return [Integer]
    # @!attribute deployment_type
    #   <p>Specifies whether the Timestream for InfluxDB is deployed as Single-AZ or with a MultiAZ Standby for High availability.</p>
    #   @return [String]
    # @!attribute vpc_subnet_ids
    #   <p>A list of VPC subnet IDs associated with the DB instance.</p>
    #   @return [Array<String>]
    # @!attribute publicly_accessible
    #   <p>Indicates if the DB instance has a public IP to facilitate access.</p>
    #   @return [Boolean]
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security group IDs associated with the DB instance.</p>
    #   @return [Array<String>]
    # @!attribute db_parameter_group_identifier
    #   <p>The id of the DB parameter group assigned to your DB instance.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the DB instance resides.</p>
    #   @return [String]
    # @!attribute secondary_availability_zone
    #   <p>The Availability Zone in which the standby instance is located when deploying with a MultiAZ standby instance.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to send to specified S3 bucket.</p>
    #   @return [Types::LogDeliveryConfiguration]
    # @!attribute influx_auth_parameters_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret containing the initial InfluxDB authorization parameters. The secret value is a JSON formatted key-value pair holding InfluxDB authorization values: organization, bucket, username, and password.</p>
    #   @return [String]
    # @!attribute db_cluster_id
    #   <p>Specifies the DbCluster to which this DbInstance belongs to.</p>
    #   @return [String]
    # @!attribute instance_mode
    #   <p>Specifies the DbInstance's role in the cluster.</p>
    #   @return [String]
    # @!attribute instance_modes
    #   <p>Specifies the DbInstance's roles in the cluster.</p>
    #   @return [Array<String>]
    # @!attribute maintenance_schedule
    #   <p>The maintenance schedule for the DB instance.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute last_maintenance_time
    #   <p>The timestamp of the last completed maintenance operation on the DB instance.</p>
    #   @return [Time]
    # @!attribute next_maintenance_time
    #   <p>The timestamp of the next scheduled maintenance operation on the DB instance.</p>
    #   @return [Time]
    # @!attribute db_backup_configurations
    #   <p>The backup configurations for the DB instance.</p>
    #   @return [Array<Types::DbBackupConfigurationOutput>]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ARN used for encryption of the DB instance.</p>
    #   @return [String]
    class UpdateDbInstanceOutput < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :status,
      :endpoint,
      :port,
      :network_type,
      :db_instance_type,
      :db_storage_type,
      :allocated_storage,
      :deployment_type,
      :vpc_subnet_ids,
      :publicly_accessible,
      :vpc_security_group_ids,
      :db_parameter_group_identifier,
      :availability_zone,
      :secondary_availability_zone,
      :log_delivery_configuration,
      :influx_auth_parameters_secret_arn,
      :db_cluster_id,
      :instance_mode,
      :instance_modes,
      :maintenance_schedule,
      :last_maintenance_time,
      :next_maintenance_time,
      :db_backup_configurations,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by Timestream for InfluxDB.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason that validation failed.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
