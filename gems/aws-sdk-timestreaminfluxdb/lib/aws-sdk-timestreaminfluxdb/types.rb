# frozen_string_literal: true

# This is generated code!

module Aws::TimestreamInfluxDB
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
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
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
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
    #            <p>Default: 8086</p>
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
    # @!attribute tags
    #   <p>A list of key-value pairs to associate with the DB instance.</p>
    #   @return [Hash<String, String>]
    class CreateDbClusterInput < Struct.new(
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_id
    #   <p>A service-generated unique identifier.</p>
    #   @return [String]
    # @!attribute db_cluster_status
    #   <p>The status of the DB cluster.</p>
    #   @return [String]
    class CreateDbClusterOutput < Struct.new(
      :db_cluster_id,
      :db_cluster_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. DB instance names must be unique per customer and per region.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. For example, my-user1. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. These attributes will be stored in a Secret created in Amazon Secrets Manager in your account.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password of the initial admin user created in InfluxDB. This password will allow
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
    class CreateDbInstanceInput < Struct.new(
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
      :tags,
      :port,
      :network_type,
      keyword_init: true)
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
    class CreateDbInstanceOutput < Struct.new(
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
      keyword_init: true)
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
      :name,
      :description,
      :parameters,
      :tags,
      keyword_init: true)
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
      :id,
      :name,
      :arn,
      :description,
      :parameters,
      keyword_init: true)
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
    class DbClusterSummary < Struct.new(
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
      keyword_init: true)
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
    class DbInstanceForClusterSummary < Struct.new(
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
      keyword_init: true)
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
      keyword_init: true)
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
      :id,
      :name,
      :arn,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_id
    #   <p>Service-generated unique identifier of the DB cluster.</p>
    #   @return [String]
    class DeleteDbClusterInput < Struct.new(
      :db_cluster_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_status
    #   <p>The status of the DB cluster.</p>
    #   @return [String]
    class DeleteDbClusterOutput < Struct.new(
      :db_cluster_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the DB instance.</p>
    #   @return [String]
    class DeleteDbInstanceInput < Struct.new(
      :identifier,
      keyword_init: true)
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
    class DeleteDbInstanceOutput < Struct.new(
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
      keyword_init: true)
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
      :duration_type,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_id
    #   <p>Service-generated unique identifier of the DB cluster to retrieve.</p>
    #   @return [String]
    class GetDbClusterInput < Struct.new(
      :db_cluster_id,
      keyword_init: true)
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
    # @!attribute publicly_accessible
    #   <p>Indicates if the DB cluster has a public IP to facilitate access from outside the VPC.</p>
    #   @return [Boolean]
    # @!attribute db_parameter_group_identifier
    #   <p>The ID of the DB parameter group assigned to your DB cluster.</p>
    #   @return [String]
    # @!attribute log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to send to specified S3 bucket.</p>
    #   @return [Types::LogDeliveryConfiguration]
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
    class GetDbClusterOutput < Struct.new(
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
      :publicly_accessible,
      :db_parameter_group_identifier,
      :log_delivery_configuration,
      :influx_auth_parameters_secret_arn,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :failover_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the DB instance.</p>
    #   @return [String]
    class GetDbInstanceInput < Struct.new(
      :identifier,
      keyword_init: true)
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
    class GetDbInstanceOutput < Struct.new(
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
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The id of the DB parameter group.</p>
    #   @return [String]
    class GetDbParameterGroupInput < Struct.new(
      :identifier,
      keyword_init: true)
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
      :id,
      :name,
      :arn,
      :description,
      :parameters,
      keyword_init: true)
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
    #   <p>Maximum number of queries allowed in execution queue. When queue limit is reached, new queries are rejected. Setting to 0 allows an unlimited number of queries in the queue.</p>
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
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the nextToken value as an argument of a subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in the output. If the total number of items available is more than the value specified, a nextToken is provided in the output. To resume pagination, provide the nextToken value as an argument of a subsequent API invocation.</p>
    #   @return [Integer]
    class ListDbClustersInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
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
      :items,
      :next_token,
      keyword_init: true)
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
      :db_cluster_id,
      :next_token,
      :max_results,
      keyword_init: true)
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
      :items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #   @return [Integer]
    class ListDbInstancesInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
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
      :items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    #   @return [Integer]
    class ListDbParameterGroupsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
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
      :items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tagged resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags used to categorize and track resources.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for sending InfluxDB engine logs to send to specified S3 bucket.</p>
    # @!attribute s3_configuration
    #   <p>Configuration for S3 bucket log delivery.</p>
    #   @return [Types::S3Configuration]
    class LogDeliveryConfiguration < Struct.new(
      :s3_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters that comprise the parameter group.</p>
    # @!attribute influx_d_bv2
    #   <p>All the customer-modifiable InfluxDB v2 parameters in Timestream for InfluxDB.</p>
    #   @return [Types::InfluxDBv2Parameters]
    class Parameters < Struct.new(
      :influx_d_bv2,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class InfluxDBv2 < Parameters; end
      class Unknown < Parameters; end
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
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
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
      :bucket_name,
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds the service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tagged resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags used to categorize and track resources.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds the caller should wait before retrying.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tagged resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys used to identify the tags.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
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
    class UpdateDbClusterInput < Struct.new(
      :db_cluster_id,
      :log_delivery_configuration,
      :db_parameter_group_identifier,
      :port,
      :db_instance_type,
      :failover_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute db_cluster_status
    #   <p>The status of the DB cluster.</p>
    #   @return [String]
    class UpdateDbClusterOutput < Struct.new(
      :db_cluster_status,
      keyword_init: true)
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
    class UpdateDbInstanceInput < Struct.new(
      :identifier,
      :log_delivery_configuration,
      :db_parameter_group_identifier,
      :port,
      :db_instance_type,
      :deployment_type,
      :db_storage_type,
      :allocated_storage,
      keyword_init: true)
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
    class UpdateDbInstanceOutput < Struct.new(
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
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by Timestream for InfluxDB.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason that validation failed.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
