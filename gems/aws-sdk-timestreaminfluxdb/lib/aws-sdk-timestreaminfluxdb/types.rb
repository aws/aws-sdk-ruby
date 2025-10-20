# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TimestreamInfluxDB
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with an existing resource in Timestream for
    # InfluxDB.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier for the Timestream for InfluxDB resource associated
    #   with the request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Timestream for InfluxDB resource associated with the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name that uniquely identifies the DB cluster when interacting
    #   with the Amazon Timestream for InfluxDB API and CLI commands. This
    #   name will also be a prefix included in the endpoint. DB cluster
    #   names must be unique per customer and per region.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username of the initial admin user created in InfluxDB. Must
    #   start with a letter and can't end with a hyphen or contain two
    #   consecutive hyphens. For example, my-user1. This username will allow
    #   you to access the InfluxDB UI to perform various administrative
    #   tasks and also use the InfluxDB CLI to create an operator token.
    #   These attributes will be stored in a secret created in Secrets
    #   Manager in your account.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password of the initial admin user created in InfluxDB. This
    #   password will allow you to access the InfluxDB UI to perform various
    #   administrative tasks and also use the InfluxDB CLI to create an
    #   operator token. These attributes will be stored in a secret created
    #   in Secrets Manager in your account.
    #   @return [String]
    #
    # @!attribute [rw] organization
    #   The name of the initial organization for the initial admin user in
    #   InfluxDB. An InfluxDB organization is a workspace for a group of
    #   users.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The name of the initial InfluxDB bucket. All InfluxDB data is stored
    #   in a bucket. A bucket combines the concept of a database and a
    #   retention period (the duration of time that each data point
    #   persists). A bucket belongs to an organization.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which InfluxDB accepts connections.
    #
    #   Valid Values: 1024-65535
    #
    #   Default: 8086 for InfluxDB v2, 8181 for InfluxDB v3
    #
    #   Constraints: The value can't be 2375-2376, 7788-7799, 8090, or
    #   51678-51680
    #   @return [Integer]
    #
    # @!attribute [rw] db_parameter_group_identifier
    #   The ID of the DB parameter group to assign to your DB cluster. DB
    #   parameter groups specify how the database is configured. For
    #   example, DB parameter groups can specify the limit for query
    #   concurrency.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_type
    #   The Timestream for InfluxDB DB instance type to run InfluxDB on.
    #   @return [String]
    #
    # @!attribute [rw] db_storage_type
    #   The Timestream for InfluxDB DB storage type to read and write
    #   InfluxDB data.
    #
    #   You can choose between three different types of provisioned Influx
    #   IOPS Included storage according to your workload requirements:
    #
    #   * Influx I/O Included 3000 IOPS
    #
    #   * Influx I/O Included 12000 IOPS
    #
    #   * Influx I/O Included 16000 IOPS
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage to allocate for your DB storage type in GiB
    #   (gibibytes).
    #   @return [Integer]
    #
    # @!attribute [rw] network_type
    #   Specifies whether the network type of the Timestream for InfluxDB
    #   cluster is IPv4, which can communicate over IPv4 protocol only, or
    #   DUAL, which can communicate over both IPv4 and IPv6 protocols.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Configures the Timestream for InfluxDB cluster with a public IP to
    #   facilitate access from outside the VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_subnet_ids
    #   A list of VPC subnet IDs to associate with the DB cluster. Provide
    #   at least two VPC subnet IDs in different Availability Zones when
    #   deploying with a Multi-AZ standby.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security group IDs to associate with the Timestream
    #   for InfluxDB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deployment_type
    #   Specifies the type of cluster to create.
    #   @return [String]
    #
    # @!attribute [rw] failover_mode
    #   Specifies the behavior of failure recovery when the primary node of
    #   the cluster fails.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_configuration
    #   Configuration for sending InfluxDB engine logs to a specified S3
    #   bucket.
    #   @return [Types::LogDeliveryConfiguration]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to associate with the DB instance.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/CreateDbClusterInput AWS API Documentation
    #
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
      :tags)
      SENSITIVE = [:username, :password]
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_id
    #   A service-generated unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_status
    #   The status of the DB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/CreateDbClusterOutput AWS API Documentation
    #
    class CreateDbClusterOutput < Struct.new(
      :db_cluster_id,
      :db_cluster_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name that uniquely identifies the DB instance when interacting
    #   with the Amazon Timestream for InfluxDB API and CLI commands. This
    #   name will also be a prefix included in the endpoint. DB instance
    #   names must be unique per customer and per region.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username of the initial admin user created in InfluxDB. Must
    #   start with a letter and can't end with a hyphen or contain two
    #   consecutive hyphens. For example, my-user1. This username will allow
    #   you to access the InfluxDB UI to perform various administrative
    #   tasks and also use the InfluxDB CLI to create an operator token.
    #   These attributes will be stored in a Secret created in Amazon
    #   Secrets Manager in your account.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password of the initial admin user created in InfluxDB v2. This
    #   password will allow you to access the InfluxDB UI to perform various
    #   administrative tasks and also use the InfluxDB CLI to create an
    #   operator token. These attributes will be stored in a Secret created
    #   in Secrets Manager in your account.
    #   @return [String]
    #
    # @!attribute [rw] organization
    #   The name of the initial organization for the initial admin user in
    #   InfluxDB. An InfluxDB organization is a workspace for a group of
    #   users.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The name of the initial InfluxDB bucket. All InfluxDB data is stored
    #   in a bucket. A bucket combines the concept of a database and a
    #   retention period (the duration of time that each data point
    #   persists). A bucket belongs to an organization.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_type
    #   The Timestream for InfluxDB DB instance type to run InfluxDB on.
    #   @return [String]
    #
    # @!attribute [rw] vpc_subnet_ids
    #   A list of VPC subnet IDs to associate with the DB instance. Provide
    #   at least two VPC subnet IDs in different availability zones when
    #   deploying with a Multi-AZ standby.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security group IDs to associate with the DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] publicly_accessible
    #   Configures the DB instance with a public IP to facilitate access.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_storage_type
    #   The Timestream for InfluxDB DB storage type to read and write
    #   InfluxDB data.
    #
    #   You can choose between 3 different types of provisioned Influx IOPS
    #   included storage according to your workloads requirements:
    #
    #   * Influx IO Included 3000 IOPS
    #
    #   * Influx IO Included 12000 IOPS
    #
    #   * Influx IO Included 16000 IOPS
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage to allocate for your DB storage type in GiB
    #   (gibibytes).
    #   @return [Integer]
    #
    # @!attribute [rw] db_parameter_group_identifier
    #   The id of the DB parameter group to assign to your DB instance. DB
    #   parameter groups specify how the database is configured. For
    #   example, DB parameter groups can specify the limit for query
    #   concurrency.
    #   @return [String]
    #
    # @!attribute [rw] deployment_type
    #   Specifies whether the DB instance will be deployed as a standalone
    #   instance or with a Multi-AZ standby for high availability.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_configuration
    #   Configuration for sending InfluxDB engine logs to a specified S3
    #   bucket.
    #   @return [Types::LogDeliveryConfiguration]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to associate with the DB instance.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] port
    #   The port number on which InfluxDB accepts connections.
    #
    #   Valid Values: 1024-65535
    #
    #   Default: 8086
    #
    #   Constraints: The value can't be 2375-2376, 7788-7799, 8090, or
    #   51678-51680
    #   @return [Integer]
    #
    # @!attribute [rw] network_type
    #   Specifies whether the networkType of the Timestream for InfluxDB
    #   instance is IPV4, which can communicate over IPv4 protocol only, or
    #   DUAL, which can communicate over both IPv4 and IPv6 protocols.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/CreateDbInstanceInput AWS API Documentation
    #
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
      :network_type)
      SENSITIVE = [:username, :password]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A service-generated unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-supplied name that uniquely identifies the DB instance
    #   when interacting with the Amazon Timestream for InfluxDB API and CLI
    #   commands.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint used to connect to InfluxDB. The default InfluxDB port
    #   is 8086.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which InfluxDB accepts connections. The default
    #   value is 8086.
    #   @return [Integer]
    #
    # @!attribute [rw] network_type
    #   Specifies whether the networkType of the Timestream for InfluxDB
    #   instance is IPV4, which can communicate over IPv4 protocol only, or
    #   DUAL, which can communicate over both IPv4 and IPv6 protocols.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_type
    #   The Timestream for InfluxDB instance type that InfluxDB runs on.
    #   @return [String]
    #
    # @!attribute [rw] db_storage_type
    #   The Timestream for InfluxDB DB storage type that InfluxDB stores
    #   data on.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage allocated for your DB storage type (in
    #   gibibytes).
    #   @return [Integer]
    #
    # @!attribute [rw] deployment_type
    #   Specifies whether the Timestream for InfluxDB is deployed as
    #   Single-AZ or with a MultiAZ Standby for High availability.
    #   @return [String]
    #
    # @!attribute [rw] vpc_subnet_ids
    #   A list of VPC subnet IDs associated with the DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] publicly_accessible
    #   Indicates if the DB instance has a public IP to facilitate access.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security group IDs associated with the DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_parameter_group_identifier
    #   The id of the DB parameter group assigned to your DB instance.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the DB instance resides.
    #   @return [String]
    #
    # @!attribute [rw] secondary_availability_zone
    #   The Availability Zone in which the standby instance is located when
    #   deploying with a MultiAZ standby instance.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_configuration
    #   Configuration for sending InfluxDB engine logs to send to specified
    #   S3 bucket.
    #   @return [Types::LogDeliveryConfiguration]
    #
    # @!attribute [rw] influx_auth_parameters_secret_arn
    #   The Amazon Resource Name (ARN) of the Secrets Manager secret
    #   containing the initial InfluxDB authorization parameters. The secret
    #   value is a JSON formatted key-value pair holding InfluxDB
    #   authorization values: organization, bucket, username, and password.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_id
    #   Specifies the DbCluster to which this DbInstance belongs to.
    #   @return [String]
    #
    # @!attribute [rw] instance_mode
    #   Specifies the DbInstance's role in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_modes
    #   Specifies the DbInstance's roles in the cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/CreateDbInstanceOutput AWS API Documentation
    #
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
      :instance_modes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the DB parameter group. The name must be unique per
    #   customer and per region.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of the parameters that comprise the DB parameter group.
    #   @return [Types::Parameters]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to associate with the DB parameter group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/CreateDbParameterGroupInput AWS API Documentation
    #
    class CreateDbParameterGroupInput < Struct.new(
      :name,
      :description,
      :parameters,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A service-generated unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-supplied name that uniquely identifies the DB parameter
    #   group when interacting with the Amazon Timestream for InfluxDB API
    #   and CLI commands.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARM) of the DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of the parameters that comprise the DB parameter group.
    #   @return [Types::Parameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/CreateDbParameterGroupOutput AWS API Documentation
    #
    class CreateDbParameterGroupOutput < Struct.new(
      :id,
      :name,
      :arn,
      :description,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a summary of a Timestream for InfluxDB cluster.
    #
    # @!attribute [rw] id
    #   Service-generated unique identifier of the DB cluster to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Customer supplied name of the Timestream for InfluxDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint used to connect to the Timestream for InfluxDB cluster
    #   for write and read operations.
    #   @return [String]
    #
    # @!attribute [rw] reader_endpoint
    #   The endpoint used to connect to the Timestream for InfluxDB cluster
    #   for read-only operations.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which InfluxDB accepts connections.
    #   @return [Integer]
    #
    # @!attribute [rw] deployment_type
    #   Deployment type of the DB cluster
    #   @return [String]
    #
    # @!attribute [rw] db_instance_type
    #   The Timestream for InfluxDB DB instance type that InfluxDB runs on.
    #   @return [String]
    #
    # @!attribute [rw] network_type
    #   Specifies whether the network type of the Timestream for InfluxDB
    #   Cluster is IPv4, which can communicate over IPv4 protocol only, or
    #   DUAL, which can communicate over both IPv4 and IPv6 protocols.
    #   @return [String]
    #
    # @!attribute [rw] db_storage_type
    #   The Timestream for InfluxDB DB storage type that InfluxDB stores
    #   data on.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage allocated for your DB storage type (in
    #   gibibytes).
    #   @return [Integer]
    #
    # @!attribute [rw] engine_type
    #   The engine type of your DB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/DbClusterSummary AWS API Documentation
    #
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
      :engine_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of a DB instance belonging to a DB cluster.
    #
    # @!attribute [rw] id
    #   The service-generated unique identifier of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A service-generated name for the DB instance based on the
    #   customer-supplied name for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint used to connect to InfluxDB. The default InfluxDB port
    #   is 8086.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which InfluxDB accepts connections.
    #   @return [Integer]
    #
    # @!attribute [rw] network_type
    #   Specifies whether the network type of the Timestream for InfluxDB
    #   instance is IPv4, which can communicate over IPv4 protocol only, or
    #   DUAL, which can communicate over both IPv4 and IPv6 protocols.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_type
    #   The Timestream for InfluxDB instance type to run InfluxDB on.
    #   @return [String]
    #
    # @!attribute [rw] db_storage_type
    #   The storage type for your DB instance.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage allocated for your DB storage type in GiB
    #   (gibibytes).
    #   @return [Integer]
    #
    # @!attribute [rw] deployment_type
    #   Specifies the deployment type if applicable.
    #   @return [String]
    #
    # @!attribute [rw] instance_mode
    #   Specifies the DB instance's role in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_modes
    #   Specifies the DB instance's roles in the cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/DbInstanceForClusterSummary AWS API Documentation
    #
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
      :instance_modes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of a DB instance.
    #
    # @!attribute [rw] id
    #   The service-generated unique identifier of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   This customer-supplied name uniquely identifies the DB instance when
    #   interacting with the Amazon Timestream for InfluxDB API and CLI
    #   commands.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint used to connect to InfluxDB. The default InfluxDB port
    #   is 8086.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which InfluxDB accepts connections.
    #   @return [Integer]
    #
    # @!attribute [rw] network_type
    #   Specifies whether the networkType of the Timestream for InfluxDB
    #   instance is IPV4, which can communicate over IPv4 protocol only, or
    #   DUAL, which can communicate over both IPv4 and IPv6 protocols.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_type
    #   The Timestream for InfluxDB instance type to run InfluxDB on.
    #   @return [String]
    #
    # @!attribute [rw] db_storage_type
    #   The storage type for your DB instance.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage to allocate for your DbStorageType in GiB
    #   (gibibytes).
    #   @return [Integer]
    #
    # @!attribute [rw] deployment_type
    #   Single-Instance or with a MultiAZ Standby for High availability.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/DbInstanceSummary AWS API Documentation
    #
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
      :deployment_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of a DB parameter group.
    #
    # @!attribute [rw] id
    #   A service-generated unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   This customer-supplied name uniquely identifies the parameter group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the DB parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/DbParameterGroupSummary AWS API Documentation
    #
    class DbParameterGroupSummary < Struct.new(
      :id,
      :name,
      :arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_id
    #   Service-generated unique identifier of the DB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/DeleteDbClusterInput AWS API Documentation
    #
    class DeleteDbClusterInput < Struct.new(
      :db_cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_status
    #   The status of the DB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/DeleteDbClusterOutput AWS API Documentation
    #
    class DeleteDbClusterOutput < Struct.new(
      :db_cluster_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The id of the DB instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/DeleteDbInstanceInput AWS API Documentation
    #
    class DeleteDbInstanceInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A service-generated unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-supplied name that uniquely identifies the DB instance
    #   when interacting with the Amazon Timestream for InfluxDB API and CLI
    #   commands.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint used to connect to InfluxDB. The default InfluxDB port
    #   is 8086.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which InfluxDB accepts connections.
    #   @return [Integer]
    #
    # @!attribute [rw] network_type
    #   Specifies whether the networkType of the Timestream for InfluxDB
    #   instance is IPV4, which can communicate over IPv4 protocol only, or
    #   DUAL, which can communicate over both IPv4 and IPv6 protocols.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_type
    #   The Timestream for InfluxDB instance type that InfluxDB runs on.
    #   @return [String]
    #
    # @!attribute [rw] db_storage_type
    #   The Timestream for InfluxDB DB storage type that InfluxDB stores
    #   data on.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage allocated for your DB storage type (in
    #   gibibytes).
    #   @return [Integer]
    #
    # @!attribute [rw] deployment_type
    #   Specifies whether the Timestream for InfluxDB is deployed as
    #   Single-AZ or with a MultiAZ Standby for High availability.
    #   @return [String]
    #
    # @!attribute [rw] vpc_subnet_ids
    #   A list of VPC subnet IDs associated with the DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] publicly_accessible
    #   Indicates if the DB instance has a public IP to facilitate access.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security group IDs associated with the DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_parameter_group_identifier
    #   The id of the DB parameter group assigned to your DB instance.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the DB instance resides.
    #   @return [String]
    #
    # @!attribute [rw] secondary_availability_zone
    #   The Availability Zone in which the standby instance is located when
    #   deploying with a MultiAZ standby instance.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_configuration
    #   Configuration for sending InfluxDB engine logs to send to specified
    #   S3 bucket.
    #   @return [Types::LogDeliveryConfiguration]
    #
    # @!attribute [rw] influx_auth_parameters_secret_arn
    #   The Amazon Resource Name (ARN) of the Secrets Manager secret
    #   containing the initial InfluxDB authorization parameters. The secret
    #   value is a JSON formatted key-value pair holding InfluxDB
    #   authorization values: organization, bucket, username, and password.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_id
    #   Specifies the DbCluster to which this DbInstance belongs to.
    #   @return [String]
    #
    # @!attribute [rw] instance_mode
    #   Specifies the DbInstance's role in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_modes
    #   Specifies the DbInstance's roles in the cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/DeleteDbInstanceOutput AWS API Documentation
    #
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
      :instance_modes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Duration for InfluxDB parameters in Timestream for InfluxDB.
    #
    # @!attribute [rw] duration_type
    #   The type of duration for InfluxDB parameters.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of duration for InfluxDB parameters.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/Duration AWS API Documentation
    #
    class Duration < Struct.new(
      :duration_type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_id
    #   Service-generated unique identifier of the DB cluster to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/GetDbClusterInput AWS API Documentation
    #
    class GetDbClusterInput < Struct.new(
      :db_cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Service-generated unique identifier of the DB cluster to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Customer-supplied name of the Timestream for InfluxDB cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint used to connect to the Timestream for InfluxDB cluster
    #   for write and read operations.
    #   @return [String]
    #
    # @!attribute [rw] reader_endpoint
    #   The endpoint used to connect to the Timestream for InfluxDB cluster
    #   for read-only operations.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which InfluxDB accepts connections.
    #   @return [Integer]
    #
    # @!attribute [rw] deployment_type
    #   Deployment type of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_type
    #   The Timestream for InfluxDB instance type that InfluxDB runs on.
    #   @return [String]
    #
    # @!attribute [rw] network_type
    #   Specifies whether the network type of the Timestream for InfluxDB
    #   cluster is IPv4, which can communicate over IPv4 protocol only, or
    #   DUAL, which can communicate over both IPv4 and IPv6 protocols.
    #   @return [String]
    #
    # @!attribute [rw] db_storage_type
    #   The Timestream for InfluxDB DB storage type that InfluxDB stores
    #   data on.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage allocated for your DB storage type (in
    #   gibibytes).
    #   @return [Integer]
    #
    # @!attribute [rw] engine_type
    #   The engine type of your DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Indicates if the DB cluster has a public IP to facilitate access
    #   from outside the VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_parameter_group_identifier
    #   The ID of the DB parameter group assigned to your DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_configuration
    #   Configuration for sending InfluxDB engine logs to send to specified
    #   S3 bucket.
    #   @return [Types::LogDeliveryConfiguration]
    #
    # @!attribute [rw] influx_auth_parameters_secret_arn
    #   The Amazon Resource Name (ARN) of the Secrets Manager secret
    #   containing the initial InfluxDB authorization parameters. The secret
    #   value is a JSON formatted key-value pair holding InfluxDB
    #   authorization values: organization, bucket, username, and password.
    #   @return [String]
    #
    # @!attribute [rw] vpc_subnet_ids
    #   A list of VPC subnet IDs associated with the DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security group IDs associated with the DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failover_mode
    #   The configured failover mode for the DB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/GetDbClusterOutput AWS API Documentation
    #
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
      :engine_type,
      :publicly_accessible,
      :db_parameter_group_identifier,
      :log_delivery_configuration,
      :influx_auth_parameters_secret_arn,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :failover_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The id of the DB instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/GetDbInstanceInput AWS API Documentation
    #
    class GetDbInstanceInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A service-generated unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-supplied name that uniquely identifies the DB instance
    #   when interacting with the Amazon Timestream for InfluxDB API and CLI
    #   commands.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint used to connect to InfluxDB. The default InfluxDB port
    #   is 8086.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which InfluxDB accepts connections.
    #   @return [Integer]
    #
    # @!attribute [rw] network_type
    #   Specifies whether the networkType of the Timestream for InfluxDB
    #   instance is IPV4, which can communicate over IPv4 protocol only, or
    #   DUAL, which can communicate over both IPv4 and IPv6 protocols.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_type
    #   The Timestream for InfluxDB instance type that InfluxDB runs on.
    #   @return [String]
    #
    # @!attribute [rw] db_storage_type
    #   The Timestream for InfluxDB DB storage type that InfluxDB stores
    #   data on.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage allocated for your DB storage type (in
    #   gibibytes).
    #   @return [Integer]
    #
    # @!attribute [rw] deployment_type
    #   Specifies whether the Timestream for InfluxDB is deployed as
    #   Single-AZ or with a MultiAZ Standby for High availability.
    #   @return [String]
    #
    # @!attribute [rw] vpc_subnet_ids
    #   A list of VPC subnet IDs associated with the DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] publicly_accessible
    #   Indicates if the DB instance has a public IP to facilitate access.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security group IDs associated with the DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_parameter_group_identifier
    #   The id of the DB parameter group assigned to your DB instance.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the DB instance resides.
    #   @return [String]
    #
    # @!attribute [rw] secondary_availability_zone
    #   The Availability Zone in which the standby instance is located when
    #   deploying with a MultiAZ standby instance.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_configuration
    #   Configuration for sending InfluxDB engine logs to send to specified
    #   S3 bucket.
    #   @return [Types::LogDeliveryConfiguration]
    #
    # @!attribute [rw] influx_auth_parameters_secret_arn
    #   The Amazon Resource Name (ARN) of the Secrets Manager secret
    #   containing the initial InfluxDB authorization parameters. The secret
    #   value is a JSON formatted key-value pair holding InfluxDB
    #   authorization values: organization, bucket, username, and password.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_id
    #   Specifies the DbCluster to which this DbInstance belongs to.
    #   @return [String]
    #
    # @!attribute [rw] instance_mode
    #   Specifies the DbInstance's role in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_modes
    #   Specifies the DbInstance's roles in the cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/GetDbInstanceOutput AWS API Documentation
    #
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
      :instance_modes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The id of the DB parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/GetDbParameterGroupInput AWS API Documentation
    #
    class GetDbParameterGroupInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A service-generated unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-supplied name that uniquely identifies the DB parameter
    #   group when interacting with the Amazon Timestream for InfluxDB API
    #   and CLI commands.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters that comprise the DB parameter group.
    #   @return [Types::Parameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/GetDbParameterGroupOutput AWS API Documentation
    #
    class GetDbParameterGroupOutput < Struct.new(
      :id,
      :name,
      :arn,
      :description,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # All the customer-modifiable InfluxDB v2 parameters in Timestream for
    # InfluxDB.
    #
    # @!attribute [rw] flux_log_enabled
    #   Include option to show detailed logs for Flux queries.
    #
    #   Default: false
    #   @return [Boolean]
    #
    # @!attribute [rw] log_level
    #   Log output level. InfluxDB outputs log entries with severity levels
    #   greater than or equal to the level specified.
    #
    #   Default: info
    #   @return [String]
    #
    # @!attribute [rw] no_tasks
    #   Disable the task scheduler. If problematic tasks prevent InfluxDB
    #   from starting, use this option to start InfluxDB without scheduling
    #   or executing tasks.
    #
    #   Default: false
    #   @return [Boolean]
    #
    # @!attribute [rw] query_concurrency
    #   Number of queries allowed to execute concurrently. Setting to 0
    #   allows an unlimited number of concurrent queries.
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] query_queue_size
    #   Maximum number of queries allowed in execution queue. When queue
    #   limit is reached, new queries are rejected. Setting to 0 allows an
    #   unlimited number of queries in the queue.
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] tracing_type
    #   Enable tracing in InfluxDB and specifies the tracing type. Tracing
    #   is disabled by default.
    #   @return [String]
    #
    # @!attribute [rw] metrics_disabled
    #   Disable the HTTP /metrics endpoint which exposes [internal InfluxDB
    #   metrics][1].
    #
    #   Default: false
    #
    #
    #
    #   [1]: https://docs.influxdata.com/influxdb/v2/reference/internals/metrics/
    #   @return [Boolean]
    #
    # @!attribute [rw] http_idle_timeout
    #   Maximum duration the server should keep established connections
    #   alive while waiting for new requests. Set to 0 for no timeout.
    #
    #   Default: 3 minutes
    #   @return [Types::Duration]
    #
    # @!attribute [rw] http_read_header_timeout
    #   Maximum duration the server should try to read HTTP headers for new
    #   requests. Set to 0 for no timeout.
    #
    #   Default: 10 seconds
    #   @return [Types::Duration]
    #
    # @!attribute [rw] http_read_timeout
    #   Maximum duration the server should try to read the entirety of new
    #   requests. Set to 0 for no timeout.
    #
    #   Default: 0
    #   @return [Types::Duration]
    #
    # @!attribute [rw] http_write_timeout
    #   Maximum duration the server should spend processing and responding
    #   to write requests. Set to 0 for no timeout.
    #
    #   Default: 0
    #   @return [Types::Duration]
    #
    # @!attribute [rw] influxql_max_select_buckets
    #   Maximum number of group by time buckets a SELECT statement can
    #   create. 0 allows an unlimited number of buckets.
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] influxql_max_select_point
    #   Maximum number of points a SELECT statement can process. 0 allows an
    #   unlimited number of points. InfluxDB checks the point count every
    #   second (so queries exceeding the maximum aren’t immediately
    #   aborted).
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] influxql_max_select_series
    #   Maximum number of series a SELECT statement can return. 0 allows an
    #   unlimited number of series.
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] pprof_disabled
    #   Disable the /debug/pprof HTTP endpoint. This endpoint provides
    #   runtime profiling data and can be helpful when debugging.
    #
    #   Default: true
    #   @return [Boolean]
    #
    # @!attribute [rw] query_initial_memory_bytes
    #   Initial bytes of memory allocated for a query.
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] query_max_memory_bytes
    #   Maximum number of queries allowed in execution queue. When queue
    #   limit is reached, new queries are rejected. Setting to 0 allows an
    #   unlimited number of queries in the queue.
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] query_memory_bytes
    #   Maximum bytes of memory allowed for a single query. Must be greater
    #   or equal to queryInitialMemoryBytes.
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] session_length
    #   Specifies the Time to Live (TTL) in minutes for newly created user
    #   sessions.
    #
    #   Default: 60
    #   @return [Integer]
    #
    # @!attribute [rw] session_renew_disabled
    #   Disables automatically extending a user’s session TTL on each
    #   request. By default, every request sets the session’s expiration
    #   time to five minutes from now. When disabled, sessions expire after
    #   the specified [session length][1] and the user is redirected to the
    #   login page, even if recently active.
    #
    #   Default: false
    #
    #
    #
    #   [1]: https://docs.influxdata.com/influxdb/v2/reference/config-options/#session-length
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_cache_max_memory_size
    #   Maximum size (in bytes) a shard’s cache can reach before it starts
    #   rejecting writes. Must be greater than
    #   storageCacheSnapShotMemorySize and lower than instance’s total
    #   memory capacity. We recommend setting it to below 15% of the total
    #   memory capacity.
    #
    #   Default: 1073741824
    #   @return [Integer]
    #
    # @!attribute [rw] storage_cache_snapshot_memory_size
    #   Size (in bytes) at which the storage engine will snapshot the cache
    #   and write it to a TSM file to make more memory available. Must not
    #   be greater than storageCacheMaxMemorySize.
    #
    #   Default: 26214400
    #   @return [Integer]
    #
    # @!attribute [rw] storage_cache_snapshot_write_cold_duration
    #   Duration at which the storage engine will snapshot the cache and
    #   write it to a new TSM file if the shard hasn’t received writes or
    #   deletes.
    #
    #   Default: 10 minutes
    #   @return [Types::Duration]
    #
    # @!attribute [rw] storage_compact_full_write_cold_duration
    #   Duration at which the storage engine will compact all TSM files in a
    #   shard if it hasn't received writes or deletes.
    #
    #   Default: 4 hours
    #   @return [Types::Duration]
    #
    # @!attribute [rw] storage_compact_throughput_burst
    #   Rate limit (in bytes per second) that TSM compactions can write to
    #   disk.
    #
    #   Default: 50331648
    #   @return [Integer]
    #
    # @!attribute [rw] storage_max_concurrent_compactions
    #   Maximum number of full and level compactions that can run
    #   concurrently. A value of 0 results in 50% of runtime.GOMAXPROCS(0)
    #   used at runtime. Any number greater than zero limits compactions to
    #   that value. This setting does not apply to cache snapshotting.
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] storage_max_index_log_file_size
    #   Size (in bytes) at which an index write-ahead log (WAL) file will
    #   compact into an index file. Lower sizes will cause log files to be
    #   compacted more quickly and result in lower heap usage at the expense
    #   of write throughput.
    #
    #   Default: 1048576
    #   @return [Integer]
    #
    # @!attribute [rw] storage_no_validate_field_size
    #   Skip field size validation on incoming write requests.
    #
    #   Default: false
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_retention_check_interval
    #   Interval of retention policy enforcement checks. Must be greater
    #   than 0.
    #
    #   Default: 30 minutes
    #   @return [Types::Duration]
    #
    # @!attribute [rw] storage_series_file_max_concurrent_snapshot_compactions
    #   Maximum number of snapshot compactions that can run concurrently
    #   across all series partitions in a database.
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] storage_series_id_set_cache_size
    #   Size of the internal cache used in the TSI index to store previously
    #   calculated series results. Cached results are returned quickly
    #   rather than needing to be recalculated when a subsequent query with
    #   the same tag key/value predicate is executed. Setting this value to
    #   0 will disable the cache and may decrease query performance.
    #
    #   Default: 100
    #   @return [Integer]
    #
    # @!attribute [rw] storage_wal_max_concurrent_writes
    #   Maximum number writes to the WAL directory to attempt at the same
    #   time. Setting this value to 0 results in number of processing units
    #   available x2.
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] storage_wal_max_write_delay
    #   Maximum amount of time a write request to the WAL directory will
    #   wait when the [maximum number of concurrent active writes to the WAL
    #   directory has been met][1]. Set to 0 to disable the timeout.
    #
    #   Default: 10 minutes
    #
    #
    #
    #   [1]: https://docs.influxdata.com/influxdb/v2/reference/config-options/#storage-wal-max-concurrent-writes
    #   @return [Types::Duration]
    #
    # @!attribute [rw] ui_disabled
    #   Disable the InfluxDB user interface (UI). The UI is enabled by
    #   default.
    #
    #   Default: false
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/InfluxDBv2Parameters AWS API Documentation
    #
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
      :ui_disabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # All the customer-modifiable InfluxDB v3 Core parameters in Timestream
    # for InfluxDB.
    #
    # @!attribute [rw] query_file_limit
    #   Limits the number of Parquet files a query can access. If a query
    #   attempts to read more than this limit, InfluxDB 3 returns an error.
    #
    #   Default: 432
    #   @return [Integer]
    #
    # @!attribute [rw] query_log_size
    #   Defines the size of the query log. Up to this many queries remain in
    #   the log before older queries are evicted to make room for new ones.
    #
    #   Default: 1000
    #   @return [Integer]
    #
    # @!attribute [rw] log_filter
    #   Sets the filter directive for logs.
    #   @return [String]
    #
    # @!attribute [rw] log_format
    #   Defines the message format for logs.
    #
    #   Default: full
    #   @return [String]
    #
    # @!attribute [rw] data_fusion_num_threads
    #   Sets the maximum number of DataFusion runtime threads to use.
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_runtime_type
    #   Specifies the DataFusion tokio runtime type.
    #
    #   Default: multi-thread
    #   @return [String]
    #
    # @!attribute [rw] data_fusion_runtime_disable_lifo_slot
    #   Disables the LIFO slot of the DataFusion runtime.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_fusion_runtime_event_interval
    #   Sets the number of scheduler ticks after which the scheduler of the
    #   DataFusion tokio runtime polls for external events–for example:
    #   timers, I/O.
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_runtime_global_queue_interval
    #   Sets the number of scheduler ticks after which the scheduler of the
    #   DataFusion runtime polls the global task queue.
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_runtime_max_blocking_threads
    #   Specifies the limit for additional threads spawned by the DataFusion
    #   runtime.
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_runtime_max_io_events_per_tick
    #   Configures the maximum number of events processed per tick by the
    #   tokio DataFusion runtime.
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_runtime_thread_keep_alive
    #   Sets a custom timeout for a thread in the blocking pool of the tokio
    #   DataFusion runtime.
    #   @return [Types::Duration]
    #
    # @!attribute [rw] data_fusion_runtime_thread_priority
    #   Sets the thread priority for tokio DataFusion runtime workers.
    #
    #   Default: 10
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_max_parquet_fanout
    #   When multiple parquet files are required in a sorted way
    #   (deduplication for example), specifies the maximum fanout.
    #
    #   Default: 1000
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_use_cached_parquet_loader
    #   Uses a cached parquet loader when reading parquet files from the
    #   object store.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_fusion_config
    #   Provides custom configuration to DataFusion as a comma-separated
    #   list of key:value pairs.
    #   @return [String]
    #
    # @!attribute [rw] max_http_request_size
    #   Specifies the maximum size of HTTP requests.
    #
    #   Default: 10485760
    #   @return [Integer]
    #
    # @!attribute [rw] force_snapshot_mem_threshold
    #   Specifies the threshold for the internal memory buffer. Supports
    #   either a percentage (portion of available memory) or absolute value
    #   in MB–for example: 70% or 100
    #
    #   Default: 70%
    #   @return [Types::PercentOrAbsoluteLong]
    #
    # @!attribute [rw] wal_snapshot_size
    #   Defines the number of WAL files to attempt to remove in a snapshot.
    #   This, multiplied by the interval, determines how often snapshots are
    #   taken.
    #
    #   Default: 600
    #   @return [Integer]
    #
    # @!attribute [rw] wal_max_write_buffer_size
    #   Specifies the maximum number of write requests that can be buffered
    #   before a flush must be executed and succeed.
    #
    #   Default: 100000
    #   @return [Integer]
    #
    # @!attribute [rw] snapshotted_wal_files_to_keep
    #   Specifies the number of snapshotted WAL files to retain in the
    #   object store. Flushing the WAL files does not clear the WAL files
    #   immediately; they are deleted when the number of snapshotted WAL
    #   files exceeds this number.
    #
    #   Default: 300
    #   @return [Integer]
    #
    # @!attribute [rw] preemptive_cache_age
    #   Specifies the interval to prefetch into the Parquet cache during
    #   compaction.
    #
    #   Default: 3d
    #   @return [Types::Duration]
    #
    # @!attribute [rw] parquet_mem_cache_prune_percentage
    #   Specifies the percentage of entries to prune during a prune
    #   operation on the in-memory Parquet cache.
    #
    #   Default: 0.1
    #   @return [Float]
    #
    # @!attribute [rw] parquet_mem_cache_prune_interval
    #   Sets the interval to check if the in-memory Parquet cache needs to
    #   be pruned.
    #
    #   Default: 1s
    #   @return [Types::Duration]
    #
    # @!attribute [rw] disable_parquet_mem_cache
    #   Disables the in-memory Parquet cache. By default, the cache is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] parquet_mem_cache_query_path_duration
    #   Specifies the time window for caching recent Parquet files in
    #   memory.
    #
    #   Default: 5h
    #   @return [Types::Duration]
    #
    # @!attribute [rw] last_cache_eviction_interval
    #   Specifies the interval to evict expired entries from the
    #   Last-N-Value cache, expressed as a human-readable duration–for
    #   example: 20s, 1m, 1h.
    #
    #   Default: 10s
    #   @return [Types::Duration]
    #
    # @!attribute [rw] distinct_cache_eviction_interval
    #   Specifies the interval to evict expired entries from the distinct
    #   value cache, expressed as a human-readable duration–for example:
    #   20s, 1m, 1h.
    #
    #   Default: 10s
    #   @return [Types::Duration]
    #
    # @!attribute [rw] gen1_duration
    #   Specifies the duration that Parquet files are arranged into. Data
    #   timestamps land each row into a file of this duration. Supported
    #   durations are 1m, 5m, and 10m. These files are known as “generation
    #   1” files that the compactor in InfluxDB 3 Enterprise can merge into
    #   larger generations.
    #
    #   Default: 10m
    #   @return [Types::Duration]
    #
    # @!attribute [rw] exec_mem_pool_bytes
    #   Specifies the size of memory pool used during query execution. Can
    #   be given as absolute value in bytes or as a percentage of the total
    #   available memory–for example: 8000000000 or 10%.
    #
    #   Default: 20%
    #   @return [Types::PercentOrAbsoluteLong]
    #
    # @!attribute [rw] parquet_mem_cache_size
    #   Specifies the size of the in-memory Parquet cache in megabytes or
    #   percentage of total available memory.
    #
    #   Default: 20%
    #   @return [Types::PercentOrAbsoluteLong]
    #
    # @!attribute [rw] wal_replay_fail_on_error
    #   Determines whether WAL replay should fail when encountering errors.
    #
    #   Default: false
    #   @return [Boolean]
    #
    # @!attribute [rw] wal_replay_concurrency_limit
    #   Concurrency limit during WAL replay. Setting this number too high
    #   can lead to OOM. The default is dynamically determined.
    #
    #   Default: max(num\_cpus, 10)
    #   @return [Integer]
    #
    # @!attribute [rw] table_index_cache_max_entries
    #   Specifies the maximum number of entries in the table index cache.
    #
    #   Default: 1000
    #   @return [Integer]
    #
    # @!attribute [rw] table_index_cache_concurrency_limit
    #   Limits the concurrency level for table index cache operations.
    #
    #   Default: 8
    #   @return [Integer]
    #
    # @!attribute [rw] gen1_lookback_duration
    #   Specifies how far back to look when creating generation 1 Parquet
    #   files.
    #
    #   Default: 24h
    #   @return [Types::Duration]
    #
    # @!attribute [rw] retention_check_interval
    #   The interval at which retention policies are checked and enforced.
    #   Enter as a human-readable time–for example: 30m or 1h.
    #
    #   Default: 30m
    #   @return [Types::Duration]
    #
    # @!attribute [rw] delete_grace_period
    #   Specifies the grace period before permanently deleting data.
    #
    #   Default: 24h
    #   @return [Types::Duration]
    #
    # @!attribute [rw] hard_delete_default_duration
    #   Sets the default duration for hard deletion of data.
    #
    #   Default: 90d
    #   @return [Types::Duration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/InfluxDBv3CoreParameters AWS API Documentation
    #
    class InfluxDBv3CoreParameters < Struct.new(
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
      :hard_delete_default_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # All the customer-modifiable InfluxDB v3 Enterprise parameters in
    # Timestream for InfluxDB.
    #
    # @!attribute [rw] query_file_limit
    #   Limits the number of Parquet files a query can access. If a query
    #   attempts to read more than this limit, InfluxDB 3 returns an error.
    #
    #   Default: 432
    #   @return [Integer]
    #
    # @!attribute [rw] query_log_size
    #   Defines the size of the query log. Up to this many queries remain in
    #   the log before older queries are evicted to make room for new ones.
    #
    #   Default: 1000
    #   @return [Integer]
    #
    # @!attribute [rw] log_filter
    #   Sets the filter directive for logs.
    #   @return [String]
    #
    # @!attribute [rw] log_format
    #   Defines the message format for logs.
    #
    #   Default: full
    #   @return [String]
    #
    # @!attribute [rw] data_fusion_num_threads
    #   Sets the maximum number of DataFusion runtime threads to use.
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_runtime_type
    #   Specifies the DataFusion tokio runtime type.
    #
    #   Default: multi-thread
    #   @return [String]
    #
    # @!attribute [rw] data_fusion_runtime_disable_lifo_slot
    #   Disables the LIFO slot of the DataFusion runtime.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_fusion_runtime_event_interval
    #   Sets the number of scheduler ticks after which the scheduler of the
    #   DataFusion tokio runtime polls for external events–for example:
    #   timers, I/O.
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_runtime_global_queue_interval
    #   Sets the number of scheduler ticks after which the scheduler of the
    #   DataFusion runtime polls the global task queue.
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_runtime_max_blocking_threads
    #   Specifies the limit for additional threads spawned by the DataFusion
    #   runtime.
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_runtime_max_io_events_per_tick
    #   Configures the maximum number of events processed per tick by the
    #   tokio DataFusion runtime.
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_runtime_thread_keep_alive
    #   Sets a custom timeout for a thread in the blocking pool of the tokio
    #   DataFusion runtime.
    #   @return [Types::Duration]
    #
    # @!attribute [rw] data_fusion_runtime_thread_priority
    #   Sets the thread priority for tokio DataFusion runtime workers.
    #
    #   Default: 10
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_max_parquet_fanout
    #   When multiple parquet files are required in a sorted way
    #   (deduplication for example), specifies the maximum fanout.
    #
    #   Default: 1000
    #   @return [Integer]
    #
    # @!attribute [rw] data_fusion_use_cached_parquet_loader
    #   Uses a cached parquet loader when reading parquet files from the
    #   object store.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_fusion_config
    #   Provides custom configuration to DataFusion as a comma-separated
    #   list of key:value pairs.
    #   @return [String]
    #
    # @!attribute [rw] max_http_request_size
    #   Specifies the maximum size of HTTP requests.
    #
    #   Default: 10485760
    #   @return [Integer]
    #
    # @!attribute [rw] force_snapshot_mem_threshold
    #   Specifies the threshold for the internal memory buffer. Supports
    #   either a percentage (portion of available memory) or absolute value
    #   in MB–for example: 70% or 100
    #
    #   Default: 70%
    #   @return [Types::PercentOrAbsoluteLong]
    #
    # @!attribute [rw] wal_snapshot_size
    #   Defines the number of WAL files to attempt to remove in a snapshot.
    #   This, multiplied by the interval, determines how often snapshots are
    #   taken.
    #
    #   Default: 600
    #   @return [Integer]
    #
    # @!attribute [rw] wal_max_write_buffer_size
    #   Specifies the maximum number of write requests that can be buffered
    #   before a flush must be executed and succeed.
    #
    #   Default: 100000
    #   @return [Integer]
    #
    # @!attribute [rw] snapshotted_wal_files_to_keep
    #   Specifies the number of snapshotted WAL files to retain in the
    #   object store. Flushing the WAL files does not clear the WAL files
    #   immediately; they are deleted when the number of snapshotted WAL
    #   files exceeds this number.
    #
    #   Default: 300
    #   @return [Integer]
    #
    # @!attribute [rw] preemptive_cache_age
    #   Specifies the interval to prefetch into the Parquet cache during
    #   compaction.
    #
    #   Default: 3d
    #   @return [Types::Duration]
    #
    # @!attribute [rw] parquet_mem_cache_prune_percentage
    #   Specifies the percentage of entries to prune during a prune
    #   operation on the in-memory Parquet cache.
    #
    #   Default: 0.1
    #   @return [Float]
    #
    # @!attribute [rw] parquet_mem_cache_prune_interval
    #   Sets the interval to check if the in-memory Parquet cache needs to
    #   be pruned.
    #
    #   Default: 1s
    #   @return [Types::Duration]
    #
    # @!attribute [rw] disable_parquet_mem_cache
    #   Disables the in-memory Parquet cache. By default, the cache is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] parquet_mem_cache_query_path_duration
    #   Specifies the time window for caching recent Parquet files in
    #   memory.
    #
    #   Default: 5h
    #   @return [Types::Duration]
    #
    # @!attribute [rw] last_cache_eviction_interval
    #   Specifies the interval to evict expired entries from the
    #   Last-N-Value cache, expressed as a human-readable duration–for
    #   example: 20s, 1m, 1h.
    #
    #   Default: 10s
    #   @return [Types::Duration]
    #
    # @!attribute [rw] distinct_cache_eviction_interval
    #   Specifies the interval to evict expired entries from the distinct
    #   value cache, expressed as a human-readable duration–for example:
    #   20s, 1m, 1h.
    #
    #   Default: 10s
    #   @return [Types::Duration]
    #
    # @!attribute [rw] gen1_duration
    #   Specifies the duration that Parquet files are arranged into. Data
    #   timestamps land each row into a file of this duration. Supported
    #   durations are 1m, 5m, and 10m. These files are known as “generation
    #   1” files, which the compactor can merge into larger generations.
    #
    #   Default: 10m
    #   @return [Types::Duration]
    #
    # @!attribute [rw] exec_mem_pool_bytes
    #   Specifies the size of memory pool used during query execution. Can
    #   be given as absolute value in bytes or as a percentage of the total
    #   available memory–for example: 8000000000 or 10%.
    #
    #   Default: 20%
    #   @return [Types::PercentOrAbsoluteLong]
    #
    # @!attribute [rw] parquet_mem_cache_size
    #   Specifies the size of the in-memory Parquet cache in megabytes or
    #   percentage of total available memory.
    #
    #   Default: 20%
    #   @return [Types::PercentOrAbsoluteLong]
    #
    # @!attribute [rw] wal_replay_fail_on_error
    #   Determines whether WAL replay should fail when encountering errors.
    #
    #   Default: false
    #   @return [Boolean]
    #
    # @!attribute [rw] wal_replay_concurrency_limit
    #   Concurrency limit during WAL replay. Setting this number too high
    #   can lead to OOM. The default is dynamically determined.
    #
    #   Default: max(num\_cpus, 10)
    #   @return [Integer]
    #
    # @!attribute [rw] table_index_cache_max_entries
    #   Specifies the maximum number of entries in the table index cache.
    #
    #   Default: 1000
    #   @return [Integer]
    #
    # @!attribute [rw] table_index_cache_concurrency_limit
    #   Limits the concurrency level for table index cache operations.
    #
    #   Default: 8
    #   @return [Integer]
    #
    # @!attribute [rw] gen1_lookback_duration
    #   Specifies how far back to look when creating generation 1 Parquet
    #   files.
    #
    #   Default: 24h
    #   @return [Types::Duration]
    #
    # @!attribute [rw] retention_check_interval
    #   The interval at which retention policies are checked and enforced.
    #   Enter as a human-readable time–for example: 30m or 1h.
    #
    #   Default: 30m
    #   @return [Types::Duration]
    #
    # @!attribute [rw] delete_grace_period
    #   Specifies the grace period before permanently deleting data.
    #
    #   Default: 24h
    #   @return [Types::Duration]
    #
    # @!attribute [rw] hard_delete_default_duration
    #   Sets the default duration for hard deletion of data.
    #
    #   Default: 90d
    #   @return [Types::Duration]
    #
    # @!attribute [rw] ingest_query_instances
    #   Specifies number of instances in the DbCluster which can both ingest
    #   and query.
    #   @return [Integer]
    #
    # @!attribute [rw] query_only_instances
    #   Specifies number of instances in the DbCluster which can only query.
    #   @return [Integer]
    #
    # @!attribute [rw] dedicated_compactor
    #   Specifies if the compactor instance should be a standalone instance
    #   or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] compaction_row_limit
    #   Specifies the soft limit for the number of rows per file that the
    #   compactor writes. The compactor may write more rows than this limit.
    #
    #   Default: 1000000
    #   @return [Integer]
    #
    # @!attribute [rw] compaction_max_num_files_per_plan
    #   Sets the maximum number of files included in any compaction plan.
    #
    #   Default: 500
    #   @return [Integer]
    #
    # @!attribute [rw] compaction_gen_2_duration
    #   Specifies the duration of the first level of compaction (gen2).
    #   Later levels of compaction are multiples of this duration. This
    #   value should be equal to or greater than the gen1 duration.
    #
    #   Default: 20m
    #   @return [Types::Duration]
    #
    # @!attribute [rw] compaction_multipliers
    #   Specifies a comma-separated list of multiples defining the duration
    #   of each level of compaction. The number of elements in the list
    #   determines the number of compaction levels. The first element
    #   specifies the duration of the first level (gen3); subsequent levels
    #   are multiples of the previous level.
    #
    #   Default: 3,4,6,5
    #   @return [String]
    #
    # @!attribute [rw] compaction_cleanup_wait
    #   Specifies the amount of time that the compactor waits after
    #   finishing a compaction run to delete files marked as needing
    #   deletion during that compaction run.
    #
    #   Default: 10m
    #   @return [Types::Duration]
    #
    # @!attribute [rw] compaction_check_interval
    #   Specifies how often the compactor checks for new compaction work to
    #   perform.
    #
    #   Default: 10s
    #   @return [Types::Duration]
    #
    # @!attribute [rw] last_value_cache_disable_from_history
    #   Disables populating the last-N-value cache from historical data. If
    #   disabled, the cache is still populated with data from the
    #   write-ahead log (WAL).
    #   @return [Boolean]
    #
    # @!attribute [rw] distinct_value_cache_disable_from_history
    #   Disables populating the distinct value cache from historical data.
    #   If disabled, the cache is still populated with data from the
    #   write-ahead log (WAL).
    #   @return [Boolean]
    #
    # @!attribute [rw] replication_interval
    #   Specifies the interval at which data replication occurs between
    #   cluster nodes.
    #
    #   Default: 250ms
    #   @return [Types::Duration]
    #
    # @!attribute [rw] catalog_sync_interval
    #   Defines how often the catalog synchronizes across cluster nodes.
    #
    #   Default: 10s
    #   @return [Types::Duration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/InfluxDBv3EnterpriseParameters AWS API Documentation
    #
    class InfluxDBv3EnterpriseParameters < Struct.new(
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
      :ingest_query_instances,
      :query_only_instances,
      :dedicated_compactor,
      :compaction_row_limit,
      :compaction_max_num_files_per_plan,
      :compaction_gen_2_duration,
      :compaction_multipliers,
      :compaction_cleanup_wait,
      :compaction_check_interval,
      :last_value_cache_disable_from_history,
      :distinct_value_cache_disable_from_history,
      :replication_interval,
      :catalog_sync_interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token. To resume pagination, provide the nextToken
    #   value as an argument of a subsequent API invocation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   nextToken is provided in the output. To resume pagination, provide
    #   the nextToken value as an argument of a subsequent API invocation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListDbClustersInput AWS API Documentation
    #
    class ListDbClustersInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of Timestream for InfluxDB cluster summaries.
    #   @return [Array<Types::DbClusterSummary>]
    #
    # @!attribute [rw] next_token
    #   Token from a previous call of the operation. When this value is
    #   provided, the service returns results from where the previous
    #   response left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListDbClustersOutput AWS API Documentation
    #
    class ListDbClustersOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_id
    #   Service-generated unique identifier of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token. To resume pagination, provide the nextToken
    #   value as an argument of a subsequent API invocation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   nextToken is provided in the output. To resume pagination, provide
    #   the nextToken value as an argument of a subsequent API invocation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListDbInstancesForClusterInput AWS API Documentation
    #
    class ListDbInstancesForClusterInput < Struct.new(
      :db_cluster_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of Timestream for InfluxDB instance summaries belonging to
    #   the cluster.
    #   @return [Array<Types::DbInstanceForClusterSummary>]
    #
    # @!attribute [rw] next_token
    #   Token from a previous call of the operation. When this value is
    #   provided, the service returns results from where the previous
    #   response left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListDbInstancesForClusterOutput AWS API Documentation
    #
    class ListDbInstancesForClusterOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token. To resume pagination, provide the NextToken
    #   value as argument of a subsequent API invocation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   NextToken is provided in the output. To resume pagination, provide
    #   the NextToken value as argument of a subsequent API invocation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListDbInstancesInput AWS API Documentation
    #
    class ListDbInstancesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of Timestream for InfluxDB DB instance summaries.
    #   @return [Array<Types::DbInstanceSummary>]
    #
    # @!attribute [rw] next_token
    #   Token from a previous call of the operation. When this value is
    #   provided, the service returns results from where the previous
    #   response left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListDbInstancesOutput AWS API Documentation
    #
    class ListDbInstancesOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token. To resume pagination, provide the NextToken
    #   value as argument of a subsequent API invocation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   NextToken is provided in the output. To resume pagination, provide
    #   the NextToken value as argument of a subsequent API invocation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListDbParameterGroupsInput AWS API Documentation
    #
    class ListDbParameterGroupsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of Timestream for InfluxDB DB parameter group summaries.
    #   @return [Array<Types::DbParameterGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   Token from a previous call of the operation. When this value is
    #   provided, the service returns results from where the previous
    #   response left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListDbParameterGroupsOutput AWS API Documentation
    #
    class ListDbParameterGroupsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the tagged resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags used to categorize and track resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for sending InfluxDB engine logs to send to specified S3
    # bucket.
    #
    # @!attribute [rw] s3_configuration
    #   Configuration for S3 bucket log delivery.
    #   @return [Types::S3Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/LogDeliveryConfiguration AWS API Documentation
    #
    class LogDeliveryConfiguration < Struct.new(
      :s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters that comprise the parameter group.
    #
    # @note Parameters is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Parameters is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Parameters corresponding to the set member.
    #
    # @!attribute [rw] influx_d_bv_2
    #   All the customer-modifiable InfluxDB v2 parameters in Timestream for
    #   InfluxDB.
    #   @return [Types::InfluxDBv2Parameters]
    #
    # @!attribute [rw] influx_d_bv_3_core
    #   All the customer-modifiable InfluxDB v3 Core parameters in
    #   Timestream for InfluxDB.
    #   @return [Types::InfluxDBv3CoreParameters]
    #
    # @!attribute [rw] influx_d_bv_3_enterprise
    #   All the customer-modifiable InfluxDB v3 Enterprise parameters in
    #   Timestream for InfluxDB.
    #   @return [Types::InfluxDBv3EnterpriseParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/Parameters AWS API Documentation
    #
    class Parameters < Struct.new(
      :influx_d_bv_2,
      :influx_d_bv_3_core,
      :influx_d_bv_3_enterprise,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class InfluxDBv2 < Parameters; end
      class InfluxDBv3Core < Parameters; end
      class InfluxDBv3Enterprise < Parameters; end
      class Unknown < Parameters; end
    end

    # Percent or Absolute Long for InfluxDB parameters
    #
    # @note PercentOrAbsoluteLong is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PercentOrAbsoluteLong is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PercentOrAbsoluteLong corresponding to the set member.
    #
    # @!attribute [rw] percent
    #   Percent for InfluxDB parameters.
    #   @return [String]
    #
    # @!attribute [rw] absolute
    #   Absolute long for InfluxDB parameters.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/PercentOrAbsoluteLong AWS API Documentation
    #
    class PercentOrAbsoluteLong < Struct.new(
      :percent,
      :absolute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Percent < PercentOrAbsoluteLong; end
      class Absolute < PercentOrAbsoluteLong; end
      class Unknown < PercentOrAbsoluteLong; end
    end

    # The requested resource was not found or does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier for the Timestream for InfluxDB resource associated
    #   with the request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Timestream for InfluxDB resource associated with the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for S3 bucket log delivery.
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket to deliver logs to.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether log delivery to the S3 bucket is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/S3Configuration AWS API Documentation
    #
    class S3Configuration < Struct.new(
      :bucket_name,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the tagged resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags used to categorize and track resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds the caller should wait before retrying.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the tagged resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys used to identify the tags.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_id
    #   Service-generated unique identifier of the DB cluster to update.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_configuration
    #   The log delivery configuration to apply to the DB cluster.
    #   @return [Types::LogDeliveryConfiguration]
    #
    # @!attribute [rw] db_parameter_group_identifier
    #   Update the DB cluster to use the specified DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Update the DB cluster to use the specified port.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_type
    #   Update the DB cluster to use the specified DB instance Type.
    #   @return [String]
    #
    # @!attribute [rw] failover_mode
    #   Update the DB cluster's failover behavior.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/UpdateDbClusterInput AWS API Documentation
    #
    class UpdateDbClusterInput < Struct.new(
      :db_cluster_id,
      :log_delivery_configuration,
      :db_parameter_group_identifier,
      :port,
      :db_instance_type,
      :failover_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_status
    #   The status of the DB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/UpdateDbClusterOutput AWS API Documentation
    #
    class UpdateDbClusterOutput < Struct.new(
      :db_cluster_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The id of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_configuration
    #   Configuration for sending InfluxDB engine logs to send to specified
    #   S3 bucket.
    #   @return [Types::LogDeliveryConfiguration]
    #
    # @!attribute [rw] db_parameter_group_identifier
    #   The id of the DB parameter group to assign to your DB instance. DB
    #   parameter groups specify how the database is configured. For
    #   example, DB parameter groups can specify the limit for query
    #   concurrency.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which InfluxDB accepts connections.
    #
    #   If you change the Port value, your database restarts immediately.
    #
    #   Valid Values: 1024-65535
    #
    #   Default: 8086
    #
    #   Constraints: The value can't be 2375-2376, 7788-7799, 8090, or
    #   51678-51680
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_type
    #   The Timestream for InfluxDB DB instance type to run InfluxDB on.
    #   @return [String]
    #
    # @!attribute [rw] deployment_type
    #   Specifies whether the DB instance will be deployed as a standalone
    #   instance or with a Multi-AZ standby for high availability.
    #   @return [String]
    #
    # @!attribute [rw] db_storage_type
    #   The Timestream for InfluxDB DB storage type that InfluxDB stores
    #   data on.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage to allocate for your DB storage type (in
    #   gibibytes).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/UpdateDbInstanceInput AWS API Documentation
    #
    class UpdateDbInstanceInput < Struct.new(
      :identifier,
      :log_delivery_configuration,
      :db_parameter_group_identifier,
      :port,
      :db_instance_type,
      :deployment_type,
      :db_storage_type,
      :allocated_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A service-generated unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   This customer-supplied name uniquely identifies the DB instance when
    #   interacting with the Amazon Timestream for InfluxDB API and CLI
    #   commands.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint used to connect to InfluxDB. The default InfluxDB port
    #   is 8086.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which InfluxDB accepts connections.
    #   @return [Integer]
    #
    # @!attribute [rw] network_type
    #   Specifies whether the networkType of the Timestream for InfluxDB
    #   instance is IPV4, which can communicate over IPv4 protocol only, or
    #   DUAL, which can communicate over both IPv4 and IPv6 protocols.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_type
    #   The Timestream for InfluxDB instance type that InfluxDB runs on.
    #   @return [String]
    #
    # @!attribute [rw] db_storage_type
    #   The Timestream for InfluxDB DB storage type that InfluxDB stores
    #   data on.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage allocated for your DB storage type (in
    #   gibibytes).
    #   @return [Integer]
    #
    # @!attribute [rw] deployment_type
    #   Specifies whether the Timestream for InfluxDB is deployed as
    #   Single-AZ or with a MultiAZ Standby for High availability.
    #   @return [String]
    #
    # @!attribute [rw] vpc_subnet_ids
    #   A list of VPC subnet IDs associated with the DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] publicly_accessible
    #   Indicates if the DB instance has a public IP to facilitate access.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security group IDs associated with the DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_parameter_group_identifier
    #   The id of the DB parameter group assigned to your DB instance.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the DB instance resides.
    #   @return [String]
    #
    # @!attribute [rw] secondary_availability_zone
    #   The Availability Zone in which the standby instance is located when
    #   deploying with a MultiAZ standby instance.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_configuration
    #   Configuration for sending InfluxDB engine logs to send to specified
    #   S3 bucket.
    #   @return [Types::LogDeliveryConfiguration]
    #
    # @!attribute [rw] influx_auth_parameters_secret_arn
    #   The Amazon Resource Name (ARN) of the Secrets Manager secret
    #   containing the initial InfluxDB authorization parameters. The secret
    #   value is a JSON formatted key-value pair holding InfluxDB
    #   authorization values: organization, bucket, username, and password.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_id
    #   Specifies the DbCluster to which this DbInstance belongs to.
    #   @return [String]
    #
    # @!attribute [rw] instance_mode
    #   Specifies the DbInstance's role in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_modes
    #   Specifies the DbInstance's roles in the cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/UpdateDbInstanceOutput AWS API Documentation
    #
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
      :instance_modes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by Timestream for
    # InfluxDB.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that validation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

