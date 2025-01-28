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
    #   The password of the initial admin user created in InfluxDB. This
    #   password will allow you to access the InfluxDB UI to perform various
    #   administrative tasks and also use the InfluxDB CLI to create an
    #   operator token. These attributes will be stored in a Secret created
    #   in Amazon Web Services SecretManager in your account.
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
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Secrets
    #   Manager secret containing the initial InfluxDB authorization
    #   parameters. The secret value is a JSON formatted key-value pair
    #   holding InfluxDB authorization values: organization, bucket,
    #   username, and password.
    #   @return [String]
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
      :influx_auth_parameters_secret_arn)
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

    # Contains a summary of a DB instance.
    #
    # @!attribute [rw] id
    #   The service-generated unique identifier of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   This customer-supplied name uniquely identifies the DB instance when
    #   interacting with the Amazon Timestream for InfluxDB API and Amazon
    #   Web Services CLI commands.
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
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Secrets
    #   Manager secret containing the initial InfluxDB authorization
    #   parameters. The secret value is a JSON formatted key-value pair
    #   holding InfluxDB authorization values: organization, bucket,
    #   username, and password.
    #   @return [String]
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
      :influx_auth_parameters_secret_arn)
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
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Secrets
    #   Manager secret containing the initial InfluxDB authorization
    #   parameters. The secret value is a JSON formatted key-value pair
    #   holding InfluxDB authorization values: organization, bucket,
    #   username, and password.
    #   @return [String]
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
      :influx_auth_parameters_secret_arn)
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
    #   Default: false
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/Parameters AWS API Documentation
    #
    class Parameters < Struct.new(
      :influx_d_bv_2,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class InfluxDBv2 < Parameters; end
      class Unknown < Parameters; end
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
    #   interacting with the Amazon Timestream for InfluxDB API and Amazon
    #   Web Services CLI commands.
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
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Secrets
    #   Manager secret containing the initial InfluxDB authorization
    #   parameters. The secret value is a JSON formatted key-value pair
    #   holding InfluxDB authorization values: organization, bucket,
    #   username, and password.
    #   @return [String]
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
      :influx_auth_parameters_secret_arn)
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

