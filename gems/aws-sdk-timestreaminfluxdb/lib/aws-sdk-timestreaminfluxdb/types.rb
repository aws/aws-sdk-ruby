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
    #   in AWS SecretManager in your account.
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
      :tags)
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
    #   The Amazon Resource Name (ARN) of the AWS Secrets Manager secret
    #   containing the initial InfluxDB authorization parameters. The secret
    #   value is a JSON formatted key-value pair holding InfluxDB
    #   authorization values: organization, bucket, username, and password.
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
    #   interacting with the Amazon Timestream for InfluxDB API and AWS CLI
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
    #   The Amazon Resource Name (ARN) of the AWS Secrets Manager secret
    #   containing the initial InfluxDB authorization parameters. The secret
    #   value is a JSON formatted key-value pair holding InfluxDB
    #   authorization values: organization, bucket, username, and password.
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
    #   The Amazon Resource Name (ARN) of the AWS Secrets Manager secret
    #   containing the initial InfluxDB authorization parameters. The secret
    #   value is a JSON formatted key-value pair holding InfluxDB
    #   authorization values: organization, bucket, username, and password.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/InfluxDBv2Parameters AWS API Documentation
    #
    class InfluxDBv2Parameters < Struct.new(
      :flux_log_enabled,
      :log_level,
      :no_tasks,
      :query_concurrency,
      :query_queue_size,
      :tracing_type,
      :metrics_disabled)
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
    # @!attribute [rw] db_instance_type
    #   The Timestream for InfluxDB DB instance type to run InfluxDB on.
    #   @return [String]
    #
    # @!attribute [rw] deployment_type
    #   Specifies whether the DB instance will be deployed as a standalone
    #   instance or with a Multi-AZ standby for high availability.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb-2023-01-27/UpdateDbInstanceInput AWS API Documentation
    #
    class UpdateDbInstanceInput < Struct.new(
      :identifier,
      :log_delivery_configuration,
      :db_parameter_group_identifier,
      :db_instance_type,
      :deployment_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A service-generated unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   This customer-supplied name uniquely identifies the DB instance when
    #   interacting with the Amazon Timestream for InfluxDB API and AWS CLI
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
    #   The Amazon Resource Name (ARN) of the AWS Secrets Manager secret
    #   containing the initial InfluxDB authorization parameters. The secret
    #   value is a JSON formatted key-value pair holding InfluxDB
    #   authorization values: organization, bucket, username, and password.
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
